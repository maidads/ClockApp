import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    let formatter = DateFormatter()
    
    var timer : Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.timeStyle = DateFormatter.Style.medium
        
        updateTimeLabel()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: updateTimeLabel(timer:))
    }

    
    func updateTimeLabel(timer: Timer? = nil) {
        let date = Date()
        let dateString = formatter.string(from: date)
        
        timeLabel.text = dateString
    }
    
    deinit {
        timer?.invalidate()
    }
}
