DROP DATABASE IF EXISTS `dbezcheck`;
CREATE DATABASE `dbezcheck` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `dbezcheck`;
CREATE TABLE `user`
(
    userid VARCHAR(10) NOT NULL UNIQUE,
    name VARCHAR(10) NOT NULL,
    username VARCHAR(10) NOT NULL,
	password VARCHAR(12)  NOT NULL,
    email VARCHAR(40) NOT NULL,
    phone VARCHAR(10) NOT NULL,
    address VARCHAR(100) NOT NULL,
    PRIMARY KEY(userid)
);
INSERT INTO `user` VALUE("1","gooood","good","1234","good@gmail.com","0910101010","台中市三重區新中北路87號");

CREATE TABLE `count`
(
    count INT NOT NULL
);
INSERT INTO `count` VALUES (0);

#留言版
CREATE TABLE `board`
(
    EZ TINYINT(4) auto_increment,
    userid varchar(255) NOT NULL,
    content text,
    putdate date DEFAULT NULL,
    stars varchar(255) NOT NULL,
    pid VARCHAR(5),
    PRIMARY KEY (EZ)
);

CREATE TABLE `buy`
(
    no INT(11) NOT NULL auto_increment,
    username VARCHAR(45) DEFAULT NULL,
    itemid VARCHAR(45) DEFAULT NULL,
    datein VARCHAR(45) DEFAULT NULL,
    dateout VARCHAR(45) DEFAULT NULL,
    PRIMARY KEY (no)
);

#商品
CREATE TABLE `item`
(
    itemid VARCHAR(30) NOT NULL UNIQUE,
    item_count VARCHAR(20),
    location VARCHAR(30),
    cash VARCHAR(30) NOT NULL ,
    picture VARCHAR(100) NOT NULL,
    itemadress VARCHAR(100) NOT NULL ,
    itemname VARCHAR(20) NOT NULL ,
    p1 VARCHAR(500) NOT NULL ,
    p2 VARCHAR(500) NULL ,
    p3 VARCHAR(500) NULL ,
    p4 VARCHAR(500) NULL ,
    p5 VARCHAR(500) NULL ,
    p6 VARCHAR(500) NULL ,
    p7 VARCHAR(500) NULL ,
    openfor VARCHAR(500) NOT NULL ,
    pic VARCHAR(500) NULL ,
	picture1 VARCHAR(100) NULL,
	picture2 VARCHAR(100) NULL,
	picture3 VARCHAR(100) NULL,
	picture4 VARCHAR(100) NULL,
    PRIMARY KEY (itemid)
);
#Hsinchu(h_product3)
INSERT INTO `item` VALUES('HC01','8','新竹 Hsinchu','3000','../assets/images/h_hotel/h_hotel1.jpg','新竹市東區光復路一段227號','老爺酒店','新竹老爺大飯店距離新竹科學園（亦作台灣矽谷）有 5 分鐘車程，館內提供免費 WiFi 及 免費接駁服務，並設有室內溫水游泳池。客房內均配有平面電視及浴缸。客房裝飾充滿現代風格，房內裝有空調，並配有傳真機。飯店提供免費英文及中文報紙。 客人亦可享受 24 小時客房服務','飯店距離高鐵新竹站和城隍廟夜市有 20 分鐘車程，距離風情海岸線則有 40 分鐘車程 。距離桃園國際機場有 43 公里。','館內附設的皇家美容沙龍提供輕鬆舒緩的按摩及美容護理療程。客人可於館內打撞球，或 於桑拿浴放鬆身心。另亦提供洗衣服務。','明宮粵菜廳供應粵菜，而 Le Café 咖啡廳內則供應西式及中式自助式餐飲。中山日本料 理及老爺鐵板燒內則供應多款日式料理。','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.7 分','2011 年 10 月 24 日','1','../assets/images/HI1-1.jpg','../assets/images/HI1-2.jpg','../assets/images/HI1-3.jpg','../assets/images/HI1-4.jpg');
INSERT INTO `item` VALUES('HC02','8','新竹 Hsinchu','3000','../assets/images/h_hotel/h_hotel2.jpg','新竹市東區民生路177號','煙波大飯店','煙波大飯店新竹都會館位於新竹市，距離遠東巨城購物中心步行 5 分鐘。飯店提供免費 WiFi 並設有免費私人停車場。','煙波大飯店新竹都會館距離新竹火車站 6 分鐘車程，距離國立清華大學約 10 分鐘車程 ，距離高鐵新竹站 23 分鐘車程。','每間客房均設有空調、衛星電視和水壺。私人衛浴內備有拖鞋、免費盥洗用品和吹風機。','館內設有 24 小時櫃台。','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.0 分','2016 年 5 月 17 日','2','../assets/images/HI2-1.jpg','../assets/images/HI2-2.jpg','../assets/images/HI2-3.jpg','../assets/images/HI2-4.jpg');
INSERT INTO `item` VALUES('HC03','8','新竹 Hsinchu','3000','../assets/images/h_hotel/h_hotel3.jpg','新竹市北區中正路178號','福華大飯店','新竹福華大飯店位於市中心，提供 5 星級的豪華設施，設有室內游泳池和 24 小時商務中心 ，現代化的客房配有平面電視、躺椅和免費網路。','新竹福華大飯店並提供免費停車場，距離新竹火車站、新竹市政廳和城隍廟均有 15 分鐘步Z 行路程。','寬敞的客房裝潢簡約，配有空調、冰箱和保險箱，大型衛浴配有浴缸、吹風機和獨立淋浴區。','麗香苑提供典雅的用餐環境和自助式早餐。','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.7 分','2010 年 12 月 20 日','3','../assets/images/HI3-1.jpg','../assets/images/HI3-2.jpg','../assets/images/HI3-3.jpg','../assets/images/HI3-4.jpg');
INSERT INTO `item` VALUES('HC04','8','新竹 Hsinchu','3000','../assets/images/h_hotel/h_hotel4.jpg','新竹縣竹北市光明六路東一段265號','豐邑喜來登大飯店','5 星級的新竹豐邑喜來登大飯店位於竹北中央商務區，設有室內溫水游泳池、開放式購物 商場、健身中心、多間主題餐廳，並提供 24 小時客房餐飲服務。住宿並設有免費停車場 和 24 小時接待櫃檯。','客房採豪華且現代化的裝潢設計，全數配置壁掛式 42 英吋平面電視，提供沙發及迷你吧 台。套房浴室配有浴缸及獨立淋浴間。','盛宴自助餐廳供應國際美食。采悅軒餐廳供應中式美食。您還可以在光吧、大廳酒吧和茶 廳享用飲品。','客人可透過旅遊諮詢台安排一日遊或在商務中心查收電子郵件。酒店亦提供機場接駁車和 特定空間供租賃使用，皆需額外收費。','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.8 分','2012 年 8 月 16 日','4','../assets/images/HI4-1.jpg','../assets/images/HI4-2.jpg','../assets/images/HI4-3.jpg','../assets/images/HI4-4.jpg');
INSERT INTO `item` VALUES('HC05','8','新竹 Hsinchu','3000','../assets/images/h_hotel/h_hotel5.jpg','新竹縣竹北市信義街7號','悅豪大飯店','竹北悅豪大飯店位於竹北中心地帶，距離竹北火車站 5 分鐘步行路程，設有餐廳和健身 中心。館內提供免費 WiFi。','距離新竹高鐵站與新竹科學園區 15 分鐘車程，距離內灣老街有 35 分鐘車程，距離桃 園國際機場有 45 分鐘車程。','每間客房皆提供附螢幕鏡像功能的衛星電視，並設有空調和熱水按摩池。用餐區配備冰箱 與電熱水壺。房內私人衛浴提供浴缸或淋浴設施、吹風機和免費盥洗用品。客房享有市景。 竹北裕豪大飯店設有 24 小時接待櫃台，此外亦提供食品雜貨配送、會議設施、公共休息 區等設施服務。館內附設免費停車位。','步行範圍內即有多家餐廳與飲料店。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.6 分','2014 年 10 月 22 日','5','../assets/images/HI5-1.jpg','../assets/images/HI5-2.jpg','../assets/images/HI5-3.jpg','../assets/images/HI1-5.jpg');
INSERT INTO `item` VALUES('HC06','8','新竹 Hsinchu','3000','../assets/images/h_hotel/h_hotel6.jpg','新竹縣竹北市復興三路二段168號14F','安捷國際旅店','新竹安捷國際酒店位於竹北，距離新竹市立體育場不到 2.5 公里，提供健身中心、禁菸客房 和免費 WiFi。客人可在酒吧享用雞尾酒。','飯店距離新竹縣政府 3.4 公里，距離頭前溪河濱公園 4.2 公里。最近的機場是桃園機場， 距離 38 公里。','所有客房均配有空調、平面有線電視、冰箱、水壺、免費盥洗用品和桌子。客房享有市景， 並配有附浴缸（或淋浴）和吹風機的私人衛浴。所有客房均設有衣櫃。','館內每日早晨供應早餐。飯店餐廳擅長中式、亞洲和歐式料理。','客人可在觀光旅遊櫃台安排觀光行程，也可在商務中心辦公。24 小時櫃台工作人員可提供 在地資訊。','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.1 分','2018 年 1 月 15 日','6','../assets/images/HI6-1.jpg','../assets/images/HI6-2.jpg','../assets/images/HI6-3.jpg','../assets/images/HI6-4.jpg');

