class AddColumnsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :title, :string
    add_column :projects, :slug, :string
    add_column :projects, :description, :string
    add_column :projects, :link_to, :string
    add_column :projects, :content, :text
    add_column :projects, :status, :integer
  end
end
