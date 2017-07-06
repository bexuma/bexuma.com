class CreateTenThousandDays < ActiveRecord::Migration[5.0]
  def change
    create_table :ten_thousand_days do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
