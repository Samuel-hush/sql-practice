-- ================================================
-- 题目：统计每种性别的人数
-- 考察点：SUBSTRING_INDEX 截取
-- ================================================
-- 要求：从 user_submit 的 profile 字段里拆出性别，统计各性别人数。
-- 涉及表：user_submit（id, device_id, profile, blog_url）
-- 思路：
--   1. profile 是逗号拼接的字符串
--   2. SUBSTRING_INDEX(profile, ',', -1) 取最后一段（性别）
--   3. GROUP BY 分组 COUNT
-- 笔记/心得：
--   · profile 字段是逗号拼起来的，得用 SUBSTRING_INDEX 一层层拆
-- ================================================

SELECT SUBSTRING_INDEX(profile, ',', -1) AS gender, COUNT(*) AS number
FROM user_submit
GROUP BY gender;
