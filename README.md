# RECTURE（アプリケーション名）
 
”RECTURE” = "RE（再び）"+ "LECTURE（授業）" 
  
  
# 本番環境
URL：https://recture.herokuapp.com/  

【ユーザー認証】
user : admin　
pass : 2222 
  
【動作確認用ユーザー】
①ユーザータイプ＝教員
Email：kawakatu12271@gmail.com  
Password：aaaa111

②ユーザータイプ＝生徒
Email(生徒用)：kawakatu1228@gmail.com  
Password：aaaa111
# 制作背景
教員をやっていた頃、PowerPointで授業内容のスライドを作成し、プレゼン形式で授業を行っていました。
そのスライドを、家で復習したい時や授業を欠席した時に、家でも授業のスライドが見れるようにしたいと思っていました。
そしてそれに加て、教員が管理できる状態で生徒同士が質問し教え合えるネット上の空間があればベストである思っていたのを
今回形にしてみました。

ラーニングピラミッドによると、学校で授業を受けることは学習定着率５％程度とほとんど効果がない一方で、誰かに教えることを通しての学習定着率は９０％以上であることから、学習の鍵となるのは「生徒同士の教え合い」であると思っています。その教え合いが活発化するように複数の仕組みを当アプリケーションには組み込んでおります。
<div style="text-align: center;">
<img width="500" alt="スクリーンショット 2020-11-23 14 12 28" src="https://user-images.githubusercontent.com/70629162/99930848-ed53c800-2d95-11eb-9136-8683e8f31c88.png"></div>
  
<br>
<h1>アプリケーションの説明</h1>
  
<h1>message（投稿）→ comment（質問）→ response（回答）</h1>  
<br>  
<h3>☑message（投稿）</h3>
教員は授業後、専用のルームにて授業で使ったスライドのURLをメッセージとして投稿する。

生徒はURLから検索し、復習のため家でもスライドを閲覧できる。
<br>  
<img width="400" alt="スクリーンショット 2021-01-12 12 26 29" src="https://user-images.githubusercontent.com/70629162/104265919-f75e9100-54d1-11eb-9d8c-938e3ca32223.png">
<img width="120" alt="スクリーンショット 2021-01-12 12 25 16" src="https://user-images.githubusercontent.com/70629162/104265566-3c35f800-54d1-11eb-80ad-86573c1dc3a9.png">
<img width="400" alt="スクリーンショット 2021-01-12 12 16 48" src="https://user-images.githubusercontent.com/70629162/104265024-0e9c7f00-54d0-11eb-925c-72d4af30f67e.png">  
<br>  
<br>  
<h3>☑comment（質問）</h3>
投稿されたメッセージをクリックすると、そのメッセージに対する質問ページに遷移する。
生徒は授業内容について質問を投稿することができる。この時、他の生徒にはどの生徒が質問したのか、投稿者名を匿名表示にすることで分からなくしている。
ルームに入っている生徒は、他の生徒から出された質問に対して同じ思いを持っている場合には共感ボタンを押すことができる。  
<br>
<img width="1400" alt="スクリーンショット 2021-01-12 14 08 45" src="https://user-images.githubusercontent.com/70629162/104272220-01878c00-54e0-11eb-8cae-3449b72f3dbd.png">
<br>  
<br>  
<h3>☑response（回答）</h3>
他の生徒によって投稿された質問に対する回答をすることができる。この時質問と同じように回答者の名前も匿名表示になる。
<img width="1400" alt="スクリーンショット 2021-01-12 14 04 47" src="https://user-images.githubusercontent.com/70629162/104271906-51198800-54df-11eb-9ba3-dc65aa810b64.png">
  
  
# こだわり
<h2>匿名質問</h2>
高校教師として授業を行ってきた中で生徒が質問を積極的にできない理由に気づきました。それは「自分のした発言が的外れだったら他の生徒に笑われるのではないか」という他人からの見え方を気にしすぎることにあるということです。実際に、教員と生徒の一対一の場合には積極的に質問をする生徒の数は急増します。このように全ての生徒が積極的に授業の内容について質問をし、他の生徒は回答をするという環境を作りたいというその一心から、匿名質問という機能をこのアプリケーションに付けました。
<img width="585" alt="スクリーンショット 2021-01-12 17 14 17" src="https://user-images.githubusercontent.com/70629162/104287373-b24e5500-54f9-11eb-9335-717f54f37ee2.png">

具体的な機能としては、comment（質問）と質問へのresponse（回答）をした際、投稿者の名前が匿名での表示になるため、誰が質問・回答をしたのか、他の生徒は一切分かりません。その結果、本当は質問したいことを周りの目を気にすることなく質問できるようになるはずです。
<img width="585" alt="スクリーンショット 2021-01-12 17 24 43" src="https://user-images.githubusercontent.com/70629162/104288377-1291c680-54fb-11eb-8a26-c8a197f3d198.png">


  
<h2>レベルアップ</h2>
  
  
<h2>学習の記録</h2>
  
  

    
# 動作確認の手順
１．Sign Upをクリックし、”生徒”としてユーザー登録をする。  
２．もう一度、Sign Upを次は”教員”として行う。  
３．教員としてログインできたら、『部屋を作る』をクリックし、部屋作成ページに遷移。  
４．ルーム名を記入後、部屋に招待したいユーザーをクリックし、"create room"をクリック。  
５．トップページ作成した部屋の名前が表示されているので、それをクリック。  
６．メッセージ入力欄があるので、文字を打ち込み投稿する。  
７．投稿されたメッセージをクリックすると、質問ページに遷移。  
８．質問ページの投稿された質問をクリックすると、その質問に対してのレスポンスページに遷移。  
  
# 特記事項
 ２０２１年１月現在もさらなる利便性を求めアップデート中。
<br>  
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
