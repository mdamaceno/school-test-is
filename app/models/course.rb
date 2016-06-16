class Course < Base
  validates :name, :status, presence: true
  validates :name, :description, length: { maximum: 45 }
  validates :status, numericality: { only_integer: true }
end
