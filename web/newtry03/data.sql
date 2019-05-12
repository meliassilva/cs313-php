--
-- Table structure for table `products`
--

CREATE TABLE products
(
    id INT(11) NOT NULL,
    title varchar(255) NOT NULL,
    price varchar(255) NOT NULL,
    description text NOT NULL,
    image varchar(255) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE KEY `sku`(`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO products
    (id, title, price, description, image, date_added)
VALUES
    (1, 'IPhone', '800', 'IPhone for sale', 'prod-img/iphone.png', '2017-02-01'),
    (2, 'MacBook Air', '1500', 'MacBook Air for sale', 'prod-img/macbook-air.png', '2017-02-02'),
    (3, 'MacBook Pro', '1800', 'MacBook Pro For Sale', 'prod-img/macbook-pro.png', '2017-02-03'),
    (4, 'IPad Air 2', '1200', 'IPad Air 2 For Sale', 'prod-img/ipad-air2.png', '2017-02-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE products
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE products
  MODIFY id INT(11)  NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
