# XTP交易业务的报单接口及参数

## 一、客户端接口

### 报单接口

```cgo
///报单录入请求
///@return 报单在XTP系统中的ID,如果为‘0’表示报单发送失败，此时用户可以调用GetApiLastError()来获取错误代码，非“0”表示报单发送成功，用户需要记录下返回的order_xtp_id，它保证一个交易日内唯一，不同的交易日不保证唯一性
///@param order 报单录入信息，其中order.order_client_id字段是用户自定义字段，用户输入什么值，订单响应OnOrderEvent()返回时就会带回什么值，类似于备注，方便用户自己定位订单。当然，如果你什么都不填，也是可以的。order.order_xtp_id字段无需用户填写，order.ticker必须不带空格，以'\0'结尾
///@param session_id 资金账户对应的session_id,登录时得到
///@remark 交易所接收订单后，会在报单响应函数OnOrderEvent()中返回报单未成交的状态，之后所有的订单状态改变（除了部成状态）都会通过报单响应函数返回
virtual uint64_t InsertOrder(XTPOrderInsertInfo *order, uint64_t session_id) = 0;
```

### 撤单接口

```cgo
///报单操作请求
///@return 撤单在XTP系统中的ID,如果为‘0’表示撤单发送失败，此时用户可以调用GetApiLastError()来获取错误代码，非“0”表示撤单发送成功，用户需要记录下返回的order_cancel_xtp_id，它保证一个交易日内唯一，不同的交易日不保证唯一性
///@param order_xtp_id 需要撤销的委托单在XTP系统中的ID
///@param session_id 资金账户对应的session_id,登录时得到
///@remark 如果撤单成功，会在报单响应函数OnOrderEvent()里返回原单部撤或者全撤的消息，如果不成功，会在OnCancelOrderError()响应函数中返回错误原因
virtual uint64_t CancelOrder(const uint64_t order_xtp_id, uint64_t session_id) = 0;
```

## 二、参数介绍

> 灰色的文字表示此种业务不需要此参数，需将该参数置为0

### 1. 股票交易

```cgo
struct XTPOrderInsertInfo
{
    ///XTP系统订单ID，无需用户填写，在XTP系统中唯一
    uint64_t                order_xtp_id;
    ///报单引用，由客户自定义
    uint32_t	            order_client_id;
    ///合约代码 客户端请求不带空格，以'\0'结尾
    char                    ticker[XTP_TICKER_LEN];
    ///交易市场
    XTP_MARKET_TYPE         market;
    ///价格
    double                  price;
    ///止损价（保留字段）
    double                  stop_price;
    ///数量(股票单位为股，逆回购单位为张)
    int64_t                 quantity;
    ///报单价格
    XTP_PRICE_TYPE          price_type;
    union{
        uint32_t            u32;
        struct {
            ///买卖方向
            XTP_SIDE_TYPE               side;
            ///开平标志
            XTP_POSITION_EFFECT_TYPE    position_effect;
            ///预留字段1
            uint8_t                     reserved1;
            ///预留字段2
            uint8_t                     reserved2;
        };
    };
    ///业务类型
    XTP_BUSINESS_TYPE       business_type;
};
```

买入股票  

```text
    order_xtp_id = 0
    order_client_id = 用户自定义
    Ticker = 股票代码
    Market = 市场代码
    Price = 价格
    stop_price = 0
    Quantity = 数量
    price_type = 1，2，3，4，5，6，7，8（不同的委托方式，详见文档或程序源码）
    Side = 1
    position_effect = 0
    reserved1 = 0
    reserved2 = 0
    business_type = 0
    session_id 登录时返回的id
```

卖出股票 
```text
    order_xtp_id = 0
    order_client_id = 用户自定义
    Ticker = 股票代码
    Market = 市场代码
    Price = 价格
    stop_price = 0
    Quantity = 数量
    price_type = 1，2，3，4，5，6，7，8（不同的委托方式，详见文档或程序源码）
    Side = 2
    position_effect = 0
    reserved1 = 0
    reserved2 = 0
    business_type = 0
    session_id 登录时返回的id
```

撤单

```text
    order_xtp_id 报单后返回的id
    session_id 登录时返回的id
```

### 2. 两融业务

