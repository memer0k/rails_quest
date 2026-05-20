class Mission < ApplicationRecord
  belongs_to :agent
  
  validates :title, presence: true
  validates :status, presence: true
  validate :valid_status
  
  def status=(value)
    if value.nil?
      super(nil)
    elsif !%w[pending in_progress completed failed].include?(value)
      raise ArgumentError, "Invalid status"
    else
      super(value)
    end
  end
  
  private
  
  def valid_status
    if status.present? && !%w[pending in_progress completed failed].include?(status)
      errors.add(:status, "is not valid")
    end
  end
end
