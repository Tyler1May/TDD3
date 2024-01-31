//
//  pretendthings.swift
//  FakeMockStub
//
//  Created by Tyler May on 1/31/24.
//

import Foundation

//protocol Learn {
//    func reading()
//    func listening()
//    
//    func didLearn() -> Bool
//}
//
//class FakeStudent: Learn {
//    
//    
//    var student: Array = ["Jimmy", "Tom", "Alex"]
//    var passFailDictionary: [String: Bool] = ["History": false]
//    
//    var isReading: Bool
//    var isListening: Bool
//    
//    func reading() {
//        isReading = true
//    }
//    
//    func listening() {
//        isListening = true
//    }
//    
//    func didLearn() -> Bool {
//        isReading && isListening
//    }
//    init(isReading: Bool, isListening: Bool) {
//        
//        self.isListening = isListening
//        self.isReading = isReading
//    }
//    
//    func passClass(className: String) {
//        passFailDictionary[className] = true
//        
//    }
//    
//    
//}

class StudentController {

    var studentNetwrokService: StudentNetworkService
    var students = [String]()
    
    init(studentNetwrokService: StudentNetworkService) {
        self.studentNetwrokService = studentNetwrokService
        students = studentNetwrokService.fetchDataFromDataBass()
    }
    
    func addStudent(studentName: String) {
        studentNetwrokService.addToDataBase(studentName: studentName)
        students.append(studentName)
    }
    
    
}



protocol StudentNetworkService {
    func addToDataBase(studentName: String)
    func fetchDataFromDataBass() -> [String]
}

//class RealNetworkController: StudentNetworkService {
//    //does the actuall work
//}



