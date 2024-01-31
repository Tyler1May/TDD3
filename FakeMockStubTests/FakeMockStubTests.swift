//
//  FakeMockStubTests.swift
//  FakeMockStubTests
//
//  Created by Tyler May on 1/31/24.
//

import XCTest
@testable import FakeMockStub

class FakeDataBase: StudentNetworkService {
    func addToDataBase(studentName: String) {
        students.append(studentName)
    }
    
    func fetchDataFromDataBass() -> [String] {
        students
    }
    
    var students = [String]()
}

final class FakeMockStubTests: XCTestCase {

    let dataBase = FakeDataBase()
    var studentController: StudentController?
    
    override func setUpWithError() throws {
        self.studentController = StudentController(studentNetwrokService: dataBase)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAdd() {
        XCTAssertTrue(dataBase.students.isEmpty)
        studentController?.addStudent(studentName: "Tyler")
        XCTAssertTrue(dataBase.students.contains("Tyler"))
    }
    
    func testFetch() {
        XCTAssertNotNil(studentController?.students)
        
    }
    

    
}
