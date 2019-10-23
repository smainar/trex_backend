class Lodging < ApplicationRecord
  belongs_to :destination

  validates_presence_of :name,
                        :arrival_date,
                        :departure_date,
                        :city
end
