import UIKit

final class LoginViewController: UIViewController {
    
    let loginView: LoginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonAddTarget()
    }
    
    private func setButtonAddTarget() {
        loginView.forgotPasswordButton.addTarget(self, action: #selector(tappedForgotPasswordButton), for: .touchUpInside)
        loginView.newCustomerButton.addTarget(self, action: #selector(tappedSignupButton), for: .touchUpInside)
        loginView.loginButton.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
    }
    
    @objc private func tappedForgotPasswordButton() {
        let forgotViewController = ForgotViewController()
        self.present(forgotViewController, animated: true)
    }
    
    @objc private func tappedSignupButton() {
        let signupViewController = SignupViewController()
        self.present(signupViewController, animated: true)
    }
    
    @objc private func tappedLoginButton() {
        guard checkEmailAndPassword() else {
            loginView.checkEmailAndPasswordLabel.text = "! Please check your email and password."
            return
        }
    }
    
    private func checkEmailAndPassword() -> Bool {
        return loginView.emailTextField.text == "lsyeon98@naver.com" && loginView.passwordTextField.text == "123"
    }
}
