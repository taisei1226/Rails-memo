class CreateRegs < ActiveRecord::Migration[7.0]
  def change
    create_table :regs do |t|
      t.string :title
      t.string :content
      t.integer :post_id
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end
end
