

# users_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| name       | string      | null: false                                         |
| e_mail     | string      | null: false unique: true                            |
| password   | string      | null: false                                         |

# チャットメンバー検索時に検索できるようにindexを貼る

# association

 hasnmany: groups,through groups_users
 has_many: groups_users,
 has_many: messeges


# groups_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| name       | string      | null: false                                         |



# association

 has_many   :users, through groups_users
 has_many   :groups_users
 has_many   :messages







# groups_users_table

| column     | type              | options                                       |
|:-----------|------------------:|:---------------------------------------------:|
| user_id    | references :group | foreign_key: true, index: true                |
| group_id   | references :user  | foreign_key: true, index: true                |

# 新規チャットグループグループで引き出せるように
# 新規チャットグループでのメンバー追加でuserが引き出せるように


# association


  belongs_to :users
  belongs_to :groups



# messeges_table

| column     | type            | options                                         |
|:-----------|----------------:|:-----------------------------------------------:|
| body       | text            |                                                 |
| image      | string          |                                                 |
| user_id    |references :group| foreign_key: true index: true                   |
| group_id   |references :user | foreign_key: true index: true                   |

# asosiasion

  belongs_to :users
  belongs_to :groups

