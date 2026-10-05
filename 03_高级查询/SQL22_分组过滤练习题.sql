-- ================================================
-- 题目：分组过滤练习题
-- 考察点：HAVING
-- ================================================
-- 要求：按学校分组，保留平均发帖数 < 5 或平均回帖数 < 20 的学校。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 先 GROUP BY 分组
--   2. 对聚合结果筛选用 HAVING，不能用 WHERE
-- 笔记/心得：
--   · 聚合完再筛选用 HAVING，之前我老把 HAVING 和 WHERE 搞混
-- ================================================

SELECT university,
       ROUND(AVG(question_cnt), 3) AS avg_question_cnt,
       ROUND(AVG(answer_cnt), 3) AS avg_answer_cnt
FROM user_profile
GROUP BY university
HAVING avg_question_cnt < 5 OR avg_answer_cnt < 20;
