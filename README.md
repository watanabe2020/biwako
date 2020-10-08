

# タイトル
 
### 琵琶湖の最新情報を知るためのアプリケーション
<!-- ![aicon2](https://user-images.githubusercontent.com/69565519/95170939-23da8100-07f0-11eb-870b-df2bdeea998a.png) issuesにアップするやり方-->
<div style="text-align: center;">
<img src="https://user-images.githubusercontent.com/69565519/95170939-23da8100-07f0-11eb-870b-df2bdeea998a.png" width="30%">
</div>

## URL
SAISIN `https://biwako.herokuapp.com/`

## 制作背景
釣れた結果を知るのではなく、釣れる環境をみんなで共有するアプリケーション

バスフィッシングは、非常にゲーム性の高いジャンルで、情報が釣果を左右する、重要な要素になっています。しかし、琵琶湖などの広大なフィールドは環境が変わりやすく、場所の環境を知るためにはその場所に行くしかありませんでした。このような問題を解決するために、詳細な環境を投稿でき、共有るようなアプリを制作しました。

## SAISINの特徴
<div style="text-align: center;">
<img src="https://user-images.githubusercontent.com/69565519/95426759-667f9300-0981-11eb-8249-0c75fd17fb9f.jpg" width="100%">
</div>

## 全体図
![demo](https://gyazo.com/a5cd6adb294b707d2949cd1c8b235e9b/raw)

## 機能
 
- ログイン機能
- 画像、情報投稿機能
- コメント機能
- いいね機能
 ![demo](https://gyazo.com/001339e4a7edc931908c040e28a383b7/raw)

## 使用技術(開発環境)
1. Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello /AWS / S3 / illustratuer/photshop

## テスト用アカウント
 
1. test@gmail.com
2. test1234

## デプロイ
 
1. heroku
2. 画像の保存にAWS S3を使用 
 
## これからの実装
 
1. その日だけ投稿、表示できるページ 
 
## 作者
 
[@RyouichiWatanabe]mail to:wwwatapon@yahoo.co.jp
 

## DB設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :items
- has_many :comments
- has_many :favorites, dependent: :destroy
- has_many :favorites_users, through: :favorites, source: :item
## items テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| user              | references | null: false, foreign_key: true |
| comment           | string     | null: false                    |
| place             | string     | null: false                    |
| weather           | integer    | null: false                    |
| wind              | integer    | null: false                    |
| water temperature | integer    | null: false                    |
| wave              | integer    | null: false                    |
| water quality     | integer    | null: false                    |
| aquatic plants    | integer    | null: false                    |
| bait              | integer    | null: false                    |

### Association

- belong_to :user
- has_many  :comments
- has_many :favorites, dependent: :destroy
- has_many :favorites_items, through: :favorites, source: :user
## comment テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
| text   | string     | null: false                    |


### Association

- belongs_to :item
- belongs_to :user

## favorite テーブル

| Column | Type    | Options |
| ------ | ------- | ------- |
| user   | integer |         |
| item   | integer |         |

### Association
- belongs_to :user
- belongs_to :item
- validates_uniqueness_of :item_id, scope: :user_id