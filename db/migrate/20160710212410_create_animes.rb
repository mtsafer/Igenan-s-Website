class CreateAnimes < ActiveRecord::Migration[5.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :director
      t.integer :year
      t.integer :length
      t.string :about
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
