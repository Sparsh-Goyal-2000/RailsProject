# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_21_105051) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "writer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["writer_id"], name: "index_articles_on_writer_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.integer "commenter_id", null: false
    t.string "commentable_type"
    t.integer "commentable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable"
    t.index ["commenter_id"], name: "index_comments_on_commenter_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.integer "sender_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sender_id"], name: "index_posts_on_sender_id"
  end

  create_table "users", primary_key: "code", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
