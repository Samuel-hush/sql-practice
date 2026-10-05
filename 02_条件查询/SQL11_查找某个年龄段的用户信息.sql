-- ================================================
-- 题目：查找某个年龄段的用户信息
-- 考察点：BETWEEN 区间
-- ================================================
-- 要求：查询年龄在 20 岁到 23 岁（含两端）的用户。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. BETWEEN 20 AND 23 表示 20 到 23 的闭区间
--   2. 等价于 age >= 20 AND age <= 23
-- 笔记/心得：
--   · BETWEEN 是闭区间，两头都包含
-- ================================================

SELECT device_id, gender, age
FROM user_profile
WHERE age BETWEEN 20 AND 23;
