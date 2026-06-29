# 统一数据格式
UPDATE `用户行为分析` 
set device =
CASE
  WHEN LOWER(device) = 'mobile' THEN 'Mobile'
  WHEN LOWER(device) = 'desktop' THEN 'Desktop'
  ELSE device
END;

UPDATE `用户行为分析` 
set operative_system = 
CASE 
  WHEN LOWER(operative_system) IN ('ios') THEN 'iOS'
  WHEN LOWER(operative_system) IN ('android') THEN 'Android'
  WHEN LOWER(operative_system) IN ('windows') THEN 'Windows'
  WHEN LOWER(operative_system) IN ('mac') THEN 'Mac'
  WHEN LOWER(operative_system) IN ('linux') THEN 'Linux'
	WHEN LOWER(operative_system) IN ('other') THEN 'Other'
	ELSE operative_system
END ;

# 清洗脏数据，处理异常值
select * from (SELECT * FROM `用户行为分析` 
WHERE age BETWEEN 0 AND 100
AND total_pages_visited >= 0
AND home_page >= 0
AND listing_page >= 0
AND product_page >= 0
AND payment_page >= 0
AND confirmation_page >= 0
AND NOT (payment_page = 0 AND confirmation_page = 1)
AND home_page = 1
AND new_user = 1) as t
WHERE sex != '0'
AND device != '0'
AND operative_system !='0'
AND source != '0';


