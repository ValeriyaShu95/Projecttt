# Используем официальный образ OpenJDK 17
FROM openjdk:21-jdk

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем скомпилированный JAR файл в контейнер
COPY target/Project.war /app/Project.war

# Команда для запуска приложения при запуске контейнера
CMD ["java", "-jar", "Project.war"]
