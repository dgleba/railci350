# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 50161230223301) do

  create_table "about_this_app", primary_key: "sortorder", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "about_fld",   limit: 65535,                                      null: false
    t.datetime "createdtime",               default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updatedtime"
  end

  create_table "auth_group", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 80, null: false
    t.index ["name"], name: "name", unique: true, using: :btree
  end

  create_table "auth_group_permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
    t.index ["group_id", "permission_id"], name: "group_id", unique: true, using: :btree
    t.index ["permission_id"], name: "auth_group_permissi_permission_id_23962d04_fk_auth_permission_id", using: :btree
  end

  create_table "auth_permission", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name",                        null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
    t.index ["content_type_id", "codename"], name: "content_type_id", unique: true, using: :btree
  end

  create_table "auth_user", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "password",     limit: 128, null: false
    t.datetime "last_login"
    t.boolean  "is_superuser",             null: false
    t.string   "username",     limit: 30,  null: false
    t.string   "first_name",   limit: 30,  null: false
    t.string   "last_name",    limit: 30,  null: false
    t.string   "email",        limit: 254, null: false
    t.boolean  "is_staff",                 null: false
    t.boolean  "is_active",                null: false
    t.datetime "date_joined",              null: false
    t.index ["username"], name: "username", unique: true, using: :btree
  end

  create_table "auth_user_groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "auth_user_groups_group_id_30a071c9_fk_auth_group_id", using: :btree
    t.index ["user_id", "group_id"], name: "user_id", unique: true, using: :btree
  end

  create_table "auth_user_user_permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
    t.index ["permission_id"], name: "auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id", using: :btree
    t.index ["user_id", "permission_id"], name: "user_id", unique: true, using: :btree
  end

  create_table "cilisting1", primary_key: "ciid", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ft",                           limit: 22
    t.string   "project_number",               limit: 29,                                         null: false
    t.string   "project_description",          limit: 500
    t.string   "owner",                        limit: 200
    t.date     "planned_timing"
    t.date     "revised_timing"
    t.integer  "estimated_cost"
    t.string   "savings_category",             limit: 211
    t.string   "annual_savings_dollars",       limit: 20
    t.string   "percent_complete",             limit: 26
    t.text     "comments",                     limit: 65535
    t.string   "originator",                   limit: 31
    t.string   "team",                         limit: 600
    t.string   "documents_complete",           limit: 3
    t.string   "one_time_savings",             limit: 45
    t.string   "hard_soft_savings",            limit: 9
    t.string   "soft_dollars",                 limit: 20
    t.date     "il1_target_date"
    t.date     "il2_target_date"
    t.date     "il3_target_date"
    t.date     "il4_target_date"
    t.date     "il5_target_date"
    t.date     "wc_idea_date",                                                                    null: false
    t.date     "actual_implementation_date"
    t.string   "enter_in_wc",                  limit: 25
    t.string   "area",                         limit: 99
    t.datetime "updatedtime",                                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string   "id_wc",                        limit: 10
    t.string   "environmental",                limit: 23
    t.string   "ease_of_implementation",       limit: 27
    t.string   "submit",                       limit: 10
    t.string   "next_steps",                   limit: 987
    t.string   "suggestion_status",            limit: 99
    t.datetime "suggestion_status_updated_at"
    t.string   "group",                        limit: 99
    t.string   "metric_impact",                limit: 77
    t.string   "gift2_4_suggestion",           limit: 1
    t.string   "gift_4_suggestion",            limit: 10
    t.string   "il_current",                   limit: 1
    t.datetime "createdtime"
    t.string   "link",                         limit: 567,                                        null: false
    t.string   "linkmore",                     limit: 9999,                                       null: false
    t.string   "display",                      limit: 11,                                         null: false
    t.integer  "idea_Qtr_1"
    t.string   "ci_leader_1",                  limit: 119
    t.integer  "line_num"
    t.string   "orginator_email",              limit: 233
    t.datetime "z-updatedtime"
    t.index ["originator"], name: "originator-idx", using: :btree
    t.index ["owner"], name: "owner-idx", using: :btree
    t.index ["project_number", "originator", "project_description"], name: "recordref-idx", length: { project_description: 255 }, using: :btree
    t.index ["project_number"], name: "project_number", unique: true, using: :btree
    t.index ["updatedtime"], name: "updated-idx", using: :btree
  end

  create_table "cilisting1__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language",            limit: 2
    t.text     "history__comments",            limit: 65535
    t.string   "history__user",                limit: 32
    t.integer  "history__state",                             default: 0
    t.datetime "history__modified"
    t.string   "ft",                           limit: 22
    t.string   "project_number",               limit: 29
    t.string   "project_description",          limit: 500
    t.string   "owner",                        limit: 200
    t.date     "planned_timing"
    t.date     "revised_timing"
    t.integer  "estimated_cost"
    t.string   "savings_category",             limit: 211
    t.string   "annual_savings_dollars",       limit: 20
    t.string   "percent_complete",             limit: 26
    t.text     "comments",                     limit: 65535
    t.string   "originator",                   limit: 31
    t.string   "team",                         limit: 600
    t.string   "documents_complete",           limit: 23
    t.string   "one_time_savings",             limit: 45
    t.string   "hard_soft_savings",            limit: 23
    t.string   "soft_dollars",                 limit: 20
    t.date     "il1_target_date"
    t.date     "il2_target_date"
    t.date     "il3_target_date"
    t.date     "il4_target_date"
    t.date     "il5_target_date"
    t.date     "wc_idea_date"
    t.date     "actual_implementation_date"
    t.string   "enter_in_wc",                  limit: 25
    t.string   "area",                         limit: 99
    t.datetime "updatedtime",                                default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string   "id_wc",                        limit: 10
    t.string   "environmental",                limit: 23
    t.string   "ease_of_implementation",       limit: 27
    t.string   "submit",                       limit: 10
    t.integer  "line_num"
    t.string   "next_steps",                   limit: 987
    t.string   "suggestion_status",            limit: 99
    t.string   "ci_leader_1",                  limit: 119
    t.string   "group",                        limit: 99
    t.string   "metric_impact",                limit: 77
    t.string   "gift_4_suggestion",            limit: 10
    t.string   "il_current",                   limit: 1
    t.datetime "createdtime"
    t.string   "link",                         limit: 567
    t.string   "display",                      limit: 11
    t.integer  "idea_Qtr"
    t.string   "orginator_email",              limit: 233
    t.integer  "ciid"
    t.datetime "z-updatedtime"
    t.integer  "idea_Qtr_1"
    t.string   "linkmore",                     limit: 9999
    t.string   "gift2_4_suggestion",           limit: 1
    t.datetime "suggestion_status_updated_at"
    t.index ["ciid"], name: "prikeys", using: :btree
    t.index ["history__modified"], name: "datekeys", using: :btree
  end

  create_table "cilisting1__history-1", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language",          limit: 2
    t.text     "history__comments",          limit: 65535
    t.string   "history__user",              limit: 32
    t.integer  "history__state",                           default: 0
    t.datetime "history__modified"
    t.string   "ft",                         limit: 22
    t.string   "project_number",             limit: 29
    t.string   "project_description",        limit: 500
    t.string   "owner",                      limit: 200
    t.date     "planned_timing"
    t.date     "revised_timing"
    t.integer  "estimated_cost"
    t.string   "savings_category",           limit: 211
    t.string   "annual_savings_dollars",     limit: 20
    t.string   "percent_complete",           limit: 26
    t.text     "comments",                   limit: 65535
    t.string   "originator",                 limit: 31
    t.string   "team",                       limit: 600
    t.string   "documents_complete",         limit: 23
    t.string   "one_time_savings",           limit: 45
    t.string   "hard_soft_savings",          limit: 23
    t.string   "soft_dollars",               limit: 20
    t.date     "il1_target_date"
    t.date     "il2_target_date"
    t.date     "il3_target_date"
    t.date     "il4_target_date"
    t.date     "il5_target_date"
    t.date     "wc_idea_date"
    t.date     "actual_implementation_date"
    t.string   "enter_in_wc",                limit: 25
    t.string   "area",                       limit: 99
    t.datetime "updatedtime",                              default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string   "id_wc",                      limit: 10
    t.string   "environmental",              limit: 23
    t.string   "ease_of_implementation",     limit: 27
    t.string   "submit",                     limit: 10
    t.integer  "line_num"
    t.string   "next_steps",                 limit: 987
    t.string   "suggestion_status",          limit: 99
    t.string   "ci_leader_1",                limit: 119
    t.string   "group",                      limit: 99
    t.string   "metric_impact",              limit: 77
    t.string   "gift_4_suggestion",          limit: 10
    t.string   "il_current",                 limit: 1
    t.datetime "createdtime"
    t.string   "link",                       limit: 567
    t.string   "display",                    limit: 11
    t.integer  "idea_Qtr"
    t.string   "orginator_email",            limit: 233
    t.integer  "ciid"
    t.datetime "z-updatedtime"
    t.integer  "idea_Qtr_1"
    t.string   "linkmore",                   limit: 9999
    t.index ["ciid"], name: "prikeys", using: :btree
    t.index ["history__modified"], name: "datekeys", using: :btree
  end

  create_table "cilisting1_vw_1__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language",          limit: 2
    t.text     "history__comments",          limit: 65535
    t.string   "history__user",              limit: 32
    t.integer  "history__state",                           default: 0
    t.datetime "history__modified"
    t.datetime "updatedtime",                              default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.string   "ft",                         limit: 22
    t.integer  "ciid"
    t.string   "project_number",             limit: 29
    t.string   "project_description",        limit: 500
    t.date     "planned_timing"
    t.string   "suggestion_status",          limit: 99
    t.date     "revised_timing"
    t.string   "owner",                      limit: 200
    t.string   "originator",                 limit: 31
    t.integer  "estimated_cost"
    t.string   "savings_category",           limit: 211
    t.string   "annual_savings_dollars",     limit: 20
    t.string   "percent_complete",           limit: 26
    t.text     "comments",                   limit: 65535
    t.string   "team",                       limit: 600
    t.string   "documents_complete",         limit: 3
    t.string   "one_time_savings",           limit: 45
    t.string   "hard_soft_savings",          limit: 9
    t.string   "soft_dollars",               limit: 20
    t.date     "il1_target_date"
    t.date     "il2_target_date"
    t.date     "il3_target_date"
    t.date     "il4_target_date"
    t.date     "il5_target_date"
    t.date     "wc_idea_date"
    t.date     "actual_implementation_date"
    t.string   "enter_in_wc",                limit: 25
    t.string   "area",                       limit: 99
    t.string   "id_wc",                      limit: 10
    t.string   "environmental",              limit: 23
    t.string   "ease_of_implementation",     limit: 27
    t.string   "submit",                     limit: 10
    t.integer  "line_num"
    t.string   "next_steps",                 limit: 987
    t.string   "ci_leader_1",                limit: 119
    t.string   "group",                      limit: 99
    t.string   "metric_impact",              limit: 77
    t.string   "gift_4_suggestion",          limit: 10
    t.string   "il_current",                 limit: 1
    t.string   "link",                       limit: 567
    t.string   "display",                    limit: 11
    t.integer  "idea_Qtr_1"
    t.string   "orginator_email",            limit: 233
    t.datetime "z-updatedtime"
    t.datetime "createdtime"
    t.index ["ciid"], name: "prikeys", using: :btree
    t.index ["history__modified"], name: "datekeys", using: :btree
  end

  create_table "cilisting__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language",          limit: 2
    t.text     "history__comments",          limit: 65535
    t.string   "history__user",              limit: 32
    t.integer  "history__state",                           default: 0
    t.datetime "history__modified"
    t.datetime "updatedtime"
    t.string   "ft",                         limit: 22
    t.string   "project_number",             limit: 10
    t.string   "project_description",        limit: 500
    t.string   "owner",                      limit: 200
    t.date     "planned_timing"
    t.date     "revised_timing"
    t.integer  "estimated_cost"
    t.string   "savings_category",           limit: 8
    t.string   "annual_savings_dollars",     limit: 20
    t.string   "percent_complete",           limit: 26
    t.string   "comments",                   limit: 999
    t.string   "originator",                 limit: 31
    t.string   "team",                       limit: 600
    t.string   "documents_complete",         limit: 3
    t.string   "one_time_savings",           limit: 3
    t.string   "hard_soft_savings",          limit: 9
    t.string   "soft_dollars",               limit: 20
    t.date     "il1_target_date"
    t.date     "il2_target_date"
    t.date     "il3_target_date"
    t.date     "il4_target_date"
    t.date     "il5_target_date"
    t.date     "wc_idea_date"
    t.date     "actual_implementation_date"
    t.string   "enter_in_wc",                limit: 6
    t.string   "area",                       limit: 20
    t.string   "id_wc",                      limit: 10
    t.string   "environmental",              limit: 23
    t.string   "2013_project_start",         limit: 3
    t.string   "submit",                     limit: 10
    t.integer  "line_num"
    t.string   "less_used_col_to_right",     limit: 10
    t.string   "status",                     limit: 10
    t.string   "group",                      limit: 10
    t.string   "metric_impact",              limit: 25
    t.string   "wc_implementation_quarter",  limit: 10
    t.string   "il_current",                 limit: 1
    t.datetime "createdtime",                              default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "z-updatedtime"
    t.integer  "ciid"
    t.string   "ci_leader",                  limit: 119
    t.string   "link",                       limit: 567
    t.string   "display",                    limit: 11
    t.integer  "idea_Qtr"
    t.string   "orginator_email",            limit: 233
    t.string   "ease_of_implementation",     limit: 27
    t.string   "next_steps",                 limit: 987
    t.string   "gift_4_suggestion",          limit: 10
    t.string   "suggestion_status",          limit: 99
    t.string   "ci_leader_1",                limit: 119
    t.string   "fullcommonname",             limit: 22
    t.string   "record_ref",                 limit: 55
    t.string   "linkmore",                   limit: 9999
    t.integer  "idea_Qtr_1"
    t.index ["ciid"], name: "prikeys", using: :btree
    t.index ["history__modified"], name: "datekeys", using: :btree
  end

  create_table "copy2-email_list", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "emailname",   limit: 44
    t.string   "emailaddr",   limit: 60
    t.string   "note",        limit: 211
    t.string   "egroup",      limit: 91
    t.datetime "updatedtime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                  null: false
    t.index ["emailname"], name: "emailname_idx", unique: true, using: :btree
  end

  create_table "copy_email_list", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "emailname",   limit: 44
    t.string   "emailaddr",   limit: 60
    t.string   "note",        limit: 211
    t.string   "egroup",      limit: 91
    t.datetime "updatedtime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                  null: false
    t.index ["emailname"], name: "emailname_idx", unique: true, using: :btree
  end

  create_table "copy_emp_enterprise_log", primary_key: "id_e", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clock",       limit: 7
    t.string   "name",        limit: 62
    t.string   "dept",        limit: 19
    t.string   "company",     limit: 69
    t.string   "group",       limit: 59
    t.string   "status",      limit: 12
    t.string   "sch_wk1",     limit: 17
    t.string   "pln_wk1",     limit: 17
    t.string   "sch_wk2",     limit: 17
    t.string   "pln_wk2",     limit: 17
    t.datetime "updatedtime",            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                 null: false
  end

  create_table "dashboard", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

  create_table "dataface__failed_logins", primary_key: "attempt_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "ip_address",      limit: 32, null: false
    t.string  "username",        limit: 32, null: false
    t.integer "time_of_attempt",            null: false
  end

  create_table "dataface__modules", primary_key: "module_name", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "module_version"
  end

  create_table "dataface__mtimes", primary_key: "name", id: :string, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "mtime"
  end

  create_table "dataface__preferences", primary_key: "pref_id", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username",  limit: 64,  null: false
    t.string "table",     limit: 128, null: false
    t.string "record_id",             null: false
    t.string "key",       limit: 128, null: false
    t.string "value",                 null: false
    t.index ["record_id"], name: "record_id", using: :btree
    t.index ["table"], name: "table", using: :btree
    t.index ["username"], name: "username", using: :btree
  end

  create_table "dataface__record_mtimes", primary_key: "recordhash", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "recordid", null: false
    t.integer "mtime",    null: false
  end

  create_table "dataface__version", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "version", default: 0, null: false
  end

  create_table "django_admin_log", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "action_time",                        null: false
    t.text     "object_id",       limit: 4294967295
    t.string   "object_repr",     limit: 200,        null: false
    t.integer  "action_flag",     limit: 2,          null: false, unsigned: true
    t.text     "change_message",  limit: 4294967295, null: false
    t.integer  "content_type_id"
    t.integer  "user_id",                            null: false
    t.index ["content_type_id"], name: "django_admin__content_type_id_5151027a_fk_django_content_type_id", using: :btree
    t.index ["user_id"], name: "django_admin_log_user_id_1c5f563_fk_auth_user_id", using: :btree
  end

  create_table "django_content_type", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
    t.index ["app_label", "model"], name: "django_content_type_app_label_3ec8c61c_uniq", unique: true, using: :btree
  end

  create_table "django_migrations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "app",     null: false
    t.string   "name",    null: false
    t.datetime "applied", null: false
  end

  create_table "django_session", primary_key: "session_key", id: :string, limit: 40, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "session_data", limit: 4294967295, null: false
    t.datetime "expire_date",                     null: false
    t.index ["expire_date"], name: "django_session_de54fa62", using: :btree
  end

  create_table "email_list", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "emailname",   limit: 44
    t.string   "emailaddr",   limit: 60
    t.string   "note",        limit: 211
    t.string   "egroup",      limit: 91
    t.datetime "updatedtime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                  null: false
    t.index ["emailname"], name: "emailname_idx", unique: true, using: :btree
  end

  create_table "email_list__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.string   "emailname",         limit: 35
    t.string   "emailaddr",         limit: 30
    t.string   "group",             limit: 1
    t.integer  "id"
    t.string   "egroup",            limit: 91
    t.string   "note",              limit: 211
    t.datetime "updatedtime"
    t.datetime "createdtime",                                 null: false
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "emp_enterprise-offline", primary_key: "id_e", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clock",       limit: 7
    t.string   "name",        limit: 62
    t.string   "dept",        limit: 19
    t.string   "company",     limit: 69
    t.string   "group",       limit: 59
    t.string   "status",      limit: 12
    t.string   "sch_wk1",     limit: 17
    t.string   "pln_wk1",     limit: 17
    t.string   "sch_wk2",     limit: 17
    t.string   "pln_wk2",     limit: 17
    t.datetime "updatedtime",            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                 null: false
  end

  create_table "emp_enterprise__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.string   "clock",             limit: 7
    t.string   "name",              limit: 62
    t.string   "dept",              limit: 19
    t.string   "company",           limit: 29
    t.string   "group",             limit: 20
    t.string   "status",            limit: 12
    t.string   "sch_wk1",           limit: 17
    t.string   "pln_wk1",           limit: 17
    t.string   "sch_wk2",           limit: 17
    t.string   "pln_wk2",           limit: 17
    t.integer  "id"
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "emp_enterprise_log", primary_key: "id_e", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clock",       limit: 7
    t.string   "name",        limit: 62
    t.string   "dept",        limit: 19
    t.string   "company",     limit: 69
    t.string   "group",       limit: 59
    t.string   "status",      limit: 12
    t.string   "sch_wk1",     limit: 17
    t.string   "pln_wk1",     limit: 17
    t.string   "sch_wk2",     limit: 17
    t.string   "pln_wk2",     limit: 17
    t.datetime "updatedtime",            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                 null: false
  end

  create_table "leader", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clocknum",       limit: 7
    t.string   "Name",           limit: 23
    t.string   "fullcommonname", limit: 33
    t.string   "ci_leader",      limit: 32
    t.string   "comment",        limit: 99
    t.datetime "updatedtime",               default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                    null: false
    t.string   "position",       limit: 67
    t.string   "shift",          limit: 2
    t.string   "dept",           limit: 24
    t.string   "Common_Name",    limit: 18
    t.string   "fullname",       limit: 22
    t.string   "Middleproper",   limit: 9
    t.string   "Lastproper",     limit: 16
    t.string   "Firstproper",    limit: 11
    t.string   "First",          limit: 11
    t.string   "Middle",         limit: 9
    t.string   "Last",           limit: 16
    t.index ["Name"], name: "name", unique: true, using: :btree
    t.index ["ci_leader"], name: "cileader", using: :btree
    t.index ["fullcommonname", "ci_leader"], name: "name-and-leader", unique: true, using: :btree
    t.index ["fullcommonname"], name: "fullcommonname", unique: true, using: :btree
  end

  create_table "leader2", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clocknum",       limit: 7
    t.string   "Name",           limit: 23
    t.string   "fullcommonname", limit: 22
    t.string   "ci_leader",      limit: 18
    t.string   "comment",        limit: 20
    t.datetime "updatedtime",               default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                    null: false
    t.string   "position",       limit: 30
    t.string   "shift",          limit: 2
    t.string   "dept",           limit: 24
    t.string   "Common_Name",    limit: 18
    t.string   "fullname",       limit: 22
    t.string   "Middleproper",   limit: 9
    t.string   "Lastproper",     limit: 16
    t.string   "Firstproper",    limit: 11
    t.string   "First",          limit: 11
    t.string   "Middle",         limit: 9
    t.string   "Last",           limit: 16
    t.index ["Name"], name: "name", unique: true, using: :btree
    t.index ["ci_leader"], name: "cileader", using: :btree
    t.index ["fullcommonname", "ci_leader"], name: "name-and-leader", unique: true, using: :btree
    t.index ["fullcommonname"], name: "fullcommonname", unique: true, using: :btree
  end

  create_table "leader__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.string   "clocknum",          limit: 7
    t.string   "Name",              limit: 23
    t.string   "position",          limit: 30
    t.string   "dept",              limit: 24
    t.string   "shift",             limit: 2
    t.string   "fullcommonname",    limit: 22
    t.string   "ci_leader",         limit: 18
    t.string   "Last",              limit: 16
    t.string   "Middle",            limit: 9
    t.string   "First",             limit: 11
    t.string   "Firstproper",       limit: 11
    t.string   "Lastproper",        limit: 16
    t.string   "Middleproper",      limit: 9
    t.string   "fullname",          limit: 22
    t.string   "Common_Name",       limit: 18
    t.string   "comment",           limit: 20
    t.integer  "id"
    t.datetime "updatedtime",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                          null: false
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "leader__history-1", primary_key: "history__id", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.string   "clocknum",          limit: 7
    t.string   "Name",              limit: 23
    t.string   "position",          limit: 30
    t.string   "dept",              limit: 24
    t.string   "shift",             limit: 2
    t.string   "fullcommonname",    limit: 22
    t.string   "ci_leader",         limit: 18
    t.string   "Last",              limit: 16
    t.string   "Middle",            limit: 9
    t.string   "First",             limit: 11
    t.string   "Firstproper",       limit: 11
    t.string   "Lastproper",        limit: 16
    t.string   "Middleproper",      limit: 9
    t.string   "fullname",          limit: 22
    t.string   "Common_Name",       limit: 18
    t.string   "comment",           limit: 20
    t.integer  "id"
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "lkup_area", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "area_list",   limit: 99,                                      null: false
    t.datetime "updatedtime",            default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                 null: false
    t.index ["area_list"], name: "area_list", unique: true, using: :btree
  end

  create_table "lkup_area__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.integer  "id"
    t.string   "area_list",         limit: 99
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["id"], name: "prikeys", using: :btree
  end

  create_table "lkup_metric", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "metric_list", limit: 99, null: false
    t.index ["metric_list"], name: "metric_list", unique: true, using: :btree
  end

  create_table "old_emp_ceridian", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "x9",           limit: 14
    t.string   "eenum",        limit: 7
    t.string   "name",         limit: 99
    t.string   "position",     limit: 99
    t.string   "dept",         limit: 44
    t.string   "x9b",          limit: 10
    t.date     "datehired"
    t.string   "shift",        limit: 14
    t.date     "senoritydate"
    t.string   "reportdate",   limit: 39
    t.datetime "updatedtime",             default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "createdtime",                                                  null: false
  end

  create_table "polls_choice", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "choice_text", limit: 200, null: false
    t.integer "votes",                   null: false
    t.integer "question_id",             null: false
    t.index ["question_id"], name: "polls_choice_7aa0f6ee", using: :btree
  end

  create_table "polls_question", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "question_text", limit: 200, null: false
    t.datetime "pub_date",                  null: false
  end

  create_table "role", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name",        limit: 80
    t.string "description"
    t.index ["name"], name: "name", unique: true, using: :btree
  end

  create_table "roles_rr", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "active_status"
    t.integer  "sort"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "roles_users", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "role_id", using: :btree
    t.index ["user_id"], name: "user_id", using: :btree
  end

  create_table "trainingatt1", primary_key: "id_t", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name_t",         limit: 88
    t.string "clock_t",        limit: 12, null: false
    t.string "sugg2016a",      limit: 23
    t.date   "date_sugg2016a"
  end

  create_table "user", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username",     limit: 32, collation: "latin1_swedish_ci"
    t.string   "role",         limit: 99
    t.string   "password"
    t.boolean  "active"
    t.datetime "confirmed_at"
    t.index ["email"], name: "email", unique: true, using: :btree
    t.index ["role"], name: "role", using: :btree
    t.index ["username"], name: "username", using: :btree
  end

  create_table "users__history", primary_key: "history__id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "history__language", limit: 2
    t.text     "history__comments", limit: 65535
    t.string   "history__user",     limit: 32
    t.integer  "history__state",                  default: 0
    t.datetime "history__modified"
    t.string   "username",          limit: 32
    t.string   "password",          limit: 244
    t.string   "Role",              limit: 9
    t.string   "first_name",        limit: 233
    t.string   "last_name",         limit: 233
    t.string   "address",           limit: 244
    t.string   "phone_num",         limit: 211
    t.string   "email",             limit: 234
    t.text     "comment_fld1",      limit: 65535
    t.datetime "createdtime",                     default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updatedtime"
    t.index ["history__modified"], name: "datekeys", using: :btree
    t.index ["username"], name: "prikeys", using: :btree
  end

  create_table "users_rr", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role_id",                default: 1
    t.index ["email"], name: "index_users_rr_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_rr_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_rr_on_role_id", using: :btree
  end

  create_table "users_xataface", primary_key: "username", id: :string, limit: 32, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "password",     limit: 244,                                        null: false
    t.string   "Role",         limit: 9,     default: "ADDER"
    t.string   "first_name",   limit: 233
    t.string   "last_name",    limit: 233
    t.string   "address",      limit: 244
    t.string   "phone_num",    limit: 211
    t.string   "email",        limit: 234,                                        null: false
    t.text     "comment_fld1", limit: 65535
    t.datetime "createdtime",                default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updatedtime"
  end

  add_foreign_key "auth_group_permissions", "auth_group", column: "group_id", name: "auth_group_permissions_group_id_58c48ba9_fk_auth_group_id"
  add_foreign_key "auth_group_permissions", "auth_permission", column: "permission_id", name: "auth_group_permissi_permission_id_23962d04_fk_auth_permission_id"
  add_foreign_key "auth_permission", "django_content_type", column: "content_type_id", name: "auth_permissi_content_type_id_51277a81_fk_django_content_type_id"
  add_foreign_key "auth_user_groups", "auth_group", column: "group_id", name: "auth_user_groups_group_id_30a071c9_fk_auth_group_id"
  add_foreign_key "auth_user_groups", "auth_user", column: "user_id", name: "auth_user_groups_user_id_24702650_fk_auth_user_id"
  add_foreign_key "auth_user_user_permissions", "auth_permission", column: "permission_id", name: "auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id"
  add_foreign_key "auth_user_user_permissions", "auth_user", column: "user_id", name: "auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id"
  add_foreign_key "django_admin_log", "auth_user", column: "user_id", name: "django_admin_log_user_id_1c5f563_fk_auth_user_id"
  add_foreign_key "django_admin_log", "django_content_type", column: "content_type_id", name: "django_admin__content_type_id_5151027a_fk_django_content_type_id"
  add_foreign_key "polls_choice", "polls_question", column: "question_id", name: "polls_choice_question_id_40fbbd72_fk_polls_question_id"
  add_foreign_key "roles_users", "role", name: "roles_users_ibfk_2"
  add_foreign_key "roles_users", "user", name: "roles_users_ibfk_1"
  add_foreign_key "users_rr", "roles_rr", column: "role_id"
end
