class AddsPaypalButtonToProducts < ActiveRecord::Migration
  def change
    add_column :products, :paypal_button, :text
  end
end
