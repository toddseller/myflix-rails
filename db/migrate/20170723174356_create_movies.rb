class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies, id: :uuid do |t|
      t.text        :actors,        default: ''
      t.string      :director,      default: ''
      t.string      :file_name,     default: ''
      t.string      :file_path,     default: ''
      t.string      :genre,         default: ''
      t.integer     :hd,            default: 1080
      t.boolean     :is_new,        default: true
      t.string      :movie_rating,  default: ''
      t.text        :plot,          default: ''
      t.string      :poster,        default: ''
      t.string      :producer,      default: ''
      t.string      :runtime,       default: ''
      t.string      :search_name,   default: ''
      t.string      :slug,          index: true
      t.string      :sort_name,     default: ''
      t.string      :studio,        default: ''
      t.string      :title,         null: false, default: ''
      t.belongs_to  :user,          type: :uuid, null: false, index: true
      t.integer     :user_rating
      t.string      :writer,        default: ''
      t.string      :year,          default: ''

      t.timestamps                  null: false
    end
  end
end
