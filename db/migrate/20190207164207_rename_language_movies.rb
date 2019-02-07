class RenameLanguageMovies < ActiveRecord::Migration[5.2]
  def change
    rename_column :movies, :language, :english
  end
end
