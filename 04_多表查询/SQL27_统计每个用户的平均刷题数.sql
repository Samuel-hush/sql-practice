-- ================================================
-- 题目：统计每个用户的平均刷题数
-- 考察点：三表 JOIN + 过滤
-- ================================================
-- 要求：统计山东大学每个用户在每种难度下的平均答题数。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）、question_practice_detail（id, device_id, question_id, result, date）、question_detail（id, question_id, difficult_level）
-- 思路：
--   1. 先 WHERE 过滤山东大学
--   2. 三表 JOIN 后按 device_id 分组
--   3. 除以不同难度数
-- 笔记/心得：
--   · 先过滤再分组，比先分组再过滤效率高
-- ================================================

SELECT u.device_id, u.university,
       COUNT(q.question_id) / COUNT(DISTINCT d.difficult_level) AS avg_answer_cnt
FROM user_profile u
INNER JOIN question_practice_detail q ON u.device_id = q.device_id
INNER JOIN question_detail d ON q.question_id = d.question_id
WHERE u.university = '山东大学'
GROUP BY u.device_id, u.university;
