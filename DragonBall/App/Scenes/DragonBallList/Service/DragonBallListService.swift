//
//  DragonBallListService.swift
//  DragonBall
//
//  Created by Jefferson Naranjo rodríguez on 28/09/22.
//

import Foundation

class DragonBallListService {
    
    func getCharacters(onComplete: @escaping (DragonBallListDTO) -> Void,
                       onError: @escaping (String) -> Void) {
        ApiManager.shared.getCall(url: "https://dragon-ball-super-api.herokuapp.com/api/characters") { response in
            switch response {
            case .success(let data):
                do {
                    if let data = data {
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        let result = try
                        decoder.decode(DragonBallListDTO.self, from: data)
                        //Aquí falta el OnComplete, min18:46
                    }
                } catch {
                    onError("JSON couldn't be processed")
                }
            case .failure(_):
                onError("Error in API")
            }
        }
    }
}
