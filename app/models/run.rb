class Run < ActiveRecord::Base
    belongs_to :shoe
    validates_presence_of :miles_run, :date, :location, :shoe_id
end