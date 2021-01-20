class Adventure < ApplicationRecord
  belongs_to :character
  belongs_to :location
end
