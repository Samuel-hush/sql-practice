-- ================================================
-- 题目：查询结果去重
-- 考察点：DISTINCT
-- ================================================
-- 要求：查询 user_profile 表中所有不同的学校（去重后）。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 在列名前加 DISTINCT 去重
--   2. 只对 university 这一列去重
-- 笔记/心得：
--   · 去重就一个 DISTINCT 的事，写在列前面
-- ================================================

SELECT DISTINCT university
FROM user_profile;
