# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.
def assignment_score(grade_hash, student, assignment_num)
  grade_hash[student][assignment_num - 1]
end

# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_scores(grade_hash, assignment_num)
  grade_hash.map{|key,array| array[assignment_num-1]}
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_num)
  array = grade_hash.map{|key,array| array[assignment_num-1]}
    newarray = array.reduce(0, :+)
    finalarray = newarray/10
end

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
def averages(grade_hash)
  new_hash = Hash.new()
  grade_hash.map{|key,array| new_hash[key] = array.reduce(:+)}
  new_hash.map{|key,value| new_hash[key] = value/grade_hash[key].length}
  new_hash
end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
def letter_grade(score)
  case score
  when 90..1000
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  when 0..60
    "F"
  end
end



# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)
  grades = Hash.new()
  grade_hash.map{|key,array| grades[key] = array.reduce(0 :+)}
  new_hash.map{|key,value| new_hash[key] = value/grade_hash[key].length}
  new_hash
  case score
  when 90..1000
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  when 0..60
    "F"
  end
end

# Return the average for the entire class.
def class_average(grade_hash)
end

# # Return an array of the top `number_of_students` students.
# def top_students(grade_hash, number_of_students)
# end
