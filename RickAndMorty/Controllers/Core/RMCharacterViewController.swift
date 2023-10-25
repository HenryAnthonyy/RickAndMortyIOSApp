//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Henry Anthony on 2023/9/13.
//

import UIKit


/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Characters"

        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url ?? 0)
        
//        RMService.shared.execute(request, expecting: String.self)
//        {
//            result in switch{
//            case
//            }
//        }
    }
    


}