#taipei(h_product1)
INSERT INTO `item` VALUES('TP01','1','台北 Taipei','3000','../assets/images/h_hotel/t_hotel1.png','台北市信義區忠孝東路5段10號','Ｗ飯店','台北 W 飯店兼具藝術與時尚元素，提供奢華住宿體驗，坐落在信義區中心地帶。 飯店位於統一時代百貨台北店正上方，擁有美麗的 WET® 室外游泳池和時尚的 Woobar 酒吧，館內的 AWAY® SPA 可為客人提供嬌寵的按摩服務。','客房的風格時尚，室內設計融入在地風情，設有落地窗，可欣賞台北 101、周圍 群山與台北市的壯麗景緻。房內選用招牌寢具，設有附沙發或沙發床的休息區、 平面電視及音響系統。私人衛浴提供浴缸與精品盥洗用品。','FIT® 健身中心面積 420 平方公尺，提供現代化健身器材、iPod 基座和 LCD 液晶顯示器。飯店也設有大型活動場地，配備最先進的會議設施，可滿足各種活 動與商務需求。','知名的紫艷中餐廳提供精緻用餐環境，演繹全新中式料理。其他用餐選擇包括 Th e Kitchen Table 餐廳的多國美食自助餐，以及池畔酒吧的雞尾酒。','台北 W 飯店距離捷運市政府站僅 2 分鐘步行路程，距離指標性的台北 101 大樓 10 分鐘步行路程。此外，飯店距離台北松山機場 20 分鐘車程，距桃園國際機場 45 分鐘車程，從台北車站搭乘捷運抵達飯店需時 10 分鐘。','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 9.4 分','2012 年 4 月 3 日','1','../assets/images/TP1-1.jpg','../assets/images/TP1-2.jpg','../assets/images/TP1-3.jpg','../assets/images/TP1-4.jpg');
INSERT INTO `item` VALUES('TP02','8','台北 Taipei','3000','../assets/images/h_hotel/t_hotel2.png','台北市信義區松壽路2號','君悅酒店','五星級的台北君悅酒店位於繁華的信義區，地理位置便利，毗鄰燈景絢爛的台北 101 大樓、台北世界貿易中心和國際會議中心，設有室外游泳池、SPA 養生會館、三溫暖 、健身中心以及共 850 間精緻客房。','飯店距離捷運市政府站和捷運台北 101／世貿站步行皆不到 10 分鐘，距離松山文化 創意園區 5 分鐘計程車車程，距離著名的國父紀念館僅需 10分鐘步行路程。從飯店 搭乘計程車前往桃園國際機場需時約 40 分鐘。','客房的設計融合中國傳統元素，兼具優雅與時尚，房內設有可收看衛星和有線頻道的 平面電視、迷你吧、筆記型電腦保險箱及休息區。私人衛浴內設有步入式淋浴間，並 提供吹風機、浴袍、拖鞋和免費盥洗用品等齊全用品。此外，所有典雅的客房和套房 都可欣賞到台北 101 或城市的美景。','客人在健身中心盡情揮灑汗水後，不妨前往酒吧啜飲美味的雞尾酒，或者，也可以在 游泳池暢泳或到三溫暖徹底放鬆身心。觀光旅遊櫃檯的工作人員隨時樂意提供實用的 旅遊建議，或協助安排觀光行程。設備頂級的會議室及宴會廳可供舉辦大型活動或華 麗的派對。','飯店距離著名的鼎泰豐餐廳步行僅需 5 分鐘。繁華的信義區商圈也有各式各樣的用 餐地點可供選擇。','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.3 分','2015 年 4 月 24 日','2','../assets/images/TP2-1.jpg','../assets/images/TP2-2.jpg','../assets/images/TP2-3.jpg','../assets/images/TP2-4.jpg');
INSERT INTO `item` VALUES('TP03','8','台北 Taipei','3000','../assets/images/h_hotel/t_hotel3.png','台北市大安區敦化南路二段201號','香格里拉遠東國際大飯店','豪華的台北香格里拉遠東國際大飯店享有台北 101 和城市天際線的壯麗景色。館內提 供屋頂游泳池、健身中心和 SPA 中心。這家裝飾精美的飯店提供免費停車場和免費 W iFi。','寬敞的客房設有宋朝風格的現代家具，並裝有空調。其他設施包括私人保險箱、沏茶/ 咖啡沖泡設備和平面電視。私人衛浴配有浴缸。','客人在屋頂游泳池游泳時可同時欣賞台北的全景。SPA 中心提供多種按摩和 SPA 課程 ，健身中心則提供健身課程，客人可在此調劑身心並重拾活力。','香宮提供各種粵菜，遠東 Cafe 則提供多國自助餐。馬可波羅餐廳供應義大利美食，上 海醉月樓提供上海料理。ibuki 提供精美的日本料理。','飯店距離台北世貿中心為 5 分鐘開車車程或 30 分鐘的步行路程。飯店距離桃園國際 機場為 45 分鐘的開車車程。','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.8 分','2012 年 3 月 27 日','3','../assets/images/TP3-1.jpg','../assets/images/TP3-2.jpg','../assets/images/TP3-3.jpg','../assets/images/TP3-4.jpg');
INSERT INTO `item` VALUES('TP04','8','台北 Taipei','3000','../assets/images/h_hotel/t_hotel4.png','台北市中山區中山北路二段39巷3號','晶華酒店','台北晶華酒店特有的屋頂游泳池可以欣賞到廣闊的城市美景，所有裝潢優雅的客房 均配有平面電視。住宿內還有 7 種用餐選擇、健身中心和 SPA。','豪華的客房內提供頂級舒適的寢具，還有羽絨被與各式枕頭供旅客挑選。寬敞的大 理石衛浴間配有深型浴缸以及獨立的淋浴設備。','飯店的沐蘭 SPA 有尊榮奢華的按摩護理療程。此外，也有附設停車場，還有三溫 暖、商務中心和禮賓服務台。','住宿有多種用餐選擇，包含獨具風格的傳統日式料理三燔本家，和提供中式餐點的 晶華軒。栢麗廳供應每日自助式早餐以及沙拉吧。','台北晶華酒店座落在台北市繁華的中山商業區，距離捷運中山站僅需 5 分鐘步程。 離台灣桃園國際機場大約 45 分鐘車程。','此區為台北的人氣推薦區域（依據真實住客評語）','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.1 分','2011 年 9 月 16 日','4','../assets/images/TP4-1.jpg','../assets/images/TP4-2.jpg','../assets/images/TP4-3.jpg','../assets/images/TP4-4.jpg');
INSERT INTO `item` VALUES('TP05','8','台北 Taipei','3000','../assets/images/h_hotel/t_hotel5.png','台北市中正區忠孝東路一段12號','喜來登大飯店','台北喜來登大飯店位在市中心，館內提供五星級豪華設施，設有日間 SPA 水療中心、健 身設施及室外游泳池。另亦設有 9 間餐飲場所，並提供禮賓服務及全館免費 WiFi。','客房內空間寬敞，室內裝飾融合中式及現代風格，房內配有 37 吋平面有線電視及寬敞的 工作空間。寬敞的浴室內配有浴缸，並備有頂級盥洗用品及浴袍。','台北喜來登大飯店位在捷運善導寺站旁，距離高鐵站有 3 分鐘的捷運車程，客人可搭乘 高鐵前往高雄。距離中正紀念堂有 500 公尺，距離華西街夜市則有 2 公里。','客人可沉浸在 SPA 水療中心放鬆休憩，或享受桑拿浴。館內亦設有商務中心及會議設施 。','Kitchen 12 餐廳設有開放式廚房，客人可於此享用豐盛的自助式早餐。另亦有素可泰泰 式餐廳及供應精緻中式餐點的請客樓供客人選擇。','此區為台北的人氣推薦區域（依據真實住客評語）','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.0 分','2012 年 3 月 26 日','5','../assets/images/TP5-1.jpg','../assets/images/TP5-2.jpg','../assets/images/TP5-3.jpg','../assets/images/TP5-4.jpg');
INSERT INTO `item` VALUES('TP06','8','台北 Taipei','3000','../assets/images/h_hotel/t_hotel6.png','台北市松山區民生東路三段111號','西華飯店','台北西華五星級飯店位於台北市松山區。館內設有室內游泳池、健身中心和 SPA ， 客房均提供免費 WiFi 。如開車前往，此飯店亦設有免費停車場。','精美的客房內設備齊全，設有平面電視。獨立大理石浴室內附有淋浴設施。部分客 房配有獨立陽台。','飯店設有西華尊榮貴賓廳及 24 小時接待櫃檯。工作人員可以各國語言協助住客， 並提供行李寄存服務。全館全面禁菸。','Toscana 餐廳供應義大利美食，另設有：鮨小馬日本料理、怡園中餐廳和 B－ON E 自助餐。飯店可應要求將餐點送至客房。','台北西華飯店距離捷運中山國中站步行 10 分鐘；距離臺北松山機場 10 分鐘車程 ；距離桃園國際機場 50 分鐘車程。距離著名地標台北 101 為 15 分鐘車程；距 離行天宮則不到 10 分鐘車程。','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.8 分','2013 年 6 月 10 日','6','../assets/images/TP6-1.jpg','../assets/images/TP6-2.jpg','../assets/images/TP6-3.jpg','../assets/images/TP6-4.jpg');

