import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var detailsLabel: UILabel!

    var animalArray: [Animal] = [
        Animal(name: "キリン", details: "アフリカのサバンナに住んでいる。舌がとても長い。頭に生えた角も特徴的。", imageName: "kirin.jpg"),
        Animal(name: "キングペンギン", details: "オウサマペンギンとも呼ばれる。南極の島々に生息し、魚類やイカなどを食べる。", imageName: "penguin.jpg"),
        Animal(name: "カンガルー", details: "オーストラリア固有の動物で、お腹に袋を持つ有袋類の一種。走るのが速い。", imageName: "kangaroo.jpg")
    ]
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }

    @IBAction func next() {
        index = index + 1
        setUI()
    }
    
    @IBAction func back() {
        index = index - 1
        setUI()
    }
    
    func setUI() {
        imageView.image = animalArray[index].getImage()
        nameLabel.text = animalArray[index].name
        detailsLabel.text = animalArray[index].details
    }
    
}

