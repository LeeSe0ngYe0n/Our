import UIKit

final class SignupViewController: UIViewController {
    
    override func loadView() {
        view = SignupView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
