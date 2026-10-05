-- ================================================
-- 题目：统计每个学校各难度的用户平均刷题数
-- 考察点：三表 JOIN
-- ================================================
-- 要求：按学校 × 难度统计人均答题数。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）、question_practice_detail（id, device_id, question_id, result, date）、question_detail（id, question_id, difficult_level）
-- 思路：
--   1. 三表依次 INNER JOIN，一个 JOIN 一个 ON
--   2. 按 university 和 difficult_level 两个维度分组
-- 笔记/心得：
--   · 多表就多 JOIN，一个 JOIN 配一个 ON，别漏
-- ================================================

SELECT u.university, d.difficult_level,
       COUNT(q.question_id) / COUNT(DISTINCT q.device_id) AS avg_answer_cnt
FROM user_profile u
INNER JOIN question_practice_detail q ON u.device_id = q.device_id
INNER JOIN question_detail d ON q.question_id = d.question_id
GROUP BY u.university, d.difficult_level;
