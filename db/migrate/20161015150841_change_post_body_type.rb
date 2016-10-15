class ChangePostBodyType < ActiveRecord::Migration
  def change
  	change_column :Posts, :body, :text
  end
end
