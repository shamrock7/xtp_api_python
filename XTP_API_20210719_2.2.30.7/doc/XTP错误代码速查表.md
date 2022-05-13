## XTP错误代码速查表

| 错误代码 | 错误信息 | 中文说明 |
| --- | --- | --- |
| 10200000 | Login to quote server failed. | 行情服务器未开启，或者没有网络连接 |
| 10200002 | Can't get info from quote server. | 行情服务器无法提供错误必要信息 |
| 10200003 | Login to quote server failed: invalid parameters. | 登录时输入的参数为空 |
| 10200004 | Login to quote server failed. User has logined. | 重复连接 |
| 10200006 |  | 与行情服务器断开连接 |
| 10200100 | Register service failed. | 行情服务器无法注册响应回调函数 |
| 10200101 | Create quote api failed: invalid parameters. | 行情服务器无法创建，输入的参数不正确，client_id为0，或者存储路径不正确 |
| 10200200 | Receive failed: api object is null. | 行情服务器接收数据后，用户API为空 |
| 10200300 | Invalid parameters. | 请求数据为空 |
| 10200301 | Session failed: no connection. | 请求数据时，获取session失败 |
| 10210000 | Login to oms server failed. | 交易服务器未开启，或者没有网络连接 |
| 10210002 | Can't get info from oms server. | 交易服务器无法提供错误必要信息 |
| 10210003 | Login to oms server failed: invalid parameters. | 登录时输入的参数为空 |
| 10210006 |  | 与交易服务器断开连接 |
| 10210100 | Register service failed. | 交易服务器无法注册响应回调函数 |
| 10210101 | Create trader api failed: invalid parameters. | 交易服务器无法创建，输入的参数不正确，client_id为0，或者存储路径不正确 |
| 10210102 | Create trader api failed. | 用户API创建失败 |
| 10210200 | Receive failed: api object is null. | 交易服务器接收数据后，用户API为空 |
| 10210201 | Receive failed: spi object is null. | 交易服务器接收数据后，用户SPI为空 |
| 10210203 | Receive failed: data is null. | 交易服务器接收数据后，数据为空 |
| 10210204 | Receive failed: order manager is null. | 交易服务器接收数据后，数据为空 |
| 10210205 | Receive xtp_id range failed. | 从服务器获取xtp_id失败 |
| 10210300 | Invalid parameters. | 请求数据为空 |
| 10210301 | Invalid parameters. | 请求数据不正确 |
| 10210302 | Session failed: no connection. | 请求数据时，获取session失败 |
| 10210304 | Can't get xtp_id. | 获取xtp_id失败 |
| 10210305 | Xtp_id is out of range. | xtp_id越界 |
| 10210401 | Order transmission failed. | 订单网络发送失败 |
| 11000000 | Server error! | 服务器错误 |
| 11000001 | Server is not available! | 服务器不可用 |
| 11000002 | Server order num exceeded! | 服务器订单数量超限 |
| 11000003 | Server message num exceeded! | 服务器信息数量超限 |
| 11000004 | Server internal error! | 服务器内部错误 |
| 11000005 | Get server error! | 获取服务失败 |
| 11000006 | Alloc stock asset info failed! | 分配证券资产信息失败 |
| 11000007 | Alloc report info failed! | 分配报告信息失败 |
| 11000010 | Failed to get ticker quotes, ticker does not exist or cannot be traded! | 获取标的静态行情错误，标的不支持校验，或者标的物不能被交易。 |
| 11000011 | Failed to get ticker position information! | 获取证券持仓信息失败 |
| 11000012 | Failed to get allotment information! | 获取配股信息失败 |
| 11000013 | Failed to get user's fund account information! | 获取用户的资金账户信息失败 |
| 11000014 | Failed to get customer information! | 获取客户信息失败 |
| 11000015 | Failed to get user information! | 获取用户信息失败 |
| 11000016 | Failed to initialize server, load user information failed. | 初始化服务失败，加载用户信息失败 |
| 11000020 | Order capacity exceeded! | 订单容量超限 |
| 11000021 | Server capacity exceeded! | 服务器容量超限 |
| 11000030 | Authentication Failed! User or password is not correct! | 用户权限认证失败，用户名或者密码不正确 |
| 11000031 | Login Failed. Please make sure your account has permission! | 登录失败，请检查用户开户交易权限 |
| 11000032 | Login Failed. Please check your terminal information! | 登录失败，用户终端信息不完整 |
| 11000033 | Login Failed. Trade key is invalid or not set. Please set your key first! | 登录失败，交易密钥错误或者未设置，请先设置交易秘钥 |
| 11000034 | Login Failed. Login parameter cannot be null. Please check it! | 登录失败，登录参数为空，请检查登录参数！ |
| 11000035 | Login Failed. Fund account doesn't have trade permission. Your trade type is not allowed to trade. | 登录失败，资金帐户交易权限不足，交易类型不允许交易。 |
| 11000036 | Login Failed. IP is not correct. | 登录失败，检查登录参数ip失败。 |
| 11000037 | Login Failed. Mac address is not correct. | 登录失败，检查登录参数mac地址失败。 |
| 11000038 | Login Failed. Hard disc serial is not correct. | 登录失败，检查登录参数硬盘序列失败。 |
| 11000039 | Login Failed. Device information  is not correct. | 登录失败，检查登录参数设备信息失败。 |
| 11000040 | Login Failed. Phone no. is not correct. | 登录失败，检查登录参数手机号码失败。 |
| 11000041 | Login Failed,user status invalid. | 登录失败，用户状态错误。 |
| 11000042 | Login Failed,get user info failed,please check if user info is perfect. | 登录失败，获取用户信息失败，请检查用户信息是否正确。 |
| 11000043 | Login Failed,get user identity failed, used client id number exceeded. | 登录失败，获取用户身份失败 |
| 11000044 | Login Failed, used client id number exceeded. | 登录失败，用户信息映射失败，用户标识超限 |
| 11000045 | Login Failed,single user used client id number exceeded. | 登录失败，用户信息映射失败，单个用户标识超限 |
| 11000060 | Database connect error. | 数据库连接错误 |
| 11000100 | Parameter error! | 参数错误 |
| 11000101 | Parameter user invalid! | 无效的用户 |
| 11000102 | Parameter stock code length check failed! | 证券代码长度检查失败 |
| 11000103 | Parameter null point error! | 空指针错误 |
| 11000104 | Parameter xtp id invalid! | 参数错误，用户订单XTPID无效 |
| 11000105 | Parameter exchange id invalid! | 参数错误，交易所无效 |
| 11000106 | Parameter xtp id already used! | 参数错误，用户订单XTPID已被使用 |
| 11000107 | Parameter quantity invalid! | 参数错误，无效的订单数量 |
| 11000108 | Parameter market invalid! | 参数错误，无效的交易市场 |
| 11000109 | Parameter price type invalid! | 参数错误，无效的价格类型 |
| 11000110 | Parameter price invalid! | 参数错误，无效的价格 |
| 11000111 | Parameter time invalid! | 参数错误，无效的时间 |
| 11000112 | Parameter fund account not existed or invalid! | 参数错误，资金账户不存在或者无效 |
| 11000113 | Parameter fund transfer type invalid! | 参数错误，无效的资金划转类型 |
| 11000114 | Parameter side invalid! | 参数错误，无效的买卖方向 |
| 11000115 | Parameter amount invalid or exceeded! | 参数错误，总资产无效或者溢出 |
| 11000116 | Parameter password length invalid or exceeded! | 参数错误，密码长度无效或者超长 |
| 11000118 | Transfer forbidden,not colocation user. | 禁止当前资金转移操作（非colocation账户） |
| 11000119 | Parameter position effect invalid! | 参数错误，开平标志错误 |
| 11000300 | Service error! | 调用服务错误 |
| 11000301 | Risk control rejected! | 风控被拒绝 |
| 11000302 | Risk control init failed! | 风控模块初始化失败 |
| 11000303 | Failed to check order! | 检查订单失败 |
| 11000304 | Failed to find order data area! | 查找报单数据失败 |
| 11000305 | Failed to find original order! | 查找原始报单失败 |
| 11000306 | Service not supported! | 该业务尚未支持 |
| 11000307 | Parameter side or position_effect is not supported by ticker. | 参数side或者参数position_effect与证券可支持的业务不符 |
| 11000308 | Business type not match with security type. | 业务类型与证券类型不匹配 |
| 11000309 | Business type does not match with side. | 业务类型与方向不匹配 |
| 11000310 | User type not match with business type. | 业务类型与用户类型不匹配 |
| 11000311 | Trade exchange is not registered in this server! | 通常为一账号两中心设置时发生，未在对应节点交易对应市场证券 |
| 11000313 | Failed to get security account! | 获取证券账户失败 |
| 11000314 | ST stock can not be traded by market order! | ST股票不能使用市价订单交易 |
| 11000315 | Delisting ticker can not be traded by market order! | 退市股票不能使用市价订单交易 |
| 11000316 | Failed to check order id! | 检查订单ID失败 |
| 11000317 | Failed to check original order id! | 检查原始订单ID失败 |
| 11000319 | Failed to generate cancel reject response! | 生成撤单拒绝响应失败 |
| 11000320 | Failed generate trade report info failed! | 生成成交报告信息失败 |
| 11000321 | Generate order response failed! | 生成订单响应失败 |
| 11000330 | Forward message failed! | 转发信息失败 |
| 11000331 | Forward order failed,ogw session invalid! | 转发订单失败，与报盘会话异常 |
| 11000332 | Forward order to tas server failed,session invalid! | 转发订单至tas失败，连接异常 |
| 11000333 | Forward order to tas add push data failed. | 转发订单至tas推送失败 |
| 11000334 | send order to tas server failed,session invalid! | 发送订单至tas失败，连接异常 |
| 11000341 | Failed to check order,request user does not match with server saved! | 检查订单失败，请求用户与服务器保存的不匹配！ |
| 11000342 | Cancel order request already received! | 撤单请求已发送 |
| 11000343 | Target order already finished! | 报单已经成交或者已经撤销 |
| 11000344 | Failed to check order,target order is cancel order! | 检查撤单失败，要撤的订单是撤单 |
| 11000345 | Failed to save request information! | 保存请求信息失败 |
| 11000346 | Failed to generate cancel order, original order market value incorrect! | 生成撤单失败，原始报单中交易市场错误 |
| 11000350 | Find none record! | 未发现记录 |
| 11000368 | Failed to get security info in specified market! | 在指定市场中获取证券信息失败 |
| 11000369 | Failed to get security info! | 获取证券信息失败 |
| 11000370 | Failed to get new stock apply info ! | 获取新股申购信息失败 |
| 11000371 | Failed to cancel order,new stock apply order can not be canceled! | 撤单失败，新股申购订单不能被撤销 |
| 11000372 | Quantity invalid,new stock apply quantity exceeded! | 数量无效，新股申购数量超出 |
| 11000373 | Failed to get new stock apply info in specified market! | 在指定市场中获取新股申购信息失败 |
| 11000375 | Failed to get stock allotment info! | 获取股票分配信息失败 |
| 11000376 | Failed to get new stock allotment info in specified market! | 在指定市场中获取新股申购信息失败 |
| 11000380 | Message repeated! | 消息重复 |
| 11000381 | Fund account remain balance not sufficient! | 资金账户余额不足 |
| 11000382 | Fund transfer failed! | 资金划转失败 |
| 11000384 | 可划转资金不足 | 可划转资金不足 |
| 11000386 | United Risk Control Failed! | 联合风控失败 |
| 11000390 | Failed to get etf base information! | 获取ETF基本信息失败 |
| 11000391 | Failed to get etf report type! | 获取ETF回报类型出错  |
| 11000392 | Failed to get etf fund report! | 获取ETF资金回报出错  |
| 11000410 | Failed to select KDCredit database! | 查询中转数据库失败 |
| 11000411 | Failed to insert KDCredit database! | 写入中转数据库失败 |
| 11000420 | Credit force failed! | 信用业务强平执行失败 |
| 11000421 | Credit force order rejected, credit status and debt status normal! | 信用业务强平拒单（账户状态无异常） |
| 11000450 | Too much order,order frequency limited! | 订单数量太多，报单频率被限 |
| 11000452 | User query frequency limited! | 用户查询频率受限 |
| 11000500 | Failed to check user's authority! | 检查用户权限失败 |
| 11000510 | user's customer is invalid! | 用户客户号无效 |
| 11000511 | user's security account is invalid! | 用户证券账户无效 |
| 11000512 | user's fund account is invalid! | 用户资金账号无效 |
| 11000520 | Login Failed,check user's customer authority failed! | 登录失败，检查用户的客户权限失败 |
| 11000521 | Login Failed,check user's security account authority failed! | 登录失败，检查用户的证券账户权限失败 |
| 11000522 | Login Failed,check user's fund account authority failed! | 登录失败，检查用户的资金账户权限失败 |
| 11000523 | Login Failed,user in blacklist! | 用户因为一类股票的操作在黑名单中而被禁止登录 |
| 11000530 | Authority module rejects order, stock in blacklist! | 订单中股票对应的操作在黑名单中导致订单被拒绝 |
| 11000540 | User has no net address in the whitelist! | 用户在网络地址白名单没有地址（可能导致登录被拒绝） |
| 11000541 | User login with net address not in the whitelist! | 用户登录的网络地址不在白名单中 |
| 11000550 | Fund account has no risk stock board buy right! | 账户未开通风险警示板权限 |
| 11000551 | Fund account has no market order right! | 账户未开通市价单权限 |
| 11000552 | Fund account has no startup board buy right! | 账户未开通创业板购买权限 |
| 11000553 | Fund account has no delisting board buy right! | 账户未开通退市板购买权限 |
| 11000554 | Fund account has no structure fund buy or split right! | 账户未开通分级基金购买和拆分权限 |
| 11000555 | Fund account has no inter etf creation or redemption right! | 账户未开通跨市场ETF申赎权限 |
| 11000560 | Security account has no risk stock board buy right! | 证券账户未开通风险警示板购买权限 |
| 11000561 | Security account has no market order right! | 证券账户未开通市价单权限 |
| 11000562 | Security account has no startup board buy right! | 证券账户未开通创业板板购买权限 |
| 11000563 | Security account has no delisting board buy right! | 证券账户未开通退市板板购买权限 |
| 11000564 | Security account has no structure fund buy buy or split right! | 证券账户未开通分级基金购买和拆分权限 |
| 11000565 | Security account has no technology board stock right! | 证券账户未开通科创板购买权限 |
| 11000566 | Can not get convertable bond base ticker! | 无法找到可转债对应的正股数据 |
| 11000568 | Security account has no bond qualification trade right! | 证券账户没有债券交易权限 |
| 11000569 | Security account has no organization qualification trade right! | 证券账户没有机构户交易权限 |
| 11000570 | Security account has no program trading right! | 证券账户没有程序化交易权限 |
| 11000571 | Can not buy too many risk stock! | 不能超额购买风险股票 |
| 11000723 | Submit order to offer failed! | 提交订单到报盘失败 |
| 11000724 | Invalid session! | 会话无效 |
| 11000900 | xoms credit error | 信用业务一般错误 |
| 11000901 | Security is not in credit guarantee list! | 证券不属于信用担保证券列表 |
| 11000902 | Security is not in credit target list! | 证券不属于信用标的证券列表 |
| 11000903 | Strong stock holder can not make margin trades! | 大股东等身份账户限制进行融资融券交易 |
| 11000904 | Invalid credit cash repay amount! | 无效的现金还款金额 |
| 11000905 | Do not have enough fund to do cash repay! | 账户资金不足以执行现金还款 |
| 11000906 | Repay stock qty is more than stock debt! | 还券数量超过可还券数量 |
| 11000907 | Invalid credit risk level! | 无效的信用账户风险评级 |
| 11000908 | Order is invalid in current credit status! | 账户当前信用状态禁止当前委托 |
| 11000909 | Order is invalid in current debt expire status! | 存在逾期两融负债合约而禁止当前委托 |
| 11000910 | Invalid credit non-trade qty! | 无效的信用业务非交易委托数量 |
| 11000911 | Order is invalid in current credit maintenance rate limit! | 账户当前维保比例禁止当前委托 |
| 11000912 | Invalid price of short sell order (not higher than last price)! | 无效的融券卖出价格（没有高于最新价） |
| 11000913 | Invalid credit cancel order (stock repay stock or surplus stock trans)! | 无效的信用业务撤单（现券还券和余券划转不允许撤单） |
| 11000914 | Invalid credit force side! | 无效的信用业务强平委托类型 |
| 11000915 | Stock in reduct limit list of current account! | 无法减持账户减持限制证券 |
| 11000916 | Expired force repay stock qty is more than expired stock debt! | 强平还券数量超过逾期合约可还券数量 |
| 11000917 | Request repay amount is less than the debt interest fee | 还息金额不足 |
| 11000918 | sell stock repay certain debt's interest fee, the debt is NOT exist! | 卖券还息找不到目标负债合约,无法找到对应负债合约 |
| 11000919 | Credit force order type does not match the credit status of current account! | 不适当的强平委托类型 |
| 11000921 | Credit stk fi concentrate rate check failed! | 未通过融资余额业务规模控制校验 |
| 11000922 | Credit stk sl concentrate rate check failed! | 未通过融券余额业务规模控制校验 |
| 11000923 | Credit stk net short pos concentrate rate check failed! | 融券卖出委托未通过净空头校验 |
| 11000924 | Trade scale check quota exceed! | 规模控制校验配额用尽 |
| 11000925 | Credit stk net long pos concentrate rate check failed! | 买入/融资买入未通过净多头校验 |
| 11000926 | Credit stk trade scale check failed! | 买入/融资买入未通过规模控制校验 |
| 11000940 | Debt extend internal error | 展期内部错误，请联系运维人员 |
| 11000941 | Invalid debt status! | 无效的负债合约状态(不是未偿还或者部分偿还状态) |
| 11000942 | The debt no need to repay | 目标合约无负债，不能展期 |
| 11000943 | The debt's interest fee need to be repaid firstly! | 需要先偿还目标合约的息费 |
| 11000944 | Maintenance rate low! | 维持担保比例过低，不能展期 |
| 11000945 | ST risk ratio invalid! | st风险资产比例过高，不能展期 |
| 11000946 | The debt unrepaid amount is higher! | 目标负债合约负债金额过高，不能展期 |
| 11000947 | 视柜台返回错误而定 | 展期主柜台错误 |
| 11001001 | Get strategy info failed! | 获取组合策略信息失败。 |
| 11001002 | Get combined asset failed! | 获取组合策略持仓失败。 |
| 11001003 | Leg num error! | 组合策略腿数错误。 |
| 11001004 | Get contract asset failed! | 获取合约持仓失败。 |
| 11001005 | Market of contract asset error! | 合约持仓的市场错误。 |
| 11001006 | Type of combined asset error! | 持仓不是组合策略类型。 |
| 11001007 | Alloc combined asset failed! | 分配组合策略持仓失败。 |
| 11001008 | Insert combined asset failed!  | 插入组合策略持仓失败。 |
| 11001009 | Alloc combined pointer asset failed!  | 分配组合策略指针失败。 |
| 11001110 | Insert combined pointer failed!  | 插入组合策略指针失败。 |
| 11001111 | Invalid margin rate of contract! | 无效的合约保证金参数。 |
| 11001112 | Invalid combined strategy id! | 无效的组合策略ID。 |
| 11001113 | Length of contract code error! | 成分合约代码长度错误。 |
| 11001114 | Length of combined number error! | 组合编码长度错误。 |
| 11001115 | Length of strategy code error! | 组合策略代码长度错误。 |
| 11001130 | Alloc combined margin param failed! | 分配组合策略保证金参数失败。 |
| 11001131 | Insert combined margin param failed! | 插入组合策略保证金参数失败。 |
| 11001132 | Alloc combined strategy failed! | 分配组合策略信息失败。 |
| 11001133 | Type of opt contract error! | 合约认沽认购类型错误。 |
| 11001134 | Side of opt contract error! | 合约持仓方向错误。 |
| 11001135 | Cover of opt contract error! | 合约是否备兑错误。 |
| 11001136 | Insert combined strategy failed! | 插入组合策略信息失败。 |
| 11001137 | Get contract asset failed! | 获取合约持仓失败。 |
| 11001138 | Get contract info failed! | 获取合约信息失败。 |
| 11001139 | Combined qty error! | 合约持仓的已用于组合数量错误。 |
| 11001061 | Get contract asset failed in combined execution! | 行权合并获取合约持仓失败！ |
| 11001062 | Get contract info failed in combined execution! | 行权合并获取合约信息失败！ |
| 11001063 | Get contract quote failed in combined execution! | 行权合并获取合约行情失败！ |
| 11001064 | Get margin rate failed in combined execution! | 行权合并获取保证金参数失败！ |
| 11010001 | Failed to asset check. |  验资验券失败。 |
| 11010002 | Warned in asset checking. |  验资验券告警。 |
| 11010010 | Invalid parameter in asset checking. |  验资验券中参数无效。 |
| 11010011 | Invalid capital parameter in calculating the cost of trading by transaction amount. |  计算交易费用时金额参数无效。 |
| 11010012 | Invalid side parameter in calculating the cost of trading by transaction amount. |  计算交易费用时买卖方向参数无效。 |
| 11010013 | Invalid price type parameter in calculating the cost of trading by transaction amount |  计算交易费用时价格参数无效。 |
| 11010014 | Invalid quantity parameter in calculating the cost of trading by transaction amount. |  计算交易费用时数量参数无效。 |
| 11010015 | Invalid nominal price parameter in calculating the balance cost of trading. |  计算交易费用差额时预扣价格参数无效。 |
| 11010016 | Invalid nominal quantity parameter in calculating the balance cost of trading. |  计算交易费用差额时预扣数量参数无效。 |
| 11010017 | Invalid actual price parameter in calculating the balance cost of trading. |  计算交易费用差额时实际成交价格参数无效。  |
| 11010018 | Invalid actual quantity parameter in calculating the balance cost of trading. |  计算交易费用差额时实际成交价格参数无效。 |
| 11010019 | Invalid side parameter in calculating the balance cost of trading. |  计算交易费用差额时买卖方向参数无效。 |
| 11010030 | Invalid order parameter in calculating the cost of trading by transaction returns. |  根据成交回报计算交易费用时订单参数无效。 |
| 11010031 | Invalid action parameter in calculating the cost of trading by transaction returns. |  根据成交回报计算交易费用时订单类型参数无效。 |
| 11010040 | Invalid parameter in authority checking. |  权限检查时参数无效。 |
| 11010041 | Invalid customer status in authority checking. |  权限检查时客户状态参数无效。 |
| 11010042 | Invalid security status in authority checking. |  权限检查时证券状态无效。 |
| 11010043 | Invalid security limits in authority checking. |  权限检查时证券限制无效。 |
| 11010044 | Invalid security right in authority checking. |  权限检查时证券权限无效。 |
| 11010046 | Invalid fund trade right in authority checking. |  权限检查时账户交易权限无效。 |
| 11010047 | Invalid fund right in authority checking. |  权限检查时账户权限无效。 |
| 11010048 | Invalid bsflag in authority checking. |  权限检查时账户买卖标识无效。 |
| 11010049 | Invalid security type in authority checking. |  权限检查时证券类型无效。 |
| 11010051 | Security trade status is suspended. |  证券为停牌状态。 |
| 11010060 | Invalid action parameter in calculating the capital of new order request. |  计算新订单请求资金时订单类型参数无效。 |
| 11010061 | Invalid side parameter in calculating the capital of new order request. |  计算新订单请求资金时买卖方向参数无效。 |
| 11010062 | Invalid price type parameter in calculating the capital of new order request. |  计算新订单请求资金时价格类型参数无效。 |
| 11010070 | Invalid action parameter in calculating the capital of new order response. |  计算订单响应资金时订单类型参数无效。 |
| 11010071 | Invalid side parameter in calculating the capital of new order response. |  计算订单响应资金时买卖方向参数无效。 |
| 11010072 | Invalid price type parameter in calculating the capital of new order response. |  计算订单响应资金时价格类型参数无效。  |
| 11010080 | Invalid action parameter in calculating the capital of transaction returns. |  计算成交回报资金时订单类型参数无效。 |
| 11010081 | Invalid side parameter in calculating the capital of transaction returns. |  计算成交回报资金时买卖方向参数无效。 |
| 11010082 | Invalid price type parameter in calculating the capital of transaction returns. |  计算成交回报资金时价格类型参数无效。 |
| 11010091 | Invalid action parameter in calculating the capital of cancel order response. |  计算撤单响应资金时订单类型参数无效。 |
| 11010092 | Invalid side parameter in calculating the capital of cancel order response. |  计算撤单响应资金时买卖方向参数无效。 |
| 11010093 | Invalid price type parameter in calculating the capital of cancel order response. |  计算撤单响应资金时价格类型参数无效。  |
| 11010100 | Invalid config parameter in initialize of asset checking. |  验资验券初始化时配置参数无效。 |
| 11010101 | Failed to read double value in loading config of cost of trading. |  加载交易费用配置时读取双精度值失败。 |
| 11010102 | Invalid transaction fee rate of buy in configuration checking. |  检查配置时买入成交费率无效。 |
| 11010103 | Invalid transaction fee rate of sell in configuration checking. |  检查配置时卖出成交费率无效。 |
| 11010104 | Invalid minimum transaction fee of buy and sell in configuration checking. |  检查配置时买入卖出交易费用最小值无效。 |
| 11010105 | Invalid maximum transaction fee of buy and sell in configuration checking. |  检查配置时买入卖出交易费用最大值无效。 |
| 11010106 | Failed to read bool value in loading config of cost of trading. |  加载交易费用配置时读取布尔值失败。 |
| 11010107 | Invalid transaction fee rate of struct fund cteation in configuration checking. |  检查配置时分级基金申购成交费率无效。 |
| 11010108 | Invalid transaction fee rate of struct fund redemption in configuration checking. |  检查配置时分级基金赎回成交费率无效。 |
| 11010110 | Invalid action parameter of new order. | 新订单的订单类型参数无效。 |
| 11010111 | Invalid quantity parameter of new order. |  新订单的数量参数无效。 |
| 11010112 | Invalid price parameter of new order. |  新订单的价格参数无效。 |
| 11010113 | Invalid side parameter of new order. |  新订单的买卖方向参数无效。 |
| 11010114 | Invalid business type parameter of new order. | 新订单的业务类型参数无效。 |
| 11010115 | Invalid price type parameter of new order. | 新订单的价格类型参数无效。 |
| 11010120 | Available capital in account is insufficient. |  账户可用资金不足。 |
| 11010121 | Available positions in account is insufficient. |  账户可用持仓不足。 |
| 11010122 | The price goes beyond the limit of rise and fall. |  价格超出涨跌停范围。 |
| 11010123 | Invalid security quantity. |  证券数量无效。 |
| 11010125 | Available capital in account is insufficient(include amount of income). |  账户可用资金不足（包含卖出所得资金） |
| 11010126 | Security quantity is out of limit. |  证券数量超出范围。 |
| 11010127 | Invalid price. |  价格无效。 |
| 11010130 | Invalid action parameter in rollbacking the order. |  回滚订单的订单类型参数无效。 |
| 11010131 | Invalid quantity parameter in rollbacking the order. |  回滚订单的数量参数无效。 |
| 11010132 | Invalid price parameter in rollbacking the order. |  回滚订单的价格参数无效。 |
| 11010133 | Invalid side parameter in rollbacking the order. |  回滚订单的买卖方向参数无效。 |
| 11010134 | Invalid capital in rollbacking the new order. |  回滚订单的金额参数无效。 |
| 11010135 | Invalid business type parameter in rollbacking the order. |  回滚订单的业务类型参数无效。 |
| 11010140 | Invalid action parameter of order response. |  订单响应的订单类型参数无效。 |
| 11010141 | Invalid quantity parameter of order response. |  订单响应的数量参数无效。  |
| 11010142 | Invalid price parameter of order response. |  订单响应的价格参数无效。 |
| 11010143 | Invalid side parameter of order response. |  订单响应的买卖方向参数无效。  |
| 11010144 | Invalid capital of order response. |  订单响应的金额无效。 |
| 11010145 | Invalid business type parameter of order response. |  订单响应的业务类型参数无效。 |
| 11010150 | Invalid action parameter of transaction returns. |  成交回报的订单类型参数无效。  |
| 11010151 | Invalid order quantity parameter of transaction returns. |  成交回报的数量参数无效。 |
| 11010152 | Invalid order price parameter of transaction returns. |  成交回报的价格参数无效。 |
| 11010153 | Invalid side parameter of transaction returns. |  成交回报的买卖方向参数无效。  |
| 11010154 | Invalid price_type parameter of transaction returns. |  成交回报的价格类型参数无效。 |
| 11010155 | Invalid report quantity parameter of transaction returns. |  成交回报的成交数量参数无效。 |
| 11010156 | Invalid report price parameter of transaction returns. |  成交回报的成交价格参数无效。 |
| 11010157 | Invalid capital of transaction returns. |  成交回报的金额无效。 |
| 11010158 | Invalid business type parameter of transaction returns. |  成交回报的业务类型参数无效。 |
| 11010160 | Invalid action parameter of cancel order response. |  撤单响应的订单类型参数无效。 |
| 11010161 | Invalid quantity parameter of cancel order response. |  撤单响应的数量参数无效。 |
| 11010162 | Invalid price parameter of cancel order response. |  撤单响应的价格参数无效。  |
| 11010163 | Invalid side parameter of cancel order response. |  撤单响应的买卖方向参数无效。  |
| 11010166 | Invalid capital of cancel order response. |  撤单响应的金额无效。 |
| 11010167 | Invalid business type parameter of cancel order response. |  撤单响应的业务类型参数无效。 |
| 11010170 | Invalid action parameter in calculating the minimum capital of new sell order request. |  计算卖出所得最小资金时订单类型参数无效。 |
| 11010171 | Invalid side parameter in calculating the minimum capital of new sell order request. |  计算卖出所得最小资金时买卖方向参数无效。  |
| 11010172 | Invalid price type parameter in calculating the minimum capital of new sell order request. |  计算卖出所得最小资金时价格类型参数无效。 |
| 11010180 | Invalid action parameter in calculating the maximum capital of new order request. |  计算订单蕴含最大金额时订单类型参数无效。 |
| 11010181 | Invalid side parameter in calculating the maximum capital of new order request. |  计算订单蕴含最大金额时买卖方向参数无效。 |
| 11010182 | Invalid price type parameter in calculating the maximum capital of new order request. |  计算订单蕴含最大金额时价格类型参数无效。 |
| 11010191 | Invalid divide status of struct fund. |  分级基金的拆分状态无效。 |
| 11010192 | Invalid security type of struct fund. |  分级基金的证券状态无效。 |
| 11010193 | Invalid main flag of struct fund. |  分级基金的母基金标识无效。 |
| 11010200 | Invalid replace type parameter in etf creation. |  ETF申购时现金替代标识无效。 |
| 11010201 | Failed to process cash forbidden stock in ETF creation. |  ETF申购时处理禁止现金替代的成分股票失败。 |
| 11010202 | Failed to process cash optional stock in ETF creation. |  ETF申购时处理可现金替代的成分股票失败。 |
| 11010203 | Cash ratio is overflow in ETF creation. |  ETF申购时超过最大现金替代比例。 |
| 11010210 | Invalid report type parameter of new order report. |  成交回报的成交类型参数错误。 |
| 11010211 | Invalid stock position in new order report. |  成交回报的股票位置号错误。 |
| 11010212 | Creation or redemption of etf is prohibited. | ETF申购或赎回被禁止。 |
| 11010213 | Quantity of order is out of limit in etf creation or redemption. | 订单委托数量超出ETF申购或赎回的限制。 |
| 11010214 | Sum of quantity is out of limit in etf creation or redemption. | 数量之和超出ETF申购或赎回的限制。 |
| 11010220 | Invalid transaction fee rate of creation of ETF in configuration checking. |  检查配置时ETF申购成交费率无效。 |
| 11010221 | Invalid ftransaction fee rate rdemption of ETF in configuration checking. |  检查配置时ETF赎回成交费率无效。 |
| 11010222 | Invalid minimum transaction fee creation and redemption of ETF in configuration checking. |  检查配置时ETF申购赎回成交费用最小值无效。 |
| 11010223 | Invalid maximum  transaction fee of creation and redemption of ETF in configuration checking. | 检查配置时ETF申购赎回成交费用最大值无效。 |
| 11010300 | Failed to check cust_pos_right_limit in options trading. | 期权合约买卖时检查账户权利仓持仓限额失败 |
| 11010301 | Failed to check cust_pos_total_limit in options trading. | 超过单账户该品种总持仓限额 |
| 11010302 | Failed to check cust_pos_day_buy_limit in options trading. | 期权合约买卖时检查账户当天买入开仓限额失败。 |
| 11010310 | Failed to check node_pos_total_limit in options trading. | 未通过节点限仓校验 |
| 11010320 | Failed to check buy_amount_limit_open in options trading. | 超过买开的总金额限制 |
| 11010330 | Failed to check exercise date in options executive. | 未通过行权日校验 |
| 11010340 | Failed to force freeze amount. | 强制冻结金额失败 |
| 11010350 | Invalid transaction fee rate of open long position in configuration checking. | 无效的买入开仓交易费率设置 |
| 11010351 | Invalid transaction fee rate of sell put in configuration checking. | 无效的卖出看跌期权的交易费率设置 |
| 11010352 | Invalid transaction fee rate of open short position in configuration checking. | 无效的买入平仓交易费率设置 |
| 11010353 | Invalid transaction fee rate of buy put in configuration checking. | 无效的买入看跌期权交易费率设置 |
| 11010354 | Invalid transaction fee rate of exercise in configuration checking. | 无效的行权交易费率设置 |
| 11010355 | Invalid transaction fee rate of combined strategy merge in configuration checking. | 无效的组合策略期权组合交易费率设置 |
| 11010356 | Invalid transaction fee rate of combined strategy split in configuration checking. | 无效的组合策略期权拆分交易费率设置 |
| 11010360 | Invalid transaction fee rate of monetary fund creation in configuration checking. | 无效的货币基金申购交易费率设置 |
| 11010361 | Invalid transaction fee rate of monetary fund redemption in configuration checking. | 无效的货币基金赎回费率设置 |
| 11010362 | Invalid minimum transaction fee of monetary fund creation in configuration checking. | 无效的货币基金申购最小费率设置 |
| 11010370 | Invalid data charges of trade in configuration checking. | 检查配置时成交流量费率无效。 |
| 11010371 | Invalid data charges of other in configuration checking. | 检查配置时其它流量费率无效。 |
| 11010400 | Invalid transaction fee count rate of buy in configuration checking. | 检查配置时买入数量费率无效。 |
| 11010401 | Invalid transaction fee count rate of sell in configuration checking. | 检查配置时卖出数量费率无效。 |
| 11010402 | Invalid transaction fee count rate of etf creation in configuration checking. | 检查配置时ETF申购的成分股票数量费率无效。 |
| 11010403 | Invalid transaction fee count rate of etf rdemption in configuration checking. | 检查配置时ETF赎回的成分股票数量费率无效。 |
| 11010411 | The quantity of IPO order is not an integral multiple of the uint. | 申购数量不为申购单位整数倍 |
| 11010412 | The quantity of IPO order is beyond the scope. | 新股申购数量超出范围。 |
| 11010413 | quantity of IPO order exceeds the quota. | 申购数量超出账户申购限额 |
| 11010500 | Failed to check asset in credit business type. | 信用业务验资验券失败 |
| 11010501 | Failed to check credit concentration. | 信用业务集中度校验失败 |
| 11010502 | Failed to check credit cash position. | 信用业务融资头寸校验失败 |
| 11010503 | Failed to check credit stock position. | 信用业务融券头寸校验失败 |
| 11010504 | Failed to get credit cash position | 信用业务融资头寸获取失败 |
| 11010505 | Failed to get credit stock position. | 信用业务融券头寸获取失败 |
| 11010507 | Failed to check credit contract. | 信用业务两融额度校验失败 |
| 11010508 | Failed to check credit mainten rate. | 信用业务委托维保比例校验失败 |
| 11010509 | Invalid order quantity not equal to surplus quantity. | 信用业务余券数量无效 |
| 11010510 | Security concentrate higher. | 柜台证券集中度校验失败 |
| 11010511 | order quantity is higher than current position. | 委托数量超出当前头寸数量 |
| 11010512 | insufficient margin. | 保证金可用余额不足 |
| 11010513 | reduction limit. | 证券减持限售余额不足 |
| 11010550 | Credit debt module internal fail. | 信用负债相关错误 |
| 11010551 | Credit debt can not be found. | 无法找到两融负债合约 |
| 11010552 | Credit debt date not in extend range. | 两融负债合约不在可展期日期范围 |
| 11010553 | Credit debt cannot be extend twice. | 两融负债合约不允许多次展期 |
| 11010560 | Credit cash position used up. | 融资头寸不足 |
| 11010561 | Credit stock position used up. | 融券头寸可用不足 |
| 11010562 | Invalid market. | 无效的市场 |
| 11010563 | Stock not found in stock position. | 在融券头寸中找不到目标证券 |
| 11010564 | Credit contract used up. | 两融授信额度不足 |
| 11010601 | Invalid leg nums. | 无效的成分合约数量。 |
| 11010602 | Invalid leg plugin. | 无效的成分合约信息。 |
| 11010603 | Invalid combined strategy risk control info. | 无效的组合策略风控信息。 |
| 11010604 | Invalid strategy info. | 无效的组合策略信息。 |
| 11010608 | Invalid strategy type. | 无效的组合策略类型。 |
| 11010609 | Invalid combined asset. | 无效的组合策略持仓。 |
| 11010610 | Invalid exchange id. | 无效的市场ID。 |
| 11010611 | Combined strategy id is not in list. | 组合策略ID在成分合约的列表中不存在。 |
| 11010612 | Invalid combined strategy flag. | 无效的组合策略标记。 |
| 11010613 | Invalid contract asset of leg. | 无效的成分合约持仓。 |
| 11010614 | Invalid contract info of leg.  | 无效的成分合约信息。 |
| 11010615 | Invalid type of contract asset. | 无效的合约持仓认沽认购类型。 |
| 11010616 | Invalid side of contract asset. | 无效的合约持仓方向。 |
| 11010617 | Invalid target security. | 无效的标的券。 |
| 11010621 | Invalid type of contract. | 无效的合约认沽认购类型。 |
| 11010622 | Invalid expire date of contract.  | 无效的合约到期日。 |
| 11010623 | Invalid target code of contract.  | 无效的合约标的。 |
| 11010624 | Invalid unit of contract. | 无效的合约单位。 |
| 11010625 | Invalid excecise price of contract. | 无效的合约行权价。 |
| 11010626 | Invalid expire leaving day of contract. | 无效的合约距离行权日。 |
| 11010627 | Invalid quantity of contract. | 无效的合约数量。 |
| 11010631 | Combined strategy id of leg 1 is not in list. | 组合策略ID在成分合约1的列表中不存在。 |
| 11010632 | Combined strategy id of leg 2 is not in list. | 组合策略ID在成分合约2的列表中不存在。 |
| 11010633 | Invalid combined strategy flag of leg 1.  | 无效的成分合约1的组合策略标记。 |
| 11010634 | Invalid combined strategy flag of leg 2.  | 无效的成分合约2的组合策略标记。 |
| 11010635 | Invalid contract asset of leg 1.  | 无效的成分合约1持仓。 |
| 11010636  | Invalid contract asset of leg 2. | 无效的成分合约2持仓。 |
| 11010637  | Invalid contract info of leg 1.  | 无效的成分合约1信息。 |
| 11010638 | Invalid contract info of leg 2. | 无效的成分合约2信息。 |
| 11010639  | Invalid contract asset type of leg 1.  | 无效的合约持仓1认沽认购类型。 |
| 11010640  | Invalid contract asset type of leg 2.  | 无效的合约持仓2认沽认购类型。 |
| 11010641  | Invalid contract asset side of leg 1. | 无效的合约1持仓方向。 |
| 11010642  | Invalid contract asset side of leg 2.  | 无效的合约2持仓方向。 |
| 11010643 | Invalid contract type of leg 1.  | 无效的合约1认沽认购类型。 |
| 11010644 | Invalid contract type of leg 2. | 无效的合约2认沽认购类型。 |
| 11010645  | Invalid expire leaving day of contract of leg 1.  | 无效的合约1距离行权日。 |
| 11010646 | Invalid expire leaving day of contract of leg 2. | 无效的合约2距离行权日。 |
| 11010647 |  Invalid target security of leg 1. | 无效的合约1标的券。 |
| 11010648 |  Invalid target security of leg 2. | 无效的合约2标的券。 |
| 11010661 | Invalid leg nums in combined execution. | 无效的行权合并成分合约数量。 |
| 11010662 | Invalid leg info in combined execution. | 无效的行权合并成分合约信息。 |
| 11010663 | Invalid risk info in combined execution. | 无效的行权合并风控信息。 |
| 11010668 | Invalid contract asset in combined execution. | 无效的行权合并合约持仓。 |
| 11010669 | Invalid contract quote of combined execution. | 无效的行权合并成分合约行情信息。 |
| 11010670 | Invalid contract info in combined execution. | 无效的行权合并成分合约信息。 |
| 11010671 | Invalid target code of contract in combined execution. | 无效的行权合并合约标的券代码。 |
| 11010672 | Invalid unit of contract in combined execution. | 无效的行权合并合约单位。 |
| 11010673 | Invalid expire leaving day of contract in combined execution. | 效的行权合并合约到期日。 |
| 11010674 | Invalid type of contract in combined execution. | 无效的行权合并合约类型。 |
| 11010675 | Invalid excecise price of contract in combined execution. | 无效的行权合并合约行权价。 |
| 11010680 | Net postion is insufficient in combined execution. | 行权合并权利仓净头寸不足。 |
| 11011001 | Failed to risk check. |  风控检查失败。 |
| 11011002 | Warned in risk checking. |  风控检查告警。 |
| 11011006 | Failed to initialize mopool. |  初始化内存池失败。 |
| 11011007 | Number of account is zero. |  账户数量为0。 |
| 11011010 | Invalid parameter in risk checking. |  风控检查时参数无效。 |
| 11011011 | Invalid action parameter in risk checking of new order request. |  风控检查新订单请求时action参数无效。 |
| 11011012 | Invalid action parameter in the prepare of risk checking of new order request. |  风控检查新订单请求预处理时action参数无效。 |
| 11011013 | Invalid action parameter in the end of risk checking of new order request. |  风控检查新订单请求结束时action参数无效。 |
| 11011020 | Invalid account status in risk checking. |  风控检查时账户风控状态无效。 |
| 11011021 | Security hash table initialize failed in risk checking. |  风控检查时初始化哈希表失败。 |
| 11011022 | Security memory pool initialize failed in risk checking. |  风控检查时初始化内存池表失败。 |
| 11011023 | Invalid config of account in risk checking. |  风控检查时账户风控配置无效。 |
| 11011024 | Invalid default config of account in risk checking. |  风控检查时账户默认风控配置无效。 |
| 11011025 | Invalid config of security in risk checking. |   风控检查时证券风控配置无效。 |
| 11011030 | Invalid time_zone in checking config of system. |  系统检查时时区配置无效。 |
| 11011031 | Invalid time_from in checking config of system. |  系统配置检查时起始时间无效。 |
| 11011032 | Invalid time_to in checking config of system. |  系统配置检查时终止时间无效。 |
| 11011033 | Invalid stock_num_max in checking config of system. |  系统配置检查时时区无效。 |
| 11011040 | Invalid account config in risk checking of new order request. |  风控检查新订单请求时账户风控配置无效。 |
| 11011041 | Invalid account status in risk checking of new order request. |  风控检查新订单请求时账户风控状态无效。 |
| 11011042 | Invalid security status in risk checking of new order request. |  风控检查新订单请求时证券风控状态无效。 |
| 11011050 | Invalid account status in risk checking of cancel order request. |  风控检查撤单请求时账户风控状态无效。 |
| 11011051 | Invalid security status in risk checking of cancel order request. |  风控检查撤单请求时证券风控状态无效。 |
| 11011060 | Invalid action parameter in risk checking of new order response. |  风控检查订单响应时订单类型参数无效。 |
| 11011061 | Invalid account status in risk checking of cancel order response. |  风控检查成交回报时账户风控状态无效。 |
| 11011070 | Invalid action parameter in risk checking of transaction returns. |  风控检查成交回报时订单类型参数无效。 |
| 11011080 | Invalid action parameter in risk checking of cancel order response. |  风控检查撤单响应时订单类型参数无效。 |
| 11011100 | Invalid config in checking rule 1. |  rule1风控指标配置无效。 |
| 11011101 | Invalid config in checking rule 2. |  rule2风控指标配置无效。 |
| 11011102 | Invalid config in checking rule 9. |  rule9风控指标配置无效。  |
| 11011103 | Invalid config in checking rule 10. |  rule10风控指标配置无效。 |
| 11011104 | Invalid times config in checking rule 14. |  rule14风控指标配置次数无效。 |
| 11011105 | Invalid in_time config in checking rule 14. |  rule14风控指标配置统计时间段无效。 |
| 11011106 | Invalid brk_time config in checking rule 14. |  rule14风控指标配置熔断时间无效。  |
| 11011107 | Invalid brk_time that is smaller than in_time in checking rule 14. |  rule1风控指标配置熔断时间小于统计时间段。  |
| 11011108 | Invalid config in checking rule 19. |  rule19风控指标配置无效。 |
| 11011109 | Invalid config in checking rule 20. |  rule20风控指标配置无效。  |
| 11011110 | Invalid config in checking rule 25. |  rule25风控指标配置无效。  |
| 11011111 | Invalid config in checking rule 26. |  rule26风控指标配置无效。  |
| 11011112 | Invalid times config in checking rule 27. |  rule27风控指标配置次数无效。  |
| 11011113 | Invalid in_time config in checking rule 27. |  rule27风控指标配置统计时间段无效。 |
| 11011114 | Invalid brk_time config in checking rule 27. |  rule27风控指标配置熔断时间无效。  |
| 11011115 | brk_time is smaller than in_time in checking rule 27. |  rule27风控指标配置熔断时间小于统计时间段。  |
| 11011116 | Invalid times config in checking rule 38. |  rule38风控指标配置次数无效。 |
| 11011117 | Invalid in_time config in checking rule 38. |  rule38风控指标配置统计时间段无效。 |
| 11011118 | Invalid brk_time config in checking rule 38. |  rule38风控指标配置熔断时间无效。 |
| 11011119 | Invalid brk_time that is smaller than in_time in checking rule 38. |  rule38风控指标配置熔断时间小于统计时间段。 |
| 11011120 | Invalid config in checking rule 41. |  rule41风控指标配置无效。 |
| 11011121 | Invalid per config in checking rule 42. |  rule42风控指标配置百分比无效。 |
| 11011122 | Invalid cancel_num config in checking rule 42. |  rule42风控指标配置撤单数量无效。  |
| 11011140 | Invalid times config in checking rule 43. |  rule43风控指标配置次数无效。 |
| 11011141 | Invalid in_time config in checking rule 43. |  rule43风控指标配置统计时间段无效。 |
| 11011142 | Invalid brk_time config in checking rule 43. |  rule43风控指标配置熔断时间无效。 |
| 11011143 | Invalid brk_time that is smaller than in_time in checking rule 43. |  rule43风控指标配置熔断时间小于统计时间段。 |
| 11011201 | Failed to check risk rule 1. |  风控指标rule1检查失败。 |
| 11011202 | Failed to check risk rule 2. |  风控指标rule2检查失败。 |
| 11011209 | Failed to check risk rule 9. |  风控指标rule9检查失败。 |
| 11011210 | Failed to check risk rule 10. |  风控指标rule10检查失败。 |
| 11011214 | Failed to check risk rule 14. |  风控指标rule14检查失败。 |
| 11011219 | Failed to check risk rule 19. |  风控指标rule19检查失败。 |
| 11011220 | Failed to check risk rule 20. |  风控指标rule20检查失败。  |
| 11011225 | Failed to check risk rule 25. |  风控指标rule25检查失败。  |
| 11011226 | Failed to check risk rule 26. |  风控指标rule26检查失败。  |
| 11011227 | Failed to check risk rule 27. |  风控指标rule27检查失败。 |
| 11011238 | Failed to check risk rule 38. |  风控指标rule38检查失败。 |
| 11011239 | Failed to check risk rule 39. |  风控指标rule39检查失败。 |
| 11011241 | Failed to check risk rule 41. |  风控指标rule41检查失败。 |
| 11011242 | Failed to check risk rule 42. |  风控指标rule42检查失败。 |
| 11011243 | Failed to check risk rule 43. |  风控指标rule43检查失败。 |
| 11011314 | Enter rule 14 breaker. |  进入风控指标rule14熔断。 |
| 11011327 | Enter rule 27 breaker. |  进入风控指标rule27熔断。 |
| 11011338 | Enter rule 38 breaker. |  进入风控指标rule38熔断。 |
| 11011343 | Enter rule 43 breaker. |  进入风控指标rule43熔断。 |
| 11100000 | exchange error code（深交所五位错误码） | 在英文错误消息中，可能出现20009的错误码，为深交所返回；表示委托价格炒股了涨跌幅限制，具体可以参考深交所文档。http://www.szse.cn/marketServices/technicalservice/interface/ 最新版的《深圳证券交易所Binary交易数据接口规范》文档 |
| 11100001 | Allocate request message memory failed | 内存池中内存分配失败 |
| 11100002 | Invalid new Order request | 无效新订单 |
| 11100003 | Invalid cancel order request | 无效撤单 |
| 11100004 | System module loading failed | 模块加载失败 |
| 11100005 | Receice binary message from TGW failed | 从TGW接受消息失败 |
| 11100006 | Send binary message to TGW failed | 发送消息到TGW失败 |
| 11100007 | Offer config error | 配置文件错误 |
| 11100008 | Start platform failed | 启动交易平台失败 |
| 11100009 | Stop platform failed | 停止交易平台失败 |
| 11100010 | Start heartbeat thread failed | 启动心跳机制失败 |
| 11100011 | Stop heartbeat thread failed | 停止心跳机制失败 |
| 11100012 | Start receive thread failed | 接受线程启动失败 |
| 11100013 | Start send thread failed | 发送线程启动失败 |
| 11100014 | Connect to TGW failed | 无法连接到TGW |
| 11100015 | Binary message inner error, Check length error | binary消息体长度检测错误 |
| 11100016 | Binary message inner error, Check sum error | binary消息体校验错误 |
| 11100017 | Binary message size too large | binary消息体过大 |
| 11100018 | Unsupport binary message | 当前不支持的binary消息体 |
| 11100019 | Invalid order status | 无效的订单状态 |
| 11100020 | Invalid order price type | 无效的价格类型 |
| 11100021 | Invalid side type | 无效的买卖类型 |
| 11100022 | Exchange id error | 错误的交易所编号 |
| 11100023 | Business reject | TGW的业务拒绝消息 |
| 11100024 | TGW disconnected | TGW的连接断开 |
| 11100025 | Enter daemon mode failed | 进入守护进程模式失败 |
| 11100026 | Invalid Platform State | 无效的平台状态（盘前，交易中，盘中，盘后） |
| 11100027 | Fast buffer malloc memory failed | fast buffer 内存分配失败 |
| 11100028 | Invalid market order | 无效的市场订单 |
| 11100029 | No cache orig new order | 没有缓存原始订单 |
| 11100030 | TGW Platform have closed | 交易平台关闭 |
| 11100031 | Encode TGW message fail | binary消息体编码失败 |
| 11100032 | Duplicate ID in the new order prepare cache | 缓存中的订单重复 |
| 11100033 | Duplicate new order id | 重复的新订单号 |
| 11100034 | Duplicate cancel order id | 重复的撤单号 |
| 11100035 | Original new order is not exist | 原始新订单不存在 |
| 11100036 | New order cannot be canceled in prepare cache | 缓存中的原始新订单无法被撤销 |
| 11100037 | New order in prepare cache send timeout | 缓存中的新订单发送超时 |
| 11110000 | exchange error code（上交所错误码） | 在英文错误消息中，可能出现203这种类似的错误码，为上交所返回；具体可以参考上交所文档。http://www.sse.com.cn/services/tradingservice/tradingtech/technical/other/ |
| 11110001 | Invalid new order request! | 新订单解析失败 |
| 11110002 | Can't get new order pack! | 新订单获取失败 |
| 11110003 | Invalid cancel order request! | 撤单解析失败 |
| 11110004 | Can't get cancel order pack! | 新订单获取失败 |
| 11110005 | Not in trade time! | 不在交易时间内 |
| 11110006 | Invalid order type! | 订单类型错误 |
| 11110007 | Release resp/report pack failed! | 释放回应包失败 |
| 11110008 | Read config failed! | 配置文件读取失败 |
| 11110009 | Initialize moudle failed! | Module无法初始化 |
| 11110010 | Initialize manager failed! | Manager无法初始化 |
| 11110011 | Start manager failed! | Manager无法启动 |
| 11110012 | Open queue failed! | 初始化队列失败 |
| 11110013 | Close queue failed! | 关闭队列失败 |
| 11111000 | Add service insert order failed! | 注册新订单服务失败 |
| 11111001 | Add service cancel order failed! | 注册撤单服务失败 |
| 11111002 | Add service query order failed! | 注册查询服务失败 |
| 11111004 | Reg release newOrder confirm pack failed! | 注册订单确认释放服务失败 |
| 11111005 | Reg release newOrder confirm pack failed! | 注册订单确认释放服务失败 |
| 11111006 | Reg release cancelOrder confirm pack failed! | 注册撤单确认释放服务失败 |
| 11111007 | Reg release tradereport pack failed! | 注册成交回报释放服务失败 |
| 11111008 |  | 注册查询XtpID服务失败 |
| 11112000 | Invalid DB login string! | 数据库连接语句错误 |
| 11112001 | DB disconnected! | 数据库连接中断 |
| 11112002 | Execute Sql string failed! | Sql语句执行失败 |
| 11112003 | DB login failed! | 数据库登录失败 |
| 11113000 | Get cancelorder id failed! | 未能读取本次撤单的rec_num 交易所尚处理到待撤单 |
| 11113001 | Already internal cancelled! | 已经被内部撤单了 |
| 11113002 | Order confirm failed! | 订单/撤单申报确认失败 |
| 11113003 | Neworder error pack failed! | 组装新订单失败包错误 |
| 11113004 | Cancelorder error pack failed! | 组装撤单失败包错误 |
| 11113005 | Orig order not confirmed! | 当前时间段不允许内部撤单（原始订单尚未确认） |
| 11113006 | Send pack failed! | 调用add_push_data失败 |
| 11113007 | Set original xtpid fail! | 撤单时设置原始订单号失败 |
| 11113008 | Repeated order! | 本笔订单为之前未查询到的订单重复下单 |
| 11113009 | Get db prefix fall! | 从数据库获取prefix失败 |
| 11113010 |  | 非内部撤单时间段 |
| 11113011 | Get prefix sequence failed! | 获取prefix的seq失败 |
| 11113012 | Can not find original order! | 撤单时找不到原始订单 |
| 11113013 | Invalid XTP_ID! | XTP_ID有误 |
| 11113014 | Invalid offer side! | 买卖方向错误 |
| 11113015 | Invalid order quantity! | 订单数量错误 |
| 11113016 | Invalid position effect! | 错误的position effect |
| 11113017 | Internal test order! | 内部测试订单 |
| 11113018 | Prefix out of range! | Prefix超出范围 |
| 11113019 | Update Read Flag Failed！ | 更新read_flag错误 |
| 11113020 | Invalid pbu config! | pbu以及pbu_type未定义 |
| 11113021 | Invalid busi type! | 无效的busitype |
| 11113022 |  | 待定 |
| 11113023 | Prefix Not Exist! | 没找到Prefix |
| 11113024 | Check Prefixes Failed ! | 检查Prefix失败 |
| 11115001 | Can't get new order pack! | 新订单获取失败 |
| 11115002 | Release resp/report pack failed! | 释放回应包失败 |
| 11115003 | Read config failed! | 配置文件读取失败 |
| 11115004 | Initialize moudle failed! | Module无法初始化 |
| 11115005 | Initialize manager failed! | Manager无法初始化 |
| 11115006 | Start manager failed! | Manager无法启动 |
| 11115007 | Open queue failed! | 初始化队列失败 |
| 11115008 | Close queue failed! | 关闭队列失败 |
| 11115100 | Add service insert order failed! | 注册新订单服务失败 |
| 11115101 |  | 注册查询XtpID服务失败 |
| 11115102 | Add service order event failed! | 注册订单事件服务失败 |
| 11115103 | Add service order report failed! | 注册成交回报服务失败 |
| 11115104 |  | 注册订单确认释放服务失败 |
| 11115105 |  | 注册查询XtpID服务失败 |
| 11115200 |  | 数据库连接语句错误 |
| 11115201 |  | Sql语句执行失败 |
| 11115202 |  | 数据库登录失败 |
| 11115203 |  | 调用add_push_data失败 |
| 11115204 |  | 重复的xtpid |
| 11115300 | Unallowed security type! | 不允许的证券类型 |
| 11115301 | Total Capital Rete Error! | 可投资股票总股本占比 |
| 11115302 | Circ Capital Rate Error! | 可投资股票流通股占比 |
| 11115303 | Security Inv Rate Error! | 单只股票投资额的资产净值占比 |
| 11115304 | Bond Inv Rate Error! | 单只债券投资额的资产净值占比 |
| 11115305 | Bond Scale Rate Error! | 单只债券投资额的债券发行规模占比 |
| 11115306 | Bond Min Grade Error! | 可买债券的最低评级 |
| 11115307 | Same Bond Inv Rate Error! | 同一发债主体债券投资额的资产净值占比 |
| 11115308 | Fund Inv Rate Error! | 单只基金投资额的资产净值占比 |
| 11115309 | Second Market Inv Rate Error! | 二级市场投资额的资产净值占比 |
| 11115310 | Total Bond Inv Rate Error! | 投资于债券的投资总额的资产净值占比 |
| 11115311 | Fund Hold Rate! | 基金持有比例的资产净值占比 |
| 11115312 | Expiration Date! | 距离届满日的天数 |
| 11115313 | Invalid Fund Account! | 错误的资金账号 |
| 11115314 | Invalid Security Position! | 错误的持仓信息 |
| 11115315 | Already Reach Open Line! | 已经达到平仓线，不允许买入 |
| 11115316 | This Stock Not In White List! | 不在白名单内的证券 |
| 11115317 | Can not find white list! | 该资金账号没有白名单 |
| 11115318 | Can not load security config! | 获取不到证券信息 |
| 11115319 | Can not find security in DB data! | 数据库中 |
| 11115320 | Can not find fund position data! | 找不到资金账号持仓数据 |
| 11115321 | Preopen Security Inv Rate Error! | 盘前风控单只股票投资额超标 |
| 11115322 | Preopen Total Pos Error! | 盘前风控单只股票总股本超标 |
| 11115323 | Preopen Circ Pos Error! | 盘前风控单只股票流通股本超标 |
| 11115324 | Invalid Security Status! | 非法的股票状态（ST、*ST等） |
| 11200001 | unknown date type | 未知数据类型 |
| 11200002 | unknown exchange type | 未知交易所(目前只支持上交所和深交所) |
| 11200003 | unknown ticker id | 未知证券代码 |
| 11200004 | subscribe failed | 注册订阅失败 |
| 11200005 | unSubscribe failed | 取消订阅失败 |
| 11210100 | resource not enough | 资源不足 |
| 11210101 | can't find resource | 找不到资源 |
| 11210102 | array index out of range | 下标或索引越界 |
| 11210103 | checksum failed | 当前数据包校验和错误 |
| 11210200 | package date not complete | 待解析的数据包不完整 |
| 11210201 | parse fast-package failed | 解析数据包失败 |
| 11210202 | parse fast-package field failed | 解码字段错误 |
| 11210203 | pmap is incorrect | 解码FAST存在图错误 |
| 11210204 | parse binary-package failed | 解析深交所binary数据错误 |
| 11600001 | KESB connect failed | KESB连接失败 |
| 11600002 | KESB login failed | KESB登录失败，通常为密码错误或者密码错误次数过多导致账号被锁定，需要解锁后尝试 |
| 11600003 | KESB operate failed | KESB操作失败 |
