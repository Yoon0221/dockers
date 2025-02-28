# 베이스 이미지 설정
FROM openjdk:17

# 작업 디렉토리 설정
WORKDIR /app

# keystore.p12 파일 복사
COPY src/main/resources/keystore.p12 /app/keystore.p12

# JAR 파일 복사
COPY build/libs/*.jar app.jar

# 실행 명령
ENTRYPOINT ["java", "-jar", "app.jar"]