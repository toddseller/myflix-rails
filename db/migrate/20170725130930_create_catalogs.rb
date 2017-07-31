class CreateCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogs, id: :uuid do |t|
      t.integer   :count,       null: false, default: 0
      t.string    :poster,      null: false, default: ''
      t.string    :sort_name,   null: false, default: ''
      t.string    :title,       null: false, default: ''
      t.integer   :tmdb_id,     index: true

      t.timestamps              null: false
    end
  end
end
