require_relative '../config/environment'

dan = Student.new("Dan", "Chung")
peter = Student.new("Peter", "Hargarten")
alex = Student.new("Alex", "Neustein")

anthony = Instructor.new("Anthony")
greg = Instructor.new("Greg")

dan.add_boating_test(anthony, "Easy", "Pending")
peter.add_boating_test(anthony, "Test", "Pending")
alex.add_boating_test(greg, "Final", "Pending")

anthony.fail_student("Dan", "Easy")
anthony.fail_student("Peter", "Test")
greg.pass_student("Alex", "Final")



# Pry.start
binding.pry
