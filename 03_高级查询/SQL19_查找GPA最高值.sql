-- ================================================
-- 题目：查找GPA最高值
-- 考察点：MAX
-- ================================================
-- 要求：查询复旦大学学生的 GPA 最高值。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 先 WHERE 过滤复旦
--   2. 再 MAX(gpa) 求最大值
-- 笔记/心得：
--   · MAX/MIN/AVG/SUM/COUNT 这几个聚合函数常一起用
-- ================================================

SELECT MAX(gpa) AS gpa
FROM user_profile
WHERE university = '复旦大学';
