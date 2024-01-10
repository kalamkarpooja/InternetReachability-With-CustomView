//
//  ViewController.swift
//  CustomPopUp
//
//  Created by Mac on 09/01/24.
//

import UIKit

class ViewController: UIViewController {
    let reachabilty = try! Reachability()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.reachabilty.whenReachable = { reachabilty in
                if reachabilty.connection == .wifi{
                    print("reachable to wifi")
                }else{
                    print("reachable to connection")
                }
                self.view.window?.rootViewController?.dismiss(animated: true)
            }
            self.reachabilty.whenUnreachable = { _ in
                print("not reachable")
                 let networkVc = self.storyboard?.instantiateViewController(withIdentifier: "AlertViewController") as? AlertViewController
                
                self.present(networkVc!, animated: true)
            }
            do{
                try self.reachabilty.startNotifier()
            }catch{
                print("unable to reach")
            }
        }
    }
    deinit{
        reachabilty.stopNotifier()
    }

}

