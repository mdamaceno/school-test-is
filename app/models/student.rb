class Student < Base
  has_one :classroom

  # Validations
  validates :name, :register_number, :status, presence: true
  validates :name, :register_number, length: { maximum: 45 }
  validates :status, :register_number, numericality: { only_integer: true }

  # EnumerateIt
  has_enumeration_for :status, with: Status
end
