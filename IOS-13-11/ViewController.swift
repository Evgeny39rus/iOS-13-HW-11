//
//  ViewController.swift
//  IOS-13-11
//
//  Created by Евгений Сушков on 05.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Login: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        
        
        // Настройка текста с обводкой
               let text = "Login"
               let strokeTextAttributes: [NSAttributedString.Key: Any] = [
                   .strokeColor: UIColor.black, // Цвет обводки
                   .foregroundColor: UIColor.gray, // Цвет текста
                   .strokeWidth: -1.0 // Толщина обводки (отрицательное значение для внутренней обводки)
               ]
        let attributedText = NSAttributedString(string: text, attributes: strokeTextAttributes)
               
               // Установка атрибутированного текста в UILabel
               Login.attributedText = attributedText
               
               // Дополнительная настройка UILabel
               Login.textAlignment = .center
               Login.backgroundColor = .white // Фоновый цвет для лучшей видимости
               Login.translatesAutoresizingMaskIntoConstraints = false
//        Login.text = "Login"
//        Login.textAlignment = .center
//        Login.backgroundColor = .white // Фоновый цвет для лучшей видимости
//        Login.translatesAutoresizingMaskIntoConstraints = false
//        
//        Login.layer.borderColor = UIColor.black.cgColor // Цвет обводки
//        Login.layer.borderWidth = 2.0 // Толщина обводки
//        Login.layer.cornerRadius = 10.0 // Радиус закругления углов (опционально)
//        Login.layer.masksToBounds = true // Обязателен для закругления углов
    }

 
    
}

