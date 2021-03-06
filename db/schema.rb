# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130226112928) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "audiences", :force => true do |t|
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "count_lessons", :force => true do |t|
    t.integer  "count"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "data1s", :force => true do |t|
    t.integer  "group_id"
    t.integer  "day_id"
    t.integer  "audience_id"
    t.integer  "lesson_id"
    t.integer  "number_lesson"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "flasher"
    t.string   "lecturer_id"
  end

  create_table "data2s", :force => true do |t|
    t.integer  "day_id"
    t.integer  "number_lesson"
    t.integer  "group_id"
    t.integer  "lesson_id"
    t.integer  "lecture_id"
    t.integer  "audience_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "data3s", :force => true do |t|
    t.integer  "day_id"
    t.integer  "number_lesson"
    t.integer  "group_id"
    t.integer  "lesson_id"
    t.integer  "lecture_id"
    t.integer  "audience_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "days", :force => true do |t|
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "histories", :force => true do |t|
    t.text     "title"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lecturers", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lessons", :force => true do |t|
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "title"
    t.text     "text"
  end

  create_table "photos", :force => true do |t|
    t.text     "description"
    t.integer  "album_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "text"
    t.integer  "user_id"
    t.integer  "theme_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string  "name"
    t.string  "information"
    t.boolean "can_add_files",       :default => true
    t.boolean "can_delete_files",    :default => true
    t.boolean "can_add_news",        :default => true
    t.boolean "can_delete_news",     :default => true
    t.boolean "can_add_showbill",    :default => true
    t.boolean "can_delete_showbill", :default => true
    t.boolean "can_add_history",     :default => true
    t.boolean "can_delete_history",  :default => true
    t.boolean "can_post_forum",      :default => true
    t.boolean "can_admin_forum",     :default => true
    t.boolean "can_manage_albums",   :default => true
    t.boolean "can_admin_roles",     :default => true
  end

  create_table "sections", :force => true do |t|
    t.text     "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "showbill", :force => true do |t|
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "students", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "lessons"
  end

  create_table "teachers", :force => true do |t|
    t.date     "birthday"
    t.string   "lessons"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "themes", :force => true do |t|
    t.text     "title"
    t.integer  "section_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uploads", :force => true do |t|
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "title"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "user_id"
    t.integer  "lesson_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.integer  "status"
    t.string   "phone"
    t.string   "country"
    t.string   "city"
    t.string   "about"
    t.string   "surname"
    t.integer  "character_id"
    t.string   "character_type"
    t.integer  "userable_id"
    t.string   "userable_type"
    t.integer  "role_id",                :default => 1
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
