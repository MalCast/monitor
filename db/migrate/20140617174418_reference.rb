class Reference < ActiveRecord::Migration
  def change
    add_reference :thermostats, :thermostatmodel, index: true
  end
end
