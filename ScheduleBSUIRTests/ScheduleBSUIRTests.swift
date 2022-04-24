//
//  ScheduleBSUIRTests.swift
//  ScheduleBSUIRTests
//
//  Created by Artem Kutasevich on 2.04.22.
//

import XCTest
@testable import ScheduleBSUIR

class ScheduleBSUIRTests: XCTestCase {
    
    let selectedGroup = 924403
    var viewModel: ScheduleViewModel!
    
    override func setUp() {
        viewModel = ScheduleViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
    }
    
    func testScheduleNotNilForUncreatedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: 000000)
            XCTAssertNotNil(self.viewModel.schedule, "Schedule is nil")
        }
    }
    
    func testScheduleNotNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule, "Schedule is nil")
        }
    }
    
    func testScheduleStudentGroupNotNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.studentGroup, "studentGroup is nil")
        }
    }
    
    func testScheduleSchedulesNotNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.schedules, "schedule is nil")
        }
    }
    
    func testScheduleTodayDateNotNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.todayDate, "todayDate is nil")
        }
    }
    
    func testScheduleTodaySchedulesNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.todaySchedules, "todaySchedules is nil")
        }
    }
    
    func testScheduleCurrentWeekNumberNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.currentWeekNumber, "currentWeekNumber is nil")
        }
    }
    
    func testScheduleDateStartNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.dateStart, "dateStart is nil")
        }
    }
    
    func testScheduleDateEndNilForSelectedGroup() {
        let viewModel = ScheduleViewModel()
        DispatchQueue.main.async {
            viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(viewModel.schedule?.dateEnd, "dateEnd is nil")
        }
    }
    
    func testScheduleSessionStartNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.sessionStart, "sessionStart is nil")
        }
    }
    
    func testScheduleSessionEndNilForSelectedGroup() {
        DispatchQueue.main.async {
            self.viewModel.makeScheduleFor(group: self.selectedGroup)
            XCTAssertNotNil(self.viewModel.schedule?.sessionEnd, "sessionEnd is nil")
        }
    }
}
