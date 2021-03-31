class CreateTales < ActiveRecord::Migration[5.2]
  def change
    create_table :tales do |t|
      t.string :title
      t.string :description
      t.belongs_to :creatrix

      t.timestamps
    end
  end
end
