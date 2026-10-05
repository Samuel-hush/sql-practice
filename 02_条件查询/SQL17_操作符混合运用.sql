-- ================================================
-- 题目：操作符混合运用
-- 考察点：AND/OR 混合
-- ================================================
-- 要求：查询山东大学 GPA>3.5 或 复旦大学 GPA>3.8 的用户。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. AND 优先级比 OR 高
--   2. 两组条件分别加括号，逻辑才清楚
-- 笔记/心得：
--   · AND 比 OR 优先级高，混用一定要加括号，不然会算错
-- ================================================

SELECT device_id, gender, age, university, gpa
FROM user_profile
WHERE (university = '山东大学' AND gpa > 3.5)
   OR (university = '复旦大学' AND gpa > 3.8);
