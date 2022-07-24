-- use mysql;
-- ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'yourpassword';
-- CREATE DATABASE `cmall` [>!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin <];
use cmall;

SET FOREIGN_KEY_CHECKS = 0;
insert into category (category_id, category_name) 
values(null, "手机");

insert into category (category_id, category_name) 
values(null, "电视机");
insert into category (category_id, category_name) 
values(null, "空调");
insert into category (category_id, category_name) 
values(null, "洗衣机");

insert into category (category_id, category_name) 
values(null, "保护套");
insert into category (category_id, category_name) 
values(null, "保护膜");
insert into category (category_id, category_name) 
values(null, "充电器");
insert into category (category_id, category_name) 
values(null, "充电宝");

insert into `product`(`id`,`name`,`category_id`,`title`,`info`,`img_path`,`price`,`discount_price`,`product_num`,`product_sales`) values
(1,'小米CC9 Pro',1,'1亿像素,五摄四闪','1亿像素主摄 / 全场景五摄像头 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦 / 5260mAh ⼤电量 / 标配 30W疾速快充 / ⼩米⾸款超薄屏下指纹 / 德国莱茵低蓝光认证 / 多功能NFC / 红外万能遥控 / 1216超线性扬声器','public/imgs/phone/Mi-CC9.png',2799,2599,20,0);

insert into `product_img`(`id`,`product_id`,`img_path`,`intro`) values
(1,1,'public/imgs/phone/picture/Redmi-k30-1.png',null),
(110,35,'public/imgs/phone/picture/protectingShell-Mix-3-1.jpg',null);

SET FOREIGN_KEY_CHECKS = 1;
