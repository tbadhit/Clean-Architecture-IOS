//
//  ViewController.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let useCase = Injection.init().provideUseCase()
        let presenter = MessagePresenter(useCase: useCase)
        let message = presenter.getMessage(name: "Kumang")
        
        welcome.text = message.welcomeMessage
    }


}

