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
        // 이동할 뷰 컨트롤러 객체를 StoryboardID 정보를 이용하여 참조(스크린에 표시할 뷰컨트롤러를 불러와 인스턴트화 하는 부분.)
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
            
            // 화면 전환할 때의 애니메이션 타입
            //coverVertical(아래에서 위쪽으로 새로운 화면이 올라오며 전환하는 효과 - 디폴트값)
            // crossDissolve(두 화면이 서로 교차하면서 전화면이 사라지고 다음화면이 뚜렷하게 표현됨.)
            // partialCurl(리갈패드 넘기듯이 넘어가면서 화면전환)
            uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            
            // 인자값으로 뷰 컨트롤러 인스턴스를 넣고 프레젠트 메소드 호출
            self.present(uvc, animated: true)
        }
    }
