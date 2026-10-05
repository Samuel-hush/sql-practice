-- ================================================
-- 题目：将查询后的列重新命名
-- 考察点：AS 别名
-- ================================================
-- 要求：取前 2 个用户的 device_id，并把列名改为 user_infos_example。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 用 AS 给列起别名
--   2. AS 其实可以省略
-- 笔记/心得：
--   · AS 可省略，直接「列名 别名」也行
-- ================================================

SELECT device_id AS user_infos_example
FROM user_profile
LIMIT 0, 2;
