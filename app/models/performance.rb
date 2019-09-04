class Performance < ApplicationRecord

  has_many :performance_tricks
  has_many :tricks, through: :performance_tricks

end
