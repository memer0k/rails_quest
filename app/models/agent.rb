class Agent < ApplicationRecord
  validates :codename, presence: true, uniqueness: true
  validates :level, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :active, inclusion: { in: [true, false] }
end
