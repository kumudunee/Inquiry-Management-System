create table RegMembers(
rid int identity(1,1) primary key,
name varchar(350) not null,
telephone bigint not null,
gender varchar(250) not null,
address varchar(550) not null,
date varchar(250) not null,
province varchar(250) ,
district varchar (250) ,
division varchar(250) ,
grama varchar(250) ,
requirement varchar(350) not null,
followUp varchar(250) not null,
checkout varchar(250),
chekout varchar(250) not null default 'No'
)


select * from RegMembers
drop table RegMembers

INSERT INTO userReg (uname, mobile,gender,emailId,pass) VALUES ('Anoja', '0771847521','Female','anoja875@gmail.com','1234');

create table userReg(
uid int identity(1,1) primary key,
uname varchar(250) not null,
mobile bigint not null,
gender varchar(50) not null,
emailId varchar(150) not null,
pass varchar(150) not null
)

create table province(
provinceId int not null primary key,
provinceName varchar(250) not null,
)
INSERT INTO province (provinceId, provinceName) VALUES ('1', 'Western');
INSERT INTO province (provinceId, provinceName) VALUES ('2', 'Central');
INSERT INTO province (provinceId, provinceName) VALUES ('3', 'Southern');
INSERT INTO province (provinceId, provinceName) VALUES ('4', 'Northern');
INSERT INTO province (provinceId, provinceName) VALUES ('5', 'Eastern');
INSERT INTO province (provinceId, provinceName) VALUES ('6', 'North-Western');
INSERT INTO province (provinceId, provinceName) VALUES ('7', 'North-Central');
INSERT INTO province (provinceId, provinceName) VALUES ('8', 'Uva');
INSERT INTO province (provinceId, provinceName) VALUES ('9', 'Sabaragamuwa');

create table district(
districtId int not null primary key,
districtName varchar(250) not null,
proId int references province(provinceId), 
);
----western----
INSERT INTO district (districtId, districtName,proId) VALUES ('1', 'Colombo','1');
INSERT INTO district (districtId, districtName,proId) VALUES ('2', 'Gampaha','1');
INSERT INTO district (districtId, districtName,proId) VALUES ('3', 'Kalutara','1');

--------Central------
INSERT INTO district (districtId, districtName,proId) VALUES ('4', 'Kandy','2');
INSERT INTO district (districtId, districtName,proId) VALUES ('5', 'Matale','2');
INSERT INTO district (districtId, districtName,proId) VALUES ('6', 'Nuwara Eliya','2');

-----Southern------
INSERT INTO district (districtId, districtName,proId) VALUES ('7', 'Galle','3');
INSERT INTO district (districtId, districtName,proId) VALUES ('8', 'Matara','3');
INSERT INTO district (districtId, districtName,proId) VALUES ('9', 'Hambantota','3');

-------Northern-------
INSERT INTO district (districtId, districtName,proId) VALUES ('10', 'Jaffna','4');
INSERT INTO district (districtId, districtName,proId) VALUES ('11', 'Mannar','4');
INSERT INTO district (districtId, districtName,proId) VALUES ('12', 'Vavuniya','4');
INSERT INTO district (districtId, districtName,proId) VALUES ('13', 'Mullativu','4');
INSERT INTO district (districtId, districtName,proId) VALUES ('14', 'Kilinochchi','4');

-------Eastern------
INSERT INTO district (districtId, districtName,proId) VALUES ('15', 'Batticaloa','5');
INSERT INTO district (districtId, districtName,proId) VALUES ('16', 'Ampara','5');
INSERT INTO district (districtId, districtName,proId) VALUES ('17', 'Trincomalee','5');

-----------North-Western----------
INSERT INTO district (districtId, districtName,proId) VALUES ('18', 'Kurunegala','6');
INSERT INTO district (districtId, districtName,proId) VALUES ('19', 'Puttalam','6');

---------------North-Central-------------
INSERT INTO district (districtId, districtName,proId) VALUES ('20', 'Anuradhapura','7');
INSERT INTO district (districtId, districtName,proId) VALUES ('21', 'Polonnaruwa','7');

----------------Uva------------------
INSERT INTO district (districtId, districtName,proId) VALUES ('22', 'Badulla','8');
INSERT INTO district (districtId, districtName,proId) VALUES ('23', 'Moneragala','8');

--------------Sabaragamuwa--------------
INSERT INTO district (districtId, districtName,proId) VALUES ('24', 'Ratnapura','9');
INSERT INTO district (districtId, districtName,proId) VALUES ('25', 'Kegalle','9');

