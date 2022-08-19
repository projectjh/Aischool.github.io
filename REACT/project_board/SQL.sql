CREATE TABLE TB_REVIEW
(
    `REVIEW_IDX`    INT UNSIGNED    NOT NULL    AUTO_INCREMENT, 
    `REVIEW_TITLE`  VARCHAR(30)     NOT NULL, 
    `REVIEW_TXT`    TEXT            NOT NULL, 
    `REVIEW_DATE`   DATETIME        NOT NULL    DEFAULT NOW(), 
    `USER_IDX`      INT UNSIGNED    NOT NULL, 
    `REVIEW_LIKE`   INT UNSIGNED    NOT NULL    DEFAULT 0, 
    `REVIEW_CNT`    INT UNSIGNED    NOT NULL    DEFAULT 0, 
    `REVIEW_FILE`   LONGBLOB        NULL, 
    `REVIEW_THUM`   LONGBLOB        NULL, 
     PRIMARY KEY (REVIEW_IDX)
);

DESC TB_REVIEW;
SELECT * FROM TB_REVIEW;

select * from board_tbl;

-- 더미데이터
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 01', 'REVIEW_TXT 01', NOW(), 01, 01, 01, 'REVIEW_FILE 01', 'REVIEW_THUM 01');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 02', 'REVIEW_TXT 02', NOW(), 02, 02, 02, 'REVIEW_FILE 02', 'REVIEW_THUM 02');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 03', 'REVIEW_TXT 03', NOW(), 03, 03, 03, 'REVIEW_FILE 03', 'REVIEW_THUM 03');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 04', 'REVIEW_TXT 04', NOW(), 04, 04, 04, 'REVIEW_FILE 04', 'REVIEW_THUM 04');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 05', 'REVIEW_TXT 05', NOW(), 05, 05, 05, 'REVIEW_FILE 05', 'REVIEW_THUM 05');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 06', 'REVIEW_TXT 06', NOW(), 06, 06, 06, 'REVIEW_FILE 06', 'REVIEW_THUM 06');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 07', 'REVIEW_TXT 07', NOW(), 07, 07, 07, 'REVIEW_FILE 07', 'REVIEW_THUM 07');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 08', 'REVIEW_TXT 08', NOW(), 08, 08, 08, 'REVIEW_FILE 08', 'REVIEW_THUM 08');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 09', 'REVIEW_TXT 09', NOW(), 09, 09, 09, 'REVIEW_FILE 09', 'REVIEW_THUM 09');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 10', 'REVIEW_TXT 10', NOW(), 10, 10, 10, 'REVIEW_FILE 10', 'REVIEW_THUM 10');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 11', 'REVIEW_TXT 11', NOW(), 11, 11, 11, 'REVIEW_FILE 11', 'REVIEW_THUM 11');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 12', 'REVIEW_TXT 12', NOW(), 12, 12, 12, 'REVIEW_FILE 12', 'REVIEW_THUM 12');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 13', 'REVIEW_TXT 13', NOW(), 13, 13, 13, 'REVIEW_FILE 13', 'REVIEW_THUM 13');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 14', 'REVIEW_TXT 14', NOW(), 14, 14, 14, 'REVIEW_FILE 14', 'REVIEW_THUM 14');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 15', 'REVIEW_TXT 15', NOW(), 15, 15, 15, 'REVIEW_FILE 15', 'REVIEW_THUM 15');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 16', 'REVIEW_TXT 16', NOW(), 16, 16, 16, 'REVIEW_FILE 16', 'REVIEW_THUM 16');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 17', 'REVIEW_TXT 17', NOW(), 17, 17, 17, 'REVIEW_FILE 17', 'REVIEW_THUM 17');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 18', 'REVIEW_TXT 18', NOW(), 18, 18, 18, 'REVIEW_FILE 18', 'REVIEW_THUM 18');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 19', 'REVIEW_TXT 19', NOW(), 19, 19, 19, 'REVIEW_FILE 19', 'REVIEW_THUM 19');
INSERT INTO TB_REVIEW (REVIEW_TITLE, REVIEW_TXT, REVIEW_DATE, USER_IDX, REVIEW_LIKE, REVIEW_CNT, REVIEW_FILE, REVIEW_THUM) VALUES ('REVIEW_TITLE 20', 'REVIEW_TXT 20', NOW(), 20, 20, 20, 'REVIEW_FILE 20', 'REVIEW_THUM 20');
