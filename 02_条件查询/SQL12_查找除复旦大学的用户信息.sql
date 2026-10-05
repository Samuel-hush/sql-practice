-- ================================================
-- 题目：查找除复旦大学的用户信息
-- 考察点：!= 不等于
-- ================================================
-- 要求：查询学校不是复旦大学的用户信息。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 用 != 或 <> 排除
--   2. 排除复旦大学
-- 笔记/心得：
--   · 不等于有两种写法 != 和 <>，MySQL 里都能用
-- ================================================

SELECT device_id, gender, age, university
FROM user_profile
WHERE university != '复旦大学';
