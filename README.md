# RECTURE（アプリケーション名）
 
”RECTURE” = "RE（もう一度）"+ "LECTURE（授業）" 

学校での授業の後に家でも授業に近い形で学習することができるwebアプリケーションです。

  
# 制作背景
教員をやっていた頃、毎回の授業で使うPowerPointのスライドを見たいという生徒が多数おり
その問題を解決したかったのが一番の理由です。加えて、家でそのスライドを見ながら復習し
匿名での質問ができ、分からないことがあれば生徒同士で教え合える、教員の目の行き届く
ネット上の空間があれば学習の定着を高い水準で見込めると期待し制作しました。
    
  
# アプリケーションの説明 
生徒は授業で使われたPowerPointやKeyNoteのスライドを、URLからもう一度見ることができる  
<br>
<img width="800" alt="スクリーンショット 2020-11-08 16 30 28" src="https://user-images.githubusercontent.com/70629162/98459618-e0ed3e00-21df-11eb-8a80-61adb570f1a4.png">
<br>
<br>
投稿されたメッセージをクリックすると、そのメッセージの質問ページに遷移する。  
生徒は他の生徒がした質問に共感ボタンを押すことで意思を表示できる。  
<br>
<img width="800" alt="スクリーンショット 2020-11-08 17 11 07" src="https://user-images.githubusercontent.com/70629162/98460210-7dfea580-21e5-11eb-9578-4ba551e55d75.png">
<br>  
質問ページ投稿された質問をクリックすると、回答ページに遷移する。  
質問に回答できる生徒がいれば回答する。質問した生徒は問題が解決した場合、解決ボタンを押す。
<br>  
<img width="800" alt="スクリーンショット 2020-11-08 17 24 45" src="https://user-images.githubusercontent.com/70629162/98460398-79d38780-21e7-11eb-9861-18e6ca571fa4.png">

# 本番環境
URL：https://recture.herokuapp.com/  
user : admin　
pass : 2222 
  
ログインEmail(教員用)：test-taro@gmail.com  
ログインpassword：test1212
  
  
# 特徴
### １．匿名質問  
生徒が投稿に対して質問する際、どの生徒が質問をしたのか生徒は分からない
  
  
### ２．共感ボタン  
他の生徒がした質問に対して、共感ボタンを押すことで、何人の生徒が同じような疑問を持っているのか把握できる
  
  
### ３．教員のみが持つ特権    
◯ルーム作成・削除  
◯生徒がした投稿を消すことができる    
◯どの生徒が質問をしたのか分かる  
    
# 動作確認の手順
１．Sign Upをクリックし、”生徒”としてユーザー登録をする。  
２，もう一度、Sign Upを次は”教員”として行う。  
３．教員としてログインできたら、『部屋を作る』をクリックし、部屋作成ページに遷移。  
４．ルーム名を記入後、部屋に招待したいユーザーをクリックし、"create room"をクリック。  
５．トップページ作成した部屋の名前が表示されているので、それをクリック。  
６．メッセージ入力欄があるので、文字を打ち込み投稿する。  
７．投稿されたメッセージをクリックすると、質問ページに遷移。  
８．質問ページの投稿された質問をクリックすると、その質問に対してのレスポンスページに遷移。  
  
# 特記事項
 
◯質問された内容に、他の生徒が答えて、その結果解決された場合には解決と表示されるよう今現在JavaScriptで実装していますので中途半端な形にはなっていますが、今後完成させる予定です。
<br>  
◯本番環境でのみCSSが反映されていない箇所がありますが、 動作確認に問題はありません。
 
   
# 作成者情報
  
* 川勝基広
* 転職活動中 2020年 11月開始（TechCamp卒業生）
* kawakatu1227@gmail.com
 
  
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
| student_number| integer | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages
- has_many :comments
- has_many :responses
- has_many :agrees, dependent: :destroy




## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages, dependent: :destroy


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
| content | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
- has_many :comments
- has_one_attached :image


## comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | string     | null: false                    |
| user       | references | null: false, foreign_key: true |
| message    | references | null: false, foreign_key: true |

### Association

- belongs_to :message
- belongs_to :user
- has_many :agrees, dependent: :destroy
- has_many :responses, dependent: :destroy


## agrees テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| comment    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :comment


## responses テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| response_text | string     | null: false                    |
| user          | references | null: false, foreign_key: true |
| comment       | references | null: false, foreign_key: true |

### Association

- belongs_to :comment
- belongs_to :user
