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

- has_many :leads

## lead テーブル

| Column            | Type   | Options     |
| customer_name     | string | null: false |
| company           | string | null: false |
| position          | text   | null: false |

- belongs_to :user

<!-- ## phase テーブル

| Column            | Type   | Options     |
| prospect          | string | null: false |
| investigation     | string | null: false |
| proposalmade      | text   | null: false |
| negociation       | text   | null: false |
| closed            | text   | null: false |

- belongs_to :user -->

 