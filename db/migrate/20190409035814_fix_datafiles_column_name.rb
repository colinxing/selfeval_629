class FixDatafilesColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :datafiles, :image_url, :attachment
  end
end
