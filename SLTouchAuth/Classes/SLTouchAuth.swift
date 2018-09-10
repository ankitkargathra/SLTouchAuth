//
//  SLTouchAuth.swift
//  Pods-SLTouchAuth_Example
//
//  Created by Rohan on 10/09/18.
//

import Foundation
import UIKit
import LocalAuthentication

public class SLTouchIDAuth {
    
    static public let shared = SLTouchIDAuth()
    public let viewController = UIApplication.shared.delegate?.window??.rootViewController
    
    public func showAlertController(_ message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        viewController?.present(alertController, animated: true, completion: nil)
    }
    
    public func openTouchIDAlert(completion: @escaping(_ success: Bool,_ error: Error?) -> ()) {
        // 1
        let context = LAContext()
        var error: NSError?
        
        // 2
        // check if Touch ID is available
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // 3
            let reason = "Authenticate with Touch ID"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason, reply:
                {(succes, error) in
                    // 4
                    if succes {
                        completion(true,nil)
                    }
                    else {
                        completion(false,error)
                        self.showAlertController("Touch ID Authentication Failed")
                    }
            })
            // 5
        } else {
            showAlertController("Touch ID not available")
        }
    }
    
    
}
