class CreateEventCodes < ActiveRecord::Migration
  def change
    create_table :event_codes do |t|
    	t.string :event_code
    	t.integer :date
    end
  end
end
