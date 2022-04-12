

import Foundation

class GoogleAuthenticatorAdapter: AuthentificationServise {
    
    private var autentificator = GoogleAuthenticator()
       
    
    func login(email: String,
               password: String,
               success: @escaping (User, Token) -> Void,
               failure: @escaping (Error?) -> Void) {
        autentificator.login(email: email, password: password) { (currentUser, error) in
            guard let currentUser = currentUser else {return failure(error)}
            
            let user = User(email: currentUser.email, password: currentUser.password)
            let token = Token(value: currentUser.token)
            
            success(user,token)
        }
    }
    
  
}
