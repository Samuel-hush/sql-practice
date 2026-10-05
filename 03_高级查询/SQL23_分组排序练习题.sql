-- ================================================
-- 题目：分组排序练习题
-- 考察点：GROUP BY + ORDER BY
-- ================================================
-- 要求：按学校分组，求各校平均发帖数并按升序排列。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. GROUP BY 求每校平均发帖
--   2. ORDER BY 对聚合结果排序（可直接用别名）
-- 笔记/心得：
--   · ORDER BY 后面可以直接跟聚合结果的别名
-- ================================================

SELECT university, ROUND(AVG(question_cnt), 4) AS avg_question_cnt
FROM user_profile
GROUP BY university
ORDER BY avg_question_cnt ASC;
