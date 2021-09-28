# Docker를 이용한 리눅스 버전 한글 오피스 설치

## 실행 전
다운받은 Dockerfile 과 같은 디렉토리에서 아래 명령어로 image 생성
```bash
docker build . -t hwp
```
### XQuartz, socat 설치 
``` bash
brew install socat
brew install --cask xquartz
```

socket Open
``` bash
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```
아래 명령어로 상태 확인 가능
``` bash
lsof -i TCP:6000
```
![135083347-064e20ca-143d-4072-914c-cff7019370ff](https://user-images.githubusercontent.com/52348220/135086069-a6a03b69-c4d2-4562-893d-65fb3a3fa6b5.png)



## 실행 방법

현재 터미널 에서 작업중인 디렉토리와 docker 의 "/home" 폴더가 공유됨
```bash
docker run --rm -it --name hwp -e DISPLAY=docker.for.mac.host.internal:0 -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v$(pwd):/home hwp
```

![135084860-a3fcbe6b-9e2c-47bd-903f-553f5adcaf77](https://user-images.githubusercontent.com/52348220/135086028-7725df55-d14b-4905-abad-460b0fa31637.png)
