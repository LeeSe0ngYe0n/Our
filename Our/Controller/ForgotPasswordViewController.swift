import UIKit

final class ForgotViewController: UIViewController {
    
    override func loadView() {
        view = ForgotPasswordView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
