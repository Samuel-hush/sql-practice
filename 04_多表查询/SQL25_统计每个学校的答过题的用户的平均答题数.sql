-- ================================================
-- 题目：统计每个学校的答过题的用户的平均答题数
-- 考察点：JOIN + 聚合
-- ================================================
-- 要求：按学校统计：总答题数 ÷ 去重用户数 = 人均答题数。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）、question_practice_detail（id, device_id, question_id, result, date）
-- 思路：
--   1. 两表 JOIN 关联
--   2. COUNT(question_id) 数总答题、COUNT(DISTINCT device_id) 数去重人数
--   3. 两者相除得人均
-- 笔记/心得：
--   · 人均 = 总数 / 去重人数，记得用 COUNT(DISTINCT)
-- ================================================

SELECT u.university,
       COUNT(q.question_id) / COUNT(DISTINCT q.device_id) AS avg_answer_cnt
FROM user_profile u
INNER JOIN question_practice_detail q ON u.device_id = q.device_id
GROUP BY u.university;
