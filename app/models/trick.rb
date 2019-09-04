class Trick < ApplicationRecord

  has_many :performance_tricks
  has_many :performances, through: :performance_tricks

end
