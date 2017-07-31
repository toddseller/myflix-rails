class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies, id: :uuid do |t|
      t.text        :actors,          default: ''
      t.string      :director,        default: ''
      t.string      :display_title,   index: true, default: ''
      t.string      :file_name,       default: ''
      t.string      :folder_path,     default: ''
      t.string      :genre,           default: ''
      t.boolean     :hd,              default: true
      t.string      :movie_rating,    default: ''
      t.boolean     :new,             default: true
      t.text        :plot,            default: ''
      t.string      :poster,          default: ''
      t.string      :producer,        default: ''
      t.string      :runtime,         default: ''
      t.string      :search_name,     default: ''
      t.string      :slug,            index: true
      t.string      :sort_name,       default: ''
      t.string      :studio,          default: ''
      t.string      :title,           null: false, default: ''
      t.integer     :tmdb_id
      t.belongs_to  :user,            type: :uuid, index: true
      t.integer     :user_rating
      t.string      :writer,          default: ''
      t.string      :year,            default: ''

      t.timestamps                    null: false
    end
  end
end
