class AddBrandIdToKombuchas < ActiveRecord::Migration[6.0]
  def change
    add_column :kombuchas, :brand_id, :integer
  end
end
