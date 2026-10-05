-- ================================================
-- 题目：查找山东大学或者性别为男生的信息
-- 考察点：UNION ALL
-- ================================================
-- 要求：查出山东大学 或 性别为男的用户（两类并集，不去重）。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. 两段 SELECT 分别查两类人
--   2. UNION ALL 合并不去重
-- 笔记/心得：
--   · UNION 会去重，UNION ALL 不去重；这题要求不去重所以用 UNION ALL
-- ================================================

SELECT device_id, gender, age, gpa
FROM user_profile
WHERE university = '山东大学'
UNION ALL
SELECT device_id, gender, age, gpa
FROM user_profile
WHERE gender = 'male';