```cgo
   struct XTPOrderInsertInfo
   {
   ///XTP系统订单ID，无需用户填写，在XTP系统中唯一
   uint64_t                order_xtp_id;
   ///报单引用，由客户自定义
   uint32_t	            order_client_id;
   ///合约代码 客户端请求不带空格，以'\0'结尾
   char                    ticker[XTP_TICKER_LEN];
   ///交易市场
   XTP_MARKET_TYPE         market;
   ///价格
   double                  price;
   ///止损价（保留字段）
   double                  stop_price;
   ///数量(股票单位为股，逆回购单位为张)
   int64_t                 quantity;
   ///报单价格
   XTP_PRICE_TYPE          price_type;
   union{
   uint32_t            u32;
   struct {
   ///买卖方向
   XTP_SIDE_TYPE               side;
   ///开平标志
   XTP_POSITION_EFFECT_TYPE    position_effect;
   ///预留字段1
   uint8_t                     reserved1;
   ///预留字段2
   uint8_t                     reserved2;
   };
   };
   ///业务类型
   XTP_BUSINESS_TYPE       business_type;
   };
```

融资买入股票  需要股票支持融资融券业务

```text
    order_xtp_id = 0
    order_client_id = 用户自定义
    Ticker = 代码
    Market = 市场代码
    Price = 价格
    stop_price = 0
    Quantity = 数量
    price_type = 1
    Side = 21
    position_effect = 0
    reserved1 = 0
    reserved2 = 0
    business_type = 4
    session_id 登录时返回的id
```

卖券还款

```text
    order_xtp_id = 0
    order_client_id = 用户自定义
    Ticker = 代码
    Market = 市场代码
    Price = 价格
    stop_price = 0
    Quantity = 数量
    price_type = 1
    Side = 23
    position_effect = 0
    reserved1 = 0
    reserved2 = 0
    business_type = 4
    session_id 登录时返回的id
    除常规的InsertOrder接口外，当需要还指定负债合约的息费的时候，还有CreditSellStockRepayDebtInterestFee()接口可供使用

现金还款

```text
    有专门的现金还款接口CreditCashRepay() 和 CreditCashRepayDebtInterestFee()
```

融券卖出股票  需要股票支持融资融券业务

```text
    order_xtp_id = 0
    order_client_id = 用户自定义
    Ticker = 代码
    Market = 市场代码
    Price = 价格
    stop_price = 0
    Quantity = 数量
    price_type = 1
    Side = 22
    position_effect = 0
    reserved1 = 0
    reserved2 = 0
    business_type = 4
    session_id 登录时返回的id
```

买券还券

```text
    order_xtp_id = 0
    order_client_id = 用户自定义
    Ticker = 代码
    Market = 市场代码
    Price = 价格
    stop_price = 0
    Quantity = 数量
    price_type = 1
    Side = 24
    position_effect = 0
    reserved1 = 0
    reserved2 = 0
    business_type = 4
    session_id 登录时返回的id
```


现券还券

```text
    order_xtp_id = 0
    order_client_id = 用户自定义
    Ticker = 代码
    Market = 市场代码
    Price = 0
    stop_price = 0
    Quantity = 数量
    price_type = 1
    Side = 26
    position_effect = 0
    reserved1 = 0
    reserved2 = 0
    business_type = 4
    session_id 登录时返回的id
```

余券划转
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量 （需要跟可划转余券数量一致）
price_type = 1
Side = 27
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 4
session_id 登录时返回的id

买入担保品  
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 1
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 4
session_id 登录时返回的id

卖出担保品
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 2
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 4
session_id 登录时返回的id

担保品转入
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量
price_type = 1
Side = 28
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 4
session_id 登录时返回的id
担保品转出
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量
price_type = 1
Side = 29
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 4
session_id 登录时返回的id

### 3. ETF申赎

```cgo

