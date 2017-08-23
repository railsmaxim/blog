class AddImagethreeToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :imagethree, :string
  end
end
