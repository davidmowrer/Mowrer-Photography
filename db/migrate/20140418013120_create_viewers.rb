class CreateViewers < ActiveRecord::Migration
  def change
    create_table :viewers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :event_code
    	t.timestamp :updated_at
    end
  end
end
