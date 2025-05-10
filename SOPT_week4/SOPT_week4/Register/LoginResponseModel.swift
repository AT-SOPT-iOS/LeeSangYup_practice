//
//  LoginResponseModel.swift
//  SOPT_week4
//
//  Created by 이상엽 on 5/8/25.
//

import Foundation

struct LoginResponseWrraper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: LoginResponseBody
}

struct LoginResponseBody: Codable {
    let userId: Int
}
