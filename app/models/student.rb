class Student

  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

    @@all << self
  end

  def self.full_names
    self.all.map {|student| "#{student.first_name} #{student.last_name}"}
  end

  def self.all
    @@all
  end

  def self.find_student(full_name)
    self.all.find {|student| full_name ==  "#{student.first_name} #{student.last_name}"}
  end


  def add_boating_test(instructor, test_name, test_status)
    BoatingTest.new(instructor, test_name, test_status, self)
  end

end
