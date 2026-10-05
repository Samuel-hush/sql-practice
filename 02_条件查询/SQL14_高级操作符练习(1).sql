-- ================================================
-- 题目：高级操作符练习(1)
-- 考察点：AND
-- ================================================
-- 要求：查询性别为男且 GPA 大于 3.5 的用户。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 两个条件同时满足用 AND
--   2. gender = male 且 gpa > 3.5
-- 笔记/心得：
--   · AND 是「两个都要满足」
-- ================================================

SELECT device_id, gender, age, university, gpa
FROM user_profile
WHERE gender = 'male' AND gpa > 3.5;
