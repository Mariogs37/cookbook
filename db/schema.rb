ActiveRecord::Schema.define(:version => 20130214154210) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "cuisine"
    t.string   "chef"
    t.text     "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.string   "measurement"
    t.decimal  "cost"
    t.text     "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ingredients_recipes", :id => false, :force => true do |t|
    t.integer "ingredient_id"
    t.integer "recipe_id"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.string   "course"
    t.integer  "cooktime"
    t.integer  "servingsize"
    t.text     "instructions"
    t.text     "image"
    t.integer  "book_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
