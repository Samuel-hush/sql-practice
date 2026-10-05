-- ================================================
-- 题目：查看学校名称中含北京的用户
-- 考察点：LIKE
-- ================================================
-- 要求：查询学校名称中含有「北京」的用户的 device_id、age、university。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. LIKE 做模糊匹配
--   2. % 表示任意长度字符，%北京% 表示包含北京
-- 笔记/心得：
--   · 含某个字符一个 % 就够了，不知道为什么有些答案给两个 %%
-- ================================================

SELECT device_id, age, university
FROM user_profile
WHERE university LIKE '%北京%';
