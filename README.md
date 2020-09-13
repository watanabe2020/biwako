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

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| user              | references | null: false, foreign_key: true |
| place             | references | null: false, foreign_key: true |
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
| text   | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
