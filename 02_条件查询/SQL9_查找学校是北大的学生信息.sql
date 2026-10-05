-- ================================================
-- 题目：查找学校是北大的学生信息
-- 考察点：WHERE =
-- ================================================
-- 要求：查询学校是北京大学的用户的 device_id 和 university。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. WHERE 后跟条件
--   2. 字符串用单引号包起来
-- 笔记/心得：
--   · 字符串条件要用单引号，双引号 MySQL 里默认不认
-- ================================================

SELECT device_id, university
FROM user_profile
WHERE university = '北京大学';
