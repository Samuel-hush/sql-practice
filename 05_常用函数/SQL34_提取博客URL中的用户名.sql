-- ================================================
-- 题目：提取博客URL中的用户名
-- 考察点：SUBSTRING_INDEX 取末尾
-- ================================================
-- 要求：从 blog_url 中提取最后的用户名部分。
-- 涉及表：user_submit（id, device_id, profile, blog_url）
-- 思路：
--   1. blog_url 形如 http://url/用户名
--   2. SUBSTRING_INDEX(blog_url, '/', -1) 取最后一段
-- 笔记/心得：
--   · 按 / 拆，-1 表示取最后一段
-- ================================================

SELECT device_id, SUBSTRING_INDEX(blog_url, '/', -1) AS user_name
FROM user_submit;
