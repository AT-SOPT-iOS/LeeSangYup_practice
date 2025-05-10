//
//  RegisterResponseModel.swift
//  SOPT_week4
//
//  Created by 이상엽 on 5/3/25.
//

import Foundation

struct RegisterRequestBody: Codable {
    let loginId: String
    let password: String
    let nickname: String
}
