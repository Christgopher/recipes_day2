class AddingArrayColumn < ActiveRecord::Migration
  def change
    remove_column(:recipes, :instructions, :string)

    add_column(:recipes, :instructions, :text)



  end
end
