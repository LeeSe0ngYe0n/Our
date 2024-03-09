import UIKit

final class LoginViewController: UIViewController {
    
    let login: LoginView = LoginView()
    
    override func loadView() {
        view = LoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonAddTarget()
    }
    
    private func setButtonAddTarget() {
        guard let loginView = view as? LoginView else { return }
        loginView.forgotPasswordButton.addTarget(self, action: #selector(tappedForgotPasswordButton), for: .touchUpInside)
        loginView.loginButton.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
    }
    
    @objc private func tappedForgotPasswordButton() {
        let nextVC = ForgotViewController()
        self.present(nextVC, animated: true)
    }
    
    @objc private func tappedLoginButton() {
        guard let loginView = view as? LoginView else { return }
        if loginView.emailTextField.text != "lsyeon98@naver.com" && login.passwordTextField.text != "123" {
            loginView.checkEmailAndPasswordLabel.textColor = .systemRed
        }
    }
}
