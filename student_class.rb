require 'pry'
require 'minitest/pride'

class Student

  attr_reader :name

  def initialize(name)
    @name = name
    @projects = []


  end

  def submit (project_name, grade)

    @projects << [project_name, grade]
  end

  def average_project_grade
    sum=0
    @projects.each do |project|
      sum += project[1]
    end
    sum/@projects.length

  end

  def print_student_average
    p average_project_grade
  end

  def pass?
    if average_project_grade >= 3
      true
    else
      false
    end

  end


end





binding.pry

bob = Student.new("Bob")
