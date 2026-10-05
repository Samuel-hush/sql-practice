-- ================================================
-- 题目：基本数学函数
-- 考察点：ABS / CEIL / FLOOR / ROUND
-- ================================================
-- 要求：对 numbers 表的 value 列算绝对值、向上取整、向下取整、四舍五入到一位小数，按 id 升序
-- 涉及表：numbers（id INT, value DECIMAL(10,2)）
-- 思路：
--   1. ABS(value) 求绝对值
--   2. CEIL(value) 向上取整、FLOOR(value) 向下取整
--   3. ROUND(value, 1) 四舍五入保留一位小数
-- 笔记/心得：
--   · 负数时方向别搞反：CEIL 往正无穷取（-2.71→-2），FLOOR 往负无穷取（-2.71→-3）
-- ================================================

SELECT id, value,
       ABS(value)      AS absolute_value,
       CEIL(value)     AS ceiling_value,
       FLOOR(value)    AS floor_value,
       ROUND(value, 1) AS rounded_value
FROM numbers
ORDER BY id;
