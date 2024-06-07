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
        
        // Настройка текста с обводкой
        let text = "Login"
        let strokeTextAttributes: [NSAttributedString.Key: Any] = [
           .strokeColor: UIColor.black, // Цвет обводки
           .strokeWidth: -1.0 // Толщина обводки (отрицательное значение для внутренней обводки)
        ]
        let attributedText = NSAttributedString(string: text, attributes: strokeTextAttributes)
               
        // Установка атрибутированного текста в UILabel
        Login.attributedText = attributedText

        // Дополнительная настройка UILabel
        Login.textAlignment = .center
        Login.translatesAutoresizingMaskIntoConstraints = false
        Login.backgroundColor = Login.backgroundColor
        
        
        usernameTextField.placeholder = "Login"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.setLeftIcon(UIImage.iconsFace)
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.setLeftIcon(UIImage.iconPass)
    }
}
// Добавление тени к кнопке
extension UIButton {
    func applyShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
}

// Добавление иконки в TextField
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
