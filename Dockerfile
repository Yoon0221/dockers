# 1. JDK 21 기반 이미지 사용
FROM eclipse-temurin:21-jdk

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. JAR 파일 복사 (CI/CD에서 빌드된 JAR 파일이 복사됨)
COPY build/libs/*.jar app.jar

# 4. 컨테이너에서 실행할 명령어
CMD ["java", "-jar", "app.jar"]