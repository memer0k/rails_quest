class Mission < ApplicationRecord
  belongs_to :agent
  
  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: %w[pending in_progress completed failed] }
end
