import UIKit

final class LoginViewController: UIViewController {
    
    private var loginView: LoginView {
        guard let loginView = view as? LoginView else { return LoginView() }
        return loginView
    }
    
    override func loadView() {
        view = LoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonAddTarget()
    }
    
    private func setButtonAddTarget() {
        loginView.forgotPasswordButton.addTarget(self, action: #selector(tappedForgotPasswordButton), for: .touchUpInside)
        loginView.loginButton.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
    }
    
    @objc private func tappedForgotPasswordButton() {
        let nextVC = ForgotViewController()
        self.present(nextVC, animated: true)
    }
    
    @objc private func tappedLoginButton() {
        guard checkEmailAndPassword() else {
            loginView.checkEmailAndPasswordLabel.textColor = .systemRed
            return
        }
    }
    
    private func checkEmailAndPassword() -> Bool {
        return loginView.emailTextField.text == "lsyeon98@naver.com" && loginView.passwordTextField.text == "123"
    }
}
