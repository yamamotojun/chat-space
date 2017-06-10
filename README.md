== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version ver.5,0,0

* System dependencies

* Configuration

* Database creation




# users_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| id         | integer     | null: false foreign_key: true                       |
| name       | string      | null: false, unique: true index: true               |
| e_mail     | string      | null: false, unique: true,                          |
| password   | string      | null: false                                         |

# association

 has_many: groups
 has_many: messeges


# groups_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| id         | integer     | null: false                                         |
| name       |  string     | null: false foreign_key: true,                      |


# association

 has_many   :users






# groups_users_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| user_id    | string      | :null, false foreign_key: true                      |
| group_id   | integer     | null:false foreign_key: true                        |

# association


  has_many :users
  has_many :groups
  has_many :messeges, through members



# messege_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| body       | text        | :null, false                                        |
| image      | string      | :null, false                                        |
| data_time  | datatime    | :null, false                                        |
| user_id    | string      | :null, false foreign_key: true                      |
| group_id   | string      | :null, false foreign_key: true

# asosiasion

  belongs_to :user

* Database initialization
#

#asosiesion

#

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
