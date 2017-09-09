class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :content
      #t.references :user, foreign_key: true
      #user_idカラムを作成し、そのカラムに保存できるのはusersテーブルのidのみにする、という制約

      t.timestamps
    end
  end
end
