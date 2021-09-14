class Student <ApplicationRecord
  has_many :professor_students
  has_many :professors, through: :professor_students
  validates :name, :age, :house, presence: true


  def professor_count
      professors.count
  end

  def self.average_student_age
      average(:age)
  end

end
