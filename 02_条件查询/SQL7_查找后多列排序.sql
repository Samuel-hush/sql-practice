-- ================================================
-- 题目：查找后多列排序
-- 考察点：ORDER BY 多列升序
-- ================================================
-- 要求：查询 device_id、gpa、age，先按 gpa 升序、gpa 相同时按 age 升序。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. ORDER BY 后写多个列，逗号分隔
--   2. 列的顺序就是优先级：先 gpa 再 age
-- 笔记/心得：
--   · 排序列的顺序就是优先级，前面列相同才轮到后面列
-- ================================================

SELECT device_id, gpa, age
FROM user_profile
ORDER BY gpa ASC, age ASC;
