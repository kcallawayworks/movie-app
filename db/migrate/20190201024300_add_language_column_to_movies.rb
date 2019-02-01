class AddLanguageColumnToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :language, :boolean, default: true
  end
end
