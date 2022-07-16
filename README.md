# README
**ProtoSpaceのER図**

|usersテーブル  |  
|email (string型,NOT NULL,ユニーク制約)  |  
|encrypted_password (string型,NOT NULL)  |  
|name (string型,NOT NULL)  |  
|profile (text型,NOT NULL)  |  
|occupation (text型,NOT NULL)  |  
|position (text型,NOT NULL)  |  


- has_many :user_prototypes
- has_many :prototypes, through: :comments

|prototypesテーブル  |  
|title (string型,NOT NULL)  |  
|catch_copy (text型,NOT NULL)  |  
|concept (text型,NOT NULL)  |  
|user (references型,NOT NULL,外部キー)  |  


- has_many :prototype_comments
- has_one :user, through: :comments

|commentsテーブル  |  
|content (text型,NOT NULL)  |  
|prototype (references型,NOT NULL,外部キー)  |  
|user (references型,NOT NULL,外部キー)  |  

- belongs_to :user
- belongs_to :prototype
