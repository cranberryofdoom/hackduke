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

ActiveRecord::Schema.define(version: 20140805085640) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "location"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "semester_id"
    t.string   "register_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_instructors", force: true do |t|
    t.integer "course_id"
    t.integer "instructor_id"
  end

  add_index "courses_instructors", ["course_id"], name: "index_courses_instructors_on_course_id"
  add_index "courses_instructors", ["instructor_id"], name: "index_courses_instructors_on_instructor_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "partner_id"
  end

  add_index "events", ["partner_id"], name: "index_events_on_partner_id"
  add_index "events", ["semester_id"], name: "index_events_on_semester_id"

  create_table "faqs", force: true do |t|
    t.string   "question"
    t.text     "markdown_content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "html_content"
  end

  create_table "faqs_semesters", force: true do |t|
    t.integer "semester_id"
    t.integer "faq_id"
  end

  add_index "faqs_semesters", ["faq_id"], name: "index_faqs_semesters_on_faq_id"
  add_index "faqs_semesters", ["semester_id"], name: "index_faqs_semesters_on_semester_id"

  create_table "instructors", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maps", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "maps", ["semester_id"], name: "index_maps_on_semester_id"

  create_table "media", force: true do |t|
    t.string  "title"
    t.string  "link_url"
    t.string  "media_type"
    t.text    "iframe_html"
    t.integer "semester_id"
  end

  add_index "media", ["semester_id"], name: "index_media_on_semester_id"

  create_table "mentors", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.text     "markdown_content"
    t.integer  "partner_id"
    t.integer  "sponsor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "html_content"
  end

  add_index "mentors", ["partner_id"], name: "index_mentors_on_partner_id"
  add_index "mentors", ["sponsor_id"], name: "index_mentors_on_sponsor_id"

  create_table "mentors_semesters", force: true do |t|
    t.integer "mentor_id"
    t.integer "semester_id"
  end

  add_index "mentors_semesters", ["mentor_id"], name: "index_mentors_semesters_on_mentor_id"
  add_index "mentors_semesters", ["semester_id"], name: "index_mentors_semesters_on_semester_id"

  create_table "organizers", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizers_semesters", force: true do |t|
    t.integer "organizer_id"
    t.integer "semester_id"
  end

  add_index "organizers_semesters", ["organizer_id"], name: "index_organizers_semesters_on_organizer_id"
  add_index "organizers_semesters", ["semester_id"], name: "index_organizers_semesters_on_semester_id"

  create_table "partners", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "link_url"
    t.string   "partnership_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "track"
    t.string   "focus"
    t.text     "about"
    t.text     "html_content"
    t.text     "markdown_content"
    t.string   "prize_description"
  end

  create_table "partners_prizes", force: true do |t|
    t.integer "partner_id"
    t.integer "prize_id"
  end

  add_index "partners_prizes", ["partner_id"], name: "index_partners_prizes_on_partner_id"
  add_index "partners_prizes", ["prize_id"], name: "index_partners_prizes_on_prize_id"

  create_table "partners_semesters", force: true do |t|
    t.integer "semester_id"
    t.integer "partner_id"
  end

  add_index "partners_semesters", ["partner_id"], name: "index_partners_semesters_on_partner_id"
  add_index "partners_semesters", ["semester_id"], name: "index_partners_semesters_on_semester_id"

  create_table "prizes", force: true do |t|
    t.string   "title"
    t.text     "markdown_content"
    t.integer  "semester_id"
    t.integer  "sponsor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "html_content"
  end

  add_index "prizes", ["semester_id"], name: "index_prizes_on_semester_id"
  add_index "prizes", ["sponsor_id"], name: "index_prizes_on_sponsor_id"

  create_table "semesters", force: true do |t|
    t.string   "season"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters_sponsors", force: true do |t|
    t.integer "semester_id"
    t.integer "sponsor_id"
  end

  add_index "semesters_sponsors", ["semester_id"], name: "index_semesters_sponsors_on_semester_id"
  add_index "semesters_sponsors", ["sponsor_id"], name: "index_semesters_sponsors_on_sponsor_id"

  create_table "sponsors", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "link_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "winners", force: true do |t|
    t.string  "team_members"
    t.string  "project"
    t.string  "link_url"
    t.integer "semester_id"
    t.string  "prize_type"
  end

  add_index "winners", ["semester_id"], name: "index_winners_on_semester_id"

end
