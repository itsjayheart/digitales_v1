class CreateMStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :m_statements do |t|
      t.string :title
      t.string :description
      t.belongs_to :tale

      t.timestamps
    end
  end
end
