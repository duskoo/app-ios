import UIKit

class HomeViewController: UIViewController {
    private let viewModel: HomeViewModel

    @IBOutlet weak var stackContainerView: UIView!
    @IBOutlet weak var stackContainerViewTwo: UIView!
    @IBAction func checkInButtonTapped(_ sender: UIButton) {
        viewModel.quizTapped()
    }
    @IBAction func seeAlertsButtonTapped(_ sender: UIButton) {
        viewModel.seeAlertsTapped()
    }
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
              
        configureCardView(cardView: self.stackContainerView)
        configureCardView(cardView: self.stackContainerViewTwo)
    }
    
    private func configureCardView(cardView: UIView){
        cardView.layer.cornerRadius = 6
        cardView.layer.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1).cgColor
        //https://www.hackingwithswift.com/example-code/uikit/how-to-add-a-shadow-to-a-uiview
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowOffset = CGSize(width: 0, height: 3)
        cardView.layer.shadowRadius = 3
    }
}
