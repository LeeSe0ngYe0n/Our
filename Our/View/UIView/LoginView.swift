import UIKit

final class LoginView: UIView {
    
    lazy var loginLabel: UILabel = {
        let lb: UILabel = UILabel()
        lb.text = "Our"
        lb.textColor = .black
        lb.font = .preferredFont(forTextStyle: .largeTitle)
        lb.textAlignment = .center
        self.addSubview(lb)
        return lb
    }()
    
    lazy var emailTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "email"
        tf.keyboardType = .emailAddress
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        self.addSubview(tf)
        return tf
    }()
    
    lazy var passwordTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "Password"
        tf.keyboardType = .default
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.isSecureTextEntry = true
        self.addSubview(tf)
        return tf
    }()
    
    lazy var forgotPasswordButton: UIButton = {
        let bt: UIButton = UIButton()
        bt.setTitle("Forgot Password", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.titleLabel?.font = .preferredFont(forTextStyle: .subheadline)
        self.addSubview(bt)
        return bt
    }()
    
    lazy var newCustomerButton: UIButton = {
        let bt: UIButton = UIButton()
        bt.setTitle("New Customer", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.titleLabel?.font = .preferredFont(forTextStyle: .subheadline)
        self.addSubview(bt)
        return bt
    }()
    
    lazy var checkEmailAndPasswordLabel: UILabel = {
        let lb: UILabel = UILabel()
        lb.textColor = .systemRed
        lb.font = .preferredFont(forTextStyle: .footnote)
        lb.textAlignment = .center
        self.addSubview(lb)
        return lb
    }()
    
    lazy var loginButton: UIButton = {
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
        let sv: UIStackView = UIStackView()
        sv.addArrangedSubview(emailTextField)
        sv.addArrangedSubview(passwordTextField)
        sv.axis = .vertical
        sv.spacing = 24
        self.addSubview(sv)
        return sv
    }()
    
    lazy var forgotPasswordAndNewCustomerStackView: UIStackView = {
        let sv: UIStackView = UIStackView()
        sv.addArrangedSubview(forgotPasswordButton)
        sv.addArrangedSubview(newCustomerButton)
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 10
        self.addSubview(sv)
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setAutoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: AutoLayout
    private func setAutoLayout() {
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordAndNewCustomerStackView.translatesAutoresizingMaskIntoConstraints = false
        checkEmailAndPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 200),
            loginLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100),
            loginLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -100),
            
            textFieldStackView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 40),
            textFieldStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            textFieldStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            forgotPasswordAndNewCustomerStackView.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 20),
            forgotPasswordAndNewCustomerStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 55),
            forgotPasswordAndNewCustomerStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -55),
            
            checkEmailAndPasswordLabel.topAnchor.constraint(equalTo: forgotPasswordAndNewCustomerStackView.bottomAnchor, constant: 4),
            checkEmailAndPasswordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            checkEmailAndPasswordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            loginButton.topAnchor.constraint(equalTo: checkEmailAndPasswordLabel.bottomAnchor, constant: 15),
            loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}

