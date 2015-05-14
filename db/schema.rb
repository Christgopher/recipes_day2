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

ActiveRecord::Schema.define(version: 20150514171059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catagories", force: :cascade do |t|
    t.string "name"
  end

  create_table "catagories_recipes", id: false, force: :cascade do |t|
    t.integer "catagory_id"
    t.integer "recipe_id"
  end

  add_index "catagories_recipes", ["catagory_id"], name: "index_catagories_recipes_on_catagory_id", using: :btree
  add_index "catagories_recipes", ["recipe_id"], name: "index_catagories_recipes_on_recipe_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "ingredients_recipes", id: false, force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
  end

  add_index "ingredients_recipes", ["ingredient_id"], name: "index_ingredients_recipes_on_ingredient_id", using: :btree
  add_index "ingredients_recipes", ["recipe_id"], name: "index_ingredients_recipes_on_recipe_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string  "name"
    t.integer "rating"
    t.text    "instructions"
  end

end
