class BoatingTest

  attr_accessor :test_status
  attr_reader :test_name, :instructor, :student

  @@all = []

  def initialize(instructor, test_name, test_status, student)
    @instructor = instructor
    @test_name = test_name
    @test_status = test_status
    @student = student

    @@all << self
  end

  def self.all
    @@all
  end
end
