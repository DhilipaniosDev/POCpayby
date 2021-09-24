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
       // dID = "\(UIDevice.current.identifierForVendor?.uuidString ?? "")"
        dID = "deviceId123"
        btnPayby.alpha = 1
        btnPayby.isEnabled = true
        
//        AF.request("https://mycortexdev.vjhsoftware.in/api/payby/token?Login_Session_Id=2761cfb3-86e8-4c4d-9e2e-11a36cb6ad55&amount=400&iapDeviceId=\(dID)&appid=20210903000000293&Institution_Id=15&Department_Id=164",method: .get,headers: ["Authorization": "bearer k3wQ2-1q8zm7LMbjaR-CWTHwGAmJfS5aoi3gAhn28YuR34Xt8BBAcHseXztU_yXu77bxqYkKBLPaUvx3-ak6WfGHIEVUYJ44fL5yiiC8BtxC_WjqITMAb-N5T7marK68STzdH7usA61EbyUOdwEcjgcjdUyHIKwoxbwYgfH6hk9SO6GNvZ7HUkYJivTVQAzArfSVggEQ-Vl6U0pSWu2angu6nfVReVa4ICyeGjFH0eE5TYbrpN3spFMjf1GP_Cbj_RYz2S0OZOYu8ZYMNBq9f2WMun3jp2JvSXDJfILnOWs"]).responseJSON { [self] data in
//            let mdata = JSON(data.data as Any)
//            self.token = mdata["Token"].string ?? ""
//            print("#token",token)
//            self.btnPayby.alpha = 1
//            self.btnPayby.isEnabled = true
//        }
        token = "60f23ff8-417b-49c3-821c-d609ed010e56"
    }
    //200000061910 
    
    @IBAction func onclickPay(_ sender: Any) {
        let signStr : NSString = NSString.init(format: "iapAppId=%@&iapDeviceId=%@&iapPartnerId=%@&token=%@","20210903000000293",dID,"200000061910",token)
        print("#tokenurl",signStr)
        
        let signStr2 = GPBRSA.encryptString(signStr as String, privateKey: privateKey)
        SLDPayByPayment.SDLPayByPaymentInterface.paymentEnvironment(.test)
        SLDPayByPayment.SDLPayByPaymentInterface.initInApp("20210903000000293", partnerId: "200000061910")
        SLDPayByPayment.SDLPayByPaymentInterface.request(inApp:"20210903000000293",deviceId:dID, sign: signStr2! as String, pageOnViewContorller: self, success: { (result) in
            print("#result\(result)")
        }) { (error) in
            print(("#error\(error)"))
        }
    }
}




