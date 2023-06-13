CREATE TABLE contacts (
	contact_id INT, 
	email varchar,
	first_name varchar,
	last_name varchar,
	PRIMARY KEY(contact_id)
);

CREATE TABLE categories (
	category_id VARCHAR,
	category VARCHAR,
	PRIMARY KEY (category_id)
) ;

CREATE TABLE subcategories (
	subcategory_id varchar,
	subcategory varchar,
	PRIMARY KEY(subcategory_id)
);

CREATE TABLE campaign (
	cf_id INT ,
	contact_id INT references contacts(contact_id),
	company_name varchar,
	description varchar,
	goal decimal,
	pledged decimal, 
	outcome varchar, 
	backers_count INT,
	country char,
	currency char,
	launched_date timestamp,
	end_date timestamp,
	category_id varchar references categories(category_id),
	subcategory_id varchar references subcategories(subcategory_id),
	PRIMARY KEY(cf_id)
);