struct XTPOrderInsertInfo
{
    ///XTP系统订单ID，无需用户填写，在XTP系统中唯一
    uint64_t                order_xtp_id;
    ///报单引用，由客户自定义
    uint32_t	            order_client_id;
    ///合约代码 客户端请求不带空格，以'\0'结尾
    char                    ticker[XTP_TICKER_LEN];
   ///交易市场
   XTP_MARKET_TYPE         market;
   ///价格
   double                  price;
   ///止损价（保留字段）
   double                  stop_price;
   ///数量(股票单位为股，逆回购单位为张)
   int64_t                 quantity;
   ///报单价格
   XTP_PRICE_TYPE          price_type;
   union{
   uint32_t            u32;
   struct {
   ///买卖方向
   XTP_SIDE_TYPE               side;
   ///开平标志
   XTP_POSITION_EFFECT_TYPE    position_effect;
   ///预留字段1
   uint8_t                     reserved1;
   ///预留字段2
   uint8_t                     reserved2;
   };
   };
   ///业务类型
   XTP_BUSINESS_TYPE       business_type;
   };

申购ETF
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量
price_type = 1
Side = 7
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 3
session_id 登录时返回的id
赎回ETF
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量
price_type = 1
Side = 8
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 3
session_id 登录时返回的id

### 4. 其它交易
   struct XTPOrderInsertInfo
   {
   ///XTP系统订单ID，无需用户填写，在XTP系统中唯一
   uint64_t                order_xtp_id;
   ///报单引用，由客户自定义
   uint32_t	            order_client_id;
   ///合约代码 客户端请求不带空格，以'\0'结尾
   char                    ticker[XTP_TICKER_LEN];
   ///交易市场
   XTP_MARKET_TYPE         market;
   ///价格
   double                  price;
   ///止损价（保留字段）
   double                  stop_price;
   ///数量(股票单位为股，逆回购单位为张)
   int64_t                 quantity;
   ///报单价格
   XTP_PRICE_TYPE          price_type;
   union{
   uint32_t            u32;
   struct {
   ///买卖方向
   XTP_SIDE_TYPE               side;
   ///开平标志
   XTP_POSITION_EFFECT_TYPE    position_effect;
   ///预留字段1
   uint8_t                     reserved1;
   ///预留字段2
   uint8_t                     reserved2;
   };
   };
   ///业务类型
   XTP_BUSINESS_TYPE       business_type;
   };

新股申购
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 1
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 1
session_id 登录时返回的id


配股
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 1
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 6
session_id 登录时返回的id

国债逆回购
struct XTPOrderInsertInfo
{
///XTP系统订单ID，无需用户填写，在XTP系统中唯一
uint64_t                order_xtp_id;
///报单引用，由客户自定义
uint32_t	            order_client_id;
///合约代码 客户端请求不带空格，以'\0'结尾
char                    ticker[XTP_TICKER_LEN];
///交易市场
XTP_MARKET_TYPE         market;
///价格
double                  price;
///止损价（保留字段）
double                  stop_price;
///数量(股票单位为股，逆回购单位为张)
int64_t                 quantity;
///报单价格
XTP_PRICE_TYPE          price_type;
union{
uint32_t            u32;
struct {
///买卖方向
XTP_SIDE_TYPE               side;
///开平标志
XTP_POSITION_EFFECT_TYPE    position_effect;
///预留字段1
uint8_t                     reserved1;
///预留字段2
uint8_t                     reserved2;
};
};
///业务类型
XTP_BUSINESS_TYPE       business_type;
};

order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 2
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 2
session_id 登录时返回的id

### 5. 期权业务
   struct XTPOrderInsertInfo
   {
   ///XTP系统订单ID，无需用户填写，在XTP系统中唯一
   uint64_t                order_xtp_id;
   ///报单引用，由客户自定义
   uint32_t	            order_client_id;
   ///合约代码 客户端请求不带空格，以'\0'结尾
   char                    ticker[XTP_TICKER_LEN];
   ///交易市场
   XTP_MARKET_TYPE         market;
   ///价格
   double                  price;
   ///止损价（保留字段）
   double                  stop_price;
   ///数量(股票单位为股，逆回购单位为张)
   int64_t                 quantity;
   ///报单价格
   XTP_PRICE_TYPE          price_type;
   union{
   uint32_t            u32;
   struct {
   ///买卖方向
   XTP_SIDE_TYPE               side;
   ///开平标志
   XTP_POSITION_EFFECT_TYPE    position_effect;
   ///预留字段1
   uint8_t                     reserved1;
   ///预留字段2
   uint8_t                     reserved2;
   };
   };
   ///业务类型
   XTP_BUSINESS_TYPE       business_type;
   };
   买入开仓
   order_xtp_id = 0
   order_client_id = 用户自定义
   Ticker = 代码
   Market = 市场代码
   Price = 价格
   stop_price = 0
   Quantity = 数量
   price_type = 1
   Side = 1
   position_effect = 1
   reserved1 = 0
   reserved2 = 0
   business_type = 10
   session_id 登录时返回的id

