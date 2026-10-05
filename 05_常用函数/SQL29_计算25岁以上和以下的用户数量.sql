-- ================================================
-- 题目：计算25岁以上和以下的用户数量
-- 考察点：IF 条件函数
-- ================================================
-- 要求：按 25 岁为界，统计「25岁及以上」「25岁以下」各多少人。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. IF(条件, A, B)：条件真返回 A，假返回 B
--   2. 再 GROUP BY 分组 COUNT
-- 笔记/心得：
--   · IF 是两分支，三分支以上就用 CASE
-- ================================================

SELECT IF(age >= 25, '25岁及以上', '25岁以下') AS age_cut, COUNT(*) AS number
FROM user_profile
GROUP BY age_cut;
