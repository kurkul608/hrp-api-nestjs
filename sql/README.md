# SQL скрипты для инициализации базы данных

Этот каталог содержит SQL скрипты для создания и заполнения базы данных HRP API.

## Порядок выполнения скриптов

**ВАЖНО**: Скрипты должны выполняться в строгом порядке, так как они зависят друг от друга.

### 1. Создание должностей (`01_create_positions.sql`)
Создает все должности в системе с их описаниями.

### 2. Создание связей сабдолжностей (`02_create_position_subordinates.sql`)
Создает иерархические связи между должностями с коэффициентами производительности.

### 3. Создание типов проектов (`03_create_project_types.sql`)
Создает основные типы проектов (МКД, детский сад, больница и т.д.).

### 4. Создание разделов работ (`04_create_work_sections.sql`)
Создает разделы работ для рабочей и проектной документации.

### 5. Создание трудовых нормативов (`05_create_labor_standards.sql`)
Создает трудовые нормативы для различных должностей, разделов работ и типов проектов.

### 6. Создание пользователей (`06_create_users.sql`)
Создает тестовых пользователей системы с привязкой к должностям.

## Выполнение скриптов

### Через psql
```bash
# Подключение к базе данных
psql -h localhost -U username -d database_name

# Выполнение скриптов по порядку
\i 01_create_positions.sql
\i 02_create_position_subordinates.sql
\i 03_create_project_types.sql
\i 04_create_work_sections.sql
\i 05_create_labor_standards.sql
\i 06_create_users.sql
```

### Через Docker (если используется)
```bash
# Копирование скриптов в контейнер
docker cp sql/ container_name:/tmp/

# Выполнение в контейнере
docker exec -it container_name psql -U username -d database_name -f /tmp/01_create_positions.sql
docker exec -it container_name psql -U username -d database_name -f /tmp/02_create_position_subordinates.sql
docker exec -it container_name psql -U username -d database_name -f /tmp/03_create_project_types.sql
docker exec -it container_name psql -U username -d database_name -f /tmp/04_create_work_sections.sql
docker exec -it container_name psql -U username -d database_name -f /tmp/05_create_labor_standards.sql
docker exec -it container_name psql -U username -d database_name -f /tmp/06_create_users.sql
```

## Проверка результатов

После выполнения каждого скрипта в конце есть SELECT запросы для проверки созданных данных.

## Примечания

- Все скрипты используют транзакции для обеспечения целостности данных
- Перед выполнением убедитесь, что база данных создана и Prisma миграции применены
- Скрипты можно выполнять многократно (они содержат проверки на существование данных)
- Пароли пользователей по умолчанию: `Master22!` (захешированные)

## Структура данных

Скрипты создают следующую структуру:
- **Должности** - иерархия должностей с коэффициентами производительности
- **Типы проектов** - классификация проектов по назначению
- **Разделы работ** - рабочие и проектные разделы документации
- **Трудовые нормативы** - часы на 10,000 м² для различных комбинаций
- **Пользователи** - тестовые сотрудники с привязкой к должностям