卖出开仓
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 2
position_effect = 1
reserved1 = 0
reserved2 = 0
business_type = 10
session_id 登录时返回的id

买入平仓
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 1
position_effect = 2
reserved1 = 0
reserved2 = 0
business_type = 10
session_id 登录时返回的id

卖出平仓
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 价格
stop_price = 0
Quantity = 数量
price_type = 1
Side = 2
position_effect = 2
reserved1 = 0
reserved2 = 0
business_type = 10
session_id 登录时返回的id

锁定
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量
price_type = 1
Side = 12
position_effect = 1
reserved1 = 0
reserved2 = 0
business_type = 10
session_id 登录时返回的id

解锁
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量
price_type = 1
Side = 12
position_effect = 2
reserved1 = 0
reserved2 = 0
business_type = 10
session_id 登录时返回的id


行权
order_xtp_id = 0
order_client_id = 用户自定义
Ticker = 代码
Market = 市场代码
Price = 0
stop_price = 0
Quantity = 数量
price_type = 0
Side = 0
position_effect = 0
reserved1 = 0
reserved2 = 0
business_type = 11
session_id 登录时返回的id


## 三、资金划转
划转接口
///资金划拨请求
///@return 资金划拨订单在XTP系统中的ID,如果为‘0’表示消息发送失败，此时用户可以调用GetApiLastError()来获取错误代码，非“0”表示消息发送成功，用户需要记录下返回的serial_id，它保证一个交易日内唯一，不同的交易日不保证唯一性
///@param fund_transfer 资金划拨的请求信息
///@param session_id 资金账户对应的session_id,登录时得到
///@remark 此函数支持一号两中心节点之间的资金划拨，注意资金划拨的方向。
virtual uint64_t FundTransfer(XTPFundTransferReq *fund_transfer, uint64_t session_id) = 0;

参数
struct XTPFundTransferReq
{
///资金内转编号，无需用户填写，类似于xtp_id
uint64_t	serial_id;
///资金账户代码
char        fund_account[XTP_ACCOUNT_NAME_LEN];
///资金账户密码
char	    password[XTP_ACCOUNT_PASSWORD_LEN];
///金额
double	    amount;
///内转类型
XTP_FUND_TRANSFER_TYPE	 transfer_type;

};
转出XTP
fund_account = 资金账户
Password = 账户密码
Amount = 转账金额
transfer_type = 0
session_id 登录时返回的id
转入XTP
fund_account = 资金账户
Password = 账户密码
Amount = 转账金额
transfer_type = 1
session_id 登录时返回的id
跨节点转出
fund_account = 资金账户
Password = “”
Amount = 转账金额
transfer_type = 2
session_id 登录时返回的id
跨节点转入
fund_account = 资金账户
Password = “”
Amount = 转账金额
transfer_type = 3
session_id 登录时返回的id


## 四、组合策略期权及合并行权

### 1. 接口

