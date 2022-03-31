//
//  Student.swift
//  Baitapbuoi3
//
//  Created by Chinh Ng on 29/03/2022.
//

import Foundation

struct Student {
    var studentID, studentName: String
    var age: Int
    var math, literature, english: Double
    var average: Double {
        return (math + literature + english) / 3
    }
    var gender: Gender?
    
    init(id: String, name: String, age: Int, math: Double, literature: Double, english: Double) {
        self.studentID = id
        self.studentName = name
        self.age = age
        self.math = math
        self.literature = literature
        self.english = english
    }
}
