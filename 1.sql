Задание 1

Таблицы

1) Таблица пользователей

CREATE TABLE users (
id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(120) NOT NULL UNIQUE,
phone VARCHAR(15) UNIQUE
);

2) Таблица профилей пользователей

CREATE TABLE profiles (
user_id INT NOT NULL,
birth_date TIMESTAMP,
gender VARCHAR(15),
country VARCHAR(50),
town VARCHAR(50),
created_at TIMESTAMP
);

3) Категории товаров

CREATE TABLE categories (
id SERIAL PRIMARY KEY,
category VARCHAR(50) NOT NULL
);

4) Таблица продавцов

CREATE TABLE sellers (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
description VARCHAR(250) NOT NULL,
created_at TIMESTAMP
);

5) Таблица товаров

CREATE TABLE products (
id SERIAL PRIMARY KEY,
category_id INT NOT NULL,
seller_id INT NOT NULL,
description VARCHAR(250) NOT NULL,
price NUMERIC NOT NULL,
photo_id INT NOT NULL,
characteristic JSONB NOT NULL
);

6) Таблица скидок

CREATE TABLE discounts (
id SERIAL PRIMARY KEY,
product_id INT NOT NULL,
sum NUMERIC,
description VARCHAR(250) NOT NULL
);


7) Таблица для избранных товаров и товаров в корзине

CREATE TABLE favorites_and_cart (
id SERIAL PRIMARY KEY,
user_id INT NOT NULL,
product_id INT NOT NULL,
is_cart BOOL NOT NULL,
quantity INT
);

8) Таблица заказов

CREATE TABLE orders (
id SERIAL PRIMARY KEY,
user_id INT NOT NULL,
order_number INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
payment_id INT NOT NULL,
receipt_of_order_id INT NOT NULL,
discount_id INT,
storage_area_id INT NOT NULL,
created_at TIMESTAMP,
delivery_address VARCHAR(250) NOT NULL,
delivery_date TIMESTAMP
);

9) Способы оплаты

CREATE TABLE payment (
id SERIAL PRIMARY KEY,
payment_method VARCHAR(250) NOT NULL
);

10) Способы доставки

CREATE TABLE receipt_of_order (
id SERIAL PRIMARY KEY,
receipt VARCHAR(250) NOT NULL
);

11) Склады

CREATE TABLE storage_area (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
address VARCHAR(250) NOT NULL
);

12) Таблица для определения наличия товара на складе

CREATE TABLE products_storage_area (
product_id INT NOT NULL,
storage_area_id INT NOT NULL,
quantity INT,
shelf_number_in_storage_area INT NOT NULL,
PRIMARY KEY (product_id, storage_area_id)
);

13) Таблица ролей - 
нужна для определения, кто из сторон участвует в том или ином действии:
пользователь, продавец или представители торговой площадки

CREATE TABLE roles (
id SERIAL PRIMARY KEY,
role VARCHAR(15) NOT NULL
);

14) Таблица фотографий

CREATE TABLE photo (
id SERIAL PRIMARY KEY,
url VARCHAR(250) NOT NULL UNIQUE,
product_id INT NOT NULL,
role_id INT NOT NULL,
user_id INT,
seller_id INT,
description VARCHAR(250) NOT NULL,
uploaded_at TIMESTAMP NOT NULL,
size INT NOT NULL
);

15) Таблица видео

CREATE TABLE video (
id SERIAL PRIMARY KEY,
url VARCHAR(250) NOT NULL UNIQUE,
product_id INT NOT NULL,
role_id INT NOT NULL,
user_id INT,
seller_id INT,
description VARCHAR(250) NOT NULL,
uploaded_at TIMESTAMP NOT NULL,
size INT NOT NULL
);

16) Таблица отзывов

CREATE TABLE reviews (
id SERIAL PRIMARY KEY,
user_id INT NOT NULL,
product_id INT NOT NULL,
product_evaluation INT NOT NULL,
advantages VARCHAR(250),
disadvantages VARCHAR(250),	
comment VARCHAR(250),
created_at TIMESTAMP,
product_photo_id INT[],
product_video_id INT[]
);

17) Таблица комментариев к отзывам

CREATE TABLE comments (
id SERIAL PRIMARY KEY,
review_id INT NOT NULL,
role_id INT NOT NULL,
user_id INT,
seller_id INT,
text_comment VARCHAR(250) NOT NULL,
created_at TIMESTAMP
);

18) Таблица лайков - 
Информация о лайках/дизлайках, 
которые пользователь ставит под комментариями или отзывами

CREATE TABLE likes (
id SERIAL PRIMARY KEY,
user_id INT NOT NULL,
is_review BOOL NOT NULL,
review_or_comment_id INT NOT NULL,
is_like BOOL,
created_at TIMESTAMP
);































