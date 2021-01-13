# RECTURE（アプリケーション名）
 
”RECTURE” = "RE（再び）"+ "LECTURE（授業）"   
<br>   
   
   
  
# 本番環境
URL：https://recture.herokuapp.com/  

【ユーザー認証】  
user : admin　
pass : 2222 
  
【動作確認用ログインユーザー】  
①ユーザータイプ＝教員  
Email：kawakatu12271@gmail.com  
Password：aaaa111

②ユーザータイプ＝生徒  
Email(生徒用)：kawakatu12272@gmail.com  
Password：aaaa111  
<br>  
  
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
生徒は授業内容について質問を投稿することができる。この時、他の生徒にはどの生徒が質問したのか、投稿者名を匿名表示にすることで分かりません。
ルームに入っている生徒は、他の生徒から出された質問に対して同じ思いを持っている場合には共感ボタンを押すことができる。  
<br>
<img width="900" alt="スクリーンショット 2021-01-12 14 08 45" src="https://user-images.githubusercontent.com/70629162/104272220-01878c00-54e0-11eb-8cae-3449b72f3dbd.png">
<br>  
<br>  
<h3>☑response（回答）</h3>
他の生徒によって投稿された質問に対する回答をすることができる。この時質問と同じように回答者の名前も匿名表示になる。
<img width="900" alt="スクリーンショット 2021-01-12 14 04 47" src="https://user-images.githubusercontent.com/70629162/104271906-51198800-54df-11eb-9ba3-dc65aa810b64.png">  
  
  
<br>  
<h1>diary（学習の記録）→ reply（教員コメント）→ data（学習データ）</h1> 
<br>  
<h3>☑diary（学習の記録）</h3>
毎日学習後に記録を書くことで、生徒は自分の学習について向き合うことができる。  
  
そして、教員は各生徒がどのような学習していて、どのような悩みを持っているのか把握できる。
<img width="900" alt="スクリーンショット 2021-01-12 21 03 03" src="https://user-images.githubusercontent.com/70629162/104312354-d588fc80-5519-11eb-9358-41276b1d03ad.png">

<h3>☑reply（教員コメント）</h3>
生徒が書いた学習の記録に対して教員がコメントをすることによって、教員が毎回確認していることを生徒に認知させることができる。
<img width="900" alt="スクリーンショット 2021-01-12 21 12 08" src="https://user-images.githubusercontent.com/70629162/104313262-20efda80-551b-11eb-9c6c-a907d66edfb4.png">
  
<h3>☑data（学習データ）</h3>
学習の記録で記入した学習内容と学習時間をもとにチャートが作成され、生徒が自身の努力を可視化することができる。
<img width="900" alt="スクリーンショット 2021-01-12 21 16 51" src="https://user-images.githubusercontent.com/70629162/104313536-7fb55400-551b-11eb-8af5-c5c2334932db.png">
<img width="900" alt="スクリーンショット 2021-01-12 21 28 59" src="https://user-images.githubusercontent.com/70629162/104314735-31a15000-551d-11eb-8425-ee3cbcabfa16.png">  


<br>  
  
  
# 制作者のこだわり
<h2>☑匿名質問</h2>
高校教師として授業を行ってきた中で生徒が質問を積極的にできない理由に気づきました。それは「自分のした発言が的外れだったら他の生徒に笑われるのではないか」という他人からの見え方を気にしすぎることにあるということです。実際に、教員と生徒の一対一の場合には積極的に質問をする生徒の数は急増します。このように全ての生徒が積極的に授業の内容について質問をし、他の生徒は回答をするという環境を作りたいというその一心から、匿名質問という機能をこのアプリケーションに付けました。
<img width="585" alt="スクリーンショット 2021-01-12 17 14 17" src="https://user-images.githubusercontent.com/70629162/104287373-b24e5500-54f9-11eb-9335-717f54f37ee2.png">

具体的な機能としては、comment（質問）と質問へのresponse（回答）をした際、投稿者の名前が匿名での表示になるため、誰が質問・回答をしたのか他の生徒は一切分かりません。その結果、本当は質問したいことを周りの目を気にすることなく質問できるようになるはずです。
<img width="585" alt="スクリーンショット 2021-01-12 17 24 43" src="https://user-images.githubusercontent.com/70629162/104288377-1291c680-54fb-11eb-8a26-c8a197f3d198.png">
  
  
<h2>☑学習の記録</h2>
日本人が英語習得のために必要と言われている学習時間は３０００時間です。中学〜高校の授業で１０００時間学習をしますが、それでも２０００時間という膨大な量の学習時間が足りていません。そして、ほとんどの高校生はこれまでに授業以外の時間をどれだけ英語に費やしてきたのか把握していません。つまり、あとどのくらい自分は頑張れば習得できるのかゴールが明確でないということです。ゴールがどこなのか不明なマラソンほどやる気が出ないことはないと思います。だからこそ、毎回の自主学習後に記録を付け、英語習得というゴールまでの距離を把握することでモチベーションを高めることができるのではないかと考えています。
<img width="585" alt="スクリーンショット 2021-01-12 20 59 03" src="https://user-images.githubusercontent.com/70629162/104311751-03217600-5519-11eb-8dd5-489011d42a03.png">

<br>    
<br>  
<h2>☑レベルアップ</h2>
高校生はテストの点数やInstagramのいいねの数など些細なことから大きなことまで、「様々なことで自分が優位に立っていたい」や「みんなから認められたい」という姿が顕著に表れており、頻繁に周りと比べることをします。その性質を上手く利用できないかと思いついたのがレベルアップ機能です。comment（質問）, response（回答）, diary（学習の記録）を１つ投稿するごとに１ポイントが生徒に付与されます。そのポイントを貯めることで生徒のレベルが上がっていきます。生徒はレベルを上げようと、日々多くのcomment（質問）やresponse（回答）をするようになると考えています。
<img width="625" alt="スクリーンショット 2021-01-12 17 56 57" src="https://user-images.githubusercontent.com/70629162/104291979-9483ee80-54ff-11eb-824b-321f0307fed2.png">


  
# 特記事項
※ ２０２１年１月現在もさらなる利便性を求めアップデート中
<br>  
<br> 
   
# 作成者情報
  
* 川勝基広
* 転職活動中 2020年 11月開始（TECH::CAMP 卒業生）
* kawakatu1227@gmail.com
 
  
# README
  
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
- has_many :diaries, dependent: :destroy
- has_many :replies, dependent: :destroy




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

## diaries テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| writing       | string     | null: false                    |
| title         | string     | null: false                    |
| study_content | string     | null: false                    |
| study_time    | integer    | null: false                    |

### Association

- belongs_to :user
- has_one :reply, dependent: :destroy


## replies テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| diary         | references | null: false, foreign_key: true |
| reply_text    | string     | null: false                    |

### Association

- belongs_to :user
- belongs_to :diary
