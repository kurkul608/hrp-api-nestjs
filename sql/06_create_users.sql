-- SQL скрипт для создания сотрудников
-- Выполняется после создания таблиц positions, project_types, work_sections, labor_standards
-- Пароли по умолчанию: Master22! (захешированные)

-- Очистка существующих записей (опционально)
-- DELETE FROM users;

-- Создание сотрудников
-- Пароль по умолчанию: Master22! (захешированный)
-- Статус: ACTIVE для всех сотрудников
-- Роли: EMPLOYEE по умолчанию

INSERT INTO users (name, surname, email, password, status, roles, "positionId", "createdAt", "updatedAt", "passwordModifiedAt") VALUES
-- Архитектурные решения
('Анна', 'Астафьева', 'a.astafieva@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист ОВиК'), NOW(), NOW(), NOW()),

('Валерия', 'Боброва', 'v.bobrova@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Технический директор'), NOW(), NOW(), NOW()),

('Александра', 'Бондаренко', 'a.bondarenko@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий архитектор'), NOW(), NOW(), NOW()),

('Наталья', 'Вороненкова', 'n.voronenkova@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий конструктор'), NOW(), NOW(), NOW()),

('Артём', 'Газарян', 'a.gazaryan@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Начальник отдела ИОС'), NOW(), NOW(), NOW()),

('Елизавета', 'Газарян', 'e.gazaryan@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий конструктор'), NOW(), NOW(), NOW()),

('Наталья', 'Гудкова', 'n.gudkova@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'HR'), NOW(), NOW(), NOW()),

('Павел', 'Дворников', 'p.dvornikov@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист ЭОМ'), NOW(), NOW(), NOW()),

('Ринат', 'Еникеев', 'r.enikeev@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'BIM-менеджер'), NOW(), NOW(), NOW()),

('Артем', 'Ивлев', 'a.ivlev@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Специалист КР'), NOW(), NOW(), NOW()),

('Артур', 'Имамутдинов', 'a.imamutdinov@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Специалист ОВиК'), NOW(), NOW(), NOW()),

('Сергей', 'Кова', 's.kov@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист СС'), NOW(), NOW(), NOW()),

('Светлана', 'Койвистойнен', 's.koivistoinen@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный архитектор'), NOW(), NOW(), NOW()),

('Ирина', 'Конюхова', 'i.konyukhova@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий конструктор'), NOW(), NOW(), NOW()),

('Илья', 'Королев', 'i.korolev@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий архитектор'), NOW(), NOW(), NOW()),

('Дмитрий', 'Котляров', 'd.kotlyarov@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный конструктор'), NOW(), NOW(), NOW()),

('Ольга', 'Лазаревич', 'o.lazarevich@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий архитектор'), NOW(), NOW(), NOW()),

('Мария', 'Ломтева', 'm.lomteva@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Специалист АР'), NOW(), NOW(), NOW()),

('Марина', 'Мартынюк', 'm.martyunyuk@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий конструктор'), NOW(), NOW(), NOW()),

('Юлия', 'Пашинцева', 'y.pashintseva@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Специалист АР'), NOW(), NOW(), NOW()),

('Екатерина', 'Помазан', 'e.pomazan@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий конструктор-расчетчик'), NOW(), NOW(), NOW()),

('Петр', 'Роднов', 'p.rodnov@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист-расчетчик КР'), NOW(), NOW(), NOW()),

('Еламан', 'Сапаргалиев', 'e.sapargaliev@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Конструктор-расчетчик'), NOW(), NOW(), NOW()),

('Павел', 'Смирнов', 'p.smirnov@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Генеральный директор'), NOW(), NOW(), NOW()),

('Рамиль', 'Фатхиев', 'r.fathiev@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист ВК'), NOW(), NOW(), NOW()),

('Руслан', 'Хайруллин', 'r.khairullin@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий конструктор-расчетчик'), NOW(), NOW(), NOW()),

('Салават', 'Хафизов', 's.khafizov@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Специалист ВК'), NOW(), NOW(), NOW()),

('Евгений', 'Шепеленко', 'e.shepelinko@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист-расчетчик КР'), NOW(), NOW(), NOW()),

('Дарья', 'Шинина', 'd.shinina@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Специалист АР'), NOW(), NOW(), NOW()),

('Алексей', 'Гафнер', 'a.gaffner@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист ВК'), NOW(), NOW(), NOW()),

('Евгения', 'Головко', 'e.golovko@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Ведущий архитектор'), NOW(), NOW(), NOW()),

('Анна', 'Медведева', 'a.medvedeva@company.com', '$argon2id$v=19$m=65536,t=3,p=4$hash_here', 'ACTIVE', ARRAY['EMPLOYEE'::text]::"UserRole"[], 
 (SELECT id FROM positions WHERE title = 'Главный специалист Генплана'), NOW(), NOW(), NOW());

-- Проверка созданных записей
SELECT 
    u.id,
    u.name,
    u.surname,
    u.email,
    u.status,
    u.roles,
    p.title as position_title,
    u."createdAt"
FROM users u
LEFT JOIN positions p ON u."positionId" = p.id
ORDER BY u.surname, u.name;