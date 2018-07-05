class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end


  def fail_student(student_name, test_name)
    test_to_fail = BoatingTest.all.find do |bt|
      bt.student.first_name == student_name && bt.test_name == test_name
    end
    test_to_fail.test_status = "Failed"
  end

  def pass_student(student_name, test_name)
    test_to_pass = BoatingTest.all.find do |bt|
      bt.student.first_name == student_name && bt.test_name == test_name
    end
    test_to_pass.test_status = "Passed"
  end


  def boating_tests
    BoatingTest.all.select {|bt| bt.instructor == self}
  end

end
