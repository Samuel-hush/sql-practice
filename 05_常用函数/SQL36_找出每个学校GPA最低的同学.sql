-- ================================================
-- 题目：找出每个学校GPA最低的同学
-- 考察点：窗口函数 / 子查询
-- ================================================
-- 要求：找出每所学校 GPA 最低的那个（些）学生。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 子查询：先 GROUP BY 求每校 MIN(gpa)
--   2. 外层用 (university, gpa) IN 子查询反查人
-- 笔记/心得：
--   · 思路是先 GROUP BY 求最低，再反查是谁；也可用窗口函数 ROW_NUMBER
-- ================================================

SELECT device_id, university, gpa
FROM user_profile
WHERE (university, gpa) IN (SELECT university, MIN(gpa) FROM user_profile GROUP BY university);
