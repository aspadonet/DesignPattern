

import UIKit

class ViewController: UIViewController {
    
    var authServise: AuthentificationServise = GoogleAuthenticatorAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createUser(email: "1111", password: "wer")
    }
    
    func createUser(email: String, password: String){
        authServise.login(email: email, password: password, success: { (user, token) in
            print ("\(user.email) , \(token.value)")
        }) { (error) in
            if let error = error{print(error.localizedDescription)}
        }
    }


}

