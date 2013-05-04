class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :email, :title
      t.integer :price, :phone, :category_id
      t.text :description
      
    end

  end
end