#Keelung(h_product2)
INSERT INTO `item` VALUES('KL01','8','基隆 Keelung','3000','../assets/images/h_hotel/k_hotel1.jpg','基隆市中正區信二路319號','北都大飯店','北都大飯店位在基隆，距離基隆夜市和中正公園均有 5 分鐘步行路程。館內設有餐廳， 並提供全館免費 WiFi。','飯店距離基隆火車站及公車總站均為 10 分鐘步行路程，距離野柳地質公園則有 40 分 鐘車程。距離台北松山機場有 40 分鐘車程。','客房均裝有空調，並配有有線衛星電視及熱水浴缸。用餐區配有冰箱及電熱水壺。附設 的私人衛浴內設有浴缸及／或淋浴設備。','館內設有 24 小時服務的接待櫃台，另亦提供行李寄存等服務。館內設有免費停車場。','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.8 分','2014 年 11 月 7 日','1','../assets/images/KL1-1.jpg','../assets/images/KL1-2.jpg','../assets/images/KL1-3.jpg','../assets/images/KL1-4.jpg');
INSERT INTO `item` VALUES('KL02','8','基隆 Keelung','3000','../assets/images/h_hotel/k_hotel2.jpg','基隆市信義區義三路6號','香草藝術旅店','Herb Art Hotel 位在基隆，提供 3 星級住宿，距離陽明海洋文化藝術館不到 1 公里 ，距離中正公園 1.4 公里。這間住宿提供的設施與服務包括 24 小時接待櫃檯、客房 服務以及全館 WiFi（免費）。住宿有共用休息室、旅遊諮詢台服務和行李寄放服務。','Herb Art Hotel 的客房均有空調、有線頻道平面電視、 Nintendo Wii 遊戲機，以及 附淋浴設施的私人衛浴，且提供浴袍和拖鞋。這間住宿的每間客房都有寢具和毛巾。','Herb Art Hotel 附近的人氣景點包括基隆廟口夜市、基隆文化中心和基隆港（Port o f Keelung）。最近的機場是台北松山機場，距離 Herb Art Hotel 21 公里。','','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.6 分','2015 年 3 月 9 日','2','../assets/images/KL2-1.jpg','../assets/images/KL2-2.jpg','../assets/images/KL2-3.jpg','../assets/images/KL2-4.jpg');
INSERT INTO `item` VALUES('KL03','8','基隆 Keelung','3000','../assets/images/h_hotel/k_hotel3.jpg','基隆市中正區北寧路250之6號','蔚藍海景旅店','蔚藍海景旅店面朝基隆八斗子漁港，享有太平洋的景緻。距離基隆廟口約 10 分鐘車程， 距離金瓜石則約 15 分鐘車程。','每間客房均配有平面電視。房內附設配有熱水浴缸及一般浴缸的私人衛浴，並備有拖鞋。 為提供舒適的住宿體驗，房內亦備有免費盥洗用品及吹風機。全館提供免費 WiFi。','館內設有 24 小時服務的接待櫃台。','距離最近的機場為台北松山機場，距離 25 公里。','台北西華飯店距離捷運中山國中站步行 10 分鐘；距離臺北松山機場 10 分鐘車程； 距離桃園國際機場 50 分鐘車程。距離著名地標台北 101 為 15 分鐘車程；距離行 天宮則不到 10 分鐘車程。','3','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.2 分','2015 年 7 月 31 日','3','../assets/images/KL3-1.jpg','../assets/images/KL3-2.jpg','../assets/images/KL3-3.jpg','../assets/images/KL3-4.jpg');
INSERT INTO `item` VALUES('KL04','8','基隆 Keelung','3000','../assets/images/h_hotel/k_hotel4.jpg','基隆市中正區義一路7號','柯達大飯店','K Hotel Keelung 位在基隆，距離陽明海洋文化藝術館不到 500 公尺，距離中正公園不到 600 公尺。這間 3 星級飯店設有餐廳，提供空調客房，且有私人衛浴。住宿有 24 小時接 待櫃檯、客房服務和行李寄放服務。','K Hotel Keelung 的客房均備有電熱水壺。這間住宿的每間客房都有衣櫃和平面電視。','K Hotel Keelung 提供自助式或亞洲風味早餐。','K Hotel Keelung 附近的人氣景點包括基隆廟口夜市、基隆港（Port of Keelung）和基隆 文化中心。最近的機場是台北松山機場，距離這間住宿 21 公里。','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 8.4 分','2020 年 8 月 25 日','4','../assets/images/KL4-1.jpg','../assets/images/KL4-2.jpg','../assets/images/KL4-3.jpg','../assets/images/KL4-4.jpg');
INSERT INTO `item` VALUES('KL05','8','基隆 Keelung','3000','../assets/images/h_hotel/k_hotel5.jpg','基隆市仁愛區仁二路215號','集好旅店','集好旅店位於基隆。','每間客房均設有平面有線電視和咖啡機。並備有拖鞋和免費盥洗用品。館內設有 24 小時接待櫃檯','集好旅店距離基隆廟口夜市約 300 公尺，距離基隆文化中心約 300 公尺。最近的機場為 台北松山機場，距離約 21 公里','','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.4 分','2016 年 6 月 28 日','5','../assets/images/KL5-1.jpg','../assets/images/KL5-2.jpg','../assets/images/KL5-3.jpg','../assets/images/KL5-4.jpg');
INSERT INTO `item` VALUES('KL06','8','基隆 Keelung','3000','../assets/images/h_hotel/k_hotel6.jpg','基隆市仁愛區仁一路307號','華都飯店','Hua Du Hotel 位於基隆，有住宿，靠近陽明海洋文化藝術館和中正公園。這間 3 星級 飯店提供 24 小時接待櫃檯和行李寄放服務。住宿附空調，享有市景，有衣櫃和 WiFi（ 免費）。','Hua Du Hotel 的所有客房均備有電熱水壺。這間住宿的每間客房都有私人衛浴，也提 供書桌和平面電視。','Hua Du Hotel 的住客可以享用歐陸式或自助式早餐。','Hua Du Hotel 附近的人氣景點包括基隆廟口夜市、基隆文化中心和基隆港（Port of Ke elung）。最近的機場是台北松山機場，距離這間住宿 21 公里。','','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.0 分','2018 年 3 月 6 日','6','../assets/images/KL6-1.jpg','../assets/images/KL6-2.jpg','../assets/images/KL6-3.jpg','../assets/images/KL6-4.jpg');


