class Student < Base
  # Validations
  validates :name, :register_number, :status, presence: true
  validates :name, :register_number, length: { maximum: 45 }
  validates :status, numericality: { only_integer: true }
end
