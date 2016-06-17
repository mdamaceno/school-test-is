class Course < Base
  # Validations
  validates :name, :status, presence: true
  validates :name, :description, length: { maximum: 45 }
  validates :status, numericality: { only_integer: true }

  # EnumerateIt
  has_enumeration_for :status, with: Status
end
