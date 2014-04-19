class Viewer < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :event_code, presence: true
end