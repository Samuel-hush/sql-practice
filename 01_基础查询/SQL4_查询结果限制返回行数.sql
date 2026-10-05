-- ================================================
-- 题目：查询结果限制返回行数
-- 考察点：LIMIT
-- ================================================
-- 要求：只返回 user_profile 表前 2 个用户的 device_id。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. LIMIT 后第一个数是起始位置（从 0 开始数）
--   2. 第二个数是取几条
-- 笔记/心得：
--   · LIMIT 起始,条数，起始从 0 数起，别跟 OFFSET 搞混
-- ================================================

SELECT device_id
FROM user_profile
LIMIT 0, 2;
