//
//  GetInfoAPI.swift
//  SOPT_week4
//
//  Created by 이상엽 on 5/8/25.
//

import Foundation

func makeRequest(keyword: String?) -> URLRequest? {
    var urlString = "http://api.atsopt-seminar4.site/api/v1/users"
    
    if let keyword = keyword, !keyword.isEmpty,
        let encoded = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
        urlString += "?keyword=\(encoded)"
    }
    
    guard let url = URL(string: urlString) else {return nil}
    
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    return request
}

func makeRequestChangeName(body: Data?, userId: Int64?) -> URLRequest? {
    guard let userId = userId,
              let url = URL(string: "http://api.atsopt-seminar4.site/api/v1/users") else {
            return nil
        }
    var request = URLRequest(url:url)
    request.httpMethod = "PATCH"
    let header = ["Content-Type": "application/json", "userId": String(userId)]
    header.forEach{ request.setValue($0.value, forHTTPHeaderField: $0.key)
    }
    if let body = body {
        request.httpBody = body
    }
 
    return request
}
