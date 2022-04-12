

import Foundation


public struct User{
    public var email: String
    public var password: String
}

public struct Token{
    public let value: String
}

public protocol AuthentificationServise{
    func login(email:String,
        password:String,
        success: @escaping(User,Token)-> Void,
        failure: @escaping(Error?) -> Void)
            
}
