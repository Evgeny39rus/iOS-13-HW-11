//
//  ViewController.swift
//  IOS-13-11
//
//  Created by Евгений Сушков on 05.06.2024.
//

import UIKit


                                            
class ViewController: UIViewController {
    
    @IBOutlet weak var Login: UILabel!
    
    @IBOutlet weak var usernameTextField:UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    

    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let text = "Login"  // Настройка текста с обводкой
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

        usernameTextField.placeholder = "Login"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.setLeftIcon(UIImage.iconsFace)
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.setLeftIcon(UIImage.iconPass)
    }
}


extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
