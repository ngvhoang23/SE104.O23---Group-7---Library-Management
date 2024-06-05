CREATE DATABASE  IF NOT EXISTS `lib_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lib_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: lib_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (5,'Better Version'),(6,'Chu Tân Nguyệt'),(7,'Nguyễn Hiến Lê'),(8,'Renee Eenson'),(9,'Adam Grant'),(10,'Lê Lựu'),(11,'Trần Bạch Đằng'),(12,'Nhiều Tác Giả'),(13,'Trình Ngọc Hoa'),(14,'Peter Kelder'),(15,'Ngô Đức Vượng'),(16,'Vũ Hữu Tiệp'),(17,'Olga Filipova'),(18,'Nathan Wu'),(19,'Adam Freeman'),(20,'Jess Chadwick'),(21,'Todd Snyder'),(22,'Hrusikesh Panda'),(23,'Thomas H. Cormen'),(24,'Charles E. Leiserson'),(25,'Emmett Dulaney'),(26,'Lê Minh Hoàng'),(27,'Barry A. Burd');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_detail`
--

DROP TABLE IF EXISTS `book_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_detail` (
  `book_detail_id` int NOT NULL AUTO_INCREMENT,
  `book_name` varchar(500) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `description` text,
  `category_id` int DEFAULT NULL,
  `publish_com` varchar(500) DEFAULT NULL,
  `cover_photo` text,
  `for_reader` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_detail_id`),
  KEY `category_id` (`category_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `book_detail_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL,
  CONSTRAINT `book_detail_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_detail`
--

LOCK TABLES `book_detail` WRITE;
/*!40000 ALTER TABLE `book_detail` DISABLE KEYS */;
INSERT INTO `book_detail` VALUES (18,'ĐẾN THƯỢNG ĐẾ CŨNG PHẢI HÀI LÒNG',120000,'2024-04-25',8,'Những câu “thần chú” này chắc hẳn không còn lạ gì đối với chúng ta - những chiến binh sale, nhân viên chăm sóc khách hàng, những người bán hàng,.. Và không biết một ngày chúng ta đã “niệm” nó bao nhiêu lần!',8,'Renee Eenson','/book-cover-photos/cover-photo-1714204118185-46161912321.png','3'),(19,'LỢI MỖI NGÀY ĐƯỢC MỘT GIỜ',120000,'2024-04-25',7,'Đã bao giờ bạn tự hỏi không biết làm gì mà đã hết ngày chưa? Đã bao giờ bạn thấy mình phung phí thời gian của bản thân mình không? Nếu thời gian có quay trở lại liệu rằng bạn có thể sử dụng nó tốt hơn trong quá khứ không?',8,'Nguyễn Hiến Lê','/book-cover-photos/cover-photo-1714211813212-46409938403.png','3'),(20,'THINK AGAIN - DÁM NGHĨ LẠI',320000,'2024-04-25',9,'Mười hai trong số mười lăm thành viên đội cứu hỏa đã tử nạn trong đám cháy gần đỉnh Mann Gulch vào năm 1949. Hai trong số ba người sống sót là nhờ có thể lực tốt nên kịp chạy thoát khỏi đám cháy; người còn lại, Wagner Dodge, đã thoát khỏi lưỡi hái tử thần bằng tư duy linh hoạt của mình',8,'Adam Grant','/book-cover-photos/cover-photo-1714211596566-73624970197.png','1'),(21,'101 BÍ QUYẾT LÀM GIÀU CỦA NGƯỜI DO THÁI',20000,'2024-04-25',6,'Người phương Tây có câu nói như thế này: “Nếu bạn không hiểu về người Do Thái, bạn sẽ không thể hiểu về sự giàu có”. Người Do Thái có tầm ảnh hưởng rất lớn đối với việc làm giàu trên thế giới, thậm chí còn có người nói một cách khoa trương rằng: “Ba người Do Thái cùng ngồi với nhau, có thể có khối tài sản gần bằng với thế giới”',8,'Chu Tân Nguyệt','/book-cover-photos/cover-photo-1714069479932-78414445875.png','2'),(30,'NHỮNG CON ĐƯỜNG CỦA ÁNH SÁNG - TẬP 2',62000,'2024-04-25',12,'Những con đường của ánh sáng được coi là bản sử thi về cuộc hành trình của con người đi vào vương quốc ánh sáng và giải mã những bí mật của nó. Và trong cuốn sách này tác giả đã thảo luận về ánh sáng, và liên qua tới nó là bóng tối, trên nhiều phương diện bao gồm tầm quan trọng của nó đối với sự sống, đối với khoa học, sự diễn giải ánh sáng của bộ não, nghệ thuật của các họa sĩ thuộc trường phái ấn tượng, việc sử dụng ánh sáng trong kiến trúc và các khía cạnh tâm linh của ánh sáng.',5,'Trịnh Xuân Thuận','/book-cover-photos/cover-photo-1714070388329-32001870671.png','1'),(31,'LUẬT TÂM THỨC',120000,'2024-04-25',7,'Sách luật tâm thức là tác phẩm đầu tay của tác giả Ngô Sa Thạch - một cây bút khá quen thuộc trong cộng đồng yêu thích chủ đề tâm linh.\n\nVới cuốn sách này, người đọc sẽ được giải đáp một loạt các thắc mắc liên quan tới vũ trụ, nhân quả như:Liệu dịch bệnh, thiên tai…có phải là “báo ứng” của thiên nhiên dành cho con người?',5,'Ngô Sa Thạch','/book-cover-photos/cover-photo-1714070430265-77927433981.png','2'),(33,'Machine Learning Cơ Bản',45000,'2019-04-14',5,'Những năm gần đây, AI – Artificial Intelligence (Trí Tuệ Nhân Tạo), và cụ thể hơn là Machine Learning (Học Máy hoặc Máy Học) nổi lên như một bằng chứng của cuộc cách mạng công nghiệp lần thứ tư (1 – động cơ hơi nước, 2 – năng lượng điện, 3 – công nghệ thông tin). Trí Tuệ Nhân Tạo đang len lỏi vào mọi lĩnh vực trong đời sống mà có thể chúng ta không nhận ra',5,NULL,'/book-cover-photos/cover-photo-1714750099204-71031986252.png','1'),(34,'Learning Vue.js 2',300000,'2021-01-13',24,'Olga Filipova là một lập trình viên có kinh nghiệm trong phát triển fontend, chính vì vậy các nội dung được viết ra trong Learning Vue.js 2 là rất sát với thực tế. Bản thân Olga Filipova cũng đang quản lý một dự án về học trực tuyến, do vậy các phần trong sách được kiến trúc có tính sư phạm cao',5,NULL,'/book-cover-photos/cover-photo-1714750152628-42974476917.png','1'),(35,'Laravel 5 Cookbook Enhance Your Amazing Applications',52000,'2020-05-20',8,'Learning Laravel 5: Building Practical Applications is the easiest way to learn web development using Laravel. Throughout 5 chapters, instructor Nathan Wu will teach you how to build many real-world applications from scratch.',5,'NXB Tư pháp','/book-cover-photos/cover-photo-1714750220027-94110884189.png','3'),(36,'Pro ASP.NET MVC 5',52000,'2019-08-01',9,'The ASP.NET MVC 5 Framework is the latest evolution of Microsoft’s ASP.NET web platform. It provides a high-productivity programming model that promotes cleaner code architecture, test-driven development, and powerful extensibility, combined with all the benefits of ASP.NET.',5,'NXB Tổng hợp thành phố Hồ Chí Minh','/book-cover-photos/cover-photo-1714750251120-61691762963.png','1'),(37,'Programming ASP.NET MVC 4',45000,'2020-08-24',14,'Get up and running with ASP.NET MVC 4, and learn how to build modern server-side web applications. This guide helps you understand how the framework performs, and shows you how to use various features to solve many real-world development scenarios you’re likely to face',5,'NXB Kim Đồng','/book-cover-photos/cover-photo-1714750279513-51217251955.png','1'),(38,'Giáo Trình Thuật Toán (Introduction To Algorithms )',12000,'2019-10-19',12,'Có nhiều quyển sách thuật toán được trình bày chặt chẽ nhưng không đầy đủ về nội dung, trong khi nhiều quyển khác chứa đựng nhiều nội dung nhưng lại thiếu sự chặt chẽ toán học. Introduction to Algorithms là một quyển sách kết hợp cả tính chặt chẽ và tính toàn diện về nội dung.',5,'NXB Tư pháp','/book-cover-photos/cover-photo-1714750302546-06269040890.png','3'),(39,'Linux All-In-One For Dummies – 5Th Edition',60000,'2022-07-10',7,'Linux All-in-One For Dummies giải thích mọi thứ bạn cần để bắt đầu và chạy với hệ điều hành Linux phổ biến. Được viết trong phong cách thân thiện và dễ tiếp cận, cuốn sách lý tưởng cho người mới dùng Linux và người đã có một ít kinh nghiệm với hệ điều hành này, cũng như bất kỳ ai đang học chứng chỉ Linux cấp độ 1',5,'NXB Trẻ','/book-cover-photos/cover-photo-1714750325464-32911364117.png','2'),(40,'Giải Thuật Và Lập Trình',12000,'2021-07-22',12,'Nếu bạn là người đam mê tin học, nếu bạn là người muốn khám phá về lập trình, hẳn bạn phải biết đến một cuốn sách tin học rất nổi tiếng ở Việt Nam trong nhiều năm trở lại đây. Từ những học sinh không chuyên đến những thành viên đội tuyển thi quốc tế tin học, có lẽ không một ai chưa từng học qua cuốn sách được biên soạn bởi một thầy giáo trẻ những đầy tài năng của trường Đại học Sư phạm Hà Nội, thầy Lê Minh Hoàng.',5,'NXB giáo dục Việt Nam','/book-cover-photos/cover-photo-1714750344413-49524513156.png','3'),(41,'Beginning Programming With Java For Dummies – 4Th Edition',45000,'2020-11-28',19,'Beginning Programming with Java For Dummies, 4th Edition is a comprehensive guide to learning one of the most popular programming languages worldwide. This book covers basic development concepts and techniques through a Java lens',5,'NXB Hội Nhà văn','/book-cover-photos/cover-photo-1714750368149-60861404665.png','1'),(42,'Lịch Sử Giao Thương: Thương Mại Định Hình Thế Giới Như Thế Nào?',52000,'2022-10-15',12,'“Toàn cầu hóa” hóa ra không phải là một hay thậm chí là một chuỗi sự kiện; mà đó là tiến trình diễn ra chậm rãi trong một thời gian rất, rất dài. Thế giới không đột nhiên trở nên “phẳng” với phát kiến về Internet, và thương mại không bất ngờ bị các tập đoàn lớn tầm cỡ toàn cầu chi phối vào cuối thế kỷ 20',7,'NXB lao động','/book-cover-photos/cover-photo-1714754649347-47594752439.png','2'),(43,'Lịch Sử Việt Nam Bằng Tranh (Tập 8) – Thời Lê Sơ',52000,'2019-10-02',7,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó',7,'NXB lao động','/book-cover-photos/cover-photo-1714754673996-22151288201.png','2'),(44,'Lịch Sử Việt Nam Bằng Tranh (Tập 7) – Khởi Nghĩa Lam Sơn',300000,'2022-08-19',26,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó.',7,'NXB Tổng hợp thành phố Hồ Chí Minh','/book-cover-photos/cover-photo-1714754703952-59043834888.png','3'),(45,'Lịch Sử Việt Nam Bằng Tranh (Tập 6) – Thời Nhà Hồ',32000,'2019-04-28',12,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó.',7,'NXB Kim Đồng','/book-cover-photos/cover-photo-1714754724604-89214434868.png','2'),(46,'Lịch Sử Việt Nam Bằng Tranh (Tập 5) – Nhà Trần Thắng Giặc Nguyên Mông',12000,'2023-10-25',12,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó.',7,'NXB Trẻ','/book-cover-photos/cover-photo-1714754744799-04933174131.png','2'),(47,'Lịch Sử Việt Nam Bằng Tranh (Tập 4) – Thời Nhà Lý',45000,'2022-02-10',26,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó.',7,'NXB Hội Nhà văn','/book-cover-photos/cover-photo-1714754769437-68632773661.png','3'),(48,'Lịch Sử Việt Nam Bằng Tranh (Tập 3) – Thời Nhà Ngô – Đinh – Tiền Lê',60000,'2022-12-26',12,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó.',7,'NXB Trẻ','/book-cover-photos/cover-photo-1714754789578-37764750372.png','3'),(49,'Lịch Sử Việt Nam Bằng Tranh (Tập 2) – Chống Quân Xâm Lược Phương Bắc',45000,'2021-09-19',6,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó.',7,'NXB Tổng hợp thành phố Hồ Chí Minh','/book-cover-photos/cover-photo-1714754806977-73614627950.png','1'),(50,'Lịch Sử Việt Nam Bằng Tranh (Tập 1) – Thời Hùng Vương',12000,'2023-09-21',13,'Lịch Sử Việt Nam Bằng Tranh là nỗ lực đáng trân trọng của tác giả nhằm phản ánh đất nước và con người Việt Nam theo đúng tiến trình lịch sử với không gian, văn hóa, y phục, tính cách phù hợp với từng thời kỳ, triều đại cụ thể. Bộ sách gồm nhiều tập, mỗi tập viết về thời kỳ hay một nhân vật, một vấn đề tiêu biểu của thời kỳ đó.',7,'NXB Tổng hợp thành phố Hồ Chí Minh','/book-cover-photos/cover-photo-1714754830563-32921807095.png','3'),(51,'Thần, Người Và Đất Việt',12000,'2022-07-12',10,'Không chỉ là một công trình quan trọng nghiên cứu cách thức suy nghĩ và ứng xử của người Việt trong đời sống tâm linh, “Thần, người và đất Việt” còn là một bức tranh đa sắc về các hệ thống thần linh Việt; mỗi trang trong sách như một mảng màu miêu tả những biến chuyển văn hóa ẩn sâu dưới lớp hỗn độn của thần thoại, huyền sử và tín ngưỡng.',7,'NXB Tổng hợp thành phố Hồ Chí Minh','/book-cover-photos/cover-photo-1714754851082-20554044743.png','1'),(52,'Tại Sao Mác Đúng?',12000,'2022-05-03',12,'Tại sao Mác đúng? là một tác phẩm có giá trị tham khảo tốt, mang lại cho chúng ta thêm một cách nhìn mới, một cơ sở mới để củng cố niềm tin vào chủ nghĩa Mác với vai trò là nền tảng tư tưởng của công cuộc cách mạng xây dựng phát triển đất nước theo con đường xã hội chủ nghĩa.',7,'NXB Trẻ','/book-cover-photos/cover-photo-1714754869370-72199377566.png','3'),(53,'Để xây dựng doanh nghiệp hiệu quả',45000,'2019-04-29',15,'Xây dựng một doanh nghiệp cho riêng mình là ước mơ của rất nhiều người. Nhưng phần lớn các doanh nghiệp nhỏ sau khi thành lập đều đi theo mô hình: thành lập – phát triển nhanh chống – phát triển chậm lại – ổn định, không phát triển – suy yếu – chuyển ngượng.',8,'NXB Hội Nhà văn','/book-cover-photos/cover-photo-1714755024136-29661342857.png','3'),(54,'1001 Cách Giữ Chân Khách Hàng',60000,'2019-10-09',12,'Nếu như bạn đang trên con đường đi tìm chính mình, tìm kiếm những cao kiến của các chuyên gia, hay học hỏi một số phương diện nào đó của những doanh nghiệp hàng đầu nhằm thiết lập mối quan hệ gắn bó của khách hàng đối với mình, thì có thể bạn đã tìm thấy rồi đó nếu như trên tay bạn có cuốn sách này.',8,'NXB Tổng hợp thành phố Hồ Chí Minh','/book-cover-photos/cover-photo-1714755044829-68202542441.png','1'),(55,'Steve Jobs là ai',300000,'2023-08-23',8,'Steve Jobs – doanh nhân, người sáng lập và dẫn dắt Apple trở thành công ty công nghệ hàng đầu thế giới. Dù chưa tốt nghiệp đại học nhưng Steve Jobs đã phát minh ra những sản phẩm công nghệ hàng đầu. Để hiểu rõ hơn Steve Jobs là ai? Cuộc đời và sự nghiệp của ông ra sao? Hãy theo dõi bài viết dưới đây nhé!',8,'NXB lao động','/book-cover-photos/cover-photo-1714755067362-05095883593.png','1'),(56,'Tôi Đã Kiếm Được 2.000.000 Đô-La Từ Thị Trường Chứng Khoán Như Thế Nào?',300000,'2022-02-20',17,'Điều đặc biệt của cuốn sách là các kinh nghiệm của tác giả được trình bày rất cô đọng, có dẫn chứng thuyết phục qua ngôn từ dễ hiểu song vẫn chứa đựng các nội dung mang tính hàn lâm trong phân tích và đầu tư chứng khoán. Qua cuốn sách, người đọc cũng sẽ hiểu được các vấn đề lý thuyết về phân tích cơ bản, phân tích kỹ thuật, kỹ năng giao dịch và chiến lược đầu tư chứng khoán được áp dụng linh hoạt trong thực tế đầu tư chứng khoán như thế nào. Người đọc sẽ có cơ hội biết về Lý thuyết hộp của Nicolas Darvas và những ứng dụng tuyệt vời của nó trong đầu tư chứng khoán.',8,'NXB Kim Đồng','/book-cover-photos/cover-photo-1714755095835-63629633786.png','2'),(57,'Kinh Nghiệm Thành Công Của Ông Chủ Nhỏ',52000,'2023-05-22',20,'Kinh Nghiệm Thành Công Của Ông Chủ Nhỏ là một cuốn sách có nội dung khác biệt với những cuốn sách kinh doanh thông thường khác, có thể sẽ giúp ích được cho những bạn trẻ đã và đang dấn thân vào lĩnh vực kinh doanh',8,'NXB Trẻ','/book-cover-photos/cover-photo-1714755121660-30182812356.png','1'),(58,'Từ Tơ Lụa Đến Silicon',52000,'2022-08-01',18,'Sách nghiên cứu cuộc đời và sự nghiệp của 10 nhân vật có nhiều ảnh hưởng, tạo ra những bước ngoặt trong sự phát triển của lịch sử thế giới, bao gồm: Gengis Khan, hoàng tử Henry, Robert Clive, Mayer Amschel Rothschild, Cyrus Field, John D. Rockefeller, Jean Monnet, Magaret Thatcher, Andrew Grove, Đặng Tiểu Bình và bàn thêm về người giỏi nhất còn chưa xuất hiện.',8,'NXB Tư pháp','/book-cover-photos/cover-photo-1714755148769-68024697343.png','2'),(59,'Vĩ Đại Do Lựa Chọn',45000,'2020-03-30',12,'Jim Collins là tác giả của hai đầu sách nổi tiếng – Từ tốt đến vĩ đại và Xây dựng để trường tồn. Cùng với phương pháp nghiên cứu như hai cuốn đầu tiên, trong quyển sách này, Jim Collins cùng với Morten T',8,'NXB Tư pháp','/book-cover-photos/cover-photo-1714755174132-96006541068.png','3'),(60,'Xây Dựng Để Trường Tồn',45000,'2022-10-06',17,'“Đây không phải là cuốn sách viết về các nhà lãnh đạo có tầm nhìn xa trông rộng, có sức thu hút lớn. Cũng không phải là cuốn sách viết về các sản phẩm, các khái niệm sản phẩm hay những thấu hiểu về thị trường mang tính chất có tầm nhìn xa. Cuốn sách này cũng không trình bày về các hoài bão của một doanh nghiệp. Mà đây chính là cuốn sách viết về cái gì đó quan trọng, trường tồn hơn nhiều – những công ty hàng đầu có tầm nhìn xa, hoài bão lớn”…',7,'NXB Hội Nhà văn','/book-cover-photos/cover-photo-1714755195892-10951451306.png','3'),(61,'Chỉ Cần Mẩu Khăn Giấy',300000,'2019-11-10',26,'“Để chứng minh rằng chúng ta hiểu rõ một điều gì, không có cách nào hùng hồn bằng việc vẽ ra một bức tranh đơn giản về vấn đề đó. Và để thấy được những giải pháp ẩn bên dưới, không có cách nào hiệu quả bằng việc cầm bút lên và vẽ ra các “mảnh” vấn đề của chúng ta.”',7,'NXB giáo dục Việt Nam','/book-cover-photos/cover-photo-1714755219945-90635715079.png','2'),(62,'Giáo Trình Tiền Tệ Ngân Hàng',60000,'2023-05-18',24,'Giáo trình Tiền tệ ngân hàng giới thiệu 15 chương với các nội dung: Đại cương về tiền tệ, hệ thống ngân hàng, đại cương về tín dụng, thị trường tài chính, tổ chức và hoạt động của ngân hàng thương mại, hoạt động huy động vốn, hoạt động cấp tín dụng, hoạt động thanh toán qua ngân hàng, hoạt động thanh toán quốc tế, hoạt động kinh doanh ngoại tệ của ngân hàng, ngân hàng trung ương và nghiệp vụ phát hành tiền, các học thuyết tiền tệ, lạm phát, chính sách tiền tệ quốc gia, những khía cạnh quốc tế của tiền tệ – ngân hàng.',8,'NXB giáo dục Việt Nam','/book-cover-photos/cover-photo-1714755253214-22623878533.png','2'),(63,'Giáo Trình Kế Toán Tài Chính Doanh Nghiệp Thương Mại',12000,'2022-10-19',5,'Thương mại là toàn bộ các hoạt động kinh doanh trên thị trường nhằm mục tiêu sinh lợi của các chủ thể kinh doanh. Theo nghĩa hẹp thi thương mại là quá trinh mua, bán hàng hoá trên thị trường, là lĩnh vực lưu thông, phân phối hàng hoá',8,'NXB Trẻ','/book-cover-photos/cover-photo-1714755270912-13051672506.png','1'),(64,'Ai Nói Voi Không Thể Khiêu Vũ?',32000,'2020-02-25',16,'Ai Nói Voi Không Thể Khiêu Vũ? là cuốn sách mở ra những bí mật về giai đoạn đen tối của IBM, khi tập đoàn, với sự kềnh càng và khổng lồ, đang đứng bên bờ vực phá sản. Các nguyên tắc cơ bản về xử lý khủng hoảng, về điều phối và quản lý đã được nêu ra và thực hiện với tài năng phi thường của Gerstner sẽ là những bài học quý giá dành cho tất cả những nhà quản lý trên thế giới, bởi, đến hôm nay, IBM vẫn đứng vững và hùng mạnh.',8,'NXB Tổng hợp thành phố Hồ Chí Minh','/book-cover-photos/cover-photo-1714755294045-44165684777.png','3');
/*!40000 ALTER TABLE `book_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_delete_book_detail` BEFORE DELETE ON `book_detail` FOR EACH ROW BEGIN
		delete from books where book_detail_id = old.book_detail_id;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_detail_id` int DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `import_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `position_UNIQUE` (`position`),
  KEY `book_detail_id` (`book_detail_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`book_detail_id`) REFERENCES `book_detail` (`book_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (141,18,'01-01-01','2024-05-04',0),(142,18,'01-01-02','2024-05-04',0),(143,18,'01-01-03','2024-05-04',1),(144,18,'01-01-04','2024-05-04',0),(145,18,'01-01-05','2024-05-04',0),(146,18,'01-01-06','2024-05-04',1),(147,19,'02-02-01','2024-05-04',1),(148,19,'02-02-02','2024-05-04',0),(149,19,'02-02-03','2024-05-04',0),(150,19,'02-02-04','2024-05-04',1),(151,19,'02-02-05','2024-05-04',1),(152,19,'02-02-06','2024-05-04',1),(153,20,'03-03-01','2024-05-04',1),(154,20,'03-03-02','2024-05-04',1),(155,20,'03-03-03','2024-05-04',1),(156,20,'03-03-04','2024-05-04',1),(157,20,'03-03-05','2024-05-04',1),(158,20,'03-03-06','2024-05-04',1),(159,21,'04-04-01','2024-05-04',1),(160,21,'04-04-02','2024-05-04',1),(161,21,'04-04-03','2024-05-04',0),(162,21,'04-04-04','2024-05-04',1),(163,21,'04-04-05','2024-05-04',1),(164,21,'04-04-06','2024-05-04',1),(165,30,'05-05-01','2024-05-04',1),(166,30,'05-05-02','2024-05-04',1),(167,30,'05-05-03','2024-05-04',1),(168,30,'05-05-04','2024-05-04',1),(169,30,'05-05-05','2024-05-04',1),(170,30,'05-05-06','2024-05-04',1),(171,31,'06-01-01','2024-05-04',1),(172,31,'06-01-02','2024-05-04',0),(173,31,'06-01-03','2024-05-04',0),(174,31,'06-01-04','2024-05-04',1),(175,31,'06-01-05','2024-05-04',0),(176,31,'06-01-06','2024-05-04',1),(177,33,'06-02-01','2024-05-04',1),(178,33,'06-02-02','2024-05-04',1),(179,33,'06-02-03','2024-05-04',1),(180,33,'06-02-04','2024-05-04',0),(181,33,'06-02-05','2024-05-04',1),(182,33,'06-02-06','2024-05-04',1),(183,34,'06-03-01','2024-05-04',1),(184,34,'06-03-02','2024-05-04',1),(185,34,'06-03-03','2024-05-04',0),(186,34,'06-03-04','2024-05-04',1),(187,34,'06-03-05','2024-05-04',1),(188,34,'06-03-06','2024-05-04',1),(189,35,'06-04-01','2024-05-04',1),(190,35,'06-04-02','2024-05-04',1),(191,35,'06-04-03','2024-05-04',0),(192,35,'06-04-04','2024-05-04',1),(193,35,'06-04-05','2024-05-04',1),(194,35,'06-04-06','2024-05-04',0),(195,36,'06-05-01','2024-05-04',1),(196,36,'06-05-02','2024-05-04',1),(197,36,'06-05-03','2024-05-04',0),(198,36,'06-05-04','2024-05-04',1),(199,36,'06-05-05','2024-05-04',1),(200,36,'06-05-06','2024-05-04',1),(201,37,'06-06-01','2024-05-04',1),(202,37,'06-06-02','2024-05-04',1),(203,37,'06-06-03','2024-05-04',1),(204,37,'06-06-04','2024-05-04',1),(205,37,'06-06-05','2024-05-04',1),(206,37,'06-06-06','2024-05-04',1),(207,38,'06-07-01','2024-05-04',1),(208,38,'06-07-02','2024-05-04',1),(209,38,'06-07-03','2024-05-04',1),(210,38,'06-07-04','2024-05-04',1),(211,38,'06-07-05','2024-05-04',1),(212,38,'06-07-06','2024-05-04',1),(213,39,'06-08-01','2024-05-04',1),(214,39,'06-08-02','2024-05-04',0),(215,39,'06-08-03','2024-05-04',1),(216,39,'06-08-04','2024-05-04',1),(217,39,'06-08-05','2024-05-04',1),(218,39,'06-08-06','2024-05-04',1),(219,40,'06-09-01','2024-05-04',1),(220,40,'06-09-02','2024-05-04',1),(221,40,'06-09-03','2024-05-04',1),(222,40,'06-09-04','2024-05-04',1),(223,40,'06-09-05','2024-05-04',0),(224,40,'06-09-06','2024-05-04',1),(225,41,'07-01-01','2024-05-04',1),(226,41,'07-01-02','2024-05-04',1),(227,41,'07-01-03','2024-05-04',1),(228,41,'07-01-04','2024-05-04',1),(229,41,'07-01-05','2024-05-04',1),(230,41,'07-01-06','2024-05-04',1),(231,42,'07-02-01','2024-05-04',1),(232,42,'07-02-02','2024-05-04',1),(233,42,'07-02-03','2024-05-04',1),(234,42,'07-02-04','2024-05-04',1),(235,42,'07-02-05','2024-05-04',1),(236,42,'07-02-06','2024-05-04',1),(237,43,'07-03-01','2024-05-04',1),(238,43,'07-03-02','2024-05-04',1),(239,43,'07-03-03','2024-05-04',1),(240,43,'07-03-04','2024-05-04',1),(241,43,'07-03-05','2024-05-04',1),(242,43,'07-03-06','2024-05-04',1),(243,44,'07-04-01','2024-05-04',1),(244,44,'07-04-02','2024-05-04',1),(245,44,'07-04-03','2024-05-04',0),(246,44,'07-04-04','2024-05-04',0),(247,44,'07-04-05','2024-05-04',1),(248,44,'07-04-06','2024-05-04',1),(249,45,'07-05-01','2024-05-04',1),(250,45,'07-05-02','2024-05-04',0),(251,45,'07-05-03','2024-05-04',0),(252,45,'07-05-04','2024-05-04',1),(253,45,'07-05-05','2024-05-04',0),(254,45,'07-05-06','2024-05-04',1),(255,46,'07-06-01','2024-05-04',1),(256,46,'07-06-02','2024-05-04',1),(257,46,'07-06-03','2024-05-04',1),(258,46,'07-06-04','2024-05-04',0),(259,46,'07-06-05','2024-05-04',1),(260,46,'07-06-06','2024-05-04',1),(261,47,'07-07-01','2024-05-04',1),(262,47,'07-07-02','2024-05-04',1),(263,47,'07-07-03','2024-05-04',0),(264,47,'07-07-04','2024-05-04',0),(265,47,'07-07-05','2024-05-04',1),(266,47,'07-07-06','2024-05-04',1),(267,48,'07-08-01','2024-05-04',1),(268,48,'07-08-02','2024-05-04',0),(269,48,'07-08-03','2024-05-04',1),(270,48,'07-08-04','2024-05-04',1),(271,48,'07-08-05','2024-05-04',1),(272,48,'07-08-06','2024-05-04',1),(273,49,'07-09-01','2024-05-04',1),(274,49,'07-09-02','2024-05-04',1),(275,49,'07-09-03','2024-05-04',1),(276,49,'07-09-04','2024-05-04',1),(277,49,'07-09-05','2024-05-04',1),(278,49,'07-09-06','2024-05-04',1),(279,50,'07-10-01','2024-05-04',1),(280,50,'07-10-02','2024-05-04',1),(281,50,'07-10-03','2024-05-04',0),(282,50,'07-10-04','2024-05-04',0),(283,50,'07-10-05','2024-05-04',1),(284,50,'07-10-06','2024-05-04',1),(285,51,'08-01-01','2024-05-04',1),(286,51,'08-01-02','2024-05-04',1),(287,51,'08-01-03','2024-05-04',1),(288,51,'08-01-04','2024-05-04',1),(289,51,'08-01-05','2024-05-04',1),(290,51,'08-01-06','2024-05-04',1),(291,52,'08-02-01','2024-05-04',1),(292,52,'08-02-02','2024-05-04',1),(293,52,'08-02-03','2024-05-04',1),(294,52,'08-02-04','2024-05-04',1),(295,52,'08-02-05','2024-05-04',1),(296,52,'08-02-06','2024-05-04',1),(297,53,'08-03-01','2024-05-04',1),(298,53,'08-03-02','2024-05-04',1),(299,53,'08-03-03','2024-05-04',1),(300,53,'08-03-04','2024-05-04',1),(301,53,'08-03-05','2024-05-04',1),(302,53,'08-03-06','2024-05-04',1),(303,54,'08-04-01','2024-05-04',1),(304,54,'08-04-02','2024-05-04',1),(305,54,'08-04-03','2024-05-04',1),(306,54,'08-04-04','2024-05-04',1),(307,54,'08-04-05','2024-05-04',1),(308,54,'08-04-06','2024-05-04',1),(309,55,'08-05-01','2024-05-04',1),(310,55,'08-05-02','2024-05-04',1),(311,55,'08-05-03','2024-05-04',1),(312,55,'08-05-04','2024-05-04',1),(313,55,'08-05-05','2024-05-04',1),(314,55,'08-05-06','2024-05-04',1),(315,56,'08-06-01','2024-05-04',1),(316,56,'08-06-02','2024-05-04',1),(317,56,'08-06-03','2024-05-04',1),(318,56,'08-06-04','2024-05-04',1),(319,56,'08-06-05','2024-05-04',1),(320,56,'08-06-06','2024-05-04',1),(321,57,'08-07-01','2024-05-04',1),(322,57,'08-07-02','2024-05-04',1),(323,57,'08-07-03','2024-05-04',1),(324,57,'08-07-04','2024-05-04',1),(325,57,'08-07-05','2024-05-04',1),(326,57,'08-07-06','2024-05-04',1),(327,58,'08-08-01','2024-05-04',1),(328,58,'08-08-02','2024-05-04',1),(329,58,'08-08-03','2024-05-04',1),(330,58,'08-08-04','2024-05-04',1),(331,58,'08-08-05','2024-05-04',1),(332,58,'08-08-06','2024-05-04',1),(333,59,'08-09-01','2024-05-04',1),(334,59,'08-09-02','2024-05-04',1),(335,59,'08-09-03','2024-05-04',1),(336,59,'08-09-04','2024-05-04',0),(337,59,'08-09-05','2024-05-04',1),(338,59,'08-09-06','2024-05-04',1),(339,60,'08-10-01','2024-05-04',1),(340,60,'08-10-02','2024-05-04',1),(341,60,'08-10-03','2024-05-04',1),(342,60,'08-10-04','2024-05-04',1),(343,60,'08-10-05','2024-05-04',1),(344,60,'08-10-06','2024-05-04',1),(345,61,'08-11-01','2024-05-04',1),(346,61,'08-11-02','2024-05-04',1),(347,61,'08-11-03','2024-05-04',1),(348,61,'08-11-04','2024-05-04',1),(349,61,'08-11-05','2024-05-04',1),(350,61,'08-11-06','2024-05-04',1),(351,62,'08-12-01','2024-05-04',1),(352,62,'08-12-02','2024-05-04',1),(353,62,'08-12-03','2024-05-04',1),(354,62,'08-12-04','2024-05-04',1),(355,62,'08-12-05','2024-05-04',1),(356,62,'08-12-06','2024-05-04',1),(357,63,'08-13-01','2024-05-04',1),(358,63,'08-13-02','2024-05-04',1),(359,63,'08-13-03','2024-05-04',0),(360,63,'08-13-04','2024-05-04',1),(361,63,'08-13-05','2024-05-04',1),(362,64,'09-01-01','2024-05-04',1),(363,64,'09-01-02','2024-05-04',1),(364,64,'09-01-03','2024-05-04',1),(365,64,'09-01-04','2024-05-04',1),(366,64,'09-01-05','2024-05-04',1),(367,64,'09-01-06','2024-05-04',1);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_delete_book` BEFORE DELETE ON `books` FOR EACH ROW BEGIN
		delete from borrowed_books where book_id = old.book_id;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `borrowed_books`
--

DROP TABLE IF EXISTS `borrowed_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowed_books` (
  `borrow_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int DEFAULT NULL,
  `reader_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `actual_return_date` date DEFAULT NULL,
  `late_fee` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`borrow_id`),
  KEY `reader_id` (`reader_id`),
  KEY `borrowed_books_ibfk_3_idx` (`book_id`),
  KEY `borrowed_books_ibfk_1` (`emp_id`),
  CONSTRAINT `borrowed_books_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `user_auth_info` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `borrowed_books_ibfk_2` FOREIGN KEY (`reader_id`) REFERENCES `user_auth_info` (`user_id`),
  CONSTRAINT `borrowed_books_ibfk_3` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowed_books`
--

LOCK TABLES `borrowed_books` WRITE;
/*!40000 ALTER TABLE `borrowed_books` DISABLE KEYS */;
INSERT INTO `borrowed_books` VALUES (129,NULL,159,208,'2024-05-03','2024-05-01','2024-05-25',NULL,'2024-05-03 17:11:24'),(130,NULL,159,215,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:11:28'),(131,NULL,161,193,'2024-05-03','2024-05-10','2024-05-19',NULL,'2024-05-03 17:11:35'),(132,NULL,161,222,'2024-05-03','2024-05-10','2024-05-19',NULL,'2024-05-03 17:11:40'),(133,NULL,164,180,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:11:48'),(134,NULL,164,336,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:11:53'),(135,NULL,164,359,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:11:57'),(136,NULL,165,172,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:05'),(137,NULL,165,214,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:08'),(138,NULL,165,263,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:13'),(139,NULL,166,191,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:21'),(140,NULL,166,197,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:25'),(141,NULL,163,148,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:35'),(142,NULL,163,161,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:40'),(143,NULL,163,335,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:12:45'),(144,NULL,167,245,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:54'),(145,NULL,167,250,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:12:58'),(146,NULL,167,268,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:13:02'),(147,NULL,171,223,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:13:12'),(148,NULL,171,264,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:13:16'),(149,NULL,171,282,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:13:20'),(150,NULL,178,258,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:13:30'),(151,NULL,178,251,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:13:33'),(152,NULL,178,281,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:13:39'),(153,NULL,180,298,'2024-05-03','2024-05-10','2024-05-19',NULL,'2024-05-03 17:13:51'),(154,NULL,180,361,'2024-05-03','2024-05-10','2024-05-19',NULL,'2024-05-03 17:13:55'),(155,NULL,182,185,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:14:04'),(156,NULL,182,194,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:14:08'),(157,NULL,182,246,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:14:13'),(158,NULL,182,341,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:14:17'),(159,NULL,175,221,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:14:27'),(160,NULL,175,244,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:14:31'),(161,NULL,175,364,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:14:38'),(162,NULL,175,360,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:14:41'),(163,NULL,179,173,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:14:52'),(164,NULL,172,181,'2024-05-03','2024-05-10','2024-05-25',NULL,'2024-05-03 17:14:59'),(165,NULL,170,175,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:15:05'),(166,NULL,170,253,'2024-05-03','2024-05-10',NULL,NULL,'2024-05-03 17:15:10'),(167,NULL,180,142,'2024-05-19','2024-06-15',NULL,NULL,'2024-05-19 12:47:39'),(168,NULL,202,141,'2024-05-25','2024-06-01',NULL,NULL,'2024-05-25 18:09:29'),(169,NULL,202,149,'2024-05-25','2024-06-01',NULL,NULL,'2024-05-25 18:10:04'),(170,NULL,202,145,'2024-05-25','2024-06-01',NULL,NULL,'2024-05-25 18:18:26'),(171,NULL,202,144,'2024-05-25','2024-06-05',NULL,NULL,'2024-05-25 18:19:27');
/*!40000 ALTER TABLE `borrowed_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_borrowed_books` AFTER UPDATE ON `borrowed_books` FOR EACH ROW BEGIN
	IF(new.actual_return_date is not null and old.actual_return_date is null) then
		update books set status = 1 where book_id = new.book_id;
   END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(300) DEFAULT NULL,
  `background` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'Công Nghệ Thông Tin','/images/khkt_cate.jpg'),(7,'Lịch Sử - Quân Sự','/images/lsqs_cate.jpg'),(8,'Quản Trị - Kinh Doanh','/images/qtkd_cate.jpg');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fine_management`
--

DROP TABLE IF EXISTS `fine_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine_management` (
  `fine_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int DEFAULT NULL,
  `reader_id` int DEFAULT NULL,
  `amount_collected` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`fine_id`),
  KEY `emp_id` (`emp_id`),
  KEY `reader_id` (`reader_id`),
  CONSTRAINT `fine_management_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `user_auth_info` (`user_id`) ON DELETE SET NULL,
  CONSTRAINT `fine_management_ibfk_2` FOREIGN KEY (`reader_id`) REFERENCES `user_auth_info` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine_management`
--

LOCK TABLES `fine_management` WRITE;
/*!40000 ALTER TABLE `fine_management` DISABLE KEYS */;
INSERT INTO `fine_management` VALUES (47,NULL,159,30000,'2024-05-25 18:10:29'),(48,NULL,161,10000,'2024-05-25 18:13:18'),(49,NULL,159,1000,'2024-05-25 18:14:55'),(50,NULL,159,1000,'2024-05-25 18:16:51'),(51,NULL,161,1000,'2024-05-25 18:17:18'),(52,NULL,161,1000,'2024-05-25 18:17:51');
/*!40000 ALTER TABLE `fine_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth_info`
--

DROP TABLE IF EXISTS `user_auth_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth_info` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(300) DEFAULT NULL,
  `password` text,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth_info`
--

LOCK TABLES `user_auth_info` WRITE;
/*!40000 ALTER TABLE `user_auth_info` DISABLE KEYS */;
INSERT INTO `user_auth_info` VALUES (1,'21522479@gm.uit.edu.vn','$2b$10$mLzrcoeF3g.pJYqFsTCI/O6EKfuWO/BmWIkizEd5AKF5lG8wEt/8a','admin'),(159,'hai.tran@gmail.com','$2b$10$R1p1Vp0vGPDLclfOTk1o0udQXvNCsSBO.eBq0Ja45m9xfsMq8mrfi','reader'),(160,'tranthibao@gmail.com','$2b$10$cyobnSLZzaYZMyIGYGI83OxkAdqcTnPhB4FVNq7.mCCzsbA67.Y7S','reader'),(161,'lecongchi@gmail.com','$2b$10$1ukjHzoTruXnigTYxkjc5uY0so6TBzte59bvF.N7V.SeG3AI/jaZG','reader'),(162,'phamthidieu@gmail.com','$2b$10$q1UEx9SGELYaCosi52XpsODx25ak8NhiokDWBPCVfz7MypEccKGQK','reader'),(163,'vuthilan@gmail.com','$2b$10$D1wXK41nTmJB0TJjdARVGOPiO4tnBwCwu9c7.FceLd4eeTqS6gW8m','reader'),(164,'hoangvanduc@gmail.com','$2b$10$dHhBVzAGGI4ZMgFGhyLLqOGk4yHzkCpMXBZoiexihE1jBj4kbmc.y','reader'),(165,'dangvangiang@gmail.com','$2b$10$YSJYt8NnPDXnLMxfmr9MSOq8kfAWwVqAdo/v70jrnAb4h4KVayf8u','reader'),(166,'dovanghai@gmail.com','$2b$10$Nd.7QC3nVeyTSytS5gZRrO.Vf/kL9xf3ksh6yBCfC3xpMnKzrcsr6','reader'),(167,'ngothikim@gmail.com','$2b$10$9Zz55RgK//5G3Qz1SWOT0eRnVY3LEZNKKB2Yhtpej/qJpdl/sVzsi','reader'),(168,'hoangthimy@gmail.com','$2b$10$otwUIc00naG56WZK5prjW.xq7Q5rOzqjwZYPt.QSQNWCrZpP0oMtS','reader'),(169,'hieuthimai@gmail.com','$2b$10$wxmnrgAQ9UQHPrpbsQc8we0vVrMvs6KsAoFZdSwQZbwJbpVbvIiDG','reader'),(170,'phanvannam@gmail.com','$2b$10$sEH6rA51oHEv1CnClqxGG.RWMnwYabBhfx07qhSxRLwOUZopAk/ya','reader'),(171,'vuongvanminh@gmail.com','$2b$10$X6vpjvKBUdvOofo80t44G.ny8.zXfKb4gsMq2KIoy79nSrfwsrK3C','reader'),(172,'nguyenthihuong@gmail.com','$2b$10$g2HjkQ0qZg2Jz6aN9AsMxOWHpZboVGZOPtHXm6.MDdJtvNyxXG/9i','reader'),(173,'tranthihong@gmail.com','$2b$10$zx.NPc1GYGKkVul1IXiYy.9m7HXT/F214DSPLPOv3cR.HwPFR8FIC','reader'),(174,'nguyenthimai@gmail.com','$2b$10$9cNH1RShTt3LL17DnAQ7puj6JK9Ky/fnEAiYJnPtmZqZl9natbD82','reader'),(175,'dangthihuong@gmail.com','$2b$10$Iiifw9d6l3wvUuXit2osje68D/dkmfvpeLki1ifMIBDQqcPxBj3fy','reader'),(177,'dothingoc@gmail.com','$2b$10$zAs.6Z5xc85xixETEfwTJOD2ChSwZTe70juEgC5hQSvVWjL3x0Qzu','reader'),(178,'tranthingan@gmail.com','$2b$10$aCStjgNr3n7xlJJgNqXQlOchl6XJtXJul6eH8chHnCcxs5rOZYM8.','reader'),(179,'levanhoang@gmail.com','$2b$10$XDDeSqPdprZeAsrXeUCBB.uKhFV.zNAFxNZg6kkSe.9KCgNcVsVbS','reader'),(180,'ngovanphuoc@gmail.com','$2b$10$alnFtaQSfqBijikGr.ro2uiczZ/gO9vBfW./vzOS5INeKPyB2OtRm','reader'),(181,'nguyenthihanh@gmail.com','$2b$10$fsvZZfoxE0JS0a8AniwsJ.WYYRm23aLUBhNlFHAmbpJe6/Bu.9rWS','reader'),(182,'dangthithanh@gmail.com','$2b$10$973zYXZcSESrueeQMxhDOOHUKjpHBbRd0E4C9Tr535Fv6rKibn7VS','reader'),(183,'hoangvanminh@gmail.com','$2b$10$Q/VSrlL081CW1opgq/fDC.GgzwaSy42jKR82rbpsVt/9HHn1bwdpC','reader'),(186,'nguyenvantu@gmail.com','$2b$10$ovLSIXCQlmqvUtlGjXTd0e8T3QOIdrQymDVMlKFCLF0q3Y5BMii4y','emp'),(188,'levantuan@gmail.com','$2b$10$ykNh.UW2tjDsNvSplqYYtuAfJjsvEzt3PufD28jjXIY6ELBTYvrei','emp'),(189,'hoangthihuong@gmail.com','$2b$10$HS9RK.HvWqtWDAmlmy2lDe3T79EJGfxqCfx8lPoyMNg71aPu/Ovkq','emp'),(190,'dangvanduc@gmail.com','$2b$10$8LB8tsigfXOdACKGIzvs.epR9OieKB8w/OhlCLnFful40UJmxLvpe','emp'),(191,'buithihanh@gmail.co','$2b$10$OaCEyhI9mnBiZPY92BxHrunoHgHc6MBXatmu08vgqNwvTi8UZ4vfa','emp'),(194,'phamvanhien@gmail.com','$2b$10$NUv133.45O8rduV1tefSr.veJQE4b87zeOXq6KMv0.Jcjm9WovQV2','emp'),(202,'felicityegloff@gmail.com','$2b$10$g4/K86YwWDYMlxAA6/M/S.z2EycWmOCNaDNshONLPB31os6jJJboy','reader');
/*!40000 ALTER TABLE `user_auth_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_delete_user` BEFORE DELETE ON `user_auth_info` FOR EACH ROW BEGIN
	   if(old.role = 'reader') then
       	  update books b
		inner join borrowed_books bb on b.book_id = bb.book_id
		set b.status = 1
		where bb.actual_return_date is null and bb.reader_id = old.user_id;
		delete from borrowed_books where reader_id = old.user_id;
		delete from fine_management where reader_id = old.user_id;
		delete from user_info where user_id = old.user_id;
	   elseif(old.role = 'emp') then
		   delete from user_info where user_id = old.user_id;
	   END IF;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `user_id` int NOT NULL,
  `user_avatar` text,
  `created_at` date DEFAULT NULL,
  `phone_num` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email_address` varchar(300) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `reader_type` varchar(100) DEFAULT NULL,
  `address` text,
  `expire_date` date DEFAULT NULL,
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user_auth_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,'/user-avatars/avatar-1716656660104-2837988756877.png','2024-04-25','0812345675','1996-04-25','21522479@gm.uit.edu.vn',1,'Admin',NULL,'Admin ',NULL,NULL,NULL),(159,'/user-avatars/avatar-1714748094954-1144478489949.png','2024-05-03','0909876543','2000-12-12','hai.tran@gmail.com',0,'Trần','Hải','Trần Hải','lecturer','Số 15, Đường Trần Phú, Quận 2, Thành phố Hà Nội','2024-11-03'),(160,'/user-avatars/avatar-1716656767801-5624901941612.png','2024-05-03','0909876544','2000-12-12','tranthibao@gmail.com',0,'Trần','Thị Bảo','Trần Thị Bảo','student','Số 15, Đường Trần Phú, Quận 2, Thành phố Hà Nội','2024-11-03'),(161,'/user-avatars/avatar-1714748234722-2335055740747.png','2024-05-03','0894561237','2000-12-12','lecongchi@gmail.com',1,'Lê','Công Chí','Lê Công Chí','lecturer','Số 20, Đường Lý Thường Kiệt, Quận 3, Thành phố Đà Nẵng','2024-11-03'),(162,'/user-avatars/avatar-1714748270238-9407084022539.png','2024-05-03','0908765432','2000-12-12','phamthidieu@gmail.com',0,'Phạm','Thị Diệu','Phạm Thị Diệu','student','Số 25, Đường Nguyễn Huệ, Quận 4, Thành phố Cần Thơ','2024-11-03'),(163,'/user-avatars/avatar-1714748297883-4264067650553.png','2024-05-03','0893216547','2000-12-12','vuthilan@gmail.com',0,'Vũ','Thị Lan','Vũ Thị Lan','lecturer','Số 35, Đường Phạm Văn Đồng, Quận 6, Thành phố Hồ Chí Minh','2024-11-03'),(164,'/user-avatars/avatar-1714748323390-0882159932959.png','2024-05-03','0905432167','2000-12-12','hoangvanduc@gmail.com',1,'Hoàng','Văn Đức','Hoàng Văn Đức','student','Số 30, Đường Phan Đăng Lưu, Quận 5, Thành phố Hải Phòng','2024-11-03'),(165,'/user-avatars/avatar-1714748361262-7237314625351.png','2024-05-03','0902345678','2000-12-12','dangvangiang@gmail.com',1,'Đặng','Văn Giang','Đặng Văn Giang','lecturer','Số 40, Đường Trần Hưng Đạo, Quận 7, Thành phố Hà Nội','2024-11-03'),(166,'/user-avatars/avatar-1714748393633-0093423359493.png','2024-05-03','0908765432','2000-12-12','dovanghai@gmail.com',1,'Đỗ','Văn Hải','Đỗ Văn Hải','student','Số 50, Đường Phan Chu Trinh, Quận 9, Thành phố Hà Nội','2024-11-03'),(167,'/user-avatars/avatar-1714748428865-2028089272779.png','2024-05-03','0901234567','2000-12-12','ngothikim@gmail.com',0,'Ngô','Thị Kim','Ngô Thị Kim','lecturer','Số 55, Đường Nguyễn Thị Minh Khai, Quận 10, Thành phố Hồ Chí Minh','2024-11-03'),(168,'/user-avatars/avatar-1714748459321-8764550895271.png','2024-05-03','0906543210','2000-12-12','hoangthimy@gmail.com',0,'Hoàng','Thị Mỹ','Hoàng Thị Mỹ','student','Số 65, Đường Bạch Đằng, Quận 12, Thành phố Cần Thơ','2024-11-03'),(169,'/user-avatars/avatar-1714748489478-3546218395530.png','2024-05-03','0902109876','2000-12-12','hieuthimai@gmail.com',0,'Hiếu','Thị Mai','Hiếu Thị Mai','student','Số 75, Đường Trần Não, Quận Tân Bình, Thành ph','2024-11-03'),(170,'/user-avatars/avatar-1714748520784-2847250029553.png','2024-05-03','0895678901','2000-12-12','phanvannam@gmail.com',1,'Phan','Văn Nam','Phan Văn Nam','lecturer','Số 70, Đường Nguyễn Công Trứ, Quận Gò Vấp, Thành phố Hồ Chí Minh','2024-11-03'),(171,'/user-avatars/avatar-1714748617233-4075435568206.png','2024-05-03','0901234567','2000-12-12','vuongvanminh@gmail.com',1,'Vương','Văn Minh','Vương Văn Minh','student','Số 90, Đường Phan Huy Ích, Quận 3, Thành phố Hồ Chí Minh','2024-11-03'),(172,'/user-avatars/avatar-1714748647705-5535903286076.png','2024-05-03','0897890123','2000-12-12','nguyenthihuong@gmail.com',0,'Nguyễn','Thị Hương','Nguyễn Thị Hương','student','Số 85, Đường Đinh Tiên Hoàng, Quận Thủ Đức, Thành phố Hồ Chí Minh','2024-11-03'),(173,'/user-avatars/avatar-1714748707371-9963686445602.png','2024-05-03','0908123456','2000-12-12','tranthihong@gmail.com',0,'Trần','Thị Hồng','Trần Thị Hồng','student','Số 12, Đường Trần Hưng Đạo, TP. Hồ Chí Minh','2024-11-03'),(174,'/user-avatars/avatar-1714748736019-8580630761927.png','2024-05-03','0907554321','2000-12-12','nguyenthimai@gmail.com',0,'Nguyễn','Thị Mai','Nguyễn Thị Mai','student','Số 23, Đường Nguyễn Du, TP. Hải Phòng','2024-11-03'),(175,'/user-avatars/avatar-1714748771820-5367543864770.png','2024-05-03','0918234567','2000-12-12','dangthihuong@gmail.com',0,'Đặng','Thị Hương','Đặng Thị Hương','student','Số 36, Đường Trần Phú, TP. Hà Nội','2024-11-03'),(177,'/user-avatars/avatar-1714748830119-2818889107531.png','2024-05-03','0908123456','2000-12-12','dothingoc@gmail.com',0,'Đỗ','Thị Ngọc','Đỗ Thị Ngọc','student','Số 17, Đường Phạm Văn Đồng, TP. Hồ Chí Minh','2024-11-03'),(178,'/user-avatars/avatar-1714748860870-8060840678955.png','2024-05-03','0908123456','2000-12-12','tranthingan@gmail.com',0,'Trần','Thị Ngân','Trần Thị Ngân','lecturer','Số 88, Đường Nguyễn Huệ, TP. Hồ Chí Minh','2024-11-03'),(179,'/user-avatars/avatar-1714748890871-6190421643048.png','2024-05-03','0919345678','2000-12-12','levanhoang@gmail.com',1,'Lê','Văn Hoàng','Lê Văn Hoàng','lecturer','Số 54, Đường Phan Đăng Lưu, TP. Hải Phòng','2024-11-03'),(180,'/user-avatars/avatar-1714748920129-5680620142510.png','2024-05-03','0918432657','2000-12-12','ngovanphuoc@gmail.com',1,'Ngô','Văn Phước','Ngô Văn Phước','student','Số 63, Đường Lý Thường Kiệt, TP. Đà Nẵng','2024-11-03'),(181,'/user-avatars/avatar-1714748949571-6112539543500.png','2024-05-03','0907554321','2000-12-12','nguyenthihanh@gmail.com',0,'Nguyễn','Thị Hạnh','Nguyễn Thị Hạnh','student','Số 24, Đường Lê Lai, TP. Hồ Chí Minh','2024-11-03'),(182,'/user-avatars/avatar-1714748986521-1848659149976.png','2024-05-03','0918234567','2000-12-12','dangthithanh@gmail.com',0,'Đặng','Thị Thanh','Đặng Thị Thanh','student','Số 15, Đường Nguyễn Huệ, TP. Hà Nội','2024-11-03'),(183,'/user-avatars/avatar-1714749017444-1069888256366.png','2024-05-03','0909345678','2000-12-12','hoangvanminh@gmail.com',1,'Hoàng','Văn Minh','Hoàng Văn Minh','lecturer','Số 21, Đường Lý Thường Kiệt, TP. Hải Phòng','2024-11-03'),(186,'/user-avatars/avatar-1714757660813-5700570239.png','2024-05-04','0919345678','2000-05-03','nguyenvantu@gmail.com',1,'Nguyễn','Văn Tú','Nguyễn Văn Tú',NULL,'Số 56, Đường Lê Lợi, Quận 3, TP. Hà Nội',NULL),(188,'/user-avatars/avatar-1714757669393-1873362573.png','2024-05-04','0907554321','1997-10-27','levantuan@gmail.com',0,'Lê','Văn Tuấn','Lê Văn Tuấn',NULL,'Số 23, Đường Nguyễn Du, Quận Hai Bà Trưng, TP. Hà Nội',NULL),(189,'/user-avatars/avatar-1714757682510-1952484866.png','2024-05-04','0918234567','1999-10-27','hoangthihuong@gmail.com',0,'Hoàng','Thị Hương','Hoàng Thị Hương',NULL,'Số 36, Đường Trần Phú, Quận Hai Bà Trưng, TP. Hà Nội',NULL),(190,'/user-avatars/avatar-1714757692369-6427366686.png','2024-05-04','0909345678','1999-10-26','dangvanduc@gmail.com',1,'Đặng','Văn Đức','Đặng Văn Đức',NULL,'Số 42, Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh',NULL),(191,'/user-avatars/avatar-1714757700445-7275109741.png','2024-05-04','0908123456','2000-09-26','buithihanh@gmail.com',0,'Bùi','Thị Hạnh','Bùi Thị Hạnh',NULL,'Số 17, Đường Phạm Văn Đồng, Quận Thanh Xuân, TP. Hà Nội',NULL),(194,'/user-avatars/avatar-1714757719164-3717817040.png','2024-05-04','0906789123','1992-09-26','phamvanhien@gmail.com',1,'Phạm','Văn Hiển','Phạm Văn Hiển',NULL,'Số 63, Đường Lý Thường Kiệt, Quận Hai Bà Trưng, TP. Hà Nội',NULL),(202,'/user-avatars/avatar-1716656999736-8004035320077.png','2024-05-25','0812345678','2000-12-12','felicityegloff@gmail.com',0,'Tran','Lan Anh','Tran Lan Anh','student','Tp HCM','2024-11-25');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lib_db'
--

--
-- Dumping routines for database 'lib_db'
--
/*!50003 DROP FUNCTION IF EXISTS `getAvailableBookQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getAvailableBookQuantity`(book_detail_id INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE available_book_num int DEFAULT 0;
	select count(book_id) into available_book_num from books
		where status = 1 and books.book_detail_id = book_detail_id;
  RETURN available_book_num;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBorrowingBookQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getBorrowingBookQuantity`(reader_id INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE amount_book int DEFAULT 0;
	select count(bb.book_id) into amount_book from borrowed_books bb
	where DATE_ADD(bb.borrow_date, INTERVAL 4 DAY) >= CURDATE() and bb.actual_return_date is null and bb.reader_id = reader_id
	group by bb.reader_id;
  RETURN amount_book;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getDept` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getDept`(_reader_id int) RETURNS int
    DETERMINISTIC
BEGIN
   declare days int DEFAULT 0;
   declare fine int DEFAULT 0;
   declare ammount_collected int DEFAULT 0;
	select sum(
	CASE 
		WHEN actual_return_date is null
		THEN DATEDIFF(curdate(), return_date) 
		ELSE DATEDIFF(actual_return_date, return_date)
	END
	) into days from borrowed_books
	where return_date < curdate() and reader_id = _reader_id
	group by reader_id;
    
    
	set fine := days * 1000;
    
    select sum(amount_collected) into ammount_collected from fine_management
	where reader_id = _reader_id;
    
    return fine - ammount_collected;
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getOverdueBookQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getOverdueBookQuantity`(reader_id int) RETURNS int
    DETERMINISTIC
BEGIN
		declare quantity int unsigned DEFAULT 0;
		select count(borrow_id) into quantity from borrowed_books
		where return_date < curdate() and actual_return_date is null and borrowed_books.reader_id = reader_id;
		return quantity;
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getReadsOfBookDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getReadsOfBookDetail`(book_detail_id INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE _reads int DEFAULT 0;
	select count(bd.book_detail_id) into _reads from borrowed_books bb
	inner join books b on bb.book_id = b.book_id
	inner join book_detail bd on bd.book_detail_id = b.book_detail_id
	where bd.book_detail_id = book_detail_id
	group by bd.book_detail_id;
  RETURN _reads;
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getTotalOfBookDetail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getTotalOfBookDetail`(book_detail_id INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE total_book int DEFAULT 0;
	select count(book_id) into total_book from books
		where books.book_detail_id = book_detail_id;
  RETURN total_book;
   END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 12:00:17
