-- ================================================
-- 题目：查找后排序
-- 考察点：ORDER BY 单列
-- ================================================
-- 要求：查询所有用户的 device_id 和 age，按年龄排序。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. ORDER BY 后跟排序列名
--   2. 默认升序，降序要加 DESC
-- 笔记/心得：
--   · 默认升序，降序记得加 DESC（具体列以原题为准）
-- ================================================

SELECT device_id, age
FROM user_profile
ORDER BY age;
