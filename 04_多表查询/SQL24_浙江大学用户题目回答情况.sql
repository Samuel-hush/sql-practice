-- ================================================
-- 题目：浙江大学用户题目回答情况
-- 考察点：子查询 / JOIN
-- ================================================
-- 要求：查询浙江大学用户的 device_id、question_id、result 答题明细。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）、question_practice_detail（id, device_id, question_id, result, date）
-- 思路：
--   1. JOIN 写法：两表按 device_id 关联后过滤浙大
--   2. 子查询写法：先查浙大 device_id 再 IN
-- 笔记/心得：
--   · 两表关联 ON 后面写关联键，这里是 device_id
-- ================================================

SELECT u.device_id, q.question_id, q.result
FROM user_profile u
INNER JOIN question_practice_detail q ON u.device_id = q.device_id
WHERE u.university = '浙江大学';
