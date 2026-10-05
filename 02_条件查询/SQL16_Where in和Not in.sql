-- ================================================
-- 题目：Where in和Not in
-- 考察点：IN
-- ================================================
-- 要求：查询学校是北京大学、复旦大学、山东大学之一的用户。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 限定某几个值用 IN
--   2. IN 后面跟括号列值
-- 笔记/心得：
--   · 多个值用 IN 比一堆 OR 清爽多了
-- ================================================

SELECT device_id, gender, age, university, gpa
FROM user_profile
WHERE university IN ('北京大学', '复旦大学', '山东大学');
