# Log Rotate Service

## Переменные окружения

- `PATH_TO_LOG_DIR`: Абсолютный путь к каталогу, содержащему лог-файлы.
- `ROTATE_MODE`: Режим обработки лог-файлов (`COMPRESS` для сжатия, `DELETE` для удаления).

## Запуск приложения

1. **Настройка переменных окружения:**

   Заполните `.env`, указав значения для переменных окружения.

2. **Запуск контейнера:**

   Используйте Docker Compose для запуска контейнера.

   ```bash
   docker-compose up --build -d
   ```

   Приложение будет автоматически собрано и запущено в фоновом режиме.

## Остановка приложения

Чтобы остановить приложение, выполните следующую команду:

```bash
docker-compose down
```

