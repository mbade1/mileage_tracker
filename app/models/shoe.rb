class Shoe < ActiveRecord::Base
    belongs_to :user
    validates :name, :date, :new_mileage, :current_mileage, :latest_run, :price, presence: true

end


