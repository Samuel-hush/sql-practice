-- ================================================
-- 题目：计算用户8月每天的练题数量
-- 考察点：日期函数 + 分组
-- ================================================
-- 要求：统计 2021 年 8 月每天各做了几道题。
-- 涉及表：question_practice_detail（id, device_id, question_id, result, date）
-- 思路：
--   1. YEAR(date)/MONTH(date) 取年月做过滤
--   2. DAY(date) 取日，再按天分组 COUNT
-- 笔记/心得：
--   · DAY()/MONTH()/YEAR() 能把日期拆成数字，分组很方便
-- ================================================

SELECT DAY(date) AS day, COUNT(*) AS question_cnt
FROM question_practice_detail
WHERE YEAR(date) = 2021 AND MONTH(date) = 8
GROUP BY DAY(date);
