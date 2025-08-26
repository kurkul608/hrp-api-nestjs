# HRP API

HRP API - это NestJS приложение с Prisma ORM для управления человеческими ресурсами и планирования работ.

## Технологии

- **Backend**: NestJS
- **Database**: PostgreSQL
- **ORM**: Prisma
- **Package Manager**: pnpm

## Структура проекта

- `src/` - исходный код приложения
- `prisma/` - схемы базы данных и миграции
- `sql/` - SQL скрипты для инициализации данных
- `docs/` - документация

## Установка и запуск

```bash
# Установка зависимостей
pnpm install

# Настройка базы данных
pnpm prisma migrate dev

# Запуск приложения
pnpm run start:dev
```

## SQL скрипты

В папке `sql/` находятся скрипты для инициализации данных:

1. `01_create_positions.sql` - создание должностей
2. `02_create_position_subordinates.sql` - связи сабдолжностей
3. `03_create_project_types.sql` - типы проектов
4. `04_create_work_sections.sql` - разделы работ
5. `05_create_labor_standards.sql` - трудовые нормативы
6. `06_create_users.sql` - пользователи

## Лицензия

MIT