create table division(
divisionId int not null primary key,
divisionName varchar(250) not null,
disId int references district(districtId),
)
------------western------------
--------------------------------colombo------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1', 'Colombo','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('2', 'Kolonnawa','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('3', 'Kaduwela','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('4', 'Homagama','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('5', 'Hanwella','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('6', 'Padukka','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('7', 'Maharagama','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('8', 'Sri Jayawardhanapura','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('9', 'Thibirigassyaya','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('10', 'Dehiwala','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('11', 'Ratmalana','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('12', 'Moratuwa','1');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('13', 'Kesbewa','1');

-------------Gampaha-------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('14', 'Negombo','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('15', 'Katana','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('16', 'Divulapitiya','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('17', 'Mirigama','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('18', 'Minuwangoda','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('19', 'Wattala','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('20', 'Ja-Ela','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('21', 'Gampaha','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('22', 'Attanagalla','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('23', 'Dompe','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('24', 'Mahara','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('25', 'Kelaniya','2');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('26', 'Biyagama','2');
-------------Kalutara-------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('27', 'Panadura','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('28', 'Bandaragama','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('29', 'Horana','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('30', 'Ingiriya','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('31', 'Bulathsinhala','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('32', 'Madurawela','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('33', 'Millaniya','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('34', 'Kalutara','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('35', 'Beruwala','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('36', 'Dodangoda','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('37', 'Mathugama','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('38', 'Agalawatta','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('39', 'Palindanuwara','3');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('40', 'Wallavita','3');

---------------------Central-------------------------
------------------------Kandy   4--------------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('41', 'Thumpane','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('42', 'Poojapitiya','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('43', 'Akurana','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('44', 'Pathadumbara','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('45', 'Panvila','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('46', 'Udadumbara','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('47', 'Minipe','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('48', 'Medadumbara','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('49', 'Kundasale','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('50', 'Kandy Four Gravets & Gangawata Korale','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('51', 'Harispattuwa','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('52', 'Yatinuwara','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('53', 'Udunuwara','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('54', 'Doluwa','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('55', 'Pathahewaheta','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('56', 'Delthota','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('57', 'Udapalatha','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('58', 'Ganga Ihala Korale','4');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('59', 'Hatharaliyadda','4');
-----------------------Matale     5-----------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('60', 'Galewela','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('61', 'Dambulla','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('62', 'Naula','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('63', 'Pallepola','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('64', 'Yatawatta','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('65', 'Matale','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('66', 'Ambanganga Korale','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('67', 'Laggala-Pallegama','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('68', 'Wilgamuwa','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('69', 'Rattota','5');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('70', 'Ukuwela','5');
---------------------Nuwara Eliya        6---------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('71', 'Kothmale','6');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('72', 'Hanguranketha','6');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('73', 'Walapane','6');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('74', 'Nuwara Eliya','6');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('75', 'Ambangamuwa','6');

-----Southern------
---------------Galle     7------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('76', 'Benthota','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('77', 'Balapitiya','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('78', 'Karandeniya','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('79', 'Elpitiya','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('80', 'Niyagama','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('81', 'Thawalama','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('82', 'Neluwa','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('83', 'Nagoda','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('84', 'Baddemaga','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('85', 'Welivitiya-Divithura','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('86', 'Ambalangoda','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('87', 'Hikkaduwa','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('88', 'Galle Four Gravets','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('89', 'Bope-Poddala','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('90', 'Akmeemana','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('91', 'Yakkalamulla','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('92', 'Imaduwa','7');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('93', 'Habaraduwa','7');
---------------Matara        8-------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('94', 'Pitabeddara','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('95', 'Kotapola','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('96', 'Pasgoda','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('97', 'Mulatiyana','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('98', 'Athuraliya','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('99', 'Akuressa','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('100', 'Welipitiya','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('101', 'Malimbada','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('102', 'Kamburupitiya','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('103', 'Hakmana','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('104', 'Kirinda Puhuwella','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('105', 'Thihagoda','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('106', 'Weligama','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('107', 'Matara','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('108', 'Devinuwara','8');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('109', 'Dickwella','8');
--------------Hambantota     9-----------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('110', 'Sooriyawewa','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('111', 'Lunugamvehera','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('112', 'Thissamaharama','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('113', 'Hambantota','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('114', 'Ambalantota','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('115', 'Angunakolapelessa','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('116', 'Weeraketiya','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('117', 'Katuwana','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('118', 'Okewela','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('119', 'Beliatta','9');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('120', 'Tangalle','9');

-------Northern-------
----------------Jaffna   10-----------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('121', 'Kayts','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('122', 'Valikamam West','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('123', 'Valikamam South-West','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('124', 'Valikamam North','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('125', 'Valikamam South','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('126', 'Valikamam East','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('127', 'Vadamarachchi south-West','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('128', 'Vadamarachchi East','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('129', 'Vadamarachchi North','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('130', 'Thenmarachchi','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('131', 'Nallur','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('132', 'Jaffna','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('133', 'Velanai','10');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('134', 'Delft','10');

-------------------Mannar     11-------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('135', 'Mannar Town','11');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('136', 'Manthai West','11');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('137', 'Madhu','11');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('138', 'Nanaddan','11');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('139', 'Musalai','11');
-------------Vavuniya    12-------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('140', 'Vavuniya North','12');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('141', 'Vavuniya South','12');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('142', 'Vavuniya','12');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('143', 'Vengalacheddikulam','12');
-----------------Mullativu    13------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('144', 'Thunukkai','13');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('145', 'Manthai East','13');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('146', 'Puthukudiyiruppu','13');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('147', 'Oddusuddan','13');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('148', 'Maritimepattu','13');
-----------------Kilinochchi  14---------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('149', 'Pachchilaipalli','14');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('150', 'Kandavalai','14');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('151', 'Karachchi','14');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('152', 'Poonakary','14');

----------------Eastern--------------------------
----------------Batticaloa     15--------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('153', 'Koralai Pattu North','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('154', 'Koralai Pattu West','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('155', 'Koralai Pattu','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('156', 'Eravur Pattu','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('157', 'Eravur Town','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('158', 'Manmunai North','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('159', 'Manmunai West','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('160', 'Kattankudy','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('161', 'Manmunai Pattu','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('162', 'Manmunai South-West','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('163', 'Porativu Pattu','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('164', 'Manmunai South & Eruvil Pattu','15');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('165', 'Koralai Pattu South','15');
-----------------------Ampara      16------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('166', 'Dehiattakandiya','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('167', 'Pandiyathalawa','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('168', 'Mahaoya','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('169', 'Uhana','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('170', 'Ampara','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('171', 'Navithanveli','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('172', 'Samanthurai','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('173', 'Kalmunai','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('174', 'Sainthamarathu','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('175', 'Karativu','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('176', 'Ninthavur','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('177', 'Addalachchenai','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('178', 'Eragama','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('179', 'Akkaraipattu','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('180', 'Alayadiwembu','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('181', 'Damana','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('182', 'Thirukkovil','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('183', 'Pothuvil','16');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('184', 'Lahugala','16');

------------------------Trincomalee   17---------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('185', 'Padavi Sri Pura','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('186', 'Kuchchaveli','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('187', 'Gomarankadawala','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('188', 'Morawewa','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('189', 'Trincomalee Twon','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('190', 'Thambalagamuwa','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('191', 'Kantale','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('192', 'Muttur','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('193', 'Kinniya','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('194', 'Seruvila','17');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('195', 'Verugal','17');

--------------------North-Western-----------------
----------------------Kurunegala  18----------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('196', 'Giribawa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('197', 'Galgamuwa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('198', 'Ehetuwewa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('199', 'Ambanpola','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('200', 'Kotavehera','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('201', 'Rasnayakapura','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('202', 'Nikaweratiya','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('203', 'Mahawa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('204', 'Polpithigama','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('205', 'Ibbagamuwa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('206', 'Ganewatta','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('207', 'Wariyapola','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('208', 'Kobeigane','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('209', 'Bingiriya','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('210', 'Panduwasnuwara','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('211', 'Katupotha','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('212', 'Bamunakotuwa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('213', 'Maspotha','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('214', 'Kurunegala','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1203', 'Polgahawela','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1204', 'Alawwa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1205', 'Narammala','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1206', 'Pannala','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1207', 'Udubaddawa','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1208', 'Kuliyapitiya West','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1209', 'Kuliyapitiya East','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1210', 'Weerambugedara','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1211', 'Rideegama','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1212', 'Mawathagama','18');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('1213', 'Mallawapitiya','18');



---------------------------Puttalam 19---------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('215', 'Kalpitiya','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('216', 'Vanathavilluwa','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('217', 'Karuwalagaswewa','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('218', 'NawaGattegama','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('219', 'Puttalam','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('220', 'Mundalama','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('221', 'Mahakumbukkadawala','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('222', 'Anamaduwa','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('223', 'Pallama','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('224', 'Arachchikattuwa','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('225', 'Chilaw','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('226', 'Madampe','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('227', 'Mahawewa','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('228', 'Nattandiya','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('229', 'Wennappuwa','19');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('230', 'Dankotuwa','19');

---------------------North-Central-----------------------
-------------------------Anuradhapura 20------------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('231', 'Padaviya','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('232', 'Kebithigollewa','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('233', 'Medawachchiya','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('234', 'Mahavilachchiya','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('235', 'Nuwaragama Palatha Central','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('236', 'Rambewa','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('237', 'Kahatagasdigiliya','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('238', 'Horowpathana','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('239', 'Galenbindunuwewa','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('240', 'Mihinthale','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('241', 'Nuwaragam Palatha East','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('242', 'Nachchadoowa','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('243', 'Rajanganaya','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('244', 'Thambuttegama','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('245', 'Thalawa','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('246', 'Thirappane','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('247', 'Kekirawa','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('248', 'Palugaswewa','20');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('249', 'Nochchiyagama','20');
---------------------------Polonnaruwa 21-------------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('250', 'Hingurakgoda','21');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('251', 'Medirigiriya','21');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('252', 'Lankapura','21');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('253', 'Welikanda','21');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('254', 'Dimbulagala','21');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('255', 'Thamankaduwa','21');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('256', 'Elahera','21');

---------------Uva---------------
-------------------Badulla 22----------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('257', 'Mahiyanganaya','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('258', 'Rideemaliyadda','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('259', 'Meegahakivula','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('260', 'Kandaketiya','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('261', 'Soranathota','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('262', 'Passara','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('263', 'Lunugala','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('264', 'Badulla','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('265', 'Hali-Ela','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('266', 'Uva-Paranagama','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('267', 'Welimada','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('268', 'Bandarawela','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('269', 'Ella','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('270', 'Haputhale','22');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('271', 'Haldummulla','22');
--------------------Moneragala 23-------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('272', 'Bibile','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('273', 'Madulla','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('274', 'Medagama','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('275', 'Siyambalanduwa','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('276', 'Moneragala','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('277', 'Badalkumbura','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('278', 'Wellawaya','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('279', 'Buttala','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('280', 'Katharagama','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('281', 'Thanamalvila','23');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('282', 'Sevanagala','23');

------------------------Sabaragamuwa---------------------------------
---------------------------Ratnapura 24--------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('283', 'Eheliyagoda','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('284', 'Kuruvita','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('285', 'Kiriella','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('286', 'Ratnapura','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('287', 'Imbulpe','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('288', 'Balangoda','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('289', 'Opanayaka','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('290', 'Pelmadulla','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('291', 'Elapatha','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('292', 'Ayagama','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('293', 'Kalawana','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('294', 'Nivithigala','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('295', 'Kahawatta','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('296', 'Godakawela','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('297', 'Weligepola','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('298', 'Embilipitiya','24');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('299', 'Kolonna','24');
-------------------------------Kegalle 25------------------
INSERT INTO division (divisionId, divisionName,disId) VALUES ('300', 'Rambukkana','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('301', 'Mawanella','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('302', 'Aranayaka','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('303', 'Kegalle','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('304', 'Galigamuwa','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('305', 'Warakapola','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('306', 'Ruwanwella','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('307', 'Bulathkohupitiya','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('308', 'Yatiyanthota','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('309', 'Dehiovita','25');
INSERT INTO division (divisionId, divisionName,disId) VALUES ('310', 'Deraniyagala','25');

select * from grama
create table grama(
gramaId int not null primary key,
gramaName varchar(250) not null,
divId int references division(divisionId),
)
---------------------western--------------------
---------------------Colombo          1-----------------------
------Done in hms---------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('248', 'Sammanthranapura','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('249', 'Mattakkuliya','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('250', 'Modara','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('251', 'Madampitiya','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('252', 'Mahwatta','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('253', 'Aluthmawatha','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('254', 'Lunupokuna','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('255', 'Bloemendhal','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('256', 'Kotahena east','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('257', 'Kotahena West','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('258', 'Kochchikade North','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('259', 'Jinthupitiya','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('260', 'Massangasweediya','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('261', 'New Bazar','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('262', 'Grandpass South','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('263', 'Grandpass North','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('264', 'Nawagampura','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('265', 'Maligawatta East','1');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('266', 'Bettarama','1');
----------------------done in hostel------------------------------------



------------------------'2', 'Kolonnawa-----------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('267', 'Wadulla','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('268', 'Sedawatta','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('269', 'halmulla','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('270', 'kotuvila','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('271', 'Veheragoda','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('272', 'Meethotamulla','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('273', 'Welewatta','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('274', 'Kittampahuwa','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('275', 'Wenna watta','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('276', 'Maha Buthgamuwa B','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('277', 'Kuda Buthgamuwa','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('278', 'Kelanimulla','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('279', 'Ambathale','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('280', 'Mulleriyawa North','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('281', 'Belagama','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('282', 'Kotikawatta East','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('283', 'Mahabangamuwa A','2');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('284', 'Maha Buthangamuwa C','2');

----------------------------------'3', 'Kaduwela'--------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('285', 'Welivita','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('286', 'Raggahawatte','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('287', 'Hewagama','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('288', 'Kaduwela','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('289', 'Pahala Bomiriya ','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('290', 'Ihala Bomiriya','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('291', 'Wekewatta','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('292', 'Nawagamuwa','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('293', 'Pahala Bomiriya B','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('294', 'Welihinda','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('295', 'Kothalawala','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('296', 'Mahadeniya','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('297', 'Thalahena North','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('298', 'Malabe North ','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('299', 'Thunadahena','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('300', 'Nawagamuwa South ','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('301', 'Batewela','3');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('302', 'Ranala','3');

-----------------------'4', 'Homagama-------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('303', 'Jalthara','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('304', 'Henpita','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('305', 'Atigala West','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('306', 'Atigala East','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('307', 'Batawala','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('308', 'Walpita','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('309', 'Nawalamulla','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('310', 'Meegasmulla','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('311', 'Habarakanda North','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('312', 'Mullegama North ','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('313', 'Mullegama South','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('314', 'Habarakanda South','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('315', 'Panagoda Town','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('316', 'Henawatta','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('317', 'Meegoda North','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('318', 'Meegoda South','4');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('319', 'Godagama North','4');

---------------------'5', 'Hanwella'------------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('320', 'Bollathwa','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('321', 'Kanampella West','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('322', 'AKanampella East','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('323', 'Manakada','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('324', 'Eswatta North ','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('325', 'Kiriwanadala North','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('326', 'Kudagama','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('327', 'Weralupitiya','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('328', 'Seethagama','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('329', 'Avissawella','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('330', 'Ukwatta','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('331', 'Agra Pedesa','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('332', 'Eswatta South','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('333', 'Ihala Kosgama North','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('334', 'Thawalgoda','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('335', 'Muruthgama','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('336', 'Akaravita','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('337', 'Kahatapitiya','5');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('338', 'Kalu Aggala','5');

------------------6', 'Padukka'-----------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('339', 'Pinnawla uthura','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('340', 'Pinnawala South ','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('341', 'Waga North','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('342', 'Waga North ','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('343', 'Waga East','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('344', 'Thummodara','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('345', 'Waga South ','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('346', 'Siyamabalawa','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('347', 'Pahala Bope','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('348', 'Halpe','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('349', 'Waga West ','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('350', 'Uggalla','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('351', 'Wewlpanawa','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('352', 'Pitumpe North','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('353', 'Pitumpe South','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('354', 'Galagedara North ','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('355', 'Galagedara South ','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('356', 'Paadukka','6');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('357', 'Arukwatta North ','6');

----------------7', 'Maharagama'---------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('358', 'Mirihana South','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('359', 'Mirihana North','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('360', 'Madiwela','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('361', 'Thalawathugoda West','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('362', 'Thalawathugoda East','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('363', 'Kalalgoda','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('364', 'Kottawa East','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('365', 'Rukmale West ','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('366', 'Rukmale East A','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('367', 'Rukmal East B ','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('368', 'Uyangoda ','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('369', 'Kottawa North','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('370', 'Depanama','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('371', 'Polwatta','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('372', 'Pamunuwa','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('373', 'Thalapathpitiya','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('374', 'Pragathipura','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('375', 'Udahamulla East ','7');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('376', 'Udahamulla West  ','7');

-----------------------------------'8', 'Sri Jayawardhanapura'-----------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('377', 'Obesekarapura','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('378', 'Welikada West','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('379', 'Welikada East ','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('380', 'Rajagiriya','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('381', 'Welikada North','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('382', 'Nawala East','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('383', 'Koswatta','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('384', 'Ethulkotte West','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('385', 'Ethulkotte','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('386', 'Pitakotte East','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('387', 'Nawala West','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('388', 'Nugegoda West','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('389', 'Pagoda','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('390', 'Nugegoda','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('391', 'Pagoda East','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('392', 'Gangodavila North','8');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('393', 'Gangodavila south','8');

---------------------------'9', 'Thibirigassyaya---------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('394', 'Kollupitiya','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('395', 'bambalapitiya','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('396', 'kurunduwatta','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('397', 'kuppiyawatta West','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('398', 'Kuppiyawatta East','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('399', 'Dematagoda','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('400', 'Wanathamulla','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('401', 'Borella North','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('402', 'Gothamipura','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('403', 'Narahempita','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('404', 'Thimbirigasyaya','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('405', 'Milagiriya','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('406', 'Havelock Town','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('407', 'Kirula','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('408', 'Kirulapane','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('409', 'Wellawattae North','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('410', 'Wellawattae South','9');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('411', 'Pamankada West','9');

----------------------------------'10', 'Dehiwala'------------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('412', 'Sri Saranankara','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('413', 'Vilawala','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('414', 'Dutugemunu','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('415', 'Kohuwela','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('416', 'Kalubovila','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('417', 'Hathbodiya','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('418', 'Galwala','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('419', 'Dehiwala West','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('420', 'Dehiwala East','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('421', 'Udyanaya','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('422', 'Nedimale','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('423', 'Malwatta','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('424', 'Jayathilka ','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('425', 'karagampitiya','10');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('426', 'Kawdana East','10');

-------------------------------11', 'Ratmalana------------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('427', 'Mount Lavinia ','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('428', 'Kawdana west','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('429', 'Watarappala','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('430', 'Wathumulla','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('431', 'Attidiya North','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('432', 'Piriwena','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('433', 'Wedikanda','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('434', 'Vihara','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('435', 'Rathmalana West','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('436', 'Rathmalana east','11');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('437', 'Kandawaka','11');

-------------------------------12', 'Moratuwa------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('438', 'Angulana North','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('439', 'Kaldemulla','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('440', 'Soysapura North','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('441', 'Dahampura','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('442', 'Thalawala North','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('443', 'Borupana','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('444', 'Thelawala South','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('445', 'Lakshapathiya North','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('446', 'Lakshapathiya Central','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('447', 'Angulana South','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('448', 'Uyana South','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('449', 'Uyana North','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('450', 'Rawathawatta South','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('451', 'Lakshapathiya South','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('452', 'Kaduwamulla','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('453', 'katubedda','12');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('454', 'Molpe','12');

---------------------------13', 'Kesbewa'--------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('455', 'Pepiliyana West','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('456', 'Papiliyana East','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('457', 'Divulpittiya East','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('458', 'Divulpittiya West','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('459', 'Bellanvila','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('460', 'Boralessgamuwa west B','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('461', 'Boralessgamuwa west C','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('462', 'Werahela North','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('463', 'Boralesgamuwa East B','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('464', 'Neelammahara','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('465', 'Katuwawela North','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('466', 'Vishwakalawa','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('467', 'Werahena South','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('468', 'katuwawela South','13');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('469', 'Niwanthidiya ','13');
select * from grama

-----------------------Gampaha---------------
-----------------Negombo    14----------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1', 'Kammalthura','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('2', 'Pallansena North','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('3', 'Kochchikade','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('4', 'Pallansena South','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('5', 'Daluwakotuwa','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('6', 'Palangathure','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('7', 'Ettukala','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('8', 'Daluwakotuwa East','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('9', 'Kattuwa','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('10', 'Dalupotha East','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('11', 'Dalupotha','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('12', 'Kudapaduwa','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('13', 'Kudapaduwa North','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('14', 'Kudapaduwa South','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('15', 'Wella Weediya','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('16', 'Wella Weediya East','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('17', 'Periyamulla','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('18', 'Hunupitiya','14');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('19', 'Agurukaramulla','14');

---------------------Katana       15----------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('20', 'Muruthana','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('21', 'Manaveriya','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('22', 'Udangawa','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('23', 'Thoppuwa','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('24', 'Bambukuliya','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('25', 'Katana North','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('26', 'Katana East','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('27', 'Katana West','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('28', 'Maha Ethgala','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('29', 'Ethgala','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('30', 'Adikkandiya','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('31', 'Welihena North','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('32', 'Welihena South','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('33', 'Pahala Kandawala','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('34', 'Ethgala South','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('35', 'Ihala Kandawala','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('36', 'Kaluwarippuwa West','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('37', 'Kondagammulla','15');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('38', 'Kotiyala','15');

-------------------Divulapitiya  16----------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('39', 'Andimulla','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('40', 'Ambalayaya','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('41', 'Bolagala','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('42', 'Otharawadiya','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('43', 'Godigamuwa West','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('44', 'Godigamuwa East','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('45', 'Balawala','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('46', 'Badalgama','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('47', 'Delpakadawara','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('48', 'Srigapathawatta','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('49', 'Pethigoda','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('50', 'Alugolla','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('51', 'Polwatta','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('52', 'Polhena','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('53', 'Mellawagedara','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('54', 'Diklanda','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('55', 'Katukenda','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('56', 'Akarangaha','16');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('57', 'Kehelella West','16');

------------------------17 Mirigama------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('58', 'Nalla','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('59', 'Giriullagama','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('60', 'Delwala South','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('61', 'Delwala','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('62', 'Loluwagoda South','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('63', 'Madurupitiya','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('64', 'Hapugahagedara','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('65', 'Kandangamuwa','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('66', 'Henegama','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('67', 'Maladeniya','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('68', 'Kahandawa','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('69', 'Kandalama','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('70', 'Walbothale','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('71', 'Pirisyala','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('72', 'Kamaragoda','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('73', 'Keenadeniya','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('74', 'Loluwagoda','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('75', 'Bothale Pahalagama North','17');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('76', 'Maveehena','17');

-----------------------18 Minuwangoda---------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('77', 'Nilpanagoda South','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('78', 'Nilpanagoda West','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('79', 'Nilpanagoda East','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('80', 'Nilpanagoda','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('81', 'Arangawa South','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('82', 'Horampella North','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('83', 'Galkanda','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('84', 'Bodhipihituwala','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('85', 'Watinapaha','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('86', 'Mabodala West','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('87', 'Mabodala North','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('88', 'Ihala Vithanamulla','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('89', 'Nalapaha','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('90', 'Pahala Vithanamulla','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('91', 'Mabodala East','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('92', 'Mabodala South','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('93', 'Watinapaha South','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('94', 'Wankepumulla','18');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('95', 'Kamaragoda','18');
----------------------19  Wattala----------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('96', 'Pamunugama','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('97', 'Maha Pamunugama','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('98', 'Delathura West','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('99', 'Bopitiyathuduwa','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('100', 'Bopitiya','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('101', 'Pulluhena','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('102', 'Paranambalama','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('103', 'Nugape','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('104', 'Kunjawatta','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('105', 'Mangulpokuna','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('106', 'Elehiwatta','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('107', 'Welisara','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('108', 'Pattiyawala','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('109', 'Uswetakeiyawa','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('110', 'Mahabage','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('111', 'Elapitiwala','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('112', 'Horapethuduwa','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('113', 'Horape','19');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('114', 'Delathura East','19');
----------------------20  Ja-Ela------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('115', 'Mahawatta','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('116', 'Dandugama','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('117', 'Dehiyagatha North','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('118', 'Kudahakapola North','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('119', 'Gallawatta','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('120', 'Ekala','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('121', 'Dehiyagatha South','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('122', 'Kudahakapola South','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('123', 'Ekala Kurunduwatta','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('124', 'Vishakawatta','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('125', 'Thudella North','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('126', 'Thudella West','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('127', 'Thudella South','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('128', 'Kanuwana','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('129', 'Alexendrawatta','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('130', 'Bandigoda','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('131', 'Yakkaduwa','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('132', 'Niwandama North','20');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('133', 'Niwandama South','20');

-------------------------21 Gampaha--------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('134', 'Makevita North','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('135', 'makevita South','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('136', 'Mabima','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('137', 'Gonagaha 2','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('138', 'Welikada','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('139', 'Gonagaha 1','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('140', 'Ambanvita','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('141', 'Kirindivita','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('142', 'Akaravita','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('143', 'Pahalagama','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('144', 'Medagama 2','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('145', 'Ihalagama West','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('146', 'Ihalagama East','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('147', 'Gampaha Aluthgama North','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('148', 'Karanayakamulla','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('149', 'Baduwathugoda','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('150', 'Boraliyawatha','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('151', 'Thittalapitigoda','21');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('152', 'Aluthgama Bogamuwa North','21');
------------------22 Attanagalla-------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('153', 'Eluwapitiya West','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('154', 'Eluwapitiya','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('155', 'Hiripitiya West','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('156', 'Hiripitiya North','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('157', 'Hiripitiya Central','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('158', 'Hiripitiya East','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('159', 'Thalgasmote West','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('160', 'Thalgasmote','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('161', 'Thalgasmote East','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('162', 'Udammita','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('163', 'Humbutiyawa West','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('164', 'Humbutiyawa','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('165', 'Parana Veyangoda','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('166', 'Kongasdeniya','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('167', 'Wedagama','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('168', 'Nawagamuwa','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('169', 'Napagoda','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('170', 'Kalapitiya','22');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('171', 'Nittambuwa South','22');
-----------------------23 Dompe----------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('172', 'Maryland Colony','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('173', 'Indurugalla','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('174', 'Wathurugama','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('175', 'Bandaranayakapura West','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('176', 'Bandaranayakapura East','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('177', 'Mailawalana','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('178', 'Mailawalana South','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('179', 'Thimbirigama','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('180', 'Mahal Loluwa','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('181', 'Ihala Millathe','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('182', 'Pingamuwa','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('183', 'Pahala Millathe','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('184', 'Millathe','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('185', 'Kirindiwela','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('186', 'Bogahawatta','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('187', 'Rambutanwatta','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('188', 'Etambagahawatta','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('189', 'Kannimahara','23');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('190', 'Radawana North','23');
---------------24 Mahara-------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('191', 'Kimbulgoda','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('192', 'Pituwalgoda','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('193', 'Kinigama','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('194', 'Maharagama','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('195', 'Siwaralumulla','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('196', 'Pilikuttuwa','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('197', 'Yongammulla','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('198', 'Ambgaspitiya','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('199', 'Warapalana','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('200', 'Kandumulla','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('201', 'Pasgammana','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('202', 'Maligathenna','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('203', 'Batepola North','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('204', 'Batepola','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('205', 'Amunukumbura','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('206', 'Malwathuhiripitiya','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('207', 'Buthpitiya North','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('208', 'Uruwala East','24');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('209', 'Uruwala West','24');
---------------------25 Kelaniya---------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('210', 'Welegoda','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('211', 'Hunupitiya North','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('212', 'Nahena','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('213', 'Eriyawetiya','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('214', 'Kiribathgoda','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('215', 'Thalawathuhenpita North','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('216', 'Thalawathuhenpita South','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('217', 'Kendahena','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('218', 'Egoda Eriyawetiya','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('219', 'Hunupitiya East','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('220', 'Hunupitiya South','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('221', 'Wanawasala West','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('222', 'Wanawasala East','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('223', 'Dippitigoda','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('224', 'Weweldoowa','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('225', 'Warakanatta','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('226', 'Koholvila','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('227', 'Dalugamgoda','25');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('228', 'Nungamugoda','25');
-------------------26 Biyagama-------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('229', 'Pahala Biyanvila East','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('230', 'Ihala Biyanvila North','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('231', 'Ihala Biyanvila Central','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('232', 'Mawaramandiya','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('233', 'Meegahawatta West','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('234', 'Meegahawatta East','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('235', 'Kammalwatta','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('236', 'Delgoda','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('237', 'Akurumulla','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('238', 'Kanduboda East','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('239', 'Kanduboda West','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('240', 'Siyambalape Watta','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('241', 'Daranagama','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('242', 'Siyambalape North','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('243', 'Heiyanthuduwa North','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('244', 'Makola South Ihala','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('245', 'Makola North Ihala','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('246', 'Makola North Central','26');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('247', 'Pahala Biyanvila West','26');



--------------------North-Western-----------------
----------------------Kurunegala  18----------------
----------giribawa 196-------------------------

INSERT INTO grama (gramaId, gramaName,divId) VALUES ('470','Jayanthipura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('471', 'Bambare','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('472', 'Sandagala','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('473', 'Perakumpura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('474', 'Solepura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('475', 'Halmillagala','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('476', 'Thimbiripokuna','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('477', 'Serasumgala','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('478', 'Kokmaduwa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('479', 'Orugala','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('480', 'Mahasenpura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('481', 'Weerapokuna','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('482', 'Hasthirajapura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('483', 'Thammitagama','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('484', 'Damsopura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('485', 'Solewewa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('486', 'Pathanewewa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('487', 'Abhayapura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('488', 'Sangabopura','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('489', 'Gurulupitigama','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('490', 'Warawewa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('491', 'Pothana','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('492', 'Pahala Giribawa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('493', 'Ihala Giribawa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('494', 'Weragala','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('495', 'Ihala Maradankadawala','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('496', 'Hettiarachchigama','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('497', 'Gampola','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('498', 'Aliya Wetunuwewa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('499', 'Thambuththa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('500', 'Thammennawa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('501', 'Maylewa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('502', 'Madige','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('503', 'Wannikudawewa','196');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('504', 'Sangappalaya','196');


----------------Galgamuwa 197-----------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('505','Medagama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('506', 'Walagambapura','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('507', 'Gemunupura','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('508', 'Ethiniwetunugala','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('509', 'Thissapura','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('510', 'Medagama East','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('511', 'Senarathgama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('512', 'Kumbukwewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('513', 'Mahagalkadawala','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('514', 'Usgala Siyambalagamuwa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('515', 'Kepela','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('516', 'Bandaragama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('517', 'Ganangamuwa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('518', 'Padavigama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('519', 'Meegalewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('520', 'Lassanagama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('521', 'Track4 Usgala','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('522', 'Jayalanda','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('523', 'Padipanchawa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('524', 'Buduruwakanda','197');

INSERT INTO grama (gramaId, gramaName,divId) VALUES ('525', 'Kallanchiya','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('526', 'Molewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('527', 'Nochchiya','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('528', 'Kohobankulama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('529', 'Ihala Nanneriya','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('530', 'Ihalagama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('531', 'Ihala Palukandewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('532', 'Pahala Palukandewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('533', 'Monnankulama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('534', 'Diwullewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('535', 'kurundankulama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('536', 'Kelegama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('537','Siyambalewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('538', 'Walaswewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('539', 'Poraththukadawala','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('540', 'Bulnewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('541', 'Ulpathagama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('542', 'Konwewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('543', 'Mahagalgamuwa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('544', 'Galgamuwa Town','197');

INSERT INTO grama (gramaId, gramaName,divId) VALUES ('545', 'Aluththerathgama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('546', 'Mottapeththewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('547', 'Karuwalagaswewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('548', 'Jayabima','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('549', 'Palugolla','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('550', 'Mahananneriya North','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('551', 'Mahananneriya South','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('552', 'Wewaranawetiya','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('553', 'Nallachchiya','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('554', 'Medawachchiya','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('555', 'Peddogama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('556', 'katuwewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('557', 'Thorawa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('558', 'Nahettikulama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('559', 'Wadugama','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('560', 'Kokwewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('561', 'Kattakaduwa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('562', 'Ganedivulwewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('563', 'Wegedara','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('564', 'Madadombe','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('565', 'Kurundewa','197');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('566', 'Palukadawela','197');

------------------198', 'Ehetuwewa----------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('567','Medinnoruwa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('568', 'Mahawelithenna','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('569', 'Andarawewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('570', 'Bongama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('571', 'Katugampalagama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('572', 'Mahakathnoruwa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('573', 'Weliyawa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('574', 'Makulewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('575', 'Vikadenigama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('576', 'Kathnoruwa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('577', 'Wedinigama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('578', 'Pothanegama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('579', 'Mudiyannegama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('580', 'Divulgane','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('581', 'Ihala Digana','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('582', 'Nithalawa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('583', 'Galapitadigana','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('584', 'Ethinimale','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('585', 'Ratnadivulwewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('586', 'Nithogama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('587', 'Hiddewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('588', 'Kaduruwewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('589', 'IhalaEmbogama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('590', 'Maha Embogama','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('591', 'Ehetuwewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('592', 'Nakolagane','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('593', 'veheragodayaya','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('594', 'Yaddessawa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('595', 'Atharagalla','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('596', 'Gurugoda','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('597', 'Eriyawa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('598', 'Hunugallewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('599', 'Thimbiriyawa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('600', 'Walathwewa','198');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('601', 'Nabadewa','198');

-------------------199', 'Ambanpola--------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('602','Kasikote East','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('603', 'Kasikote West','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('604', 'Belungala','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('605', 'Abamkolawewa North','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('606', 'Nelumpathwewa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('607', 'Mahadivulwewa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('608', 'Ranorawa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('609', 'Uda Divulwewa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('610', 'Ellabadagama','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('611', 'Ambanpola South','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('612', 'Kirimetiyawa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('613', 'Abamkolawewa South','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('614', 'Serugoda','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('615', 'Mediyawa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('616', 'Dethawa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('617', 'Udangawa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('618', 'Waragammana','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('619', 'Borawewa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('620', 'Bakmeewewa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('621', 'Walaliya','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('622', 'Palapathwala','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('623', 'Kethe Pahuwa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('624', 'Rolawa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('625', 'Uthagama','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('626', 'Nekathi Kumbukwewa','199');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('627', 'Waduressa','199');

-----------200', 'Kotavehera'--------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('628','Palugolla yaya 10A','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('629', 'Palugolla yaya 10B','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('630', 'Paluuswewa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('631', 'Kumbukwewa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('632', 'Digannewa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('633', 'Kelegama','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('634', 'Digannewaththa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('635', 'Mahamithawa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('636', 'Aluthgama','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('637', 'Diullepitiya','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('638', 'Meewellewa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('639', 'Galkadawala','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('640', 'Elagammillawa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('641', 'Yakadapatha','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('642', 'Kudarawaliya','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('643', 'Moragolla','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('644', 'Kudamithawa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('645', 'Dehennegama','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('646', 'Ihala Weeradadana','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('647', 'Monnekulama','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('648', 'Kotawehera','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('649', 'Mahakirinda A','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('650', 'Mahakirinda B','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('651', 'Girilla','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('652', 'Hidogama','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('653', 'Sirisethagama','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('654', 'Nawana','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('655', 'Nagala','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('656', 'Itewa','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('657', 'Dodamggollegama','200');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('658', 'Hulawa','200');


-------------201', 'Rasnayakapura-----------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('659','Koralayagama','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('660', 'Malpanawa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('661', 'Abokkagama','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('662', 'Kanuketiya','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('663', 'Ambale','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('664', 'Udunowa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('665', 'Galpanawa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('666', 'Halambe','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('667', 'Ottukulama','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('668', 'Leekolapitiya','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('669', 'Agarauda','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('670', 'Udahenegama','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('671', 'Rambewa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('672', 'Thalakolawewa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('673', 'Kanagullewa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('674', 'Rasnayakapura','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('675', 'Kallanchiya','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('676', 'Kuruvikulama','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('677', 'Nammuwawa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('678', 'Neeraliyadda','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('679', 'Ambagammana','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('680', 'Unagolla','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('681', 'Kongaswalayagama','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('682', 'Divullewa','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('683', 'Kadigawa Track 1','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('684', 'Kadigawa Track 3','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('685', 'Subhasinghapura','201');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('686', 'Magurankadawala','201');


---------------202', 'Nikaweratiya-------------------

INSERT INTO grama (gramaId, gramaName,divId) VALUES ('687','Thumbulla','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('688', 'Waduressa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('689', 'Olupeliyawa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('690', 'Kandegedara','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('691', 'Hulugalla','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('692', 'Mawathagama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('693', 'Pinnapolegama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('694', 'Hulogedera','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('695', 'Bogollagama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('696', 'Dalukgolla','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('697', 'Ihakolagama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('698', 'Karakole','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('699', 'Hewanpelessa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('700', 'Kivulegama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('701', 'Nabadewa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('702', 'Diyagama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('703', 'Hathigammana','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('704', 'Kaluwennewa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('705', 'Heelogama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('706', 'Kebellewa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('707', 'Budumuththawa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('708', 'Galapitiyagama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('709', 'Nikaweratiya North','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('710', 'Thimbiriyawa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('711', 'Galagedara','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('712', 'Randenigama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('713', 'Diwullagoda','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('714', 'Siyambalewa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('715', 'Wasiwewe','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('716', 'Kiridigalla','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('717', 'Othota Diwullewa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('718', 'Halmillewa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('719', 'Katagamuwa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('720', 'Kumbukwewe','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('721', 'Elawaka','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('722', 'Magalegama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('723', 'Millagoda','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('724', 'Nikaweratiya South','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('725', 'Viharagama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('726', 'Danduwawa','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('727', 'Pahala Galapitiyagama','202');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('728', 'Tharanagolla','202');


----------------203', 'Mahawa-----------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('729','Kohombakadawala','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('730', 'Ihalagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('731', 'Pahalagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('732', 'Moragaswewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('733', 'Koonwewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('734', 'Yaddigama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('735', 'Bamunugama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('736', 'Kirimetiyawa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('737', 'Bakmeegahawatta','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('738', 'Karuwalagahawatta','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('739', 'Makaduwawa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('740', 'Tumbullegama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('741', 'Hithokadawala','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('742', 'Tambare','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('743', 'Liyanagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('744', 'Uduweriya','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('745', 'Maningamuwa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('746', 'Ipalogama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('747', 'Thammitagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('748', 'Daladagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('749', 'Ullalapola','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('750', 'Atawarala','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('751', 'Digana','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('752', 'Moonamalegama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('753', 'Madurugama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('754', 'Mahawa West','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('755', 'Mahawa East','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('756', 'Nettipalagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('757', 'Diwullewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('758', 'Pailigama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('759', 'Kattambuwawa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('760', 'Deheneggama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('761', 'Karambe','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('762', 'Kandubadagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('763', 'Embogama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('764', 'Thalambuwa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('765', 'Kumbukwewe','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('766', 'Kakunawa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('767', 'Rekogama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('768', 'Imbulgodayagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('769', 'Vilawa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('770', 'Kumbukwewe','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('771', 'Balalla','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('772', 'Pahala Balalla','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('773', 'Thisnampalagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('774', 'Heenkwewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('775', 'Gallewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('776', 'Galewewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('777', 'Kadambawa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('778', 'Metiyaggama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('779', 'Medagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('780', 'Gala Ambagaswewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('781', 'Rathmale','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('782', 'Dampitigama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('783', 'Nagollagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('784', 'Thalagalla','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('785', 'Panwewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('786', 'Balagollagama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('787', 'Ambagaswewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('788', 'Gajaneggama','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('789', 'Pothuwewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('790', 'Katuwannawa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('791', 'Walpaluwa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('792', 'Palugaswewa','203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('793', 'Mirihanpitigama','203');


------------------204', 'Polpithigama----------------------

INSERT INTO grama (gramaId, gramaName,divId) VALUES ('794','Kumbukkadawala','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('795', 'Thaladapitiya','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('796', 'Thalawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('797', 'Siyambalangamuwa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('798', 'Bulnewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('799', 'Kambuwatawana','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('800', 'Galgiriyawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('801', 'Pohorawaththa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('802', 'Moragollagama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('803', 'Galahitiyagama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('804', 'Nikawewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('805', 'Ihala Thimbiriyawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('806', 'Mamunugama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('807', 'Pathirennegama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('808', 'Saliyagama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('809', 'Serugasyaya','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('810', 'Herathgama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('811', 'Dambe','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('812', 'Kiribamunegama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('813', 'Madagalla','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('814', 'Galagedaragama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('815', 'Hathigamuwa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('816', 'Amunakole','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('817', 'Kumbukulawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('818', 'Pallekele','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('819', 'pothuwila','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('820', 'Rekevula','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('821', 'Bogolla','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('822', 'Polpithigama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('823', 'Malasna','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('824', 'Meegaswewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('825', 'Niyandawanaya','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('826', 'Hathpokuna','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('827', 'Thalpathiwewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('828', 'Koruwewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('829','Galtenwewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('830', 'Balagolla','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('831', 'Siyambalawewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('832', 'Thalakolawewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('833', 'Elagamuwa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('834', 'Halmillawewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('835', 'Imihaminegama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('836', 'Angulgamuwa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('837', 'Nikawehera','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('838', 'Kosgahaela','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('839', 'Hakwatunawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('840', 'Rawaela','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('841', 'Dagama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('842', 'Indigolla','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('843', 'Dembatagala','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('844', 'Galketiyagama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('845', 'Bakmeewewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('846', 'Walangolla','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('847', 'Wanduressa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('848', 'Maeliya North','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('849', 'Agare','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('850', 'Makulpotha','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('851', 'Thalwehera','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('852', 'Welipitiya','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('853', 'Moroththa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('854', 'Keralankadawala','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('855', 'Polgahangoda','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('856', 'Paragahaela','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('857', 'Medakanda','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('858', 'Madahapola','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('859', 'Uthuruwella','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('860', 'Rambe','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('861', 'Maeliya South','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('862', 'Dekanduwala','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('863', 'Kalugalla','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('864', 'Ihala Thelambiyawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('865', 'Ambagaswewa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('866', 'Thalamalgama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('867', 'Kalawana','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('868', 'Welidalla','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('869', 'Ponnilawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('870', 'Thambuwa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('871', 'Henawa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('872', 'Baddegama','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('873', 'Hangamuwa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('874', 'Doraweruwa','204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('875', 'Deegama','204');


---------------205', 'Ibbagamuwa------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('876','Welgala','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('877', 'Kimbulwana oya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('878', 'Nelliya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('879', 'Diddeniya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('880', 'Polkatuwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('881', 'Diggalawatta','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('882', 'Gurussa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('883', 'Omaragolla','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('884', 'Panliyadda','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('885', 'Nabeta','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('886', 'Ussawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('887', 'Neerammulla','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('888', 'Dewagiriya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('889', 'Katupotha','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('890', 'Unit 03','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('891', 'Hipawwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('892', 'Thammita','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('893', 'Thihawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('894', 'Ganegoda','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('895', 'Lenawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('896', 'Bandipola','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('897', 'Pitapahamuna','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('898', 'Medamulla','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('899', 'Diyathure','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('900', 'Megoda Diyathure','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('901', 'Ragedara','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('902', 'Kandawala','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('903', 'Mahagama','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('904', 'Pussallegama','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('905', 'Karandagolla','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('906', 'Kahatawela','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('907', 'Nekaththa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('908', 'Godarathmale','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('909', 'Pudukkulama','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('910', 'Manapaya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('911','Doluwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('912', 'Wewalagama','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('913', 'Deeyawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('914', 'Aragama','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('915', 'Nindapella','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('916', 'Ihala Gokarella','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('917', 'Medagampola','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('918', 'Kandegedara','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('919', 'Ambanpola','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('920', 'Meddeketiya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('921', 'Siyambalawehera','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('922', 'Daramitipola','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('923', 'Hiddana','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('924', 'Godagama','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('925', 'Kiribamuna','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('926', 'Periyakadu Nelawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('927', 'Peddawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('928', 'Muruthawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('929', 'Kanduluwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('930', 'Ipalawa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('931', 'Polgolla','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('932', 'Udathammita','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('933', 'Medagedara','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('934', 'Thalgodapitiya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('935', 'Ibbagamuwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('936', 'Dehelgamuwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('937', 'Mahamukalanyaya','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('938', 'Bogamuwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('939', 'Hangamuwa','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('940', 'Wadupola','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('941', 'Pannala','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('942', 'Udawela','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('943', 'Kirindigalla','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('944', 'Henegedara','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('945', 'Madihe Thethilianga','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('946', 'Galketigama','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('947', 'Bakmeegolla','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('948', 'Kumbal Anga','205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('949', 'Nembilikumbura','205');


--------------------206', 'Ganewatta--------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('950','Digankonwewa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('951', 'Weragala','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('952', 'Thimbiriwewa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('953', 'Kekulawala','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('954', 'Divulwewa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('955', 'Pothuwagonna','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('956', 'Kuda Uyangalla','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('957', 'Uyangalla','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('958', 'Kalatuwagama','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('959', 'Aluthgama','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('960', 'Seerangoda','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('961', 'Thambagalla','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('962', 'Pannawa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('963', 'Nelawa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('964', 'Makulmade','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('965', 'Neerawiya','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('966', 'Waduwawa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('967', 'Santhanagama','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('968', 'Kumbukgate','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('970', 'Hettigame','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('971', 'Boraluwa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('972', 'Nikagolla','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('973', 'Thiththawella','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('974', 'Jahapagama','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('975', 'Neriyawa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('976', 'Arankele','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('977', 'Thittawelgala','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('978', 'Nikadalupotha','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('979', 'Hiripitiya','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('980', 'Hidawewa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('981', 'Nelumpathgama','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('982', 'Malagamuwa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('983', 'Othuwela','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('984', 'Moragolla','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('985', 'Hunupola','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('986','Wegolla','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('987', 'Makulwewa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('988', 'Thanthirigama','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('989', 'Kirindiwelmada','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('990', 'Seeradunna','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('991', 'Kanawa','206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('992', 'Pothuwila','206');


-----------------------207', 'Wariyapola---------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('969','Halmillewa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('993', 'Thennakoongama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('994', 'Kelegama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('995', 'Konoththa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('996', 'Ebawalapitiya','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('997', 'Mellapotta','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('998', 'Wanduressawelgala','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('999', 'Walpaluwa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1000', 'Minuwangete','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1001', 'Nelliya','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1002', 'Digithawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1003', 'Karagaswewa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1004', 'Waduressa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1005', 'Karadawetiya','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1006', 'Ethawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1007', 'Welawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1008', 'Rambukana','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1009', 'Awlegama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1010', 'Bayawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1011', 'Muwanwellegedara','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1012', 'Magulagama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1013', 'Diwlakele','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1014', 'Werella','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1015', 'Naramana','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1016', 'Thambarawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1017', 'Pothuwewa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1018', 'Netiya','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1019', 'Thissawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1020', 'Amunugama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1021', 'Goluwawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1022', 'Kithulwehera','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1023', 'Ipalawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1024','Mamunuwa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1025', 'Padeniya','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1026', 'Madatuwa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1027', 'Pattalegedara','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1028', 'Mirihanegama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1029', 'Nabadawewa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1030', 'Kahagolla','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1031', 'Habarawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1032', 'Ambakadawara','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1033', 'Pennithawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1034', 'Hettigedara','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1035', 'Medagama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1036', 'Ginipendegama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1037', 'Wariyapola','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1038', 'Rathmale','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1039', 'Piumgalla','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1040', 'Elavitigama','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1041', 'Wewagedara','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1042', 'Randeniya','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1043', 'Werapola','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1044', 'Horombuwa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1045', 'Wilakatupotha','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1046', 'Embawa','207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1047', 'Malwana','207');


--------------208', 'Kobeigane-------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1048','Haathalawa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1049', 'Makeliyawa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1050', 'Mawathagama','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1051', 'Hengamuwa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1052', 'Waduressa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1053', 'Wannigama','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1054', 'Withikuliya','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1055', 'Beddegama','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1056', 'Pubbiliya','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1057', 'Kandaththawa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1058', 'Amunukole','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1059', 'Kithagama','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1060', 'Thelahara','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1061', 'Assedduma','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1062', 'Leekolawewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1063', 'Kahatagaswewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1064', 'Welpothuwewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1065', 'Boraluwewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1066', 'Maaulla','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1067', 'Beliwewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1068', 'Bakunawala','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1069', 'Alahenegama','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1070', 'Aralugaswewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1071', 'Walaswewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1072', 'Pannawa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1073', 'Galatabediwewa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1074', 'Bamunugama','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1075', 'Hirigolla','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1076', 'Kobeigane','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1077', 'Holambalawa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1078', 'Halmillakotuwa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1079', 'Kattapitiya','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1080', 'Baladora','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1081', 'Midellawa','208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1082', 'Hidagahawewa','208');


---------------------209', 'Bingiriya-------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1083', 'Molaeliya','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1084', 'Gatulawa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1085', 'Pahala Thalampola','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1086', 'Ihala Koonkandawala','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1087', 'Bandarigalgoda','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1088', 'Manelembuwa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1089', 'Pahala Kiniyama','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1090', 'Kiniyama East','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1091', 'Kiniyama West','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1092', 'Puwakgahakadawala','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1093', 'Weerapokuna','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1094', 'Koshenagara','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1095', 'Ihala Galwewa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1096', 'Pahala Galwewa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1097', 'Urapotta','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1098', 'Brahmanayagama','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1099', 'Hendiyapola','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1100', 'Karandanayagama','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1101', 'Kosagama','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1102', 'Waduressa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1103', 'Pahala Koswaththa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1104', 'Maunawa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1105', 'Bowatta','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1106', 'Panawewa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1107','Mookalanhema','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1108', 'Murukandiya','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1109', 'Bingiriya','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1110', 'Wilaththawa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1111', 'Aluthgama','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1112', 'Ihala Kalugama','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1113', 'Wellarawa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1114', 'Bakmeeruppa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1115', 'Hiruwalpola','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1116', 'Kaduruwewa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1117', 'Horagasagara','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1118', 'Ihala Kadigamuwa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1119', 'Ihala Koswaththa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1120', 'Nithalawa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1121', 'Kudakalawa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1122', 'Tharana','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1123', 'Koonkandawala','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1124', 'Hamannapahuwa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1125', 'Kurundupotha','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1126', 'Madulupitiya','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1127','Udawela','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1128', 'Maladeniya','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1129', 'Padiwela','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1130', 'Kelegedara','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1131', 'Thorabichchiya','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1132', 'Heenpannawa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1133', 'Pahala Kadigamuwa','209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1134', 'Pahala Mandakondana','209');


-------------------210', 'Panduwasnuwara'-------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1135','Kahatavila','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1136', 'Madaina','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1137', 'Dothella','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1138', 'Ganegama','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1139', 'Mandapola','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1140', 'Konwewa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1141', 'Rambawa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1142', 'Madulla','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1143', 'Wadumunna','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1144', 'Akurana','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1145', 'Yodhayakanda','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1146', 'Udagama','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1147', 'Karandawa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1148', 'Pallegama','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1149', 'Divulwewa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1150', 'Girathalana','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1151', 'Nikapitiya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1152', 'Othegama','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1153', 'Diggalagedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1154', 'Dorabawila','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1155', 'Nallura','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1156', 'Palugaswewa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1157', 'Madige Midiyala','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1158', 'Midiyala','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1159', 'Hindagahawewa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1160', 'Hammaliya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1161', 'Bandara Koswatta','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1162', 'Hathapola','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1163', 'Kadawalagedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1164', 'Panduwasnuwara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1165', 'Kotambapitiya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1166', 'Hettipola','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1167', 'Dolahamuna','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1168', 'Munihirigama','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1169', 'Kevitiya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1170','Pepolegama','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1171', 'Hanthihawa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1172', 'Barampola','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1173', 'Hettigama','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1174', 'Ehetumulla','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1175', 'KurunduKumbura','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1176', 'Bogolla','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1177', 'Bamunumulla','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1178', 'Meegaspitiya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1179', 'Yayegedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1180', 'Takewa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1181', 'Jayasiripura','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1182', 'Pihimbiya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1183', 'Rathmale','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1184', 'Nagollagoda','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1185', 'Ambagahagedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1186', 'Dahanekgedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1187', 'Embogedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1188', 'Doratiyagedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1189', 'Akarawatta','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1190', 'Malwanegedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1191', 'Moonamaldeniya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1192', 'Kamburapola','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1193', 'Pahala Gomugomuwa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1194', 'Ihala Gomugomuwa','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1195', 'Hidiyamulla','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1196', 'Karagahagedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1197', 'Apaladeniya','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1198', 'Thengodagedara','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1199', 'Rideekanda','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1200', 'Moragolla','210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1201', 'Rittadeniya','210');


------------------------'1203', 'Polgahawela'------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1214','Ahugoda East','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1215', 'Amunugama','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1216', 'Gammana','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1217', 'Potuhera East','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1218', 'Potuhera West','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1219', 'Meda Ahugoda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1220', 'Ahugoda West','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1221', 'Mahapitiya','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1222', 'Dewate Gedara','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1223', 'Hiripatwella','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1224', 'Ginneriya','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1225', 'Wadakada','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1226', 'Habarawa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1227', 'Embalawaththa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1228', 'Lihinigiriya','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1229', 'Medalassa Kalugamuwa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1230', 'Yatihena','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1231', 'Maningamuwa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1232', 'Mawathagama','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1233', 'Mandawela','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1234', 'Kureepotta','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1235', 'Arambepola','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1236', 'Handugala','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1237', 'Bevilgamuwa East','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1238', 'Bevilgamuwa West','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1239', 'Thiyador Watta','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1240', 'Dembegoda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1241', 'Imbulana','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1242', 'Kebiliththawela','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1243', 'Egalla','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1244', 'Gallenamulla','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1245', 'Udapola','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1246', 'Kaluhendiwela','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1247', 'Thalawaththegedara','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1248', 'Kolambalamulla','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1249','Parabevila','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1250', 'Koradoluwa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1251', 'Walagammulla','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1252', 'Kendahena','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1253', 'Polpitiya North','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1254', 'Poojapitiya','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1255', 'Polambe','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1256', 'Hodella','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1257', 'Imbulgoda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1258', 'Barahelagamuwa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1259', 'Dewalepola','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1260', 'Ihala Udapola','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1261', 'Divulkumbura','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1262', 'Bandawa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1263', 'Hathalispahuwa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1264', 'Rathmalgoda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1265', 'Kollura','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1266', 'Wellewa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1267', 'Polpitiya South','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1268', 'Nahakotamada','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1269', 'Aragoda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1270', 'Sunilagama','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1271', 'Denagamuwa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1272', 'Madalagama','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1273', 'Godawela','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1274', 'Kotambule','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1275', 'Mawaththa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1276', 'Weeragala','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1277', 'Yogamuwakanda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1278', 'Epakanda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1279', 'Ganegoda North','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1280', 'Delgolla','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1281', 'Gorokgahapoththa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1282', 'Godigamuwa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1283', 'Udukedeniya','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1284', 'Panaliya North','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1285', 'Tenpana','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1286', 'Kuleepitiya North','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1287', 'Ganegoda South','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1288', 'Polgahawela North','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1289', 'Meddalanda','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1290', 'Morugama','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1291', 'Galbadagama','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1292', 'Weligodapitiya','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1293', 'Polgahawela South','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1294', 'Kuleepitiya South','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1295', 'Serapees Waththa','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1296', 'Panaliya','1203');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1297', 'Oruliyadda','1203');


-------------------------------1204', 'Alawwa-------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1356','Vilgamuwa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1357', 'Vilgamuwa Watta','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1358', 'Wennoruwa West','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1359', 'Wennoruwa East','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1360', 'Damunupola','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1361', 'Pannala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1362', 'Nungamuwa Pahala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1298', 'Wadawa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1299', 'Nungamuwa Ihala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1300', 'Dehelgamuwa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1301', 'Ihala Wethtewa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1302', 'Kiriwanapola','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1303', 'Kandegedara South','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1304', 'Welikare','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1305', 'Galgamuwa North','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1306', 'Galgamuwa South','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1307', 'Pangolla','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1308', 'Kandegedara North','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1309', 'Divulgahakotuwa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1310', 'Waduwawa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1311', 'Lewdeniya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1312', 'Poramadala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1313', 'Galatharaya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1314', 'Hithtarapola','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1315', 'Nugawela','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1316', 'Maharachchimulla','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1317', 'Pahala Kalalpitiya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1318', 'Henduwawa Colony','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1319', 'Kendagolla','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1320', 'Boyawalana','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1321', 'Henduwawa Colony','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1322', 'Ihala Kalalpitiya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1323', 'Medagampola','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1324', 'Maldeniya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1325', 'Koholana','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1326','Ihala Walakumbura','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1327', 'Yatigaloluwa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1328', 'Pahala Walakumbura','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1329', 'Alawwa South','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1330', 'Alawwa North','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1331', 'Kebellavita','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1332', 'Humuluwa East','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1333', 'Humbuluwa West','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1334', 'Imbulgoda','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1335', 'Keppitiwalana','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1336', 'Madawala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1337', 'Othara Kiruwampola','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1338', 'Nebadawatura','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1339', 'Galdeniya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1340', 'Kanameewala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1341', 'Wedeniya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1342', 'Nawathalwatta','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1343', 'Thumbulla','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1344', 'Abbowa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1345', 'Paramaulla','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1346', 'Galpothtepola','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1347', 'Miriheliya','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1348', 'Pallemorugama','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1349', 'Udagankanda','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1350', 'Wewala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1351', 'Pallekekulawala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1352', 'Yaththalgoda','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1353', 'Bowala','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1354', 'Bujjomuwa','1204');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1355', 'Kendahena','1204');


-----------------------------'1205', 'Narammala'---------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1363','Pahamune','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1364', 'Kadahapola','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1365', 'Penthenigoda','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1366', 'Ganegoda','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1367', 'Meewewa','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1368', 'Dangolla','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1369', 'Bemmullege','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1370', 'Puwakgahakotuwa','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1371', 'Polgahayaya','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1372', 'Ginigathpitiya','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1373', 'Dambagirigama East','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1374', 'Medagoda','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1375', 'Dambagirigama West','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1376', 'Narammala','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1377', 'Ranawatta','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1378', 'Senanayaka Colony','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1379', 'Kottapitiya','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1380', 'Ambagammana','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1381', 'Yakkavita','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1382', 'Halwela','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1383', 'Rammuthugala','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1384', 'Welikumbura','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1385', 'DamPalace','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1386', 'kivulegedara','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1387', 'Polwattegedara','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1388', 'Karalappala','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1389', 'Embalapola','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1390', 'Weragala','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1391', 'Rangallepola','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1392', 'Nakalagamuwa','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1393', 'Godakoruwa','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1394', 'Kivulgalla','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1395', 'Eriyagolla','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1396', 'Metiyagane West','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1397', 'Marawita','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1398','Muthugala East','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1399', 'Metiyagane East','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1400', 'Kasungama','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1401', 'Pelawatta','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1402', 'Pothupitiya','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1403', 'Muthugala West','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1404', 'Dambadeniya South','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1405', 'Dambadeniya North','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1406', 'Udawelawatta','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1407', 'Riligala','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1408', 'Athuruwala','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1409', 'Puskoladeniya','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1410', 'Delikanu Anga','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1411', 'Kudagammana','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1412', 'Riloluwa','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1413', 'Handapangala','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1414', 'Paranagama','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1415', 'Maradagolla','1205');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1416', 'Epaladeniya','1205');


----------------------------1207', 'Udubaddawa---------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1417','Ihala Weerakodiyana','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1418', 'Kovulwewa','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1419', 'Pahala Weerakodiyana','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1420', 'Ranthetiyawa','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1421', 'Wathuwatha','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1422', 'Habarawewa','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1423', 'Kekunawala','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1424', 'Kandayaya','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1426', 'Kappangamuwa','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1427', 'Kahadenigama','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1428', 'Divurumpola','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1429', 'Pahala Yagamwela','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1430', 'Ihala Yagamwela','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1431', 'Gahalagaswela','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1432', 'Siyambalagasruppa East','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1433', 'Siyambalagasruppa West','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1434', 'Dummalasuriya','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1435', 'Thunthota','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1436', 'Kattimahana','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1437', 'Palugamuwa','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1438', 'Karandawila','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1439', 'Bunnehapola','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1440', 'Ihalagama North','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1441', 'Paranagama','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1442', 'Pahalagama','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1443', 'Ihalagama South','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1444', 'Mahaagara','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1445', 'Henegedara','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1446', 'Kanubichchiya','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1447', 'Polgaha Ara','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1448', 'Dunakadeniya North','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1449', 'Udadeniya','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1450', 'Meegaha Place','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1451', 'Bibiladeniya','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1452', 'Ammanamulla','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1453','Walpitagama','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1454', 'Horathepola','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1455', 'Nawasigahawatha','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1456', 'Kutharippuwa','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1457', 'Dunakadeniya South','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1458', 'Kumbukgahamulla','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1459', 'Ilippugamuwa','1207');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1460', 'Kumara Udawela','1207');

-----------------------------1209', 'Kuliyapitiya East------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1461','Karangamuwa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1462', 'Dalupothagama','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1463', 'Polpitiya','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1464', 'Pothuwewa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1465', 'Kotadeniyawa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1466', 'Thelahera','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1467', 'Neththipolagedara','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1468', 'Arakyala','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1469', 'Thoranegedara','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1470', 'Medelpola','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1471', 'Pothuhera','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1472', 'Kekunugolla','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1473', 'Dehigama','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1474', 'Siyambalagaskotuwa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1475', 'Abahenwewa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1476', 'Bogamulla','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1477', 'Andigedara','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1478', 'Karagahagedara','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1479', 'Bogahapitiya','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1480', 'Kureekotuwa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1481', 'Alahitiyawa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1482', 'Godagama','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1483', 'Thalliyadda','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1484', 'Koduruwapola','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1485', 'Barigoda','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1486', 'Ganangamuwa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1487', 'Bihalpola','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1488', 'Udagedara','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1489', 'Horombawa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1490', 'Molligoda','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1491', 'Kosgolla','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1492', 'Mahagama','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1493', 'Nakkawaththa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1494', 'Hewanellagaraya','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1495', 'Ihala Muruthange','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1496','Pahala Muruthange','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1497', 'Galgammulla','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1498', 'Ranasgalla','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1499', 'Wakkunuwala','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1500', 'Etampola','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1501', 'Rathneheruwa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1502', 'Deekirikewa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1503', 'Panawitiya','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1504', 'Dethawa','1209');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1505', 'Saliyala','1209');


----------------------------------1208', 'Kuliyapitiya West'-------------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1506','Katuwella','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1507', 'Pahala Elathalawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1508', 'Mawela','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1509', 'Koshena','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1510', 'Pahala Galpola','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1511', 'Ihala Galpola','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1512', 'Ihala Elathalawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1513', 'Deegalla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1514', 'Ihala Embawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1515', 'Kabalewa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1516', 'Dikhera','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1517', 'Ilukhena','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1518', 'Kumbalwala','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1519', 'Pallewala','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1520', 'Pahala Weerambuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1521', 'Ihala Weerambuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1522', 'Kurudalpotha','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1523', 'Tabbomulla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1524', 'Meegahakotuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1525', 'Kuliyapitiya Town','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1526', 'Embawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1527', 'Pahala Embawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1528', 'Pahala Piduma','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1529', 'Assadduma','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1530', 'Koongahagedara','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1531', 'Thummodara','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1532', 'Ihala Piduma','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1533', 'Henegedara','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1534', 'Delana','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1535', 'Mookalanyaya','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1536', 'Kirindawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1537', 'Anukkane','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1538', 'Baminigalla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1539', 'Kumbukkotuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1540', 'Wahumuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1541','Unaleeya','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1542', 'Kithalawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1543', 'Yakarawatta','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1544', 'Bohingamuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1545', 'Haggamuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1546', 'Galahitiyawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1547', 'Dandagamuwa East','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1548', 'Dandagamuwa West','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1549', 'Pahala Kalugamuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1550', 'Mahimpitiya','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1551', 'Madukumburumulla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1552', 'Thalahitimulla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1553', 'Weralugama','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1554', 'Ihala Kalugamuwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1555', 'Hammalawa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1556', 'Galagedara','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1557', 'Pitadeniya','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1558', 'Diyadora','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1559', 'Inguruwatta','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1560','Diyadora Ihala Watta','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1561', 'Narangalla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1562', 'Wadugedara','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1563', 'Kongolla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1564', 'Ihala Ennaruwa','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1565', 'Deeyawala','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1566', 'Udihitimulla','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1567', 'Ketawalgedara','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1568', 'Eluwapoda','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1569', 'Kandegedara','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1570', 'Katuwattewela','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1571', 'Edandawela','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1572', 'Wewagama','1208');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1573', 'Degammeda','1208');

----------------------------1213', 'Mallawapitiya'-----------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1574','Meddegama West','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1575', 'Udagama','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1576', 'Pillawa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1577', 'Hengawa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1578', 'Narampola','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1579', 'Ranawana','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1580', 'Kahatapitiya','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1581', 'Meddegama East','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1582', 'Maraluwawa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1583', 'Palle Gattuwana','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1584', 'Thorayaya','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1585', 'Kuda Kowana','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1586', 'Kowana','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1587', 'Dandagamuwa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1588', 'Yaggapitiya','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1589', 'Hewana','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1590', 'Mehiella North','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1591', 'Uyandana','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1592', 'Mehiella South','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1593', 'Mallawapitiya','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1594', 'Millawa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1595', 'Kolapelalikanda','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1596', 'Doratiyawa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1597', 'Messagammana','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1598', 'Hewapola','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1599', 'Maneloluwa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1600', 'Walpolakanda North','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1601', 'Walpolakanda South','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1602', 'Indulgoda','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1603', 'Konpola','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1604', 'Dembepola','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1605', 'Bodhigama','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1606', 'Thiragama','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1607', 'Bogamuwa','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1608', 'Werawella','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1609','Indulgodakanda','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1610', 'Morathenna','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1611', 'Katupitiya North','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1612', 'Kahatapitiya South','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1613', 'Ihala Thalampitiya','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1614', 'Wattegedara','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1615', 'Koralegedara','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1616', 'Mahagama','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1617', 'Belgoda','1213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1618', 'Belgoda Kanda','1213');

-------------------------------214', 'Kurunegala'---------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1619','Kalalatuwapelessa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1620', 'Seeradunna','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1621', 'seruwawa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1622', 'Pubbowa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1623', 'Thalwita','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1624', 'Waraddana','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1625', 'Pahala Waraddana','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1626', 'Rangama','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1627', 'Wellawa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1628', 'Ginikarawa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1629', 'Pahala Hadirawalana','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1630', 'Thalatuwa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1632', 'Rikillagamuwa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1633', 'Dematagolla','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1634', 'Budanapitiya','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1635', 'Hadirawalana Ihala','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1636', 'Mahakandegama','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1637', 'Gangoda','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1638', 'Alakoladeniya','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1639', 'Bamunugedara','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1640', 'Kurunegala Town North-East','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1641', 'Kurunegala Town North','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1642', 'Wilgoda','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1643', 'Heraliyawala','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1644', 'Bamunawala','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1645', 'Malkaduwawa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1646', 'Malkaduwawa South','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1647', 'Malkaduwawa North','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1648', 'Kurunegala Town West','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1649', 'Kurunegala Town Central','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1650', 'Kurunegala Town Bazaar','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1651', 'Gettuwana','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1652', 'Kurunegala Town East','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1653', 'Kurunegala Town South','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1654', 'Weherabenda','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1655','Henamulla','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1656', 'Wehera East','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1657', 'Wehera West','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1658', 'Akaragana North','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1659', 'Wanduragala','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1660', 'Rathgalla','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1661', 'Boyagane','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1662', 'Akaragana South','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1663', 'Wilbawa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1664', 'Nailiya','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1665', 'Madithiyawala','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1666','Thorawathura','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1667', 'Mathawa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1668', 'Aththanapitiya','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1669', 'Pahala Thalampitiya','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1670', 'Kudumbuwa','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1671', 'Hadiravalana Pahala','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1672', 'Udavalpola','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1673', 'Iluppugedara','214');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1674', 'Theliyagonna','214');


----------------------------213', 'Maspotha-----------------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1675','Udadigama','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1676', 'Wilgamdematawa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1677', 'Gonagama','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1678', 'Rakawa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1679', 'Pimburuwellegama','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1680', 'Galagedara','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1681', 'Minhettiya','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1682', 'Hanwella','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1683', 'Maragama','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1684', 'Wegolla','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1685', 'Oggamuwa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1686', 'Thisnampola','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1687', 'Kudagalgamuwa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1688', 'Ganekolaniya','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1689', 'Kidapola','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1690', 'Demalussa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1691', 'Maspotha','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1692', 'Rathkarawwa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1693', 'Mapegamuwa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1694', 'Dahigamuwa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1695', 'Siyambalangamuwa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1696', 'Gurulepola','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1697', 'Pellandeniya','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1698', 'Hettigedara','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1699', 'Udabadalawa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1700', 'Assadduma','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1701', 'Maweedalupotha','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1702', 'Kalahogedara','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1703', 'Wewagedara','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1704', 'Dematagahapelessa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1705', 'Kawdawattha','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1706', 'Yanthampalawa','213');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1708', 'Thiththawella','213');

---------------------------------------'212', 'Bamunakotuwa'------------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1707','Bamunakotuwa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1709', 'Walpola','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1710', 'Mahakeliya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1711', 'Kelimune','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1712', 'Nathagane','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1713', 'Kadiharaya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1714', 'Kedapathvehera','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1715', 'Rukaththane','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1716', 'Bogoda','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1717', 'Pallawadampitiya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1718', 'Nawagatta','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1719', 'Mirihampitiya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1720', 'Henegedara','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1721', 'Demataluwa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1722', 'Ethanawatta','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1723', 'Wedanda','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1724', 'Dampitiya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1725', 'Kanotuwa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1726', 'Siwallawagedara','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1727', 'Homathagama','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1728', 'Divulgaspitiya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1729', 'Hanhamunawa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1730', 'Walaliya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1731', 'Panagamuwa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1732', 'Nelumkanuwa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1733', 'Panadare','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1734', 'Wathukana','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1735', 'Weudagama','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1736', 'Panakaduwa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1737', 'Pahala Kolamunna','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1738', 'Ganthiriyaya','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1739', 'Thalgahagama','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1740', 'Munamale','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1741', 'Erihabe','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1742', 'Panawa','212');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1743', 'Pahala Imiyangoda','212');


--------------------------1210', 'Weerambugedara------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1744','Lokahettiya','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1745', 'Madagama','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1746', 'Pathinwaththa','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1747', 'Bamunugedara','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1748', 'Gallehera','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1749', 'Kadadunna','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1750', 'Weerambugedara','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1751', 'Gonawa','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1752', 'Yalawa','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1753', 'Madawala North','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1754', 'Sandagala South','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1755', 'Sandagala North','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1756', 'Damunugala','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1757', 'Piduruwella','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1758', 'Kloviswaththa','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1759', 'Madawala South','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1760', 'Mudunna','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1761', 'Hanwella','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1762', 'Hurukgamuwa','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1763', 'Ginipenda','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1764', 'Kalugamuwa','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1765', 'Yanthampola','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1766', 'Bulupitiya','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1767', 'Uhumeeya','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1768', 'Wewelpola','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1769', 'Ranjanagama','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1770', 'Kanumale','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1771', 'Godavita','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1772', 'Ambahera','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1773', 'Galabadagama','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1774', 'Dehikumbura','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1775', 'Pugalla','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1776', 'Udugama','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1777', 'Thammita','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1778', 'Parakumbura','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1779', 'Algama','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1780', 'Kaduruwella','1210');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1781', 'Sevendana','1210');


----------------------------------------1206', 'Pannala------------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1782','Gallehemulla','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1783', 'Nambirittankadawara','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1784', 'Udugama','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1785', 'Pethigodagedara','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1786', 'Eriyagolla','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1787', 'Yatattawala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1788', 'Thelambugammana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1789', 'Ingaradavula','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1790', 'Mohottawa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1791', 'Batapothaela','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1792', 'Katugampola','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1793', 'Hamanagoda','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1794', 'Mummana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1795', 'Wattegedara','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1796', 'Wettewa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1797', 'Kavudumunna','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1798', 'Hamangalla','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1799', 'Narangoda South','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1800', 'Narangoda North','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1801', 'Erepola','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1802', 'Madigepola','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1803', 'Hegawa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1804', 'Paragammana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1805', 'Nedalagamuwa North','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1806', 'Nedalagamuwa South','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1807', 'Yayamulla','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1808', 'Raddalana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1809', 'Waguruwela','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1810', 'Mutugalayagama','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1811', 'Kandepola','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1812', 'Hundirapola','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1813', 'Welpalla','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1814', 'Daraluwa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1815', 'Hunuwita','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1816', 'Kongoda','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1817', 'Werahera','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1818', 'Bowatta','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1819', 'Koodalupotta','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1820','Bammanna','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1821', 'Kadirapola','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1822', 'Mahingamuwa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1823', 'Dodampotta','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1824', 'Koduruwawela','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1825', 'Meddepola Pahala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1826', 'Maharagma','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1827', 'Meddepola Ihala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1828', 'Siyambalawalana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1829', 'Ihala Labbala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1830', 'Ihala Kotuwella','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1831', 'Horawadunna','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1832', 'Elabdagama East','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1833', 'Elabdagama West','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1834', 'Elabdagama North','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1835', 'Mookalana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1836', 'Makandura Ihala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1837', 'Elivila','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1838', 'Gonulla East','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1839', 'Indiminna','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1840', 'Hettirippuwa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1841', 'Viliyagama','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1842', 'Gonulla West','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1843', 'Irabadagama','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1844', 'Wetakeyawa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1845', 'Makandura Pahala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1846', 'Panwalakumbura','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1847', 'Hendiyagala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1848', 'Sandalankawa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1849', 'Thambakanda','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1850', 'Nalawalana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1851', 'Medirivila','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1852', 'Pahala Galayaya','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1853', 'Ihala Galayaya','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1854', 'Pannala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1855', 'Kekillapitiya','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1856', 'Maholawa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1857', 'Thalammehera','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1858', 'Badabedda','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1859', 'Kohombapola','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1860', 'Elibichchiya','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1861', 'Mellawalana','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1862', 'Pahala Labbala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1863', 'Bopitiya','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1864', 'Balawala','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1865', 'Mattegama','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1866', 'Narangamuwa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1867', 'Wellawa','1206');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1868', 'Malgamuwa','1206');



--------------------North-Western-----------------
----------------------Puttalama  19----------------
-------------------------------------------215', 'Kalpitiya-----------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1869','Datchbay','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1870', 'Palliyawatta','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1871', 'Anawasala','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1872', 'Sinnakuieruppu','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1873', 'Vanni Mundalama','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1874', 'Mandalakuda','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1875', 'Periyakudieruppu','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1876', 'Pudukudieruppuwa','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1877', 'Kandakuli Kudawa','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1878', 'Kurinjipitiya North','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1879', 'Kurinjipitiya South','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1880', 'Kandakuli','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1881', 'Palliwasalthurai','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1882', 'Musalpiti','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1883', 'Mudalappali','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1884', 'Thalavila East','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1885', 'Thalavila West','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1886', 'Palakkuda','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1887', 'Thigali','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1888', 'Eatale','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1889', 'Andankeny','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1890', 'Alankuda','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1891', 'Nuraichcholai','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1892', 'Panayadi','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1893', 'Narakkalli','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1894', 'Mampuri','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1895', 'Nawatkadu','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1896', 'Nirmalapura','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1897', 'Daluwa','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1898', 'Thethapola','215');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1899', 'Karambe','215');


------------------------------------------230', 'Dankotuwa-----------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1900','Bothalegama','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1901', 'Kirimetiyana East','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1902', 'Thulawala','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1903', 'Hundirapola','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1904', 'Pothuwatawana','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1905', 'Lihiriyagama','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1906', 'Kahatavila East','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1907', 'Kahatavila West','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1908', 'Meda Kirimetiyana','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1909', 'Kirimetiyana North','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1910', 'Kirimetiyana South','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1911', 'Kirimetiyana West','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1912', 'Pansal Junction','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1913', 'Haldanduwana North','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1914', 'Mellawa','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1915', 'Ihala Bujjampola','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1916', 'Pahala Bujjampola','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1917', 'Haldanduwana West','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1918', 'Meda Haldanduwana','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1919', 'Katukenda East','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1920', 'Meda Katukenda','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1921', 'Gonavila North','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1922', 'Meda Gonavila','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1923', 'Katukenda West','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1924', 'Dankotuwa West','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1925', 'Dankotuwa North','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1926', 'Ihala Dummalakotuwa','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1927', 'Haldanduwana South','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1928', 'Pahala Mohottimulla','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1929', 'Ihala Mohottimulla','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1930', 'Sendiriyamulla','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1931', 'Singakkuliya','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1932', 'Kaluwachchimulla','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1933', 'Motemulla','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1934', 'Etiyawala North','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1935', 'Pahala Dummalakotuwa','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1936', 'Dankotuwa East','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1937', 'Dankotuwa South','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1938', 'Gonavila South','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1939', 'Godella','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1940', 'Morukkuliya','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1941', 'Metikotuwa','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1942', 'Thamarakuliya','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1943', 'Etiyawala South','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1944', 'Jankurawewa','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1945', 'Yogiyana','230');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1946', 'Dikwela','230');


-------------------------------------229', 'Wennappuwa---------------------------
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1947','Kolinjadiya West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1948', 'Kolinjadiya North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1949', 'Udasirigama','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1950', 'Sirigampala North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1951', 'Lunuvila East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1952', 'Sirigampala South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1953', 'Meda Lunuvila','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1954', 'Lunuvila West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1955', 'Wennappuwa North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1956', 'Kolinjadiya East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1957', 'Kolinjadiya South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1958', 'Ulhitiyawa West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1959', 'Ulhitiyawa North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1960', 'Meda Ulhitiyawa','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1961', 'Wennappuwa West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1962', 'Meda Wennappuwa','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1963', 'Wennappuwa East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1964', 'Lunuvila South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1965', 'Bandirippuwa North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1966', 'Bandirippuwa West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1967', 'Wennappuwa South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1968', 'Ulhitiyawa South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1969', 'Kadawatha','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1970', 'Dummaladeniya West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1971', 'Meda Dummaladeniya','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1972', 'Dummaladeniya North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1973', 'Bandirippuwa East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1974', 'Dummaladeniya East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1975', 'Dummaladeniya South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1976', 'Wellamankaraya','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1977', 'Meda Nainamadam','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1978', 'Hanathotupala','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1979', 'Boralessa West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1980', 'Boralessa North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1981', 'Boralessa East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1982', 'Boralessa South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1983', 'Nainamadam West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1984', 'Nainamadam East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1985', 'Mirissankotuwa North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1986', 'Mirissankotuwa South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1987', 'Bolawatta','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1988', 'Rangammulla','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1989', 'Kammala','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1990', 'Angampitiya East','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1991', 'Angampitiya West','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1992', 'Aluththota','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1993', 'Sindathriya','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1994', 'Waikkala North','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1995', 'Waikkala South','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1996', 'Bolana','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1997', 'Thambarawila','229');
INSERT INTO grama (gramaId, gramaName,divId) VALUES ('1998', 'Thopputhota','229');


select * from grama


