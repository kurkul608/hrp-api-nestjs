-- SQL скрипт для создания связей сабдолжностей
-- Выполняется после создания таблицы position_subordinates

-- Очистка существующих записей (опционально)
-- DELETE FROM position_subordinates;

-- Создание связей сабдолжностей с коэффициентами производительности
-- Формат: (главная_должность_id, сабдолжность_id, коэффициент_производительности)

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.85, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Генеральный директор' AND sp.title = 'Технический директор';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Генеральный директор' AND sp.title = 'Финансовый директор / Главный бухгалтер';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Технический директор' AND sp.title = 'Финансовый директор / Главный бухгалтер';

-- ГИПы
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.70, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник отдела ГИПов' AND sp.title = 'ГИП';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник отдела ГИПов' AND sp.title = 'Помощник ГИПа';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.65, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'ГИП' AND sp.title = 'Помощник ГИПа';

-- BIM
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник отдела BIM' AND sp.title = 'BIM-менеджер';

-- Конструктивные решения (КР)
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный конструктор' AND sp.title = 'Главный специалист-расчетчик КР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.70, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный конструктор' AND sp.title = 'Ведущий конструктор-расчетчик';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.60, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный конструктор' AND sp.title = 'Руководитель группы КР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный конструктор' AND sp.title = 'Ведущий конструктор';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.40, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный конструктор' AND sp.title = 'Специалист КР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист-расчетчик КР' AND sp.title = 'Ведущий конструктор-расчетчик';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.60, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист-расчетчик КР' AND sp.title = 'Ведущий конструктор';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист-расчетчик КР' AND sp.title = 'Специалист КР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий конструктор-расчетчик' AND sp.title = 'Ведущий конструктор';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.65, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий конструктор-расчетчик' AND sp.title = 'Специалист КР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Руководитель группы КР' AND sp.title = 'Ведущий конструктор';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.60, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Руководитель группы КР' AND sp.title = 'Специалист КР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий конструктор' AND sp.title = 'Специалист КР';

-- Архитектурные решения (АР)
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный архитектор' AND sp.title = 'Главный специалист АР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.70, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный архитектор' AND sp.title = 'Ведущий архитектор';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный архитектор' AND sp.title = 'Специалист АР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист АР' AND sp.title = 'Ведущий архитектор';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.60, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист АР' AND sp.title = 'Специалист АР';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий архитектор' AND sp.title = 'Специалист АР';

-- Инженерные системы
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник отдела ИОС' AND sp.title = 'Главный специалист ЭОМ';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник отдела ИОС' AND sp.title = 'Главный специалист ВК';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник отдела ИОС' AND sp.title = 'Главный специалист ОВиК';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник отдела ИОС' AND sp.title = 'Главный специалист СС';

-- Электроснабжение (ЭОМ)
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист ЭОМ' AND sp.title = 'Ведущий специалист ЭОМ';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист ЭОМ' AND sp.title = 'Специалист ЭОМ';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий специалист ЭОМ' AND sp.title = 'Специалист ЭОМ';

-- Водоснабжение и канализация (ВК)
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист ВК' AND sp.title = 'Ведущий специалист ВК';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист ВК' AND sp.title = 'Специалист ВК';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий специалист ВК' AND sp.title = 'Специалист ВК';

-- Отопление, вентиляция и кондиционирование (ОВиК)
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист ОВиК' AND sp.title = 'Ведущий специалист ОВиК';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист ОВиК' AND sp.title = 'Специалист ОВиК';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий специалист ОВиК' AND sp.title = 'Специалист ОВиК';

-- Слаботочные системы (СС)
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист СС' AND sp.title = 'Ведущий специалист СС';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.50, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист СС' AND sp.title = 'Специалист СС';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Ведущий специалист СС' AND sp.title = 'Специалист СС';

-- Наружные сети
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.70, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Руководитель группы наружных сетей' AND sp.title = 'Главный специалист НВК';

-- Специализированные системы
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист НВК' AND sp.title = 'Главный специалист ЭН';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист НВК' AND sp.title = 'Главный специалист НСС';

INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.75, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист ЭН' AND sp.title = 'Главный специалист НСС';

-- Генплан
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.80, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Главный специалист Генплана' AND sp.title = 'Ведущий специалист Генплана';

-- Внешнее проектирование
INSERT INTO "position_subordinates" ("mainPositionId", "subordinatePositionId", "productivityCoefficient", "createdAt", "updatedAt")
SELECT 
    mp.id, sp.id, 0.70, NOW(), NOW()
FROM positions mp, positions sp
WHERE mp.title = 'Начальник группы внешнего проектирования' AND sp.title = 'Главный специалист ТС';

-- Проверка созданных записей
SELECT 
  ps.id,
  mp.title as main_position,
  sp.title as subordinate_position,
  ps."productivityCoefficient",
  ps."createdAt"
FROM "position_subordinates" ps
JOIN "positions" mp ON ps."mainPositionId" = mp.id
JOIN "positions" sp ON ps."subordinatePositionId" = sp.id
ORDER BY mp.title, sp.title;