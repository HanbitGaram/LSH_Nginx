# 소개
이 파일은 HostLSH 서버의 호스팅 서버에서 사용되는 Nginx 파일입니다.

라이센스 : BSD<br>
원본 : [NGINX 사이트](https://nginx.org)

오픈소스로 개발 된 소스를 HostLSH 서버에 맞게 수정하였으므로,<br>
HostLSH 서버 외에서는 사용하기에 부적합 할 수 있습니다.

최근 버전 : 1.19.0

# 설치방법 및 업데이트 방법
```sh
wget https://raw.githubusercontent.com/HanbitGaram/LSH_Nginx/master/install.sh -O install.sh && sh install.sh
```

## WSL을 사용하는 경우
위 설치방법이 동작하지 않을 수 있습니다.
INSTALL 파일의 내용을 터미널에 복붙하여 넣어주시기 바랍니다.

ｉｎｓｔａｌｌ．ｓｈ를　열어서 복사하고，　내용을　ＷＳＬ창에　붙여넣기

# 설치되는 경로
```
/usr/local/nginx
```

# 명령어
설치할 때 환경을 고려하기 때문에, 별도의 환경변수 설정은 필요 없습니다.

## 프로세스 시작
```
nginx
```

## 프로세스 종료
```
nginx -s stop
```

## 설정 리로드
```
nginx -s reload
```
