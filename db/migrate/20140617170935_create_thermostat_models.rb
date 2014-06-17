class CreateThermostatModels < ActiveRecord::Migration
  def change
    create_table :thermostat_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
