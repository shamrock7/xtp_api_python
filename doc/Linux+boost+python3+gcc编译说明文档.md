# Linux下boost.python3库编译说明

## 1. 环境准备

  1. **Linux**
  2. **python3.10.4(tar.gz)**
  3. **gcc (8.3.1版本)**
  4. **boost 1.79.0 (tar.bz2)**


## Python 的安装
略

```text
mac 上可用 brew 安装
linux 上可用 yum 安装
或者源码编译
```


## Boost的编译与安装

1. 下载: 进入官网[http://www.boost.org/](http://www.boost.org/)，选择最新的版本，这里是1.79.0版本,下载到`/tmp/boost_1_79_0.tar.bz2`
2. 解压: `cd /tmp/ && tar xf boost_1_79_0.tar.bz2 && cd boost_1_79_0`
3. 因为python是非标准目录安装，这里需要设置python路径，将下面文件放到 `/tmp/boost_1_79_0/tools/build/src/user-config.jam`。
	注意这里`${PYTHON_ROOT}`请替换成你python的根目录

	```text
	using python : 3.10 : ${PYTHON_ROOT}/bin/python3.10 :${PYTHON_ROOT}/include/python3.10 : ${PYTHON_ROOT}/lib ;
	```
4. 执行下面的脚本在`/tmp/boost_1_79_0/`
	
	
	```bash
	#!/bin/bash

	PYTHON_ROOT="/usr/local/apps/homebrew/Cellar/python\@3.10/3.10.4/Frameworks/Python.framework/Versions/3.10"

	./bootstrap.sh \
		--with-toolset="clang" \
		--prefix="/usr/local/apps/boost"
	
	./b2 --toolset="clang" \
		--variant="release" --reconfigure \
		--debug-configuration --debug-building --debug-generator --layout="system" \
		--with-python \
		--with-chrono \
		--with-date_time \
		--with-thread \
		--with-container \
		--with-context \
		--with-contract \
		--with-coroutine \
		--with-exception \
		--with-fiber \
		--with-filesystem \
		--with-graph \
		--with-graph_parallel \
		--with-headers \
		--with-iostreams \
		--with-json \
		--with-locale \
		--with-log \
		--with-math \
		--with-mpi \
		--with-nowide \
		--with-program_options \
		--with-random \
		--with-regex \
		--with-serialization \
		--with-stacktrace \
		--with-system \
		--with-test \
		--with-timer \
		--with-type_erasure \
		--with-wave \
		--with-atomic
		
	[[ $? -ne 0 ]] && exit $?
	
	./b2 --prefix=/usr/local/apps/boost install
	[[ $? -ne 0 ]] && echo "install" && exit $?
	```	