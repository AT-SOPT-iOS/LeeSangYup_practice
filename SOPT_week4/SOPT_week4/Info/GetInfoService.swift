//
//  GetInfoService.swift
//  SOPT_week4
//
//  Created by 이상엽 on 5/3/25.
//

import Foundation

final class GetInfoService {
    
    static let shared = GetInfoService()
    private init() {}
    
    func fetchNicknameList(keyword: String?) async throws -> [String] {
        guard let request = makeRequest(keyword: keyword) else {
            throw NetworkError.requestEncodingError
        }
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.responseError
        }
        do {
            let decoded = try JSONDecoder().decode(NicknameListResponseWrapper.self, from: data)
            return decoded.data.nicknameList
        } catch {
            print("디코딩 실패:", error)
            throw NetworkError.responseDecodingError
        }
    }
    
    func changeName(token: Int64?, newNickname: String) async throws -> NicknameChangeResponseModel {
        let body = try JSONEncoder().encode(NicknameChangeRequestModel(nickname: newNickname))
        
        guard let request = makeRequestChangeName(body: body, userId: token) else {
            throw NetworkError.requestEncodingError
        }

        let (data, response) = try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.responseError
        }

        do {
            let decoded = try JSONDecoder().decode(NicknameChangeResponseModel.self, from: data)
            return decoded
        } catch {
            print("디코딩 실패:", error)
            throw NetworkError.responseDecodingError
        }
    }
}
