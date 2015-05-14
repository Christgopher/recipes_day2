class AddIncreInstructions < ActiveRecord::Migration
  def change
    create_table(:instructions) do |t|
      t.column(:description, :string)
      t.column(:recipe_id, :int)
    end
  end
end
