//
// Created by kzonix on 3/3/19.
//

import Foundation
import Vapor


public struct User : Content {
    let login: String
    let email: String
    let firstName: String
    let lastName: String
}

public class UserModel {
}