#Yilan(h_product4)
INSERT INTO `item` VALUES('YL01','8','宜蘭 Yilan','3000','../assets/images/h_hotel/y_hotel1.jpg','宜蘭縣宜蘭市民權路二段36號','晶英酒店','宜蘭蘭城晶英酒店位於台灣東部最大的購物中心之一：新月廣場的 6～11 樓。客人可以在館內盡情享受 SPA 理療服務、室內和室外游泳池以及新穎現代的健身房。','宜蘭蘭城晶英酒店距離宜蘭火車站有 10 分鐘的步行路程，距離東門夜市有 15 分鐘的步行路程，距離台北有 60 分鐘車程，距離桃園國際機場則有 2 小時車程。','客房裝潢典雅，並配有空調、免費有線網路和 40 吋平面電視，也提供精品盥洗用品。所有客房均享有宜蘭市景，亦配有品項豐富的迷你吧和保險箱。位於 8 樓和 9 樓的主題客房則配有帳篷和兒童電動車。','沐蘭 SPA 座落於 6 樓的戶外空中花園，設有私人療程空間，客人可以在內享受熱水浴缸或按摩服務。住客可在新月豪華影城觀看無限次數電影。館內也設有觀光旅遊櫃檯和禮賓服務。','紅樓中餐廳供應烤鴨和招牌中式料理。蘭城百匯自助餐廳則供應多國美食自助餐。休息室提供飲品。','','情侶特別喜歡這個位置－並給他們的雙人旅行住宿體驗 9.2 分','2011 年 12 月 13 日','1','../assets/images/Yilan1-1.jpg','../assets/images/Yilan1-2.jpg','../assets/images/Yilan1-3.jpg','../assets/images/Yilan1-4.jpg');
INSERT INTO `item` VALUES('YL02','8','宜蘭 Yilan','3000','../assets/images/h_hotel/y_hotel2.jpg','宜蘭市康樂路14號','行口文旅','Hangkhau Hotel 位在宜蘭市，距離宜蘭東門夜市 400 公尺，有空調客房和 花園。這間住宿提供的設施與服務包括餐廳、24 小時接待櫃檯、共用休息室 以及全館 WiFi（免費）。旅遊諮詢服務台可以協助住客規劃行程。','Hangkhau Hotel 的住客可以享用美式早餐。','這間住宿附近的人氣景點包括宜蘭中山公園、幾米公園和昭應宮。最近的機場 是台北松山機場，距離 Hangkhau Hotel 40 公里。','','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 9.6 分','2017 年 1 月 6 日','2','../assets/images/Yilan2-1.jpg','../assets/images/Yilan2-2.jpg','../assets/images/Yilan2-3.jpg','../assets/images/Yilan2-4.jpg');
INSERT INTO `item` VALUES('YL03','8','宜蘭 Yilan','3000','../assets/images/h_hotel/y_hotel3.jpg','宜蘭市凱旋路135號','煙波大飯店宜蘭館','Lakeshore Hotel Yilan 位於宜蘭市，距離幾米公園 3.6 公里，距離宜蘭中山公 園 3.9 公里。這間住宿提供的設施與服務包括餐廳、24 小時接待櫃檯、禮賓服務 以及全館 WiFi（免費）。這間住宿距離台灣戲劇館 4.2 公里，距離宜蘭設治紀念 館 4.2 公里。','Lakeshore Hotel Yilan 提供自助式或亞洲風味早餐。','這間住宿距離蘭陽觀光夜市 4 公里，距離新月廣場 4 公里。最近的機場是台北松 山機場，距離 Lakeshore Hotel Yilan 43 公里。','','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.0 分','2018 年 7 月 24 日','3','../assets/images/Yilan3-1.jpg','../assets/images/Yilan3-2.jpg','../assets/images/Yilan3-3.jpg','../assets/images/Yilan3-4.jpg');
INSERT INTO `item` VALUES('YL04','8','宜蘭 Yilan','3000','../assets/images/h_hotel/y_hotel4.jpg','宜蘭市新民路19號','夜市橙堡渡假旅館','夜市城堡度假旅館位於宜蘭市，距離宜蘭火車站步行僅 3 分鐘，全館提供免費 WiFi。','客房均配有空調和有線電視，部分客房設有休息區。所有客房均設有私人衛浴， 內有步入式淋浴間。另備有毛巾、免費盥洗用品、拖鞋和吹風機，提供舒適的住 宿體驗。','旅館設有共用休息室，亦提供旅遊諮詢和票務服務。館內亦有洗衣機和烘乾機， 方便住客使用。客人可前往東門夜市享用各式各樣的美食小吃，夜市距離旅館 3 分鐘車程。','旅館亦提供自行車租賃和租車服務。旅館距離宜蘭河濱公園 5 分鐘車程，距離 東山河親水公園 23 分鐘車程。最近的機場是台北松山機場，距離 1 小時車程。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 9.2 分','2016 年 6 月 4 日','4','../assets/images/Yilan4-1.jpg','../assets/images/Yilan4-2.jpg','../assets/images/Yilan4-3.jpg','../assets/images/Yilan4-4.jpg');
INSERT INTO `item` VALUES('YL05','8','宜蘭 Yilan','3000','../assets/images/h_hotel/y_hotel5.jpg','宜蘭市大福路二段70號','杜拜時尚戀館','杜拜時尚戀館距離宜蘭車站不到 6 分鐘車程，位置便利，住宿環境奢華且現代化，提 供配備 SPA 浴缸的主題客房。','這家汽車旅館距離以溫泉聞名的礁溪僅 15 分鐘車程，距離國立傳統藝術中心、羅東 夜市和知名的蘭陽博物館均不到 30 分鐘車程，距離台北車站和松山機場皆 1 小時車程。','客房空間寬敞，裝潢雅緻，舖有木地板，配備平面有線電視和冰箱，並設有沙發休息 區。私人衛浴設有德國高儀（Grohe）衛浴配件和德國唯寶（Villeroy & Boch）衛 浴設施，並備有吹風機和浴袍。','接待櫃台人員全天候提供服務。館內附設免費停車場，為提供住客更便利的住宿體驗 ，也設有電梯。','館內每日供應美味當地早餐。此外，步行數分鐘的範圍內，小吃攤和餐廳林立。','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.5 分','2013 年 9 月 18 日','5','../assets/images/Yilan5-1.jpg','../assets/images/Yilan5-2.jpg','../assets/images/Yilan5-3.jpg','../assets/images/Yilan5-4.jpg');
INSERT INTO `item` VALUES('YL06','8','宜蘭 Yilan','3000','../assets/images/h_hotel/y_hotel6.jpg','宜蘭市宜興路一段366號','伯斯飯店','伯斯飯店距離東門夜市有 3 分鐘步行路程，提供精心佈置並附有免費 WiFi 的客房。這 家 3 星級飯店位於宜蘭，設有健身中心和撞球桌。館內餐廳提供免費早餐，並全天供應法式美食。','所有客房均十分寬敞，並配有空調、平面電視和迷你吧。私人衛浴備有淋浴設施和吹風 機。','伯斯飯店距離宜蘭火車站有 5 分鐘步行路程，距離台北市有 1 小時車程，距離桃園國際 機場有 1 小時 30 分鐘車程，距離太平山有 2 小時車程。','客人可以在商務中心查看電子郵件，或在觀光旅遊櫃檯安排一日遊。24 小時接待櫃台則 提供行李寄存和傳真設施。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 9.1 分','2012 年 10 月 31 日','6','../assets/images/Yilan6-1.jpg','../assets/images/Yilan6-2.jpg','../assets/images/Yilan6-3.jpg','../assets/images/Yilan6-4.jpg');

