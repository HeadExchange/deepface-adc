class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.boolean :opening, required: true, default: false
      t.boolean :gift,    required: true, default: false

      t.timestamps
    end
  end
end
