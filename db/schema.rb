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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150521014404) do

  create_table "contexts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "completed",  limit: 4
    t.integer  "total",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dateranges", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "start"
    t.datetime "end"
    t.integer  "context_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pauses", force: :cascade do |t|
    t.string   "reason",      limit: 255
    t.datetime "begintime"
    t.datetime "endtime"
    t.boolean  "iscomplete",  limit: 1
    t.integer  "pomodoro_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "pomodoros", force: :cascade do |t|
    t.datetime "begintime"
    t.datetime "entime"
    t.boolean  "iscomplete", limit: 1
    t.integer  "task_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "completed",  limit: 4
    t.integer  "total",      limit: 4
    t.integer  "priority",   limit: 4
    t.datetime "deadline"
    t.boolean  "iscomplete", limit: 1
    t.integer  "context_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "completed",  limit: 4
    t.integer  "total",      limit: 4
    t.integer  "priority",   limit: 4
    t.datetime "deadline"
    t.boolean  "iscomplete", limit: 1
    t.integer  "project_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "todos", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "rank",        limit: 4
    t.integer  "task_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