#NTC(h_product5)
INSERT INTO `item` VALUES('NTC01','8','新北 NewTaipei','3000','../assets/images/h_hotel/nt_hotel1.jpg','新北市淡水區中正路一段2-1號','將捷金鬱金香酒店','Golden Tulip FAB Hotel New Taipei 位於淡水區，距離 Shalun Beach 2.3 公里，有 餐廳、免費私人停車位、健身中心和酒吧。這間 4 星級飯店提供 24 小時接待櫃檯、ATM 自動櫃員機和 WiFi（免費）。這間住宿提供接駁服務，設有花園和露台。','所有客房均提供空調、有線頻道平面電視、冰箱、電熱水壺、沖洗座、吹風機和書桌。 G olden Tulip FAB Hotel New Taipei 的設有私人衛浴，且提供淋浴設施和免費盥洗用品， 部分房間還享有河景。這間住宿的客房均提供座位區。','Golden Tulip FAB Hotel New Taipei 的住客可以享用自助式早餐。','Golden Tulip FAB Hotel New Taipei 附近的人氣景點包括福祐宮、淡水老街和紅毛城。 最近的機場是台北松山機場，距離這間住宿 17 公里。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.8 分','2019 年 6 月 25 日','1','../assets/images/NTC1-1.jpg','../assets/images/NTC1-2.jpg','../assets/images/NTC1-3.jpg','../assets/images/NTC1-4.jpg');
INSERT INTO `item` VALUES('NTC02','8','新北 NewTaipei','3000','../assets/images/h_hotel/nt_hotel2.jpg','新北市萬里區港東路162-2號','薆悅酒店野柳渡假館','薆悅酒店野柳渡假館距離野柳自然景觀僅有 3 分鐘步行路程，舒適住宿提供衛 星電視和熱水浴缸。館內設有兒童遊樂場和各種餐飲場所。另提供免費 WiFi。','飯店距離野柳海洋世界或野柳公車站有 1 分鐘的步行路程，距離龜吼漁人碼頭 有 15 分鐘的步行路程，距離朱銘美術館有 25 分鐘車程，距離石門洞有 30 分鐘車程，距離白沙灣海水浴場有 40 分鐘車程，距離金包里老街約有 15 分 鐘車程。','所有客房均設有冰箱、小型保險箱、熨衣設備、辦公桌和附沙發的休息區。私人衛浴配有浴缸、柔軟浴袍和淋浴設施。','飯店設有餐廳和咖啡廳，供應各國料理和飲料供客人享用。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.7 分','2014 年 7 月 16 日','2','../assets/images/NTC2-1.jpg','../assets/images/NTC2-2.jpg','../assets/images/NTC2-3.jpg','../assets/images/NTC2-4.jpg');
INSERT INTO `item` VALUES('NTC03','8','新北 NewTaipei','3000','../assets/images/h_hotel/nt_hotel3.jpg','新北市金山區名流路1-7號','陽明山天籟渡假酒店','陽明山天籟渡假酒店佔地超過 6000 平方公尺，擁有溫泉公園、水療設施和室外游 泳池。館內提供免費 WiFi、2 間餐廳和附私人陽台的空調客房。','設備齊全的客房擁有現代化內飾，並配備了平面有線電視、休息區以及附浴缸的私 人衛浴。','客人可在館內打籃球、在健身房運動或打桌球。24 小時櫃台設有行李寄存設施和安 全保險箱。','Oriental Restaurant 餐廳供應精選在地佳餚，Western Restaurant 餐廳供應西 式自助式美食。','陽明山天籟渡假酒店設有免費停車場。飯店距離金山老街 10 分鐘車程，距離桃園 國際機場 1.5 小時車程。','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.5 分','2011 年 9 月 27 日','3','../assets/images/NTC3-1.jpg','../assets/images/NTC3-2.jpg','../assets/images/NTC3-3.jpg','../assets/images/NTC3-4.jpg');
INSERT INTO `item` VALUES('NTC04','8','新北 NewTaipei','3000','../assets/images/h_hotel/nt_hotel4.jpg','新北市蘆洲區長樂路56號','香奈爾精品旅館','香奈爾汽車旅館位於新莊，住宿提供免費 WiFi 和私人停車位，距離捷運輔大站（2 號出口）需步行 9 分鐘。','每間客房均設有空調和平面電視，電視備有影片隨選視訊（隨選影音）系統。客房 提供冰箱、電熱水壺、瓶裝水和茶／咖啡包。私人衛浴設有桑拿、蒸氣室、步入式 淋浴間和浴缸。','24 小時櫃台提供行李寄存服務。','住宿距離新莊棒球場 10 分鐘車程。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.5 分','2017 年 6 月 22 日','4','../assets/images/NTC4-1.jpg','../assets/images/NTC4-2.jpg','../assets/images/NTC4-3.jpg','../assets/images/NTC4-4.jpg');
INSERT INTO `item` VALUES('NTC05','8','新北 NewTaipei','3000','../assets/images/h_hotel/nt_hotel5.jpg','新北市林口區文化三路二段115巷163號','歐悅連鎖精品旅館','歐悅國際連鎖精品旅館林口館距離桃園夜市 25 分鐘車程，提供設備豪華的精緻套 房。全館設有免費 WiFi。','旅館提供精品住宿，每間客房裝潢獨特。部分套房附設溫泉浴池和游泳池。','汽車旅館距離台北車站和桃園市中心 30 分鐘車程，距離桃園國際機場 25 分鐘車 程。館內設有私人停車場。','附設餐廳每日供應自助式早餐。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.3 分','2013 年 9 月 24 日','5','../assets/images/NTC5-1.jpg','../assets/images/NTC5-2.jpg','../assets/images/NTC5-3.jpg','../assets/images/NTC5-4.jpg');
INSERT INTO `item` VALUES('NTC06','8','新北 NewTaipei','3000','../assets/images/h_hotel/nt_hotel6.jpg','新北市萬里區海景路1號','群策翡翠灣溫泉飯店','群策翡翠灣溫泉飯店位於萬里，附設健身中心和休閒會館，距離龜吼漁港約 11 分鐘的步 行路程。館內設有餐廳，客房均附空調和私人衛浴，並提供免費 WiFi。飯店設有溫泉浴 池和 24 小時接待櫃台。','客房均設有陽台。所有客房均配有平面電視，部分客房享有海景。所有客房皆設有桌子。','群策翡翠灣溫泉飯店供應中西自助式早餐。','群策翡翠灣溫泉飯店距離野柳地質公園 2 公里，距離野柳海洋世界 2.1 公里。飯店距離 台北松山機場 19 公里。自台北市開車前往飯店約需時 40 分鐘。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.6 分','2017 年 11 月 21 日','6','../assets/images/NTC6-1.jpg','../assets/images/NTC6-2.jpg','../assets/images/NTC6-3.jpg','../assets/images/NTC6-4.jpg');

