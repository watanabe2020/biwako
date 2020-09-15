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

| Column            | Type       | Options                        |      |
| ----------------- | ---------- | ------------------------------ | ---- |
| user              | references | null: false, foreign_key: true |      |
| comment           | string     | null: false                    | ひとこと |
| place             | string     | null: false                    | 場所   |
| weather           | integer    | null: false                    | 天気   |
| wind              | integer    | null: false                    | 風    |
| water temperature | integer    | null: false                    | 水温   |
| wave              | integer    | null: false                    | 波    |
| water quality     | integer    | null: false                    | 水質   |
| aquatic plants    | integer    | null: false                    | 水草   |
| bait              | integer    | null: false                    | ベイト  |


### Association

- belong_to :user
- has_many  :comments

## comment テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |
| text   | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
