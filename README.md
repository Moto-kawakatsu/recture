# RECTURE（アプリケーション名）
 
”RECTURE” = "RE（再び）"+ "LECTURE（授業）" 
  
# 制作背景
教員をやっていた頃、PowerPointで授業内容のスライドを作成し、プレゼン形式で授業を行っていました。
そのスライドを、家で復習したい時や授業を欠席した時に、家でも授業のスライドが見れるようにしたいと思っていました。
そしてそれに加て、教員が管理できる状態で生徒同士が質問し教え合えるネット上の空間があればベストである思っていたのを
今回形にしてみました。

ラーニングピラミッドによると、学校で授業を受けることは学習定着率５％程度とほとんど効果がない一方で、誰かに教えることを通しての学習定着率は９０％以上であることから、学習の鍵となるのは「生徒同士の教え合い」であると思っています。その教え合いが活発化するように複数の仕組みを当アプリケーションには組み込んでおります。
<div style="text-align: center;">
<img width="500" alt="スクリーンショット 2020-11-23 14 12 28" src="https://user-images.githubusercontent.com/70629162/99930848-ed53c800-2d95-11eb-9136-8683e8f31c88.png"></div>
  
<br>
# アプリケーションの説明 
# message（スライド投稿） → comment（質問）→ response（回答）  
  
生徒は授業で使われたPowerPointやKeyNoteのスライドを、URLからもう一度見ることができる  
<br>  
<img width="400" alt="スクリーンショット 2021-01-12 12 26 29" src="https://user-images.githubusercontent.com/70629162/104265919-f75e9100-54d1-11eb-9d8c-938e3ca32223.png">
<img width="120" alt="スクリーンショット 2021-01-12 12 25 16" src="https://user-images.githubusercontent.com/70629162/104265566-3c35f800-54d1-11eb-80ad-86573c1dc3a9.png">
<img width="400" alt="スクリーンショット 2021-01-12 12 16 48" src="https://user-images.githubusercontent.com/70629162/104265024-0e9c7f00-54d0-11eb-925c-72d4af30f67e.png">  
<br>  
投稿されたメッセージをクリックすると、そのメッセージの質問ページに遷移する。  
生徒は他の生徒がした質問に同じ思いを持っている場合には共感ボタンを押すことができる。  
<br>
<img width="800" alt="スクリーンショット 2021-01-12 13 43 59" src="https://user-images.githubusercontent.com/70629162/104270672-5e814300-54dc-11eb-967c-9475c1f5d57f.png">



# 本番環境
URL：https://recture.herokuapp.com/  
user : admin　
pass : 2222 
  
Log in Email(教員用)：test-taro@gmail.com  
Log in pass：test1212
  
  
# 特徴
### １．匿名質問  
どの生徒が質問をしたのか他の生徒は分からないようにするため、質問者の名前は「匿名」と表示される。
しかし、教員のみ、誰が質問したのか名前が表示されるので、評価のための記録として残すことができる。 
  
### 生徒の画面での見え方
<img width="1292" alt="スクリーンショット 2020-11-23 14 51 53" src="https://user-images.githubusercontent.com/70629162/99932881-bdf48980-2d9c-11eb-9e45-71c9c1a66fb4.png">

  
### 教員の画面での見え方
<img width="1295" alt="スクリーンショット 2020-11-23 14 59 06" src="https://user-images.githubusercontent.com/70629162/99932806-85ed4680-2d9c-11eb-81f8-6df7b9cb4203.png">


  
### ２．共感ボタン  
他の生徒がした質問に対して、共感ボタンを押すことで、何人の生徒が同じような疑問を持っているのか把握できる。  
これにより、生徒が授業内容のどの部分に疑問を持っているのか、教員はひと目で把握することができるため  
次回以降授業にてその部分の復習を行うなど、生徒の定着度に応じた授業展開を行うことが可能になる。
  
<img width="1296" alt="スクリーンショット 2020-11-23 15 04 24" src="https://user-images.githubusercontent.com/70629162/99933060-41ae7600-2d9d-11eb-8466-eabe9ecb0296.png">


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
   
# 作成者情報
  
* 川勝基広
* 転職活動中 2020年 11月開始（TECH::CAMP 卒業生）
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
