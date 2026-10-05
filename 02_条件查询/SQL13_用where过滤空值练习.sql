-- ================================================
-- 题目：用where过滤空值练习
-- 考察点：IS NOT NULL
-- ================================================
-- 要求：查询年龄不为空的用户的 device_id、gender、age、university。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 判断非空用 IS NOT NULL
--   2. 不能写 age != NULL
-- 笔记/心得：
--   · 空值判断要用 IS NULL / IS NOT NULL，= NULL 是错的
-- ================================================

SELECT device_id, gender, age, university
FROM user_profile
WHERE age IS NOT NULL;
