import UIKit

class ForgotPasswordView: UIView {
    
    lazy var mainLabel: UILabel = {
        let lb: UILabel = UILabel()
        lb.text = "Reset your password"
        lb.font = .preferredFont(forTextStyle: .title1)
        lb.textAlignment = .center
        self.addSubview(lb)
        return lb
    }()
    
    lazy var subLabel: UILabel = {
        let lb: UILabel = UILabel()
        lb.numberOfLines = 4
        lb.font = .preferredFont(forTextStyle: .footnote)
        lb.text = "Please enter your registered email address.\nWe will send you a new password in a few minutes."
        lb.textAlignment = .center
        self.addSubview(lb)
        return lb
    }()
    
    lazy var emailTextField: TextFieldUnderline = {
        let tf = TextFieldUnderline(frame: CGRect(x: 50, y: 50, width: 300, height: 30))
        tf.placeholder = "email"
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        self.addSubview(tf)
        return tf
    }()
    
    lazy var sendButton: UIButton = {
        let bt: UIButton = UIButton()
        bt.setTitle("Send", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = .black
        bt.layer.masksToBounds = true
        bt.layer.cornerRadius = 30
        self.addSubview(bt)
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setAutolayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setAutolayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 230),
            mainLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            mainLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            
            subLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 20),
            subLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            subLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 30),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50),
            
            sendButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 40),
            sendButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            sendButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            sendButton.heightAnchor.constraint(equalToConstant: 60)
            
        ])
    }
}
