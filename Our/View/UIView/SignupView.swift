import UIKit

final class SignupView: UIView {
    
    lazy var emailTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "Email"
        tf.keyboardType = .emailAddress
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        return tf
    }()
    
    lazy var passwordTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "Password"
        tf.keyboardType = .emailAddress
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        return tf
    }()
    
    lazy var checkPasswordTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "Password"
        tf.keyboardType = .emailAddress
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        return tf
    }()
    
    lazy var phoneTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "Phone Number"
        tf.keyboardType = .phonePad
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        return tf
    }()
    
    lazy var addressTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "Address"
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        return tf
    }()

    lazy var signupButton: UIButton = {
        let bt: UIButton = UIButton()
        bt.setTitle("Login", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .black
        bt.layer.masksToBounds = true
        bt.layer.cornerRadius = 30
        self.addSubview(bt)
        return bt
    }()
    
    lazy var textFieldStackView: UIStackView = {
        let sv: UIStackView = UIStackView(arrangedSubviews: [
            emailTextField,
            passwordTextField,
            checkPasswordTextField,
            phoneTextField,
            addressTextField
        ])
        sv.axis = .vertical
        sv.spacing = 35
        
        self.addSubview(sv)
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setAutolayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setAutolayout() {
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textFieldStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 200),
            textFieldStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            textFieldStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            signupButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 30),
            signupButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            signupButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            signupButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
