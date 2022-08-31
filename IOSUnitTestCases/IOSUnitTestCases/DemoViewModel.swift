//
//  DemoViewModel.swift
//  IOSUnitTestCases
//
//  Created by Roma Patel on 31/08/22.
//

import Foundation

class DemoViewModel {

    func validation(userModel:User) -> Bool {
        if (userModel.name.isEmpty) {
            return false
        } else if (userModel.email.isEmpty) {
            return false
        } else if (!isValidEmail(testStr: userModel.email)){
            return false
        } else if (userModel.password.isEmpty){
            return false
        }
        return true
    }

    func isValidEmail(testStr:String) -> Bool {

        print("validate emilId: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result

    }
}
