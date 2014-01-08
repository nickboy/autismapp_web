class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :type
      t.string :img
      t.string :answer

      t.timestamps
    end
  end
end
