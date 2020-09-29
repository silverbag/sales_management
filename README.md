# README
# sales_management(h1)

このツールはsalesforceなどを導入する際にネックとなるフェーズ管理にスムーズに移行できるように
salesforceの補助的役割を持っている

this tool helps to smoothly transition to salesforce.
which has bottleneck because salesforce manages customer in phase.
most japanease company manages customer in different method.


* Description
既存SaaSソフトウェア(salesforce)は顧客が営業フェーズによる管理になっており慣れないと使いづらい。
また新規担当エリアや新規社員にとって既存顧客の情報が頭に入っていない状態で営業を行うとフェーズ意外の顧客について忘れがちになってしまう。
そのため基本ベースはsalesforceで管理しつつ、サブ的要素としてsalesforceを補助できるソフトウェアがあれば嬉しいなと思い開発した。

salesforce is difficult to use a japanease company.
because japanease sales team has different sales management.
this　tool is a auxiliary role to salesforce.
it is possible to use salesforce smoothly japanease sales team.

* Usage
とてもシンプルな使い方。
顧客登録から重要な顧客を登録しコメントを残す。
基本的にはsalesforceによりフェーズ管理をしていくのでその中でも別に記録しておきたいことや上司に報告するまでもないことなどを記録する。

it is bery simple to use.
register important customer from customer register botton and leave comment.

* Requirement
ruby 


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
