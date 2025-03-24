class CreateArticles < ActiveRecord::Migration[7.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.datetime :published_at

      t.timestamps
    end
  end
end
