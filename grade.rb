grade = 10
school = case grade
when 0..5
   "elementary"
when 6..8
   "middle school"
when 9..12
   "high school"
else
   "college"
end
puts "grade #{grade} is in #{school}"