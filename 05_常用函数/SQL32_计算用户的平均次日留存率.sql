-- ================================================
-- 题目：计算用户的平均次日留存率
-- 考察点：自表连接 + 去重
-- ================================================
-- 要求：计算「第二天还上线」的去重用户数 ÷ 去重用户总数。
-- 涉及表：question_practice_detail（id, device_id, question_id, result, date）
-- 思路：
--   1. 表自己连自己（自连接）
--   2. DATE_ADD(日期, INTERVAL 1 DAY) 找次日
--   3. 去重用户次日存在 ÷ 去重用户总数
-- 笔记/心得：
--   · 留存率要自己连自己，第一次见挺绕的（口径以原题为准）
-- ================================================

SELECT COUNT(DISTINCT q2.device_id) / COUNT(DISTINCT q1.device_id) AS avg_ret
FROM (SELECT DISTINCT device_id, date FROM question_practice_detail) q1
LEFT JOIN (SELECT DISTINCT device_id, date FROM question_practice_detail) q2
  ON q1.device_id = q2.device_id AND q2.date = DATE_ADD(q1.date, INTERVAL 1 DAY);
