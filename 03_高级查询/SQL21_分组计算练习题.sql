-- ================================================
-- 题目：分组计算练习题
-- 考察点：GROUP BY
-- ================================================
-- 要求：按性别、学校分组，统计各组人数、平均活跃天数、平均发帖数。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. GROUP BY 后写分组列
--   2. SELECT 里的非聚合列必须出现在 GROUP BY 里
-- 笔记/心得：
--   · GROUP BY 里没写的列，SELECT 里不能裸用（否则会报错）
-- ================================================

SELECT gender, university,
       COUNT(*) AS user_num,
       ROUND(AVG(active_days_within_30), 1) AS avg_active_days,
       ROUND(AVG(question_cnt), 1) AS avg_question_cnt
FROM user_profile
GROUP BY gender, university;
