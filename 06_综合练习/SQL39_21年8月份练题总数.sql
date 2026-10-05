-- ================================================
-- 题目：21年8月份练题总数
-- 考察点：简单聚合
-- ================================================
-- 要求：统计 2021 年 8 月的练题总条数。
-- 涉及表：question_practice_detail（id, device_id, question_id, result, date）
-- 思路：
--   1. YEAR/MONTH 过滤 2021 年 8 月
--   2. COUNT(*) 统计
-- 笔记/心得：
--   · 简单 COUNT 加年月过滤即可
-- ================================================

SELECT COUNT(*) AS question_cnt
FROM question_practice_detail
WHERE YEAR(date) = 2021 AND MONTH(date) = 8;
