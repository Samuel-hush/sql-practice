-- ================================================
-- 题目：查看不同年龄段的用户明细
-- 考察点：CASE WHEN
-- ================================================
-- 要求：把用户按年龄分成「20岁以下 / 20-24岁 / 25岁及以上 / 其他」几档。
-- 涉及表：user_profile（id, device_id, gender, age, university, gpa, active_days_within_30, question_cnt, answer_cnt）
-- 思路：
--   1. CASE WHEN 条件 THEN 结果 ... ELSE 默认 END
--   2. 空值单独归一类
-- 笔记/心得：
--   · CASE 多分支比 IF 好用，记得 END 收尾，可 AS 起别名
-- ================================================

SELECT device_id, gender,
       CASE
           WHEN age < 20 THEN '20岁以下'
           WHEN age BETWEEN 20 AND 24 THEN '20-24岁'
           WHEN age >= 25 THEN '25岁及以上'
           ELSE '其他'
       END AS age_cut
FROM user_profile;
