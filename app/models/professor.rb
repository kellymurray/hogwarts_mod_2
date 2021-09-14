class Professor <ApplicationRecord
  has_many :professor_students
  has_many :students, through: :professor_students
  validates :name, :age, :specialty, presence: true
end

def average_student_age
   students.average(:age)
 end

# def order_students
#   students.order(:name)
# end
