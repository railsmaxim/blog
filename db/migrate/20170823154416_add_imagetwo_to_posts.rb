class AddImagetwoToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :imagetwo, :string
  end
end
