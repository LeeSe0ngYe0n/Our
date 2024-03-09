import UIKit

final class SignUpView: UIView {
    
    lazy var emailTextField: UITextField = {
        let tf: UITextField = UITextField()
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf: UITextField = UITextField()
        return tf
    }()
    
    lazy var checkPasswordTextField: UITextField = {
        let tf: UITextField = UITextField()
        return tf
    }()
    
    lazy var phoneTextField: UITextField = {
        let tf: UITextField = UITextField()
        return tf
    }()
    
    lazy var addressTextField: UITextField = {
        let tf: UITextField = UITextField()
        return tf
    }()
    
    lazy var signupButton: UIButton = {
        let bt: UIButton = UIButton()
        return bt
    }()
    
    lazy var textFieldStackView: UIStackView = {
        let sv: UIStackView = UIStackView()
        sv.addArrangedSubview(emailTextField)
        sv.addArrangedSubview(passwordTextField)
        sv.addArrangedSubview(checkPasswordTextField)
        sv.addArrangedSubview(phoneTextField)
        sv.addArrangedSubview(addressTextField)
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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
            signupButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            signupButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
        ])
    }
}
