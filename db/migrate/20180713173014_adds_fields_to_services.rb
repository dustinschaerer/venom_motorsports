class AddsFieldsToServices < ActiveRecord::Migration
  def change
    add_column :services, :content, :text
    add_column :services, :teaser, :text
    add_column :services, :article_image, :string
    add_column :services, :published_on, :date
    add_column :services, :published, :boolean, null: false, default: false
    add_reference :services, :category, index: true, foreign_key: true
    add_reference :services, :admin_user, index: true, foreign_key: true
    add_column :services, :specs, :text
  end
end
