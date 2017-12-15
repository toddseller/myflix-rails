class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings, id: :uuid do |t|
      t.belongs_to  :catalog,         type: :uuid, index: true
      t.belongs_to  :user,            type: :uuid, index: true
      t.integer     :stars

      t.timestamps                    null: false
    end
  end
end
