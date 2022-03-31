//
//  main.swift
//  Baitapbuoi3
//
//  Created by Chinh Ng on 29/03/2022.
//

import Foundation


var st1 = Student(id: "1", name: "A", age: 1, math: 4, literature: 5, english: 6)
var st2 = Student(id: "2", name: "B", age: 2, math: 10, literature: 9, english: 8)
var st3 = Student(id: "3", name: "C", age: 3, math: 5, literature: 6, english: 7)
var st4 = Student(id: "4", name: "D", age: 4, math: 6, literature: 8, english: 7)

var class1 = Class(classID: "1", className: "1", teacherName: "A")

// 1
class1.add(student: st1)
class1.add(student: st2)
class1.add(student: st3)
class1.add(student: st4)

print(class1.students)

// 2
class1.updateInfoBy(studentID: "1")

// 3
class1.removeStudentBy(studentID: "2")

// 4
class1.findStudentBy(studentName: "D")

// 5
class1.sortByAvg()

// 6
class1.displayStudents()
