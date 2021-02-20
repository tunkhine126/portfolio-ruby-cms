class AddColumnsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :title, :string
    add_column :articles, :slug, :string
    add_column :articles, :content, :text
    add_column :articles, :published_at, :datetime
    add_column :articles, :link_to, :string
  end
end
