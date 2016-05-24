students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   while y < students.length
    current_student  = students[y][x]

    if current_student[1] == 10
      best_students.push(current_student[0])
    end

    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

# -------------------------
# PSEUDOCODIGO

-studentes = [[[]]] the array of arrays containing the students information is created

-method best_studentes 

  -An empty array is defined to save the best studentes "best_students"
  -Two variables (coordinates) are initialized to go over the entire array of arrays

  - While the "Y" coordinate is lower than the array length
    - save the student info in a variable "current_student"

  - if the grade of the current student equals 10
    - push the student name to best_students 

  - if student is the last in the array
    - coordinates values are modified to enter the next array and start with the first student

- Fin

