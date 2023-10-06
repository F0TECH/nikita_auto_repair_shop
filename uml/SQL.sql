CREATE TABLE сlient ( 
    сlientID INT PRIMARY KEY AUTO_INCREMENT, 
    full_name VARCHAR(100) NOT NULL, 
    passport NOT NULL, 
    driver's_license VARCHAR(100), 
    address NOT NULL, 
    disciount_card ); 
 
CREATE TABLE discount_card( 
    discount_cardID INT PRIMARY KEY AUTO_INCREMENT, 
    date_of_receipt DATE, 
    id_client, 
    number_of_points INT, 
    discount_amount,
    FOREIGN KEY (clientID) REFERENCES client(clientID) 
); 
 
CREATE TABLE auto ( 
    autoID INT PRIMARY KEY AUTO_INCREMENT, 
    brend VARCHAR(50) TEXT, 
    techical_passport VARCHAR(100) NOT NULL, 
    colour VARCHAR(50) TEXT,   
); 
 
CREATE TABLE orders ( 
    orderID INT PRIMARY KEY AUTO_INCREMENT, 
    id_client INT, 
    id_masters INT, 
    date DATE, 
    price INT, 
    FOREIGN KEY (clientID) REFERENCES client(clientID), 
    FOREIGN KEY (mastersID) REFERENCES masters(mastersID)  
); 
 
CREATE TABLE work_list ( 
    id_orders INT, 
    id_services_orders INT 
    FOREIGN KEY (ordersID) REFERENCES orders(ordersID), 
    FOREIGN KEY (services_ordersID) REFERENCES services_orders(services_ordersID)  
); 
 
CREATE TABLE service_orders ( 
    service_ordersID INT PRIMARY KEY AUTO_INCREMENT, 
    id_order_number INT, 
    type_of_work NOT NULL,
    id_used_equipment INT, 
    FOREIGN KEY (order_numberID) REFERENCES order_number(used_equipmentID), 
    FOREIGN KEY (used_equipmentID) REFERENCES used_equipment(used_equipmentID) 
); 
 
CREATE TABLE order_number ( 
    order_numberID INT PRIMARY KEY AUTO_INCREMENT, 
    order_number VARCHAR(100) NOT NULL, 
    type_of_work NOT_NULL TEXT, 
    price_work NOT NULL  
); 
 
CREATE TABLE auto_parts ( 
    auto_partsID INT PRIMARY KEY AUTO_INCREMENT, 
    name_spare VARCHAR(50) TEXT NOT NULL, 
    price_spare INT , 
    guarantee NOT NULL, 
); 
 
CREATE TABLE masters ( 
    mastersID INT PRIMARY KEY AUTO_INCREMENT, 
    full_name NOT NULL TEXT, 
    specialty TEXT NOT NULL, 
    passport NOT NULL 
); 
 
CREATE TABLE used_equipment ( 
    used_equipmentID INT PRIMARY KEY AUTO_INCREMENT, 
    name_equipment TEXT NOT NULL, 
    price_equipment INT NOT NULL, 
    term_warrantlu NOT NULL
);