-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-24 10:05:11.992




-- tables
-- Table chitiethoadon
CREATE TABLE chitiethoadon (
    chitiethoadon_id int    NOT NULL ,
    sanpham_id int    NOT NULL ,
    hoadon_id int    NOT NULL ,
    loaisanpham_id int    NOT NULL ,
    soluongmua int    NOT NULL ,
    khuyenmai varchar(50)    NOT NULL ,
    baohanh int    NOT NULL ,
    CONSTRAINT chitiethoadon_pk PRIMARY KEY (chitiethoadon_id)
);

-- Table hoadon
CREATE TABLE hoadon (
    hoadon_id int    NOT NULL ,
    ngaymua timestamp    NOT NULL ,
    khachhang_id int    NOT NULL ,
    CONSTRAINT hoadon_pk PRIMARY KEY (hoadon_id)
);

-- Table khachhang
CREATE TABLE khachhang (
    khachhang_id int    NOT NULL ,
    ten varchar(50)    NOT NULL ,
    email varchar(30)    NOT NULL ,
    phone int    NOT NULL ,
    CONSTRAINT khachhang_pk PRIMARY KEY (khachhang_id)
);

-- Table loaisanpham
CREATE TABLE loaisanpham (
    loaisanpham_id int    NOT NULL ,
    ten varchar(20)    NOT NULL ,
    CONSTRAINT loaisanpham_pk PRIMARY KEY (loaisanpham_id)
);

-- Table sanpham
CREATE TABLE sanpham (
    sanpham_id int    NOT NULL ,
    loaisanpham_id int    NOT NULL ,
    ten varchar(30)    NOT NULL ,
    masp varchar(30)    NOT NULL ,
    mota varchar(30)    NOT NULL ,
    CONSTRAINT sanpham_pk PRIMARY KEY (sanpham_id)
);





-- foreign keys
-- Reference:  chitiethoadon_hoadon (table: chitiethoadon)


ALTER TABLE chitiethoadon ADD CONSTRAINT chitiethoadon_hoadon FOREIGN KEY chitiethoadon_hoadon (hoadon_id)
    REFERENCES hoadon (hoadon_id);
-- Reference:  chitiethoadon_sanpham (table: chitiethoadon)


ALTER TABLE chitiethoadon ADD CONSTRAINT chitiethoadon_sanpham FOREIGN KEY chitiethoadon_sanpham (sanpham_id)
    REFERENCES sanpham (sanpham_id);
-- Reference:  hoadon_khachhang (table: hoadon)


ALTER TABLE hoadon ADD CONSTRAINT hoadon_khachhang FOREIGN KEY hoadon_khachhang (khachhang_id)
    REFERENCES khachhang (khachhang_id);
-- Reference:  sanpham_loaisanpham (table: sanpham)


ALTER TABLE sanpham ADD CONSTRAINT sanpham_loaisanpham FOREIGN KEY sanpham_loaisanpham (loaisanpham_id)
    REFERENCES loaisanpham (loaisanpham_id);



-- End of file.

