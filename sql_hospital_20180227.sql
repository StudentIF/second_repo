 
 
 CREATE TABLE `role` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(200) DEFAULT NULL,
   PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


 CREATE TABLE `contact` (
  `cont_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cont_type` varchar(20) DEFAULT NULL,  -- this should be external 
  `cont_detail` varchar(200) DEFAULT NULL,
   PRIMARY KEY (`cont_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;




 
 
 CREATE TABLE `staff` (
  `staff_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id`  int(11) unsigned NOT NULL, 
  `person_id`  int(11) unsigned NOT NULL,  
   PRIMARY KEY (`staff_id`)
   FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
   FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 
 
 CREATE TABLE `rota` (
  `rota_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(200) DEFAULT NULL,
   PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ------------------------------------

CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) unsigned NOT NULL, 
  `created` timestamp NOT NULL,
  PRIMARY KEY (`id`) ,
  FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- alter table `orders`  ADD FOREIGN KEY ( `cust_id` ) REFERENCES `customers` (`id` ) ;

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



