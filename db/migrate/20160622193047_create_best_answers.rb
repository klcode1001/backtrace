class CreateBestAnswers < ActiveRecord::Migration
  def change
    create_table :best_answers do |t|
      t.belongs_to :notes, index: true, foreign_key: true
      t.belongs_to :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
