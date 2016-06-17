class Classroom < Base
  belongs_to :student
  belongs_to :course

  # Validations
  validates :student_id, :course_id, :entry_at, presence: true
  validates_uniqueness_of :student_id, if: Proc.new { |classroom| classroom.student_id == student_id }
end
