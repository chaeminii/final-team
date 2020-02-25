# 실시간 중고 경매 사이트

## 개요

사용자가 중고물품을 경매형식으로 판매, 구매하고 실시간으로 물건상태를 확인하며 거래할 수 있는 사이트입니다.

## 주요기술

* JAVA, Spring
* HTML, CSS, BootStrap, JavaScript, jQuery
* MySQL

## 사용 협업 Tool

* GitHub, Source Tree, Trello

## ERD

![](profile_images/erdd.PNG)

## 나의 역할

### DB Table 설계

### AJAX를 활용하여 한페이지에 기능 구현

### 거래 내역/후기 화면 설계

### 거래 내역/후기

* 판매내역 - 등록, 거래 중, 거래완료, 거래 취소/신고, 유찰 분류
* 구매내역 - 입찰, 거래 중, 거래완료, 거래 취소/신고 분류
* 후기 - 등록, 수정, 삭제, 별점, 무한페이징

## 거래내역

### 판매내역

![](profile_images/sale.gif)
* 판매하기위해 등록한 게시글의 상태에 따라 게시글 분류

### 거래내역

![](profile_images/purchase.gif)
* 구매하기위해 입찰한 게시글의 상태에 따라 게시글 분류

### 거래완료

![](profile_images/completion.gif)
* 거래완료 처리를 하면 상태변경

### 거래 신고/취소

![](profile_images/cance_report.gif)
* 거래 신고/취소 처리를 하면 상태변경

## 후기

### 후기목록
![](profile_images/list.gif)
* 작성하거나 받은 후기를 등록순, 별점 오름차순/내림차순 기준으로 정렬

### 후기등록
![](profile_images/insert1.gif)
![](profile_images/insert2.gif)
* summernote를 사용하여 사진을 등록해 후기게시글을 작성하고 별점등록

### 후기수정

![](profile_images/update.gif)
* 이미 등록된 후기의 별점과 제목, 내용을 수정

### 후기삭제

![](profile_images/delete.gif)
* 등록된 후기를 삭제
