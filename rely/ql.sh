#!/usr/bin/env bash
#

TIME() {
[[ -z "$1" ]] && {
	echo -ne " "
} || {
     case $1 in
	r) export Color="\e[31;1m";;
	g) export Color="\e[32;1m";;
	b) export Color="\e[34;1m";;
	y) export Color="\e[33;1m";;
	z) export Color="\e[35;1m";;
	l) export Color="\e[36;1m";;
      esac
	[[ $# -lt 2 ]] && echo -e "\e[36m\e[0m ${1}" || {
		echo -e "\e[36m\e[0m ${Color}${2}\e[0m"
	 }
      }
}
echo
TIME l "安装依赖..."
echo
TIME y "安装依赖需要时间，请耐心等待!"

echo
sleep 2
npm config set registry https://mirrors.huaweicloud.com/repository/npm/

apk update

apk add vim nano

TIME l "安装依赖"
pnpm install -g pnpm js-base64 qrcode-terminal silly-datetime
TIME l "安装依赖"
npm install -g npm date-fns axios png-js crypto-js ds md5 ts-md5 tslib download @types/node requests tough-cookie jsdom tunnel fs ws form-data js-base64 node-rsa jsencrypt got silly-datetime cheerio moment node-jsencrypt
TIME l "安装yarn"
npm install -g yarn --force
TIME l "安装依赖typescript"
yarn add typescript

TIME l "升级pip"
pip3 install --upgrade pip
TIME l "升级setuptools"
pip3 install --upgrade setuptools

TIME l "安装pip依赖"
pip3 install requests download jieba lxml gevent b4 bs4 zhon moment aiohttp pycryptodome PyExecJS

cd /ql/scripts/ && apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && npm i && npm i -S ts-node typescript @types/node date-fns axios png-js canvas --build-from-source
cd /ql
apk add --no-cache build-base g++ cairo-dev pango-dev giflib-dev && cd scripts && npm install canvas --build-from-source
TIME l "安装python3"
cd /ql
apk add python3 zlib-dev gcc jpeg-dev python3-dev musl-dev freetype-dev
echo
TIME g "依赖安装完毕..."
echo
exit 0
