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

### User

| Column   | Type   | Options     |
| name   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| position   | string | null: false |

### Association

- has_many :comments

## lead テーブル

| Column            | Type   | Options     |
| customer_name     | string | null: false |
| company           | string | null: false |
| position          | string   | null: false |

- belongs_to :comments

## comment テーブル

| Column            | Type     | Options     |
| text          | string       | null: false |
| user_id       | references   | foreign_key: true |
| lead_id       | references   | foreign_key: true |

- belongs_to :user
- belongs_to :lead