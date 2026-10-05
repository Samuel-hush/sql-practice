-- ================================================
-- 题目：查询多列
-- 考察点：SELECT 指定列
-- ================================================
-- 要求：从 user_profile 表取出 device_id、gender、age、university 四列。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. SELECT 后面写想要的那几列
--   2. 列之间用逗号分隔
-- 笔记/心得：
--   · 想要哪几列就写哪几列，逗号隔开就行
-- ================================================

SELECT device_id, gender, age, university
FROM user_profile;
