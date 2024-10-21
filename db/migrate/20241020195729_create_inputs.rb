class CreateInputs < ActiveRecord::Migration[7.1]
  def change
    create_table :inputs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
