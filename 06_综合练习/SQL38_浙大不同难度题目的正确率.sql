-- ================================================
-- 题目：浙大不同难度题目的正确率
-- 考察点：三表 JOIN + 正确率
-- ================================================
-- 要求：计算浙江大学用户在不同难度题目上的正确率，按正确率升序。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）、question_practice_detail（id, device_id, question_id, result, date）、question_detail（id, question_id, difficult_level）
-- 思路：
--   1. 三表 JOIN 关联
--   2. 正确率 = 答对数 ÷ 总答题数
--   3. 按难度分组、按正确率升序
-- 笔记/心得：
--   · 正确率 = 答对 / 总数，答对用 IF 或 CASE 转成 0/1 再 SUM
-- ================================================

SELECT d.difficult_level,
       SUM(IF(q.result = 'right', 1, 0)) / COUNT(q.question_id) AS correct_rate
FROM user_profile u
INNER JOIN question_practice_detail q ON u.device_id = q.device_id
INNER JOIN question_detail d ON q.question_id = d.question_id
WHERE u.university = '浙江大学'
GROUP BY d.difficult_level
ORDER BY correct_rate ASC;
