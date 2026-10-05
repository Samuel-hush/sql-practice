-- ================================================
-- 题目：查找后降序排列
-- 考察点：ORDER BY 多列降序
-- ================================================
-- 要求：查询 device_id、gpa、age，先按 gpa 降序、gpa 相同时按 age 降序。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 两列都加 DESC 才是全降序
--   2. 不写 DESC 的那列默认升序
-- 笔记/心得：
--   · 每一列要各自加 DESC，不写就默认升序，容易漏
-- ================================================

SELECT device_id, gpa, age
FROM user_profile
ORDER BY gpa DESC, age DESC;
