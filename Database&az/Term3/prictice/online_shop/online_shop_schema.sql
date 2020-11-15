-- create database online_shop
-- using online_shop

create table products(
	product_id int unsigned primary key auto_increment,
    product_name varchar(100) null,
    product_categories enum(
		"digital",
        "tools and instrument",
        "clothing",
        "cookware",
        "toys",
        "travel and exercise" ,
        "food and drink"
        ) null,
    product_type enum(
		
    )
)