//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by 육건 on 2022/10/24.
//
import UIKit
class SecondViewController: UIViewController {
    
    // Back버튼에 대한 메소드 호출 및 필요한 구문 작성
    @IBAction func dismiss(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
