

# users_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| id         | integer     | foreign_key: true                                   |
| name       | string      | null: false index: true                             |
| e_mail     | string      | null: false unique: true                            |
| password   | string      | null: false                                         |

# association

 has_many: groups, though groups_users
 has_many: messeges


# groups_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| id         | integer     | foreign_key: true,                                  |
| name       |  string     | null: false                                         |


# association

 has_many   :users
 has_many   :messeges






# groups_users_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| user_id    | integer     | foreign_key: true,                                  |
| group_id   | integer     | foreign_key: true,                                  |

# association


  belongs_to :users
  belomgs_to:groups, through groups_users



# messeges_table

| column     | type        | options                                             |
|:-----------|------------:|:---------------------------------------------------:|
| body       | text        | :null, false                                        |
| image      | string      | :null, false                                        |
| data_time  | datatime    | :null, false                                        |
| user_id    | integer     | foreign_key: true                                   |
| group_id   | integer     | foreign_key: true                                   |

# asosiasion

  belongs_to :user
  belomgs_to :groups

