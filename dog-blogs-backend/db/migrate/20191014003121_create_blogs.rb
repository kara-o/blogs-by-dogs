class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
