-- ================================================
-- 题目：计算男生人数以及平均GPA
-- 考察点：COUNT + AVG + ROUND
-- ================================================
-- 要求：统计男性用户人数，以及男性用户的平均 GPA（保留 1 位小数）。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. COUNT(*) 数人数
--   2. AVG(gpa) 求均值，ROUND(值,1) 保留 1 位小数
-- 笔记/心得：
--   · ROUND(值, 几位) 保留小数，几位就写几
-- ================================================

SELECT COUNT(*) AS male_num, ROUND(AVG(gpa), 1) AS avg_gpa
FROM user_profile
WHERE gender = 'male';
