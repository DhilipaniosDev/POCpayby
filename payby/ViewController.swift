//
//  ViewController.swift
//  payby
//
//  Created by VJH Software on 16/08/21.
//

import UIKit
import Alamofire
import SwiftyJSON
import SLDPayByPayment


class ViewController: UIViewController {
    
    @IBOutlet var btnPayby: UIButton!
    var token = ""
    var dID = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        dID = "\(UIDevice.current.identifierForVendor?.uuidString ?? "")"
        btnPayby.alpha = 0.5
        btnPayby.isEnabled = false
        
        AF.request("https://mycortexdev.vjhsoftware.in/api/payby/token?Login_Session_Id=39047cc1-a015-4005-81eb-ad8f8f23fdfd&amount=10&iapDeviceId=\(dID)&appid=20210903000000293",method: .get,headers: ["Authorization": "bearer sWEZnXdRfvsn41pYflP1CYRm0QRAFVH4Gey_LwE-HPu7BXy_jdbNmduBV5cmZVCTwEiL88f05mYMh0-6B65Wi_VH-iS6HRbtmcB2xIydlSrRZqTrlCihpwEkR2kjxLnKdt2LcmBbA_3iDcaxyq3VOve0ohIANNLqDZp6sm8SszX-4Sm8TWwdD6eYwpNGWbJARXPyVDgXzepJUuTlNgM44AWuI2Xks11xXK7L6JWL1_y7ukS-fQeHjg4IvC7hCEJIEn-EyUpI17cRHeI7VgO0wYXqIZiA0Hvl9erLL5vkWieT5ASwqZcJYLSwaEJSC_hI"]).responseJSON { data in
            let mdata = JSON(data.data as Any)
            self.token = mdata["Token"].string ?? ""
            print("#token",self.token)
            self.btnPayby.alpha = 1
            self.btnPayby.isEnabled = true
        }
    }
    
    
    @IBAction func onclickPay(_ sender: Any) {
        let signStr : NSString = NSString.init(format: "iapAppId=%@&iapDeviceId=%@&iapPartnerId=%@&token=%@","20210903000000293",dID,"200000061910",token)
        print("#tokenurl",signStr)
        SLDPayByPayment.SDLPayByPaymentInterface.paymentEnvironment(.test)
        SLDPayByPayment.SDLPayByPaymentInterface.initInApp("20210903000000293", partnerId: "200000061910")
        SLDPayByPayment.SDLPayByPaymentInterface.request(inApp:"20210903000000293",deviceId:dID, sign: signStr as String, pageOnViewContorller: self, success: { (result) in
            print("#result\(result)")
        }) { (error) in
            print(("#error\(error)"))
        }
    }
}




