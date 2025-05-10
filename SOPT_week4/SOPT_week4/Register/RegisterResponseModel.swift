//
//  RegisterRequestMdoel.swift
//  SOPT_week4
//
//  Created by 이상엽 on 5/3/25.
//

import Foundation

struct RegisterResponseWrraper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: RegisterResponseBody
}

struct RegisterResponseBody: Codable {
    let userId: Int
    let nickname: String
}
