select * from products ;

insert into products(description , price,  quantity)
values ('product3', 330.30, 33 ),
 ('product4', 4000.00, 14 ), 
 ('product5', 5.50, 55 ),
 ('product6', 66.66, 600 ) ;
 
 
 CREATE TABLE `customers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


insert into customers (name, address, email)
values ('cust1', 'address1', 'mail1@a.com'), 
('cust2', 'address2', 'mail2@a.com'), 
('cust3', 'address3', 'mail3@a.com'), 
('cust4', 'address4', 'mail4@a.com'), 
('cust5', 'address5', 'mail5@a.com'), 
('cust6', 'address6', 'mail6@a.com') ;

drop table customers;  

 

drop table orders;

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) unsigned NOT NULL, 
  `created` timestamp NOT NULL,
  PRIMARY KEY (`id`) ,
  FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- alter table `orders`  ADD FOREIGN KEY ( `cust_id` ) REFERENCES `customers` (`id` ) ;


insert into orders (cust_id, created )
values (3, '2018-01-20 17:30') , 
 (1, '2018-01-21 11:05'),
 (1, '2018-01-19 10:19'),
 (3, '2017-03-21 11:05'),
 (4, '2017-04-10 14:04'),
 (4, '2017-04-14 19:08'),
 (6, '2017-06-01 1:06'),
 (6, '2017-06-02 7:35'),
 (6, '2017-06-16 19:56');

drop table order_items;

CREATE TABLE `order_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL, 
  `prod_id` int(11) unsigned NOT NULL, 
  `quantity` int(11) NOT NULL,
--  `created` timestamp NOT NULL,
  PRIMARY KEY (`id`) ,
  FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  FOREIGN KEY (`prod_id`)  REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




insert into order_items (order_id, prod_id, quantity)
values(1, 1, 111),
(1,2,12),
(1,3,13),
(2,2,222),
(3,3,30),
(3,4,34),
(3,5,35),
(5,6,1),
(5,4,2),
(6,7,80),
(6,2,808),
(7,1,3),
(7,5,8),
(8,3,8),
(9,6,1),
(9,1,4);
