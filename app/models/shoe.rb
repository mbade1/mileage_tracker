class Shoe < ActiveRecord::Base
    belongs_to :user
    has_many :runs
    validates :name, :date, :new_mileage, :current_mileage, :price, presence: true
end