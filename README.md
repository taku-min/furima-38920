
~users~

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| nickname           | string              | null: false               |
| last_name          | string              | null: false               |
| first_name         | string              | null: false               |
| last_name_kana     | string              | null: false               |
| first_name_kana    | string              | null: false               |
| birthday           | date                | null: false               |


Association
・has_many:items
・has_many:orders


~items~

| Column             | Type                | Options                       |
|--------------------|---------------------|-------------------------------|
| user               | references          | null: false, foreign_key:true |
| description        | text                | null: false                   |
| name               | string              | null: false                   |
| category_id        | integer             | null: false                   |
| item_status_id     | integer             | null: false                   |
| shipping_cost_id   | integer             | null: false                   | 
| prefecture_id      | integer             | null: false                   |
| shipping_date_id   | integer             | null: false                   |
| price              | integer             | null: false                   | 

Association
・belongs_to:user
・has_one:order


~orders~

| Column             | Type                | Options                       |
|--------------------|---------------------|-------------------------------|
| user               | references          | null: false, foreign_key:true |
| item               | references          | null: false, foreign_key:true |

Association
・belongs_to:user
・belongs_to:item
・has_one:address

~addresses~

| Column             | Type                | Options                       |
|--------------------|---------------------|-------------------------------|
| order              | references          | null: false, foreign_key:true |
| postal_code        | string              | null: false                   |
| prefecture_id      | integer             | null: false                   |
| city_name          | string              | null: false                   |
| block_name         | string              | null: false                   |
| building_name      | string              |                               |
| phone_number       | string              | null: false                   |

Association
・belongs_to:order