
import Foundation
import UIKit

extension UIAlertController {

    static func credentialsErrorAlertController(error: CredentialsTester.Error) -> UIAlertController {
        let title = "Error(s) connecting to space with URL parameters occurred"
        let message: String = {
            var message = ""
            for (_, errorMessage) in error.errors {
                message.append("• " + errorMessage + "\n")
            }
            return message
        }()
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK", style: .default) { alertAction in
            controller.dismiss(animated: true, completion: nil)
        })
        return controller
    }

    static func credentialSuccess(credentials: ContentfulCredentials) -> UIAlertController {
        let title = "New space detected"
        let message = """
        You've connected to a new space with id: \(credentials.spaceId) using url deep links.
        A new app session remaining connected to a space starts now and will expire in 48 hours.
        """
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK", style: .default) { alertAction in
            controller.dismiss(animated: true, completion: nil)
        })
        return controller

    }
}
