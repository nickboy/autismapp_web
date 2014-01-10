class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :category
      t.string :type
      t.string :answer

      t.timestamps
    end
  end
end
