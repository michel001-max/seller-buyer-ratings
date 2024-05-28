# frozen_string_literal: true

class CreateSellertopicTable < ActiveRecord::Migration[6.0]
  def change
    create_table :seller_topic do |t|
      t.string :name
      t.text :description
      t.text :seller_id
      # Add more columns as needed
      t.timestamps
    end
  end
end
