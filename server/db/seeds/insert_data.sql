INSERT INTO users (email,passwordhash,first_name,last_name,phone_number,s_address,city,state,post_code)
 VALUES 
  ('patelneema93@gmail.com','12345','Neema','Patel',90546967834,'34 brittania ave','oshawa','ontario','L1l0L8'),
  ('patelheeya@gmail.com','12345','Heeya','Patel',90546967848,'36 brittania ave','oshawa','ontario','L1L0L8'),
  ('patelMeet@gmail.com','12345','Meet','Patel',9057894567,'20 brittania ave','oshawa','ontario','L1l0L8'),
  ('Raninder@gmail.com','12345','Raninder','Dhillon',90546967834,'40 wildfeild ave','oshawa','ontario','L1L9H8'),
  


INSERT INTO fund_categories (name)
VALUES 
('therapy'),
 ('medical'), 
 ('travel'),
  ('equipment'), 
  ('food'),
   ('education');

INSERT INTO goods_categories (name)
VALUES 
('Books'),
('Ex_Equipment'),
('Furniture'),
('Toys_and_Games'),
('Daily_Living'),
('Mobility_Products'),
('Communication'),
('Others');

INSERT INTO goods (user_id,good_cat_id,goods_name,size,quantity,img,company,condition,description)
VALUES(1,6,'Wheelchair','medium',3,'https://st.depositphotos.com/1281871/3004/i/950/depositphotos_30040051-stock-photo-wheelchair.jpg','Rifton','used','pediatric wheelchair comes with a standard transit tie down brackets.'),
(1,6,'Chair','medium',1,'https://www.adaptivemall.com/media/catalog/product/cache/33fe7abf09c199749a67323a03e86903/s/c/scout_2014_-_cordura_1.jpg',null,'used','chair is old but still nice working'),
(2,3,'Chair','small',1,'https://www.adaptivemall.com/media/catalog/product/cache/33fe7abf09c199749a67323a03e86903/s/t/st-liners-size-1-on-chair-cherry.png',null,'used',''),
(3,1,'Book','',3,'https://m.media-amazon.com/images/I/51z6uB2yhDL._SL500_.jpg','Audible','used','book that offers a wonderful message about embracing the things that bring us together as humans'),
(3,2,'Exercise ball','small',5,'https://m.media-amazon.com/images/I/61ft6BDoYjL._AC_SX679_.jpg','Audible','new','book that offers a wonderful message about embracing the things that bring us together as humans'),
(3,3,'Adaptive chair','',3,'https://www.keekaroo.com/media/catalog/product/cache/33fe7abf09c199749a67323a03e86903/c/a/catchup1.jpeg','Tomato','used','book that offers a wonderful message about embracing the things that bring us together as humans'),
(4,2,'Trampoline','3',4,'https://m.media-amazon.com/images/I/61La-kPbOQL._AC_UL640_FMwebp_QL65_.jpg','Audible','new','book that offers a wonderful message about embracing the things that bring us together as humans'),
(4,4,'Bells Toy','',3,'https://cadanat.com/wp-content/uploads/2019/03/Ring-Around-Bells-Switch-Adapted-Toy-500x396.png','Cadan Assistive','new','This Ring Around Bells toy awakens a variety of senses. This mesmerizing display provides visual and auditory stimulation to meet multiple needs. Touching the toy also gives tactile stimulation as you make it spin.'),
(5,3,'Kitchen Tower','',5,'https://secure.img1-fg.wfcdn.com/im/02264787/resize-h445%5Ecompr-r85/8678/86782785/Toddler+Tower+Adjustable+Kitchen+Stool.jpg','Wayfair','used','Our 17 month old son always wants to be with me in the kitchen when I am cooking. This gives him the perfect opportunity to be with me and help.'),
(5,4,'Lights Toy','',6,'https://cadanat.com/wp-content/uploads/2019/03/Magical-Light-Showwith-Lights-On.png','LoveAt','used','Spinning lights, catchy music and stimulating vibration'),
(1,5,'EasyHold','',2,'https://cdn.shopify.com/s/files/1/0831/7087/products/InfantChild5Pack_400x.jpg?v=1639450256','EazyHold','used','Easier on the hands, easier to wash and fit odd shaped items such as an electric tooth brush, hair brush, pen etc. '),
(6,6,'Seat','2',7,'https://m.media-amazon.com/images/I/61S93Nx437L._AC_SL1000_.jpg','Goovy','used','my son is 3 years old but hes as big as a 6 year old and this seat fits him nicely '),
(7,7,'Talkable','',3,'https://www.flaghouse.ca/productImages/image.axd/i.42421/w.450/h.450/xm.0/Talkable+4_L.jpg','Flag','new','Up to 20 seconds Total Recording Time
Records 4 messages'),
(8,1,'Book','',1,'https://m.media-amazon.com/images/I/51z6uB2yhDL._SL500_.jpg','Audible','Good','book that offers a wonderful message about embracing the things that bring us together as humans'),
(9,4,'Toy','',4,'https://www.melissaanddoug.com/dw/image/v2/BBDH_PRD/on/demandware.static/-/Sites-master-catalog/default/dwfd4c7d39/large/001314_1.jpg?sw=562&sh=570&sm=fit','Melissa&Doug','Satisfactory','his colorful upright piano features 25 keys and two full octaves. The littlest musicians will enjoy exploring concepts of high and low notes, loud and soft.'),
(9,2,'swing','',2,'https://www.especialneeds.com/media/catalog/product/cache/1/thumbnail/75x/9df78eab33525d08d6e5fb8d27136e95/b/o/bouncing_square_carpeted_platform_swing_1.jpg','Swingit','New','Bouncing Platform Swing enhances your therapeutic swing routine with some proprioceptive activity, making this an all-in-one piece of equipment. Connect the swing with a heavy duty rotational device and enjoy all the benefits of rotational therapy with an added "boing" effect.'),
(2,7,'AAC','',1,'https://enablingdevices.com/wp-content/uploads/2017/09/7083_2017-300x300.jpg','AAC','Excellent','Specially designed for the visually impaired, this state-of-the-art communicator has 12 levels, scanning capabilities and large brightly illuminated targets that make it possible to see, select and activate messages'),
(3,1,'Book','',8,'https://images-na.ssl-images-amazon.com/images/I/517XAFNcfBL._SX198_BO1,204,203,200_QL40_ML2_.jpg','Audible','used','book that offers a wonderful message about embracing the things that bring us together as humans'),
(2,8,'Bath Chair','',2,'https://www.flaghouse.ca/productImages/image.axd/i.41054/w.235/h.235/xm.0/Reclining+Bath+Chair+Medium_P.jpg','Otter','used','Ideal for shower rooms with limited space! Features deluxe elongated open front commode seat, padded lumbar support and head rest. Includes height-adjustable leg rest and easy fold foot rest. Overall size: 20"W x 44"H x 15"D. Internal width: 16". Seat Height: 18". Reclined Back Length: 27". Wt. capacity: 300 lbs.');

INSERT INTO fundraising (user_id,fund_cat_id,title,img,story,goal,amountraising)
VALUES(2,5,'Need money for baby','https://images.indianexpress.com/2020/05/autism-759-1.jpg','My son not able do any think by self. please help me.',5000.00,0),
(3,2,'Need money for baby','http://www.todaysparent.com/wp-content/uploads/2016/05/specialneedssoccor-main.jpg','My kid not able to walk. please help me.',3000.00,0),
(2,4,'Heather has had a tragic loss','https://epicassist.org/wp-content/uploads/2018/03/Creating-a-world-that-does-not-disable-people-with-disability.jpg','On behalf of Malton Moms and the community, we extend our most heartfelt sympathy for this loss. On the morning of Jan. 20, 2022, three children lost their lives in a house fire despite heroic efforts to save them.',6000.00,0),
(4,5,'Help Lukes fight against','https://thumbs.dreamstime.com/b/disabled-school-girl-selecting-book-bookshelf-library-77722071.jpg','Luke was diagnosed with B Cell Non-Hodgkins Lymphoma. Lymphoma is a cancer of the lymphatic system, a part of the body germ-fighting network.',5000.00,0),
(3,2,'Please help Haylees fight, she is one of a kind','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQde9Nnc7-BZ8sjVDbhlDi0FcuEBJxWaM6nAOu4lF8oebxeZEeRyr_pDhrKirUEeZUauV0&usqp=CAU','Hello, we are Haylee Aunts, Heather, Stephanie, Lisa, Lauren and Katie. Let us tell you a little bit about our sweet niece Haylee and her fight for life.',4000.00,0);


INSERT INTO donation_money(user_id,fund_id,amount,date)
VALUES(3,1,3000.00,now()),
(2,2,1000.00,now());

INSERT INTO request_goods (user_id, goods_id, quantity,date)
VALUES(1,2,2,now()),
(2,2,2,now());
