-- ================================================
-- 题目：统计复旦用户8月练题情况
-- 考察点：LEFT JOIN + 条件统计
-- ================================================
-- 要求：统计复旦大学各用户 8 月做题总数和答对数，8 月没练过的答题数计 0。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）、question_practice_detail（id, device_id, question_id, result, date）
-- 思路：
--   1. LEFT JOIN 保留所有复旦用户
--   2. 8 月条件写在 ON 里（这样没练过的也能保留）
--   3. SUM(IF(result=right,1,0)) 数答对数
-- 笔记/心得：
--   · LEFT JOIN 时把 8 月的条件写在 ON 里，没练过的用户才能留下来计 0
-- ================================================

SELECT u.device_id, u.university,
       COUNT(q.question_id) AS question_cnt,
       SUM(IF(q.result = 'right', 1, 0)) AS right_question_cnt
FROM user_profile u
LEFT JOIN question_practice_detail q
  ON u.device_id = q.device_id AND MONTH(q.date) = 8
WHERE u.university = '复旦大学'
GROUP BY u.device_id, u.university;
