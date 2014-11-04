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

ActiveRecord::Schema.define(:version => 20141104055412) do

  create_table "employees", :force => true do |t|
    t.string   "First_Name"
    t.string   "Last_Name"
    t.text     "Team"
    t.integer  "Contact_Details"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.text     "team_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "student_marks", :force => true do |t|
    t.string   "full_name"
    t.integer  "class"
    t.integer  "mathematics"
    t.integer  "science"
    t.integer  "social"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "Full_Name"
    t.string   "Class"
    t.integer  "Mathematics"
    t.integer  "Science"
    t.integer  "Social"
    t.integer  "Total"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stumarks", :force => true do |t|
    t.string   "Full_Name"
    t.integer  "Class"
    t.integer  "Mathematics"
    t.integer  "Science"
    t.integer  "Social"
    t.integer  "Total"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wikis", :force => true do |t|
    t.string   "Project_Name"
    t.string   "Project_Owner"
    t.text     "Description"
    t.text     "Branches"
    t.string   "Team_Name"
    t.integer  "Contact_details"
    t.string   "Link_to"
    t.string   "_Applicaions"
    t.string   "References"
    t.string   "Backend"
    t.string   "Frontend"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "workers", :force => true do |t|
    t.string   "First_name"
    t.string   "Last_Name"
    t.text     "Team"
    t.integer  "Contact_Details"
    t.integer  "wiki_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "workers", ["wiki_id"], :name => "index_workers_on_wiki_id"

end
