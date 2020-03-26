import UIKit

class HomeViewController: UIViewController {
    private let viewModel: HomeViewModel

    @IBOutlet weak var stackContainerView: UIView!
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: String(describing: Self.self), bundle: nil)
        self.title = self.viewModel.title
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction func quizTapped(_ sender: Any) {
        viewModel.quizTapped()
    }
    @IBAction func debugTapped(_: UIButton) {
        viewModel.debugTapped()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stackContainerView.layer.cornerRadius = 10
        self.stackContainerView.layer.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1).cgColor
        //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-shadow-to-a-uiview
        self.stackContainerView.layer.shadowColor = UIColor.black.cgColor
        self.stackContainerView.layer.shadowOpacity = 1
        self.stackContainerView.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.stackContainerView.layer.shadowRadius = 3
    }
}
