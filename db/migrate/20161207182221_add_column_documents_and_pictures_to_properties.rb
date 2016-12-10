class AddColumnDocumentsAndPicturesToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :documents, :array
    add_column :properties, :pictures, :array
  end
end
