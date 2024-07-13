# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
_7.0.0_

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# README

# users_table
|column            |Type       |Options                 |
|name              |string     |null:false              |
|email             |string     |null:false, unique: true|
|encrypted_password|string     |null:false              |

- has_many :projects_users
- has_many :projects, through: :project_users
- has_many :comments

# project_users_table
|column            |Type       |Options                 |
|users             |references |null:false              |
|projects          |references |null:false, foreign_key |

- belongs_to :user
- belongs_to :project


# projects_table
|column            |Type       |Options                 |
|title             |string     |null:false              | # プロジェクト名
|goal              |string     |null:false              | # 達成目標
|date              |date       |null:false              | # 完了予定日

- has_nany :projects_users
- has_many :users, through: :project_users
- has_many :tasks


# tasks_table
|column            |Type       |Options                      |
|title             |string     |null:false                   | # タスク名 
|aim               |string     |null:false                   | # 目標、狙い
|content           |text       |null:false                   | # 実施内容
|date              |date       |null:false                   | # 実施日
|project           |references |null:false, foreign_key: true|

- belongs_to :project
- has_many :comments

# comments_table
|column            |Type       |Options                       |
|comment           |text       |null:false                    | #comment
|task              |references |null:false, foreign_key: true |
|user              |references |null:false, foreign_key: true |

- beolngs_to :task
- belongs_to :user

