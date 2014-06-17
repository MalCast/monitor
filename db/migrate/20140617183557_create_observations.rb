class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :name
      t.integer :like
      t.references :issue, index: true

      t.timestamps
    end
  end
end
