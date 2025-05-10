//
//  LoginRequestModel.swift
//  SOPT_week4
//
//  Created by 이상엽 on 5/8/25.
//

import Foundation

struct LoginRequestBody: Codable {
    let loginId: String
    let password: String
}
