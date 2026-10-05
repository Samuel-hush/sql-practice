-- ================================================
-- 题目：截取出年龄
-- 考察点：嵌套 SUBSTRING_INDEX
-- ================================================
-- 要求：从 profile 字段截取年龄，统计各年龄人数。
-- 涉及表：user_submit（id, device_id, profile, blog_url）
-- 思路：
--   1. 先 SUBSTRING_INDEX(profile,',',3) 取前 3 段
--   2. 再对结果取最后一段得到年龄
-- 笔记/心得：
--   · 先取前 3 段再取最后 1 段，两层 SUBSTRING_INDEX 套起来
-- ================================================

SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(profile, ',', 3), ',', -1) AS age, COUNT(*) AS number
FROM user_submit
GROUP BY age;
