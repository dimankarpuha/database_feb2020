USE vk;

#task 1
UPDATE users SET
	created_at = CURRENT_TIMESTAMP(), 
	updated_at = CURRENT_TIMESTAMP();
	

#task 2
ALTER TABLE users MODIFY COLUMN created_at VARCHAR(30);
UPDATE users SET created_at = "20.10.2017 8:10";

# сначала форматируем строку к нужному формату
UPDATE users SET created_at = STR_TO_DATE(created_at ,'%d.%m.%Y %H:%i');
# преобразуем к DATETIME
ALTER TABLE users MODIFY COLUMN created_at DATETIME;



	