#Taoyuan(h_product6)
INSERT INTO `item` VALUES('TC01','8','桃園 Taoyuan','3000','../assets/images/h_hotel/ta_hotel1.jpg','桃園市中壢區民權路398號','古華花園飯店','古華花園飯店靠近光明公園和崇光百貨，距離桃園國際機場有 20 分鐘車程，提供 免費 Wi-Fi，4 間餐飲場所，健康俱樂部和室外游泳池，距離公共自行車站僅有 5 分鐘步行路程。','古華花園飯店距離中壢夜市有 3 分鐘步行路程，距離中壢火車站有 5 分鐘車程， 距離桃園高鐵站有 10 分鐘車程。','古華花園飯店的每間客房均配有衛星電視，沏茶／咖啡設備，房內保險箱以及私人 衛浴，並提供盥洗用品。','飯店提供健身設施以及配套完善的內部商務中心。','明皇樓供應中式美食；繽紛西餐廳提供西餐；客人還可在 Soho 酒廊酒吧享用飲品。','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.8 分','2010 年 10 月 13 日','1','../assets/images/TC1-1.jpg','../assets/images/TC1-2.jpg','../assets/images/TC1-3.jpg','../assets/images/TC1-4.jpg');
INSERT INTO `item` VALUES('TC02','8','桃園 Taoyuan','3000','../assets/images/h_hotel/ta_hotel2.jpg','桃園市大溪區日新路166號','笠復威斯汀度假酒店','桃園大溪笠復威斯汀度假酒店位於桃園，距離大溪老街 3.8 公里，全館提供免費 WiFi。此度假村設有季節性開放的室外游泳池和燒烤設施。客人亦可於附設酒吧 享用飲品。','每間客房均配有平面衛星電視。部分客房享有山景或池畔景觀。每間客房均設有 附熱水按摩池和浴缸的私人衛浴。為提供舒適的住宿體驗，客房亦備有毛巾、免 費盥洗用品、拖鞋和浴袍。','此度假村設有 24 小時接待櫃台，提供行李寄存服務。觀光旅遊櫃台可提供觀光 旅遊資訊。館內還設有 24 小時健身中心、兒童俱樂部和 SPA 設施。','周邊地區是打高爾夫球和健行的熱門地點。桃園大溪笠復威斯汀度假酒店距離興 仁花園夜市 24 分鐘車程，距離東眼山國家森林遊樂區 47 分鐘車程。度假村提 供往返台灣高鐵桃園站的免費接駁服務，視實際情況而定。','桃園大溪笠復威斯汀度假酒店內設有兩間餐廳。知味西餐廳供應國際自助餐，儷 軒中餐廳則供應中式料理。','2','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.0 分','2016 年 2 月 25 日','2','../assets/images/TC2-1.jpg','../assets/images/TC2-2.jpg','../assets/images/TC2-3.jpg','../assets/images/TC2-4.jpg');
INSERT INTO `item` VALUES('TC03','8','桃園 Taoyuan','3000','../assets/images/h_hotel/ta_hotel3.jpg','桃園市平鎮區民族路2段69號','日月光國際大飯店','日月光國際大飯店桃園館距離桃園國際機場 30 分鐘車程，設計融合復古和現代 風格，且全館提供免費 WiFi。','飯店距離中壢車站僅 8 分鐘車程，距離高鐵桃園站 13 分鐘車程，距離中壢觀 光夜市 8 分鐘車程。館內附設免費停車場。','每間經典客房均配備空調、衣櫃、保險箱、書桌、冰箱、電熱水壺和平面電視。 私人衛浴設有浴缸或淋浴設施，並備有免費盥洗用品和吹風機。客房並享有市景。','入住期間可使用附設健身房、會議室和洗衣房，並提供每日家事服務。24 小時 櫃台的工作人員可隨時提供行李寄存服務及旅遊資訊。','附設餐廳每日供應自助式早餐。','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.8 分','2016 年 6 月 29 日','3','../assets/images/TC3-1.jpg','../assets/images/TC3-2.jpg','../assets/images/TC3-3.jpg','../assets/images/TC3-4.jpg');
INSERT INTO `item` VALUES('TC04','8','桃園 Taoyuan','3000','../assets/images/h_hotel/ta_hotel4.jpg','桃園市中壢區春德路101號','和逸飯店桃園館','COZZI Blu 位於中壢區，距離中壢觀光夜市 6 公里，有餐廳、免費私人停車位M 、健身中心和酒吧。這間住宿距離中壢藝術館 7 公里，距離中原夜市（Chungyu an Night Market） 7 公里，距離龍岡清真寺 11 公里。住宿提供 WiFi（免費） 和 24 小時接待櫃檯。','所有客房均提供空調、衛星頻道平面電視、電熱水壺、淋浴設施、吹風機和書桌。 COZZI Blu 的設有私人衛浴，且提供浴缸和免費盥洗用品，部分房間還享有市景 。','最近的機場是桃園機場，距離這間住宿 9 公里。','','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.6 分','2020 年 8 月 7 日','4','../assets/images/TC4-1.jpg','../assets/images/TC4-2.jpg','../assets/images/TC4-3.jpg','../assets/images/TC4-4.jpg');
INSERT INTO `item` VALUES('TC05','8','桃園 Taoyuan','3000','../assets/images/h_hotel/ta_hotel5.jpg','桃園市桃園區中正路60號6樓','城市商旅桃園車站館','City Suites - Taoyuan Station 位在桃園區，距離桃園市立體育館不到 1.3 公里 ，距離中國家具博物館不到 2.1 公里。這間住宿提供的設施與服務包括 24 小時接 待櫃檯、共用休息室以及全館 WiFi（免費）。住宿距離當地的桃園展演中心和三坑 子老街分別為 3.6 公里和 20 公里。','City Suites - Taoyuan Station 的客房均備有電熱水壺。這間住宿的每間客房都 有空調和平面電視。','City Suites - Taoyuan Station 距離桃園可口可樂世界 2.2 公里，距離桃園市忠 烈祠 2.7 公里。最近的機場是桃園機場，距離 City Suites - Taoyuan Station 14 公里。','','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.8 分','2019 年 7 月 18 日','5','../assets/images/TC5-1.jpg','../assets/images/TC5-2.jpg','../assets/images/TC5-3.jpg','../assets/images/TC5-4.jpg');
INSERT INTO `item` VALUES('TC06','8','桃園 Taoyuan','3000','../assets/images/h_hotel/ta_hotel6.jpg','桃園市中壢區中山東路一段155號','JS Hotel捷適商旅','JS 捷適商旅距離中壢火車站僅 10 分鐘步行路程，距離中原夜市 15 分鐘步行路 程。全館提供免費 WiFi。','客房設有空調、平面有線電視、休息區和迷你冰箱。私人衛浴內附熱水淋浴、吹 風機和免費盥洗用品。','飯店距桃園國際機場 25 分鐘車程，距離高鐵桃園站 18 分鐘車程，距離熱鬧的 中壢觀光夜市 8 分鐘車程。','JS 捷適商旅設有 24 小時接待櫃台、公共休息區和行李寄存處。館內亦提供洗衣 服務和保險箱。','','','獨行旅客特別喜歡這個位置－並給他們的單獨住宿體驗 8.0 分','2013 年 11 月 18 日','6','../assets/images/TC6-1.jpg','../assets/images/TC6-2.jpg','../assets/images/TC6-3.jpg','../assets/images/TC6-4.jpg');

#隨機廣告
CREATE TABLE `randad`
(
    adid INT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    ad_file VARCHAR(20) NOT NULL,
    adtitle TEXT NOT NULL,
    adcontent TEXT NOT NULL,
    PRIMARY KEY (adid)
);
INSERT INTO `randad` VALUES ('1','01', '遊玩台灣','這裡的風景美不勝收');
INSERT INTO `randad` VALUES ('2','02', '暢玩台灣','放鬆心情去旅遊');
INSERT INTO `randad` VALUES ('3','03', '遊玩台灣','旅行要學會隨遇而安，淡然一點');
INSERT INTO `randad` VALUES ('4','04', '暢玩台灣','身未動，心已遠');


CREATE TABLE `orders` 
(
     oid INT(11) NOT NULL auto_increment,
     payway VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
     username VARCHAR(10) NOT NULL,
     day VARCHAR(20),
     itemid VARCHAR(45) DEFAULT NULL,
     p_name VARCHAR(45) NOT NULL,
     p_price INT,
     total INT,
     PRIMARY KEY (oid)
);