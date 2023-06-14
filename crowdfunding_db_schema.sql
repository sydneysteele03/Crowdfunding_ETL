--CREATE TABLES AND IMPORT DATA FROM CSV FILES 
--contacts, campaign, categories and subcategories

CREATE TABLE contacts (
	contact_id INT NOT NULL, 
	email VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	PRIMARY KEY(contact_id)
);

CREATE TABLE categories (
	category_id VARCHAR NOT NULL,
	category VARCHAR,
	PRIMARY KEY (category_id)
) ;

CREATE TABLE subcategories (
	subcategory_id VARCHAR NOT NULL,
	subcategory VARCHAR,
	PRIMARY KEY(subcategory_id)
);

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT references contacts(contact_id),
	company_name VARCHAR,
	description VARCHAR,
	goal REAL,
	pledged REAL, 
	outcome VARCHAR, 
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR references categories(category_id),
	subcategory_id VARCHAR references subcategories(subcategory_id),
	PRIMARY KEY(cf_id)
);

select * from campaign;









