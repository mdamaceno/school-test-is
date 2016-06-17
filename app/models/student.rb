class Student < Base
  has_one :classrooms

  # Validations
  validates :name, :register_number, :status, presence: true
  validates :name, :register_number, length: { maximum: 45 }
  validates :status, numericality: { only_integer: true }

  # EnumerateIt
  has_enumeration_for :status, with: Status
end
