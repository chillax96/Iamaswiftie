// To-Do List
// 1. Add slider
// 2. Add 'HIT Buton'
// 3. Receive value changed events from the slider
// 4. Add "Reset Button"
// 5. Add labels presenting information
// 6. Generate the random number
// 7. Compare the random number with input number
// 8. show alerts
// 9. Implement 'rest' feature
// 10. Add 'credit' view

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 슬라이더를 사용자가 잡아끌때 동작하게 하는 코드
    @IBAction func sliderValueChanged(_ sender: UISlider){
        print(sender.value)
    }
    // 버튼을 클릭했을 때 value 값을 출력하는 코드
    @IBAction func touchUpHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    
    // 글자 변경시 Refactor > Rename! (오류 방지)
    @IBAction func touchUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
    }
}
