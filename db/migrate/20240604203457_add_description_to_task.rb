class AddDescriptionToTask < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :description, :rich_text
  end
end
