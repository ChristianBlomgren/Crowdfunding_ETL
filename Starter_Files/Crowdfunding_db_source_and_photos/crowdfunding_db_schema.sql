CREATE TABLE campaign(
cf_id INT,
contact_id INT,
company_name TEXT,
description TEXT,
goal INT,
pledged INT,
outcome CHAR(15),
backers_count INT,
country CHAR(2),
currency CHAR(3),
launch_date DATE,
end_date DATE,
category_id VARCHAR(4),
subcategory_id VARCHAR(5),
PRIMARY KEY (cf_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE category(
category_id VARCHAR(4) NOT NULL,
category CHAR(20) NOT NULL,
PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
subcategory_id VARCHAR(5) NOT NULL,
subcategory CHAR(20) NOT NULL,
PRIMARY KEY (subcategory_id)
);

--Must be ran seperately to check data
SELECT * FROM campaign

SELECT * FROM category

SELECT * FROM subcategory