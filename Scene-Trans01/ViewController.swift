//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by 육건 on 2022/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func moveNext(_ sender: Any) {
    // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조
        let uvc = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        
    // 화면 전활할 때의 애니메이션 타입
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
    // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레젠트 메소드 호출
        self.present(uvc, animated: true)
    }
}
