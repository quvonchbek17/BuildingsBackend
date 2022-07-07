CREATE TABLE companies(
  company_id serial not null PRIMARY KEY,
  company_name VARCHAR(60),
  logo_link TEXT
);

CREATE TABLE complexes(
    complex_id serial not null PRIMARY KEY,
    complex_name VARCHAR(60),
    complex_address VARCHAR(60),
    company_id int,
        FOREIGN KEY(company_id)
        REFERENCES companies(company_id)
        ON DELETE CASCADE
);

CREATE TABLE rooms(
    room_id serial not null PRIMARY KEY,
    room_num INT,
    room_area INT,
    area_price BIGINT,
    complex_id INT,
        FOREIGN KEY(complex_id)
        REFERENCES complexes(complex_id)
        ON DELETE CASCADE
);




CREATE table banks(
    bank_id serial not null PRIMARY KEY,
    bank_name VARCHAR(60),
    logo_link text,
    max_credit BIGINT,
    starting_payment BIGINT,
    mortgage_duration INT,
    bank_service BIGINT
);

-- COMPANIES

INSERT INTO companies(company_name, logo_link) VALUES('Murad Buildings','https://www.mbc.uz/includes/images/new_layout/logo.svg');
INSERT INTO companies(company_name, logo_link) VALUES('Akay City','https://domtut.uz/resources/uploads/users/a.city/avatar.jpg');
INSERT INTO companies(company_name, logo_link) VALUES('Golden House','https://yangiuylar.uz/wp-content/uploads/2020/03/golden-house-525x328.jpg?v=1586052657');
INSERT INTO companies(company_name, logo_link) VALUES('Olmazor city','https://static9.tgstat.ru/channels/_0/0a/0a757f061ebe85c86bb4e175704b57c1.jpg');
INSERT INTO companies(company_name, logo_link) VALUES('Quvonch Buildings','https://thumbs.dreamstime.com/z/realty-flat-apartment-modern-building-logo-design-graphic-style-realty-flat-apartment-modern-building-logo-design-graphic-style-158041756.jpg');


-- COMPLEXES

INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Nest One', 'Tashkent', 1);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Kislorod', 'Pekin', 1);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Felichita', 'Abu Dhabi', 1);

INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Oka city', 'Karshi', 2);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Aka Dom', 'Rio de Janiero', 2);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Abdullajon complexes', 'Mars', 2);

INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Silver', 'Qoraqamish', 3);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Platinum', 'Eski shahar', 3);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Bronze', 'Chilonzor', 3);

INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Bodomzor', 'Yunusobod', 4);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Uzumzor', 'Yakkabog', 4);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Bananzor', 'Madagaskar', 4);

INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Burj Khalifa', 'Dubai', 5);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Elizabeth Queen', 'London', 5);
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES('Adolf Hitler', 'Berlin', 5);


-- ROOMS

-- 1 complex room

INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,50, 2000000, 1);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,75, 2000000, 1);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,120, 2000000, 1);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,145, 2000000, 1);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,170, 2000000, 1);


-- 2 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,55, 2800000, 2);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,80, 2800000, 2);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,110, 2800000, 2);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,150, 2800000, 2);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,165, 2800000, 2);

-- 3 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,50, 3200000, 3);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,74, 3200000, 3);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,112, 3200000, 3);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,148, 3200000, 3);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,180, 3200000, 3);

-- 4 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,52, 3400000, 4);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,76, 3400000, 4);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,108, 3400000, 4);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,140, 3400000, 4);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,160, 3400000, 4);

-- 5 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,55, 3600000, 5);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,72, 3600000, 5);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,120, 3600000, 5);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,150, 3600000, 5);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,185, 3600000, 5);

-- 6 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,46, 3800000, 6);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,68, 3800000, 6);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,100, 3800000, 6);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,150, 3800000, 6);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,172, 3800000, 6);

-- 7 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,65, 4000000, 7);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,90, 4000000, 7);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,122, 4000000, 7);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,150, 4000000, 7);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,178, 4000000, 7);

-- 8 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,58, 4200000, 8);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,76, 4200000, 8);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,124, 4200000, 8);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,144, 4200000, 8);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,166, 4200000, 8);

-- 9 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,49, 4400000, 9);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,71, 4400000, 9);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,130, 4400000, 9);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,153, 4400000, 9);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,171, 4400000, 9);

-- 10 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,60, 4600000, 10);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,82, 4600000, 10);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,127, 4600000, 10);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,155, 4600000, 10);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,176, 4600000, 10);

-- 11 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,54, 4800000, 11);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,75, 4800000, 11);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,120, 4800000, 11);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,145, 4800000, 11);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,170, 4800000, 11);

-- 12 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,45, 5000000, 12);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,76, 5000000, 12);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,125, 5000000, 12);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,148, 5000000, 12);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,175, 5000000, 12);

-- 13 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,50, 5200000, 13);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,80, 5200000, 13);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,120, 5200000, 13);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,160, 5200000, 13);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,180, 5200000, 13);

-- 14 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,60, 5400000, 14);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,80, 5400000, 14);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,130, 5400000, 14);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,155, 5400000, 14);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,175, 5400000, 14);

-- 15 complex rooms
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(2,50, 5600000, 15);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(3,85, 5600000, 15);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(4,130, 5600000, 15);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(5,150, 5600000, 15);
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES(6,170, 5600000, 15);



-- Banks

INSERT INTO banks(bank_name, logo_link, max_credit, starting_payment, mortgage_duration,bank_service) VALUES('Ipoteka Bank', 'https://play-lh.googleusercontent.com/y4G_G6B3xjLQb7HMwbmHuXAkYXf6Kcrxk3wNg5bF-CL0jjFFjMmUassjbry5-SFujg', 720000000, 20, 10, 2500000),
('Anorbank', 'https://bankxizmatlari.uz/upload/iblock/46d/7jjh6ahpmghxh9rodqll0j5ouyg9hr58/Anorbank_mini.png', 1030000000, 25, 10, 3000000),
('Agrobank', 'https://uba.uz/upload/iblock/374/agrobank.jpg', 690000000, 15, 15, 3000000),
('Sanoat Qurilish Bank', 'https://bank.uz/upload/iblock/77c/77c45647ef172e1d350fa351030e56a9.png', 1050000000,17, 15, 5000000),
('Xalq banki', 'https://xabar.uz/static/crop/2/5/920__95_2551226690.jpg', 670000000, 10, 20, 2000000),
('Milliy Bank', 'https://is2-ssl.mzstatic.com/image/thumb/Purple112/v4/07/dd/80/07dd80eb-380a-fbdf-7601-b3a607160c90/AppIcon-0-0-1x_U007emarketing-0-0-0-6-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x600wa.png', 1000000000, 20, 20, 3000000);