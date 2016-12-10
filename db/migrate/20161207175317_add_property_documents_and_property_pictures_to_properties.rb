class AddPropertyDocumentsAndPropertyPicturesToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :property_documents, :json
    add_column :properties, :property_pictures, :json
  end
end
