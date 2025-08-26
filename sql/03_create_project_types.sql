-- SQL скрипт для создания типов проектов
-- Выполняется после создания таблицы project_types

-- Очистка существующих записей (опционально)
-- DELETE FROM project_types;

-- Создание типов проектов
INSERT INTO project_types (title, description, "createdAt", "updatedAt") VALUES
('МКД', 'Многоквартирный жилой дом', NOW(), NOW()),
('Детский_сад', 'Детский сад', NOW(), NOW()),
('Больница', 'Больница', NOW(), NOW()),
('Отдельностоящий_паркинг', 'Отдельностоящий паркинг', NOW(), NOW()),
('ТЦ', 'Торговый центр', NOW(), NOW()),
('Школа', 'Школа', NOW(), NOW()),
('МФЦ', 'Многофункциональный центр', NOW(), NOW());

-- Проверка созданных записей
SELECT id, title, description, "createdAt" FROM project_types ORDER BY id;