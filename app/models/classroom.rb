class Classroom < Base
  belongs_to :student
  belongs_to :course

  # Validations
  validates :student_id, :course_id, :entry_at, presence: true
end
