== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version ver.5,0,0

* System dependencies

* Configuration

* Database creation




# user_table

| column     | type        | option                                              |
|:-----------|------------:|:---------------------------------------------------:|
| user_id    | integer     | null: false foreign_key: true                       |
| user_name  | string      | null: false, unique: true  foreign_key: true,index  |
| e_mail     | string      | null: false, unique: true,                          |
| password   | string      | null: false                                         |

# association



# group_table

| column     | type        | option                                              |
|:-----------|------------:|:---------------------------------------------------:|
| group_id   | integer     | null: false                                         |
| group_name | string      | null: false foreign_key: true,                      |


# association
 has_many    :group
# has_many   :user
# belongs_to :group





# group_member_table

| column     | type        | option                                              |
|:-----------|------------:|:---------------------------------------------------:|
| group_id   | integer     | null:false                                          |
| menber_id  | integer     | null:false                                          |

# association
# has_many   :user
# belongs_to :group




# messege_table

| column     | type        | option                                              |
|:-----------|------------:|:---------------------------------------------------:|
| body       | text        | :null, false foreign_key: true                      |
| image      | string      | :null, false foreign_key: true                      |
| data_time   | datetime   | :null, false                                        |

# association

# has_many   :messege
# belongs_to :user


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
