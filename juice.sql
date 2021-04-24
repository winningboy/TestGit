-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: juice
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chat` (
  `chatID` int(11) NOT NULL AUTO_INCREMENT,
  `fromID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `toID` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `chatContent` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `chatTime` datetime DEFAULT NULL,
  `chatRead` int(11) DEFAULT NULL,
  PRIMARY KEY (`chatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `g_num` int(11) NOT NULL,
  `nick` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `g_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `price` int(11) NOT NULL,
  `content` varchar(3000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `category` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `imgs` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `location` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nego` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `heart` int(11) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `condi` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`g_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'purple','유모차 판매',80000,'** 유모차 중고 거래 합니다.\r\n\r\n** 가격 조정 가능 합니다.\r\n\r\n** 기타 궁금한 점은 \'purple\'로 주스톡 남겨주세요.\r\n\r\n** 3시간 이내에 답해드릴께요~!!','아동 용품','baby_carriage_full.jpg,baby_carriage_side.jpg,null,null,null,null','경기 용인시 기흥구 사은로 62','가능',3,0,'2020-03-14','중고'),(2,'purple','아기 신발',10000,'** 아디다스 아기 신발 판매합니다.\r\n\r\n** 이제 막 걸음마 시작한 아이들이 착용하는 신발입니다.\r\n\r\n** 밑창이 딱딱하지 않아 아기의 첫 신발로도 거부감 없이 사용 가능합니다.\r\n\r\n** 사용감은 살짝 있습니다.\r\n\r\n** 더 궁금하신 점은 \'purple\'로 주스톡 남겨주세요.(※ 3시간 이내 답변)','아동 용품','baby_shoes_adi.jpg,baby_shoes_adi_2.jpg,null,null,null,null','경기 용인시 기흥구 사은로 62','가능',0,0,'2020-03-14','중고'),(3,'ion','[ 맥북 판매][ 맥북 판매]',1000000,'## 미개봉 새상품 맥북 판매합니다 ##\r\n\r\n- 가격 조정은 가능합니다 언제든지 주스톡 남겨주세요.\r\n- 거래 가능지역은 한국내에서는 어디든 가능합니다.\r\n','디지털/가전','mac_rainbow.jpg,mac_front.jpg,mac_back.jpg,mac_keyboard.jpg,null,null','서울 서대문구 이화여대길 7','가능',0,0,'2020-03-14','새 것'),(4,'강아지','강아지 사료',50000,'\r\n강아지 사료 판매\r\n---------------------------------------------------------------------------------------------------------------\r\n#가격조정가능#주스톡 1시간 이내 답변#거래가능지역 \'한국\'','동물 용품','dog (3).jpg,null,null,null,null,null','서울 강남구 가로수길 27','가능',0,0,'2020-03-14','새 것'),(5,'강아지','강아지 사료',40000,'강아지 사료 판매\r\n---------------------------------------------------------------------------------------------------------------\r\n#가격조정가능#주스톡 1시간 이내 답변#거래가능지역 \'한국\'','동물 용품','dog (2).jpg,null,null,null,null,null','서울 강남구 가로수길 27','가능',0,0,'2020-03-14','새 것'),(6,'강아지','강아지 장난감',0,'강아지 장난감 나눔\r\n\r\n\r\n- 강아지 장난감을 너무 많이 선물 받아서 나눔합니다.\r\n- 저희 강아지가 딱 한번 가지고 놀았네요...ㅠ\r\n- 사용감 거의 없습니다.\r\n- \'강아지\'로 주스톡 남겨주세요','나눔','dog (1)1.png,null,null,null,null,null','서울 강남구 가로수길 27','불가',0,0,'2020-04-14','중고'),(7,'강아지','강아지 장난감',0,'강아지 장난감 나눔\r\n\r\n\r\n- 강아지 장난감을 너무 많이 선물 받아서 나눔합니다.\r\n- 저희 강아지가 딱 한번 가지고 놀았네요...ㅠ\r\n- 사용감 거의 없습니다.\r\n- \'강아지\'로 주스톡 남겨주세요','나눔','dog (2).png,null,null,null,null,null','서울 강남구 가로수길 27','불가',0,0,'2020-04-14','중고'),(8,'강아지','고양이 장난감 판매',5000,'$$$ 고양이 장난감 판매 $$$\r\n\r\n- 사용감 없습니다.\r\n- 색상 두가지 (블루, 블랙)\r\n- \'강아지\'로 주스톡 남겨주세요','동물 용품','cat_toy_black.jpg,cat_toy_detail.jpg,cat_toy_blue.jpg,null,null,null','서울 강남구 가로수길 27','가능',0,0,'2020-04-14','새 것'),(9,'레몬','아기신발',30000,'이제 막 걸음마를 시작한 아이들이 신기 좋은 신발 입니다.\r\n코로나로 신을 일이 별로 없어서 사용감은 거의 없습니다.\r\n가격 조정은 \'lemon\'으로 주스톡 남겨주세요!!','아동 용품','baby_shoes_full.jpg,baby_shoes_detail_l.jpg,baby_shoes_detail_r.jpg,null,null,null','경기 성남시 분당구 구미로 16','가능',1,0,'2020-04-14','중고'),(10,'레몬','Lego 블럭 판매합니다.',20000,'\r\nLego 블럭 판매합니다.\r\n아이들 두뇌 발달에 도움이 되고 사이즈가 커서 삼킬 위험이 없습니다.\r\n저의 아이들도 아주 좋아하던 장난감 이에요 ^^\r\n\r\n가격 조정은 \'lemon\'으로 주스톡 남겨주세요!!','아동 용품','lego_blocks.jpg,lego_detail.jpg,lego_full.jpg,null,null,null','경기 성남시 분당구 구미로 16','가능',0,0,'2020-05-14','중고'),(11,'레몬','팽이 판매',1000,'뽑기로 뽑은 팽이 아주 저렴하게 판매합니다.\r\n\r\n한 번도 사용안한 새 제품입니다.\r\n\r\n\r\n주스트럭 닉네임  \'lemon\'','아동 용품','toy (1).jpg,null,null,null,null,null','경기 성남시 분당구 구미로 16','불가',0,0,'2020-06-14','새 것'),(12,'레몬','남자 정장화',50000,'결혼식때 딱 한번 신은 키높이 구두입니다.\r\n가격 조정 가능하니 언제든지 주스톡 남겨주세요\r\n\r\n주스톡 닉네임   \'lemon\'','남성의류','shose.jpg,null,null,null,null,null','경기 성남시 분당구 구미로 16','가능',0,0,'2020-07-14','중고'),(13,'레몬','인형 판매',10000,'\r\n\r\n인형 총 두 종류 이고, 합쳐서 총 10000원 입니다.\r\n\r\n인형뽑기로 뽑은 인형이구요~ 새 제품이나 다름 없습니다.\r\n\r\n언제든지 연락주세요. 주스트럭 닉네임   \'lemon\'','아동 용품','toy (7).jpg,toy (5).jpg,null,null,null,null','경기 성남시 분당구 구미로 16','가능',0,0,'2020-08-14','새 것'),(14,'ion','전축? 판매',30000,'\r\n선물 받았는데 집에 LP판이 하나도 없어요 ㅋㅋㅋ\r\n\r\n그래서 판매합니다~!!\r\n\r\n사용을 한 번도 안한 새 제품이구요. 박스로 잘 포장해서 드릴께요~!!','디지털/가전','record-player.jpg,null,null,null,null,null','서울 서대문구 이화여대길 7','가능',0,0,'2020-11-14','새 것'),(15,'ion','마이크 팝니다!!!',20000,'#마이크판매\r\n#YouTube 촬영\r\n#음질Good\r\n#완전저렴\r\n#급매급매\r\n#닉네임 \'ion\'','디지털/가전','microphone.jpg,null,null,null,null,null','서울 서대문구 이화여대길 7','가능',0,0,'2020-12-14','중고'),(16,'ion','노트북',900000,'@@@@@@@@@@@@ 맥북 판매 @@@@@@@@@@@\r\n\r\n- 주스톡 닉네임  \'ion\'\r\n- 3시간 이내 답변','디지털/가전','laptop.jpg,laptop (4).jpg,laptop (2).jpg,laptop (3).jpg,laptop (1).jpg,null','서울 서대문구 이화여대길 7','가능',0,0,'2020-12-14','중고'),(17,'ion','헤드셋',15000,'헤드셋 저렴하게 팔아요~!\r\n음질이 아주 nice ~!\r\n착용감도 아주 nice ~!\r\n사용감 없음 ~!!!!','디지털/가전','headphones.jpg,null,null,null,null,null','서울 서대문구 이화여대길 7','불가',0,0,'2020-12-14','중고'),(18,'ion','아이패드 팔아요~!!',300000,'** 아이패드 팔아요\r\n** 사용감 거의 없음\r\n** 주스톡 닉네임 \'ion\'','디지털/가전','ipad (1).jpg,ipad (4).jpg,ipad (2).jpg,null,null,null','서울 서대문구 이화여대길 7','불가',0,0,'2021-01-01','중고'),(19,'ion','카메라 판매',500000,'$ 카메라 팔아요\r\n$ 직거래는 한국이면 어디든 가능','디지털/가전','camera (12).jpg,camera (6).jpg,null,null,null,null','서울 서대문구 이화여대길 7','가능',1,0,'2021-01-01','중고'),(20,'ion','큐브 저렴하게 팔아요',1000,'%% 이화여대 근처면 어디든 환영\r\n%% 거의 그냥 드리는 가격\r\n%% 잔스크래치 소량 존재\r\n%% 주스톡 \'ion\'으로 주세요','아동 용품','toy (3).jpg,null,null,null,null,null','서울 서대문구 이화여대길 7','가능',2,0,'2021-01-04','중고'),(21,'ion','개구리 인형',3000,'&& 개구리 인형 개당 3,000원으로 팝니다\r\n&& 인형뽑기로 뽑은 인형 한번도 사용 X\r\n&& 총 3개 세트로 사신다면 6,000원에 다드려요\r\n&& 주스톡 \'ion\'','아동 용품','frog_one_w.jpg,frog_one.jpg,frog_three_full.jpg,frog_three_d.jpg,null,null','서울 서대문구 이화여대길 7','가능',1,0,'2021-01-04','새 것'),(22,'ddahye','인테리어 액자 나눔합니다',0,'인테리어 액자 나눔합니다','나눔','poster_detail.jpg,poster_wall.jpg,poster_full.jpg,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-01-04','중고'),(23,'ddahye','와인잔 나눔',0,'홈 파티 한다고 구매한 와인잔이 처치 곤란이네요...ㅜㅜ\r\n나눔합니다. 많으니까 연락주세요!!\r\n\'ddahye\'','나눔','glasses.jpg,glasses_detail.jpg,null,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-02-10','중고'),(24,'ddahye','옷걸이 나눔',0,'옷가게 폐업으로 생긴 옷걸이\r\n나눔합니다...ㅠ','나눔','hangers.jpg,hanger_wood.jpg,hange_wood_one.jpg,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-02-10','중고'),(25,'ddahye','모자 나눔',0,'옷가게 폐업으로 모자 나눔합니다..ㅜ\r\n자세한건 주스톡 남겨주세요\r\n5시간 이내에 답장 해드려요 \'ddahye\'','나눔','hat (1).jpg,hat (2).jpg,null,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-02-14','새 것'),(26,'ddahye','옷 나눔',0,'옷가게 폐업으로 옷 나눔합니다..ㅜ\r\n자세한건 주스톡 남겨주세요\r\n5시간 이내에 답장 해드려요 \'ddahye\'','나눔','clothes (5).jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-02-14','새 것'),(27,'ddahye','옷 나눔',0,'옷가게 폐업으로 옷 나눔합니다..ㅜ\r\n사이즈 주스톡 남겨주시면 확인하고 연락드릴께요\r\n5시간 이내에 답장 해드려요 \'ddahye\'','나눔','clothes (1).jpg,clothes (7).jpg,clothes (6).jpg,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-02-14','새 것'),(28,'ddahye','헹거 나눔',0,'옷가게 폐업으로 헹거 나눔합니다..ㅜ\r\n자세한건 주스톡 남겨주세요\r\n5시간 이내에 답장 해드려요 \'ddahye\'','나눔','clothes (8).jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-03-01','중고'),(29,'ddahye','카메라 판매합니다',300000,'$$ 카메라 판매합니다\r\n$$ 생활스크래치는 존재\r\n$$ 스트랩도 같이 드려요\r\n$$ 자세한건 주스톡으로 \'ddahye\'','디지털/가전','camera (8).jpg,camera (1).jpg,camera (5).jpg,null,null,null','부산 부산진구 거제대로 16-7','가능',0,0,'2021-03-01','중고'),(30,'ddahye','에코백 나눔',0,'옷가게 폐업으로 에코백 나눔합니다..ㅜ\r\n색상은 두가지 있습니다.(블랙, 베이지)\r\n자세한건 주스톡 남겨주세요\r\n5시간 이내에 답장 해드려요 \'ddahye\'','나눔','bag (6).jpg,bag (2).jpg,null,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-03-01','새 것'),(31,'ddahye','핸드백 판매',30000,'미개봉 핸드백 저렴하게 판매합니다\r\n색상은 블랙 한가지 입니다\r\n구매의사 있으신 분은 주스톡 남겨주세요\r\n\'ddahye\'','패션잡화','bag (3).jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','가능',0,0,'2021-03-10','새 것'),(32,'ddahye','옷 나눔',0,'옷가게 폐업으로 옷 나눔합니다..ㅜ\r\n자세한건 주스톡 남겨주세요\r\n5시간 이내에 답장 해드려요 \'ddahye\'','나눔','clothes (4).jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-03-10','새 것'),(33,'ddahye','CD 플레이어 판매',10000,'#미개봉 상품\r\n#흰색 CD 플레이어\r\n#이쁨\r\n#저렴한 가격\r\n#주슽톡 \'ddahye\'','디지털/가전','cdp.jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','가능',0,0,'2021-04-01','새 것'),(34,'ddahye','메이크업 브러쉬 나눔',0,'메이크업 브러쉬 나눔합니다\r\n주스톡 \'ddahye\'','나눔','beauty (5).jpg,beauty (7).jpg,null,null,null,null','부산 부산진구 거제대로 16-7','불가',0,0,'2021-04-01','새 것'),(35,'ddahye','향수 판매',10000,'#향수 50ml 3가지 향\r\n#개당 10,000원\r\n#3개 같이 사시면 25,000원\r\n#로즈,머스크,일랑이랑\r\n#주스톡 \'ddahye\'','뷰티/미용','beauty (4).jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','가능',0,0,'2021-04-10','새 것'),(36,'ddahye','셰도우 나눔',0,'경품으로 받은 미개봉 셰도우 나눔합니다.\r\n색은 핑크톤 팔레트 입니다.','나눔','beauty (9).jpg,beauty (6).jpg,null,null,null,null','부산 부산진구 거제대로 16-7','불가',2,0,'2021-04-12','새 것'),(37,'ddahye','캘리그라피 북 판매',3000,'캘리그라피 북 판매합니다\r\n붓이랑 물감도 같이 드려요','생활/취미','cd (1).jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','가능',0,0,'2021-04-12','새 것'),(38,'ddahye','CD 판매',3000,'한 번도 듣지 않은 CD 판매합니다','음반/도서/티켓','cd (2).jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','가능',0,0,'2021-04-13','새 것'),(39,'ddahye','[오토바이 판매]&&&[오토바이 판매]',1000000,'[오토바이 판매]\r\n가격 조정은 주스톡을 남겨주세요\r\n집앞 배송 가능합니다!!\r\n\'ddahye\'','생활/취미','valeria.jpg,null,null,null,null,null','부산 부산진구 거제대로 16-7','가능',1,0,'2021-04-14','중고');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heart`
--

DROP TABLE IF EXISTS `heart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `heart` (
  `h_num` int(11) NOT NULL,
  `h_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `h_s_img` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `h_s_nick` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `h_g_num` int(11) NOT NULL,
  `h_g_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `h_g_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `h_g_price` int(11) NOT NULL,
  `h_g_location` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `h_date` date DEFAULT NULL,
  PRIMARY KEY (`h_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heart`
--

LOCK TABLES `heart` WRITE;
/*!40000 ALTER TABLE `heart` DISABLE KEYS */;
/*!40000 ALTER TABLE `heart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notice` (
  `n_num` int(11) NOT NULL,
  `n_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `n_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `n_date` date DEFAULT NULL,
  `n_read_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`n_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'[공지사항]  서버 정기 점검','안녕하세요 주스트럭입니다. \r\n\r\n \r\n\r\n시스템 정기 점검 작업을 아래와 같이 공지해 드리오니, 서비스 이용에 참고하시기 바랍니다. \r\n\r\n작업시간은 상황에 따라 다소 변경될수 있습니다. \r\n\r\n \r\n\r\n1. 서버 정기 점검\r\n\r\n1) 점검내용: 서버 점검\r\n\r\n2) 점검시간 : 5/7 (일) 05:00~05:30\r\n\r\n3) 요청사항 \r\n\r\n공지사항 등재\r\n모든 상품등록 타임아웃 발생 또는 무응답 처리됩니다. \r\n \r\n\r\n※ 중단 서비스 및 시간은 진행 상황에 따라 변경 될 수 있습니다.\r\n\r\n \r\n\r\n감사합니다. ','2020-08-16',0),(2,'[공지사항] 주스 톡 기능 이전','안녕하세요. 주스트럭입니다.\r\n\r\n \r\n\r\n주스트럭 회원분들과 채팅이 가능한 \"주스 톡\" 기능이  \"내 메뉴\" 우측 -> 하단으로 이전되었습니다.\r\n\r\n \r\n\r\n\"채팅목록\" 페이지는 종료되었지만, \"주스 톡\"에서 이전과 같이 주스트럭 회원분들과 채팅이 가능합니다.\r\n\r\n \r\n\r\n지금까지 \"주스 톡\"에 많은 관심과 사랑을 보내주신 모든 번개장터 유저분들께 양해를 부탁드리며, 더 나은 서비스와 좋은 소식으로 찾아뵙도록 하겠습니다.\r\n\r\n \r\n\r\n감사합니다. ','2020-09-01',0),(3,'[공지사항] 추석 연휴 거래사기 주의!!!','안녕하세요 고객님.\r\n\r\n오늘도 주스트럭을 이용해주셔서 감사합니다.\r\n\r\n \r\n\r\n추석을 앞두고 에어팟(디지털/가전 기기), 선물세트, 상품권 등 명절 선물을 저렴한 가격에 올린 후,\r\n\r\n카톡 등 외부 메신저로 유인하는 사기 거래 행위가 늘어날 것으로 예상되어 안내드립니다.\r\n\r\n\r\n[사기 의심 유형]\r\n\r\n \r\n\r\n1. 주스톡에서 외부 메신저로 유도하는 행위 (카톡ID, 계좌, 연락처를 이미지로 전달하는 경우)\r\n\r\n \r\n\r\n2. 직거래가 어렵다며 안전결제 유도 후 계좌번호등 개인정보를 요구하는 경우\r\n\r\n \r\n\r\n3. 상품의 가격이 시세 대비 비정상적으로 저렴한 경우\r\n\r\n\r\n\r\n고객님께서도 사기 유형들을 숙지하시어 주의해 주시고 사기 거래가 의심될 경우 즉시 거래를 중단하고 \'내메뉴 > 고객센터\'로 신고해 주시기 바랍니다.\r\n\r\n \r\n\r\n앞으로도 주스트럭은 고객님의 더 안전한 거래를 위해 최선을 다하겠습니다.\r\n\r\n행복하고 풍요로운 추석 되세요.\r\n\r\n \r\n\r\n감사합니다.','2020-09-29',0),(4,'[공지사항] 개인정보 이용약관 개정 안내','주스트럭 서비스 이용약관을 아래과 같이 변경됨에 따라 변경 내역을 공지하오니 참고하여 주시기 바랍니다.\r\n\r\n \r\n\r\n1. 변경일시 : 2020년 11월 18일부터\r\n\r\n \r\n\r\n2. 변경사유: 재개정\r\n\r\n \r\n\r\n3. 이용약관 버전 : V2.1 -> V3\r\n\r\n \r\n\r\n4. 변경 내역  \r\n  1) 개인정보처리의 위탁\r\n\r\n       수탁사 : 예스OO\r\n\r\n       위탁업무 : 고객상담\r\n\r\n       보유 및 이용기간 : 회원탈퇴 또는 위탁계약 종료시\r\n\r\n       ->   삭제\r\n\r\n2) 개인정보처리의 위탁\r\n\r\n     수탁사 : OOO이노베이션\r\n\r\n     위탁업무 : 고객상담\r\n\r\n     보유 및 이용기간 : 회원탈퇴 또는 위탁계약 종료시\r\n\r\n     ->   삭제','2020-11-10',0),(5,'[공지사항] 경찰청 사이버범죄 신고 시스템 안내','안녕하세요? 주스트럭입니다.\r\n\r\n사이버 사기 발생 시 경찰청 신고 시스템이 간소화되어 공지 드리니 적극적으로 활용 해 주시기 바랍니다.\r\n\r\n \r\n\r\n[수사기관 접수 채널 및 신고 방법]\r\n1. 상대방과 거래한 내용에 대해 증거자료 수집 (대화내용, 입금내역)\r\n\r\n\r\n2. 경찰청 사이버안전지킴이 신고(온라인 접수): https://ecrm.XXXX.go.kr/XXXXX/main\r\n   ※다중 피해 사건의 피해자 중 1명이라도 신고한 사실이 있다면, 다른 피해자들은 온라인 신고만으로 정식 수사 진행이 가능합니다.\r\n\r\n \r\n\r\n3. 경찰청 민원실 신고(내방 접수)\r\n① 경찰서 민원봉사실 방문\r\n② 고소장 작성\r\n③ 사건사실확인서 발급 요청\r\n④ 계좌를 통해 인출된 경우 은행 방문하여 계좌지급정지 신청(사건사실확인서 제출)\r\n\r\n \r\n\r\n4. 추가 필요자료 : 피해자 인적사항, 피해일시, 해당사이트, ID 또는 상점명, 거래내역\r\n   ※개인정보보호법에 따라 상대방의 개인정보는 신고인에게 직접 제공은 불가하며, 수사기관 공문을 통해 전달이 가능한 점 양해 부탁드립니다.\r\n\r\n \r\n\r\n고객님의 안전','2020-12-24',0),(6,'[공지사항] 별점 후기 정책 변경 안내','안녕하세요? 주스트럭입니다.\r\n\r\n주스트럭을 이용 해 주시는 고객님께 감사드리며, 후기 작성 정책이 변경됨에 따라 안내 말씀 드립니다.\r\n\r\n \r\n\r\n[변경사항]\r\n\r\n \r\n\r\n\r\n\r\n※ 기존에 작성된 후기는 삭제 없이 유지됩니다.\r\n\r\n \r\n\r\n \r\n\r\n[변경시기]\r\n\r\n \r\n\r\n21년 3월 1일부터 변경 정책이 적용됩니다.\r\n\r\n \r\n\r\n고객님의 안전한 거래를 위해 앞으로도 최선을 다하겠습니다. ','2021-01-11',0),(7,'[공지사항] DB 점건 사전 안내','안녕하세요.\r\n\r\n주스트럭을 이용해주시는 회원 여러분들께 진심으로 감사드리며,\r\n주스트럭 DB 점검 작업으로 인해 일부 서비스 이용이 불가함을 사전 안내 드립니다.\r\n \r\n■ 시스템 점검으로 인한 일부 서비스 이용불가 안내\r\n- 영역 : 상품상세페이지의 찜하기 버튼\r\n- 내용 : 해당 페이지 접속 불가 또는 로딩중으로 표시\r\n- 적용일 : 2020년 6월 15일 (월) 19:30 ~ 23:00 \r\n\r\n※ 서비스 재개는 시스템 점검 상황에 따라 변경될 수 있습니다.\r\n\r\n앞으로 더욱 좋은 서비스로 보답할 수 있도록 최선의 노력을 다하겠습니다.\r\n서비스 이용에 불편을 드리게 되어 죄송합니다.\r\n\r\n주스트럭 드림','2021-02-20',0),(8,'[공지사항] 찜목록 유효기간 안내','안녕하세요.\r\n\r\n주스트럭을 이용해주시는 회원 여러분들께 진심으로 감사드리며,\r\n\r\n상품 찜 유효기간 관련하여 안내 말씀드립니다.\r\n\r\n \r\n\r\n\r\n2021년 8월 19일부터 보다 정확한 상품 정보 제공을 위하여\r\n\r\n상품 찜 유효기간이 등록 후 1년으로 변경됩니다.\r\n\r\n \r\n\r\n찜한 후 1년이 경과된 상품은 목록에서 자동으로 삭제되니\r\n\r\n이용에 착오 없으시길 바랍니다.\r\n\r\n \r\n\r\n\r\n항상 더 좋은 서비스를 제공하기 위해 노력하는 주스트럭이 되겠습니다.\r\n\r\n앞으로도 많은 이용과 관심 부탁드립니다.\r\n \r\n\r\n감사합니다.','2021-02-25',0),(9,'[공지사항] 경매 서비스 확장 예정 안내','안녕하세요? 주스트럭입니다.\r\n\r\n저희 주스트럭은 고객님들의 보다 넓은 거래를 위해 \'경매\' 서비스를 도입 할 예정입니다.\r\n\r\n앞으로도 저희 주스트럭 많이 이용해주세요. 더 나은 서비스로 찾아오겠습니다.\r\n\r\n\r\n감사합니다.','2021-03-10',0),(10,'[공지사항] 접속장애 복구완료 되었습니다.','안녕하세요.\r\n\r\n\r\n\r\n주스트럭 입니다.\r\n\r\n\r\n\r\n3월 24일, 17시 19분부터 18시 05분까지 \r\n\r\n약 45분 가량 블로그 접속이 정상적으로 이루어지지 않았습니다.\r\n\r\n\r\n\r\n현재는 복구가 완료되어 정상적으로 서비스 접근 및 이용이 가능합니다.\r\n\r\n갑작스런 오류로 불편함을 드린 점 진심으로 사과드립니다.\r\n\r\n\r\n\r\n앞으로 보다 안정적인 서비스를 제공할 수 있도록 노력하겠습니다.\r\n\r\n\r\n\r\n2021년 3월 24일\r\n\r\n주스트럭 드림.','2021-03-24',0),(11,'[공지사항] 8월 22일 PC IE9 이하에서 댓글 일부 기능이 미지원됩니다','안녕하세요.\r\n네이버 블로그팀입니다.\r\n2021.8.22(일)부로 OOOO 종료에 따라 \r\n기존 OO 기반으로 지원되던 댓글 기능 일부가 미지원 됩니다. (IE 9 이하 브라우저 환경에 한합니다.)\r\n\r\n- PC 환경 IE9 이하에서 한글기준 300자 이상 댓글 등록이 불가능 합니다. \r\n- PC 환경 IE9 이하에서 이미지 댓글 업로드가 불가능 합니다.\r\n\r\n안정적이고 원활한 블로그 서비스 이용을 위해\r\n인터넷 익스플로어 11 이상의 최신 브라우저 또는 크롬/웨일 브라우저로 사용 부탁 드립니다.\r\n\r\n보다 안정적인 사용환경을 위해 노력하겠습니다.\r\n\r\n감사합니다.\r\n\r\n\r\n주스트럭 드림.','2021-04-14',0);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qna` (
  `q_num` int(11) NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `q_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `q_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `files` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `q_date` date DEFAULT NULL,
  `q_category` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `q_re_ref` int(11) DEFAULT NULL,
  `nick` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`q_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'ekgp1115@gmail.com','비밀번호 찾기','비밀번호 찾기 후 이메일은 주스트럭 아이디 가입시 사용한 이메일 인가요?',NULL,'2021-04-14','계정문의',1,'ddahye'),(2,'lemon@itwill.com','주스톡','* 주스톡 지도는 어떻게 사용하나요?\r\n* 주스톡에서 친구찾기는 무엇인가요?',NULL,'2021-04-14','이용문의',2,'레몬'),(3,'dog@itwill.com','접속 오류','판매하기 클릭시 창이 이렇게 뜹니다ㅠㅠ',NULL,'2021-04-14','기타',3,'강아지');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `review` (
  `re_num` int(11) NOT NULL,
  `s_nick` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `w_nick` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `file` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `re_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `re_date` date DEFAULT NULL,
  `re_star` int(11) NOT NULL,
  PRIMARY KEY (`re_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'ion','ddahye',NULL,'좋아요!!!!!','2021-04-14',3),(2,'레몬','ddahye','orange.jpg','친절하신 판매자분 입니다\r\n많이 많이 거래해주세요\r\n!!!!','2021-04-14',4),(3,'purple','ddahye',NULL,'좋아요~!! 아주 친절하세요!!!','2021-04-14',4),(4,'ddahye','강아지',NULL,'별로예요 별로','2021-04-14',1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_num` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pass` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nick` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `addr` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `addr2` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `join_date` date DEFAULT NULL,
  `user_img` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `platform_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `access_token` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_num`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nick_UNIQUE` (`nick`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'juicetruck.ad@gmail.com','itwilladmin','관리자','서울 종로구 북촌로 125-6','블루웍스 3층','관리자','11111111111','2021-04-14','sunglasses_on.jpg',NULL,NULL,3053),(2,'lemon@itwill.com','lemon0000','레몬','경기 성남시 분당구 구미로 16','7층','이레몬','24424424424','2021-04-14','people-2585733_1920.jpg',NULL,NULL,13638),(3,'ion@itwill.com','ion00000','ion','서울 서대문구 이화여대길 7','5층','김이온','22222222222','2021-04-14','entrepreneur-593358_1920.jpg',NULL,NULL,3766),(4,'purple@itwill.com','purple0000','purple','경기 용인시 기흥구 사은로 62','10층','박보라','44444444444','2021-04-14','woman-1149911_1920.jpg',NULL,NULL,17079),(5,'ekgp1115@gmail.com','ekgp1115','ddahye','부산 부산진구 거제대로 16-7','9층','김다혜','33333333333','2021-04-14','sunset-570881_1920.jpg',NULL,NULL,47214),(6,'dog@itwill.com','dogdog123','강아지','서울 강남구 가로수길 27','1층','강아지','77777777777','2021-04-14','dog (4).jpg',NULL,NULL,6034);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'juice'
--

--
-- Dumping routines for database 'juice'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14  9:53:26
