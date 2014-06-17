class AddThermostatModelRefToThermostat < ActiveRecord::Migration
  def change
  	 def change
    add_reference :thermostat, :thermostatmodel, index: true
  end
  end
end
