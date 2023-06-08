テーブル設計

users

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false, unique: true |
| nickname           | string              | null: false, unique: true |
| last_name          | string              | null: false               |
| first_name         | string              | null: false               |
| last_name_kana     | string              | null: false               |
| first_name_kana    | string              | null: false               |
| birthday           | string              | null: false               |


Association
・has_many:items
・has_many:orders




items

| Column             | Type                | Options                       |
|--------------------|---------------------|-------------------------------|
| user               | references          | null: false, foreign_key:true |
| description        | text                | null: false                   |
| name               | string              | null: false                   |
| category_id        | integer             | null: false                   |
|                    |                     |                               |
|                    |                     |                               |

Association
・belongs_to:user
・has_one:order


orders

| Column             | Type                | Options                       |
|--------------------|---------------------|-------------------------------|
| user               | references          | null: false, foreign_key:true |
| item               | references          | null: false, foreign_key:true |

Association
・belongs_to:user
・belongs_to:item





