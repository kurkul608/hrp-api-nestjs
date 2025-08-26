-- SQL скрипт для создания трудовых нормативов (LaborStandard)
-- Выполняется после создания таблиц positions, project_types, work_sections
-- Часы указаны на 10,000 м², повторный этаж = 20% от оригинального

-- Очистка существующих записей (опционально)
-- DELETE FROM labor_standards;

-- Создание трудовых нормативов для МКД
-- Рабочая документация - Архитектурные решения
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    45.0, 9.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АР1' AND p.title = 'Главный архитектор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    130.0, 26.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АР1' AND p.title = 'Ведущий архитектор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    90.0, 18.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АР1' AND p.title = 'Специалист АР' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    35.0, 7.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АР1' AND p.title = 'BIM-менеджер' AND pt.title = 'МКД';

-- Рабочая документация - Архитектурные решения. Раздел 2
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    30.0, 6.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АР2' AND p.title = 'Главный архитектор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    80.0, 16.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АР2' AND p.title = 'Ведущий архитектор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    60.0, 12.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АР2' AND p.title = 'Специалист АР' AND pt.title = 'МКД';

-- Рабочая документация - Архитектурно-строительные решения
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    40.0, 8.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АС1' AND p.title = 'Главный конструктор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    110.0, 22.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АС1' AND p.title = 'Ведущий конструктор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    85.0, 17.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АС1' AND p.title = 'Конструктор-расчетчик' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    35.0, 7.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АС2' AND p.title = 'Главный конструктор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    95.0, 19.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_АС2' AND p.title = 'Ведущий конструктор' AND pt.title = 'МКД';

-- Рабочая документация - Водопровод и канализация
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    50.0, 10.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ВК' AND p.title = 'Главный специалист ВК' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    140.0, 28.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ВК' AND p.title = 'Ведущий специалист ВК' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    100.0, 20.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ВК' AND p.title = 'Специалист ВК' AND pt.title = 'МКД';

-- Рабочая документация - Отопление и вентиляция
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    55.0, 11.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ОВ' AND p.title = 'Главный специалист ОВиК' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    150.0, 30.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ОВ' AND p.title = 'Ведущий специалист ОВиК' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    110.0, 22.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ОВ' AND p.title = 'Специалист ОВиК' AND pt.title = 'МКД';

-- Рабочая документация - Электрооборудование
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    60.0, 12.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ЭОМ' AND p.title = 'Главный специалист ЭОМ' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    160.0, 32.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ЭОМ' AND p.title = 'Ведущий специалист ЭОМ' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    120.0, 24.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ЭОМ' AND p.title = 'Специалист ЭОМ' AND pt.title = 'МКД';

-- Рабочая документация - Генеральный план
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    70.0, 14.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ГП1' AND p.title = 'Главный специалист Генплана' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    120.0, 24.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_ГП1' AND p.title = 'Ведущий специалист Генплана' AND pt.title = 'МКД';

-- Рабочая документация - Наружные водостоки
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    145.0, 29.0, 'WORK', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'Р_НВК' AND p.title = 'Главный специалист НВК' AND pt.title = 'МКД';

-- Проектная документация - Пояснительная записка
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    85.0, 17.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_ПЗ' AND p.title = 'ГИП' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    25.0, 5.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_ПЗ' AND p.title = 'Технический директор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    35.0, 7.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_ПЗ' AND p.title = 'Юрист' AND pt.title = 'МКД';

-- Проектная документация - Архитектурные решения
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    35.0, 7.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_АР1' AND p.title = 'Главный архитектор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    90.0, 18.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_АР1' AND p.title = 'Ведущий архитектор' AND pt.title = 'МКД';

-- Проектная документация - Конструктивные решения
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    40.0, 8.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_КР1' AND p.title = 'Главный конструктор' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    100.0, 20.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_КР1' AND p.title = 'Ведущий конструктор' AND pt.title = 'МКД';

-- Проектная документация - Инженерные решения
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    45.0, 9.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_ИОС1.1' AND p.title = 'Главный специалист ЭОМ' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    110.0, 22.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_ИОС1.1' AND p.title = 'Ведущий специалист ЭОМ' AND pt.title = 'МКД';

-- Проектная документация - Сметная документация
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    40.0, 8.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_СП' AND p.title = 'Финансовый директор / Главный бухгалтер' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    120.0, 24.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_СП' AND p.title = 'Бухгалтер' AND pt.title = 'МКД';

-- Проектная документация - Охрана окружающей среды
INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    55.0, 11.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_ООС' AND p.title = 'Начальник отдела ИОС' AND pt.title = 'МКД';

INSERT INTO labor_standards ("hoursPer10kM2", "productivityOnRepeatedFloor", "docType", "workSectionId", "positionId", "projectTypeId", "createdAt", "updatedAt")
SELECT 
    30.0, 6.0, 'PROJECT', ws.id, p.id, pt.id, NOW(), NOW()
FROM work_sections ws, positions p, project_types pt
WHERE ws.code = 'П_ООС' AND p.title = 'ГИП' AND pt.title = 'МКД';

-- Проверка созданных записей
SELECT 
    ls.id,
    ls."hoursPer10kM2",
    ls."productivityOnRepeatedFloor",
    ls."docType",
    ws.code as work_section_code,
    p.title as position_title,
    pt.title as project_type_title,
    ls."createdAt"
FROM labor_standards ls
JOIN work_sections ws ON ls."workSectionId" = ws.id
JOIN positions p ON ls."positionId" = p.id
JOIN project_types pt ON ls."projectTypeId" = pt.id
ORDER BY ls."docType", ws.code, p.title;