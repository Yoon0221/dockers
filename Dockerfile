# 1. JDK 21 기반 이미지 사용
FROM eclipse-temurin:21-jdk

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. JAR 파일 복사
COPY build/libs/*.jar app.jar

# 4. keystore.p12 파일 복사
ARG KEY_STORE_PATH
COPY ${KEY_STORE_PATH} /app/keystore.p12

# 5. 컨테이너 실행 명령어
CMD ["java", "-jar", "app.jar"]