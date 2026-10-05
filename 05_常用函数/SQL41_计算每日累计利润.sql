-- ================================================
-- 题目：计算每日累计利润
-- 考察点：窗口函数累计求和
-- ================================================
-- 要求：计算每天的累计利润（当天及之前利润之和）。
-- 涉及表：daily_profits（profit_id, profit_date, profit）
-- 思路：
--   1. 窗口函数 SUM(profit) OVER (ORDER BY profit_date) 做累计
--   2. ORDER BY profit_date 输出
-- 笔记/心得：
--   · SUM OVER(ORDER BY 日期) 就是累计，窗口函数解决这类「逐行累加」很干净
-- ================================================

SELECT profit_id, profit_date, profit,
       SUM(profit) OVER (ORDER BY profit_date) AS cumulative_profit
FROM daily_profits
ORDER BY profit_date;
