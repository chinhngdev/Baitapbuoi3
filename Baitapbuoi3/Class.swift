//
//  Class.swift
//  Baitapbuoi3
//
//  Created by Chinh Ng on 29/03/2022.
//

import Foundation

struct Class {
    var classID, className, teacherName: String
    var students: [Student] = []
    
    init(classID: String, className: String, teacherName: String) {
        self.classID = classID
        self.className = className
        self.teacherName = teacherName
    }
    
    // 1
    mutating func add(student: Student) {
        students.append(student)
    }
    
    // 2
    mutating func updateInfoBy(studentID: String) {
        
        for i in 0..<students.count {
            if students[i].studentID == studentID {
                print("Ten sinh vien")
                let studentName = readLine() ?? ""
                print("Tuoi: ")
                let age = Int(readLine() ?? "") ?? 6
                print("Diem toan: ")
                let math = Double(readLine() ?? "") ?? 0
                print("Diem van: ")
                let literature = Double(readLine() ?? "") ?? 0
                print("Diem tieng anh: ")
                let english = Double(readLine() ?? "") ?? 0
                
                students[i].studentName = studentName
                students[i].age = age
                students[i].math = math
                students[i].literature = literature
                students[i].english = english
            }
        }
    }
    
    // 3
    mutating func removeStudentBy(studentID: String) {
        var count = 0
        for student in students {
            if student.studentID == studentID {
                students.remove(at: count)
            }
            count += 1
        }
    }
    
    // 4
    func findStudentBy(studentName: String) {
        for student in students {
            if student.studentName == studentName {
                print(student)
                return
            }
        }
    }
    
    // 5
    mutating func sortByAvg() {
        self.students = students.sorted {
            $0.average < $1.average
        }
        print(students)
    }
    
    // 6
    func displayStudents() {
        print(students)
    }
}
