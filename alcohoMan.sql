-- 데이터베이스 생성
CREATE DATABASE alcohoMan;

-- 사용자 생성
CREATE USER alcohoMan@localhost IDENTIFIED BY "1111";

-- 권한 부여
GRANT ALL PRIVILEGES ON alcohoMan.* TO alcohoMan@localhost WITH GRANT OPTION;
FLUSH PRIVILEGES;

GRANT ALL PRIVILEGES ON alcohol_store.* TO 'alcohoMan'@'localhost';


USE alcohoMan;

-- 회원 테이블 생성
CREATE TABLE member (
	id VARCHAR(50) PRIMARY KEY,				-- 아이디 (기본키)
   email VARCHAR(100) NOT NULL UNIQUE,		-- 이메일 (중복 허용 X)
   password VARCHAR(50) NOT NULL,			-- 비밀번호
   name VARCHAR(50) NOT NULL,					-- 이름
   dateOfBirth DATE NOT NULL,					-- 생년월일
   address VARCHAR(200) NOT NULL,			-- 주소
   detailedAddress VARCHAR(200),				-- 상세 주소
   phoneNumber VARCHAR(20)						-- 전화번호
);

-- 게시판 테이블 생성
CREATE TABLE board (
   postNumber INT AUTO_INCREMENT PRIMARY KEY,						-- 게시글 번호 (기본키)
   title VARCHAR(200) NOT NULL,											-- 제목
   author VARCHAR(50) NOT NULL,											-- 작성자
   content VARCHAR(2000) NOT NULL,										-- 내용
   createdDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,		-- 작성일자 (디폴트값: 현재 시간)
   views INT NOT NULL DEFAULT 0,											-- 조회수 (디폴트값: 0)
   answered BOOLEAN NOT NULL DEFAULT FALSE							-- 답변 여부 (디폴트값: False)
);

CREATE DATABASE alcohol_store;

USE alcohol_store;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    alcohol_content DECIMAL(5,2) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT,
    image_url VARCHAR(255)
);

USE alcohol_store;

INSERT INTO products (name, category, alcohol_content, price, description, image_url) VALUES
('Kahlua', 'liqueur', 20.0, 34500, '럼 기반의 멕시코의 커피 리큐르이며 Acolhua(사람들의 집)을 의미합니다.', 'images/kahlua.jpg'),
('Malibu', 'liqueur', 21.0, 30000, '말리부는 바베이도스에서 생산되는 코코넛 향의 럼 기반 리큐르입니다.', 'images/malibu.jpg');

SHOW GRANTS FOR 'alcohoMan'@'localhost';

USE alcohol_store;

SELECT alcohoMan;

DELETE FROM products;

INSERT INTO products (id, name, category, alcohol_content, price, description, image_url) VALUES
(1, 'Kahlua', 'liqueur', 20.0, 34500, '럼 기반의 멕시코의 커피 리큐르이며 Acolhua(사람들의 집)을 의미합니다.', 'images/kahlua.jpg'),
(2, 'Malibu', 'liqueur', 21.0, 30000, '말리부는 바베이도스에서 생산되는 코코넛 향의 럼 기반 리큐르입니다.', 'images/malibu.jpg'),
(3, 'johnniewalke', 'Whisky', 20.0, 42000, '적당한 스모키향과 적당한 과일향과 단맛이 적절하게 어우러져 많은 분들이 좋아하는 제품입니다.', 'images/johnniewalke.jpg'),
(4, 'Glenfiddich', 'Whisky', 40.0, 100500, '정확한 곡물, 사과와 배의 신선한 과일 향, 따뜻하게 구운 맥아, 밝은 바닐라, 피니시에 약간의 시트러스 바이트가 있는 상쾌한 오크. 의심할 여지 없이 스카치 증류의 영원한 고전인 이것은 모든 진지한 술꾼이 잘 알아야 할 위스키입니다.', 'images/Glenfiddich.jpg'),
(5, 'MARTELLVSOP', 'Cognac', 40.0, 180000, '달콤한 과일과 섬세한 나무 향기가 완벽하게 조화를 이루는 꼬냑', 'images/MARTELLVSOP.jpg'),
(6, 'De Gourmont XO', 'Brandy', 40.0, 23000, '구르몽 XO는 기나긴 여운과 우아한 달콤함, 은은한 스파이시함으로 마무리됩니다.', 'images/DeGourmontXO.png');

SHOW GRANTS FOR 'alcohoMan'@'localhost';