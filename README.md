# RECTURE（アプリケーション名）
 
”RECTURE” = "RE（もう一度）"+ "LECTURE（授業）" 

学校での授業の後に家でも授業に近い形で学習することができるwebアプリケーションです。

# HOW TO USE 
生徒は授業で使われたPowerPointやKeyNoteのスライドを、URLからもう一度見ることができる  
<img width="600" alt="スクリーンショット 2020-11-08 16 30 28" src="https://user-images.githubusercontent.com/70629162/98459618-e0ed3e00-21df-11eb-8a80-61adb570f1a4.png">
  
投稿されたメッセージをクリックすると、そのメッセージの質問ページに遷移する。  
生徒は他の生徒がした質問に共感ボタンを押すことで意思を表示できる。  
<img width="600" alt="スクリーンショット 2020-11-08 17 11 07" src="https://user-images.githubusercontent.com/70629162/98460210-7dfea580-21e5-11eb-9578-4ba551e55d75.png">　　
  
質問ページ投稿された質問をクリックすると、回答ページに遷移する。  
質問に回答できる生徒がいれば回答する。質問した生徒は問題が解決した場合、解決ボタンを押す。
<img width="600" alt="スクリーンショット 2020-11-08 17 24 45" src="https://user-images.githubusercontent.com/70629162/98460398-79d38780-21e7-11eb-9861-18e6ca571fa4.png">


# Features
### １．匿名質問  
生徒が投稿に対して質問する際、どの生徒が質問をしたのか生徒は分からない
  
  
### ２．共感ボタン  
他の生徒がした質問に対して、共感ボタンを押すことで、何人の生徒が同じような疑問を持っているのか把握できる
  
  
### ３．教員のみが持つ特権    
◯ルーム作成・削除  
◯生徒がした投稿を消すことができる    
◯どの生徒が質問をしたのか分かる  
  
  
# Requirement
 
"hoge"を動かすのに必要なライブラリなどを列挙する
 
* huga 3.5.2
* hogehuga 1.0.2
 
# Installation
 
Requirementで列挙したライブラリなどのインストール方法を説明する
 
```bash
pip install huga_package
```
 
# Usage
 
DEMOの実行方法など、"hoge"の基本的な使い方を説明する
 
```bash
git clone https://github.com/hoge/~
cd examples
python demo.py
```
 
# Note
 
質問された内容に、他の生徒が答えて、その結果解決された場合には
解決と表示されるよう今現在JavaScriptで実装していますので
中途半端な形にはなっていますが、今後完成させる予定です。
 
# Author
 
作成情報を列挙する
 
* 川勝基広
* 転職活動中（TechCamp卒業生）
* kawakatu1227@gmail.com
 
 
 
概要
学校教育の現場で使うことを想定して作りました。内容は、教員が授業で用いた教材（自作のPowerPointのスライドなど）を投稿することで、生徒はそれをいつでも確認し、復習することができる。そして、それぞれの投稿にコメント（質問）ができるが、機能として重要なのが匿名質問です。ルームでの普通の投稿は投稿者の名前が表示されます。しかし、コメントはユーザー名が表示されない仕様になっています。

【具体的な使用方法】
１．ユーザー登録時に”生徒”か”教員”かを選び、名前、学年、クラス、番号を入力し登録する。
２．教員のみがルームを作成し、生徒を各授業ごとのルームに招待できる。
３．教員が毎回の授業後に、その授業で使用したPowerPointやKeynoteのスライドをファイルとして貼り付けることで
　　生徒が授業の内容をもう一度確認することができる。
４．ルームの中では教員・生徒共にメッセージ投稿が可能

詳細の説明

用途






# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| name          | string  | null: false |
| email         | string  | null: false |
| password      | string  | null: false |
| genre         | string  | null: false |
| grade         | integer | null: false |
| class_number  | integer | null: false |
| student_number | integer | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages


## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages


## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
