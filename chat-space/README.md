# README
## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false, foreign_key: true|
|image|string|foreign_key: true|
|user_id|interger|null: false, foreign_key: true|
|group_id|interger|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## userテーブル

|Column|Type|Options|
|------|----|-------|
|name|strng|null: false, foreign_key: true|

### Association

- has_many :groups, through: :members



##groupテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false, foregin_key: true|

### Association
- has_many :users, through: :members

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


