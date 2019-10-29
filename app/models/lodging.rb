class Lodging < ApplicationRecord
  belongs_to :leg

  validates_presence_of :name,
                        :arrival_date,
                        :departure_date,
                        :city
end
