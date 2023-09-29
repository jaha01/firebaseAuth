//
//  AlertManager.swift
//  firebaseAuth
//
//  Created by Jahongir Anvarov on 24.09.2023.
//

import UIKit

class AlertManager {
    
    // Private methods
    private static func showBasicAlert(on vc: UIViewController, with title: String, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dissmiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
    }
}

// validation alerts
extension AlertManager {
    
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Invalid Email", message: "Please enter a valid Email")
    }
    
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Invalid Password", message: "Please enter a valid Password")
    }
    
    public static func showInvalidUserAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Invalid User", message: "Please enter a valid User")
    }
}

// MARK: - Registration Errors
extension AlertManager {
    
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Unknown Registration", message: nil)
    }

    public static func showRegistrationErrorAlert(on vc: UIViewController, with error: Error) {
        showBasicAlert(on: vc, with: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Login Errors
extension AlertManager {
    
    public static func showSignInErrorAlert(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Unknown Signin in Error", message: nil)
    }

    public static func showSignInErrorAlert(on vc: UIViewController, with error: Error) {
        showBasicAlert(on: vc, with: "Signin in Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Logout Errors
extension AlertManager {

    public static func showLogoutError(on vc: UIViewController, with error: Error) {
        showBasicAlert(on: vc, with: "Unknown Signin in Error", message: "\(error.localizedDescription)")
    }
}

// MARK: - Forgot Password
extension AlertManager {
    
    public static func showPasswordResetSent(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Password reset sent", message: nil)
    }

    public static func showErrorPasswordReset(on vc: UIViewController, with error: Error) {
        showBasicAlert(on: vc, with: "Error sending password reset", message: "\(error.localizedDescription)")
    }
}

// MARK: - Fetching User Errors
extension AlertManager {

    public static func showUnknownFetchingUserError(on vc: UIViewController) {
        showBasicAlert(on: vc, with: "Unknown Error Fetching User", message: nil)
    }
    
    public static func showFetchingUserErrors(on vc: UIViewController, with error: Error){
        showBasicAlert(on: vc, with: "Error fetching user", message: "\(error.localizedDescription)")
    }
}
