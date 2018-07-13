class AddsColumnsToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :about_page_title, :string
    add_column :settings, :about_page_text, :text
    add_column :settings, :project_page_title, :string
    add_column :settings, :project_page_text, :text
    add_column :settings, :service_page_title, :string
    add_column :settings, :service_page_text, :text
    add_column :settings, :contact_page_title, :string
    add_column :settings, :contact_page_text, :text
    add_column :settings, :shop_page_title, :string
    add_column :settings, :shop_page_text, :text
  end
end
