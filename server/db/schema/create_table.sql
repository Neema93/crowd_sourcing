DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  passwordHash VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  phone_number BIGINT NOT NULL,
  s_address VARCHAR(255) NOT NULL,  
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  post_code VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS goods_categories CASCADE;
CREATE TABLE goods_categories (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS fund_categories CASCADE;
CREATE TABLE fund_categories (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS goods CASCADE;
CREATE TABLE goods (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  good_cat_id INTEGER REFERENCES goods_categories(id) ON DELETE CASCADE,
  goods_name VARCHAR(255), 
  size VARCHAR(255) DEFAULT 'Not known',
  quantity INT NOT NULL DEFAULT 1,
  img VARCHAR(500), 
  company VARCHAR(255) DEFAULT 'Not known',
  condition VARCHAR(255) NOT NULL,
  description VARCHAR(500) 
);
DROP TABLE IF EXISTS fundraising CASCADE;
CREATE TABLE fundraising (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  fund_cat_id INTEGER REFERENCES fund_categories(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  img VARCHAR(500),
  story VARCHAR(500) NOT NULL,
  goal DECIMAL(15,2) NOT NULL,
  amountraising DECIMAL(15,2) NOT NULL
);
DROP TABLE IF EXISTS donation_money CASCADE;
CREATE TABLE donation_money (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  fund_id INTEGER REFERENCES fundraising(id) ON DELETE CASCADE,
  amount DECIMAL(15,2) NOT NULL,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DROP TABLE IF EXISTS request_goods CASCADE;
CREATE TABLE request_goods (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  goods_id INTEGER REFERENCES goods(id) ON DELETE CASCADE,
  quantity INTEGER default 1,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)