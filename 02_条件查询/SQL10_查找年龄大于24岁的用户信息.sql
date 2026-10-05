-- ================================================
-- 题目：查找年龄大于24岁的用户信息
-- 考察点：WHERE >
-- ================================================
-- 要求：查询年龄大于 24 岁的用户的 device_id、gender、age、university。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. WHERE age > 24
--   2. 比较符跟数学一样
-- 笔记/心得：
--   · 大于小于直接 > < 就行
-- ================================================

SELECT device_id, gender, age, university
FROM user_profile
WHERE age > 24;