报单接口
///期权组合策略报单录入请求
///@return 报单在XTP系统中的ID,如果为‘0’表示报单发送失败，此时用户可以调用GetApiLastError()来获取错误代码，非“0”表示报单发送成功，用户需要记录下返回的order_xtp_id，它保证一个交易日内唯一，不同的交易日不保证唯一性
///@param order 报单录入信息，其中order.order_client_id字段是用户自定义字段，用户输入什么值，订单响应OnOptionCombinedOrderEvent()返回时就会带回什么值，类似于备注，方便用户自己定位订单。当然，如果你什么都不填，也是可以的。order.order_xtp_id字段无需用户填写，order.ticker必须不带空格，以'\0'结尾
///@param session_id 资金账户对应的session_id,登录时得到
///@remark 交易所接收订单后，会在报单响应函数OnOptionCombinedOrderEvent()中返回报单未成交的状态，之后所有的订单状态改变（除了部成状态）都会通过报单响应函数返回
virtual uint64_t InsertOptionCombinedOrder(XTPOptCombOrderInsertInfo *order, uint64_t session_id) = 0;
撤单接口
///期权组合策略报单撤单请求
///@return 撤单在XTP系统中的ID,如果为‘0’表示撤单发送失败，此时用户可以调用GetApiLastError()来获取错误代码，非“0”表示撤单发送成功，用户需要记录下返回的order_cancel_xtp_id，它保证一个交易日内唯一，不同的交易日不保证唯一性
///@param order_xtp_id 需要撤销的期权组合策略委托单在XTP系统中的ID
///@param session_id 资金账户对应的session_id,登录时得到
///@remark 如果撤单成功，会在报单响应函数OnOptionCombinedOrderEvent()里返回原单部撤或者全撤的消息，如果不成功，会在OnCancelOrderError()响应函数中返回错误原因
virtual uint64_t CancelOptionCombinedOrder(const uint64_t order_xtp_id, uint64_t session_id) = 0;

### 2. 涉及的结构体
///期权组合策略新订单请求
struct XTPOptCombOrderInsertInfo
{
///XTP系统订单ID，无需用户填写，在XTP系统中唯一
uint64_t                order_xtp_id;
///报单引用，由客户自定义
uint32_t	            order_client_id;
///交易市场
XTP_MARKET_TYPE         market;
///数量(单位为份)
int64_t                 quantity;

    ///组合方向
    XTP_SIDE_TYPE           side;

    ///业务类型
    XTP_BUSINESS_TYPE       business_type;

    ///期权组合策略信息
    XTPOptCombPlugin        opt_comb_info;
};
///期权组合策略报单附加信息结构体
typedef struct XTPOptCombPlugin {
char                                strategy_id[XTP_STRATEGY_ID_LEN];               ///< 组合策略代码，比如CNSJC认购牛市价差策略等。
char                                comb_num[XTP_SECONDARY_ORDER_ID_LEN];           ///< 组合编码，组合申报时，该字段为空；拆分申报时，填写拟拆分组合的组合编码。
int32_t                             num_legs;                                       ///< 成分合约数
XTPOptCombLegInfo                   leg_detail[XTP_STRATEGE_LEG_NUM];               ///< 成分合约数组，最多四条腿。
}XTPOptCombPlugin;

/// 组合策略腿合约信息结构体
typedef struct XTPOptCombLegInfo {
char                            leg_security_id[XTP_TICKER_LEN]; ///< 成分合约代码
XTP_OPT_CALL_OR_PUT_TYPE        leg_cntr_type;                   ///< 合约类型，认沽或认购。
XTP_POSITION_DIRECTION_TYPE     leg_side;                        ///< 持仓方向，权利方或义务方。
XTP_OPT_COVERED_OR_UNCOVERED    leg_covered;                     ///< 备兑标签
int32_t                         leg_qty;                         ///< 成分合约数量（张）
}XTPOptCombLegInfo;

### 3. 组合

须填写的参数：

market = 市场
quantity = 数量
side = XTP_SIDE_OPT_COMBINE
business_type = XTP_BUSINESS_TYPE_OPTION_COMBINE
opt_comb_info.num_legs = 2
opt_comb_info.strategy_id = 组合策略代码
opt_comb_info.leg_detail[0].leg_security_id = 合约1
opt_comb_info.leg_detail[1].leg_security_id = 合约2

### 4. 拆分
须填写的参数：

market = 市场
quantity = 数量
side = XTP_SIDE_OPT_SPLIT
business_type = XTP_BUSINESS_TYPE_OPTION_COMBINE
opt_comb_info.num_legs = 0
opt_comb_info.strategy_id = 组合策略代码
opt_comb_info.comb_num = 组合编码

### 合并行权

须填写的参数：

market = 市场
quantity = 数量
business_type = XTP_BUSINESS_TYPE_EXECUTE_COMBINE
opt_comb_info.num_legs = 2
opt_comb_info.strategy_id = “exec”
opt_comb_info.leg_detail[0].leg_security_id = 合约1
opt_comb_info.leg_detail[1].leg_security_id = 合约2


