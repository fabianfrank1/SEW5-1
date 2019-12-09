
import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //Disable Rotation
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override open var shouldAutorotate: Bool {
        return false
    }
    
    //Function key pressed
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(from: sender)
        sender.alpha=0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha=1.0
        }
      

    }
    
    //Play Sounds

    var player: AVAudioPlayer?

    func playSound(from: UIButton) {
        guard let url = Bundle.main.url(forResource: from.titleLabel?.text, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

    

}

