# War 파일 만들기
- bootWar 실행
- 프로젝트 폴더 / build / libs에 war 파일 생성됨

# cafe24 배포하기
- webapps 폴더가 아닌 webapps-javaee 폴더를 만들어 war파일 복사

# cafe24 배포시 메모리 부족 오류 
- bin/catarina.sh 파일 2번째 줄에 아래 코드추가
- JAVA_OPTS="-Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms1024m -Xmx1024m -XX:NewSize=512m -XX:MaxNewSize=512m -XX:PermSize=512m -XX:MaxPermSize=512m -XX:+DisableExplicitGC"

