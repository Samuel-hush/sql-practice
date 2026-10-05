-- ================================================
-- 题目：高级操作符练习(2)
-- 考察点：OR
-- ================================================
-- 要求：查询学校是北京大学或 GPA 大于 3.7 的用户。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 任一条件满足用 OR
--   2. 北大 或 gpa > 3.7
-- 笔记/心得：
--   · OR 是「满足一个就行」
-- ================================================

SELECT device_id, gender, age, university, gpa
FROM user_profile
WHERE university = '北京大学' OR gpa > 3.7;
