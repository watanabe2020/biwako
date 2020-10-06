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

# タイトル
 
琵琶湖の最新情報を知るためのアプリケーション

## 制作背景
バスフィッシングは、非常にゲーム性の高い釣りのジャンルで、環境の情報が重要な要素になっています。しかし、琵琶湖などの広大なフィールドは環境が変わりやすく、現地の状況を知るためにはその場所に行くしかありませんでした。このような問題を解決するために、現地にいる人が、詳細な環境を投稿でき共有ばしフィッシングをサポートできるアプリを制作しました。
 
 
## 機能
 
- ログイン機能
- 画像、情報投稿機能
- コメント機能
- いいね機能
 
他の機能はこちらを参照して下さい。`https://biwako.herokuapp.com/`.

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
2. 
 
## 作者
 
[@RyouichiWatanabe]mail to:wwwatapon@yahoo.co.jp
 



## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
|          |        |             |

### Association

- has_many :items
- has_many :comments

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

## comment テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
| text   | string     | null: false                    |
|        |            |                                |

### Association

- belongs_to :item
- belongs_to :user
