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
    var key = "MIIEpAIBAAKCAQEAq9KVwPAF+DuJXeRgHj4Q70iLuYEa/iAlY9ah1IIhr1h/H6dW PEC/kOTMauOC+xtmeMoCnrYGxFAG+L5j10d9bXbgMXET1eFeEjVrsLUnM1MokqGd S7nrnZjcvlnJhfNCSsbel3wCOvj4OVTaJwk0VOK5Q2tWslP+fqYSG+TjIuIO7kdz HP2BKmIaCUt8yzcVyuKizE5es+8as+qZm/TRCy23mAJOLRppuHKjf7Hb6X/eLo0F CQ85u5TD3veBxTVe4gEoU/v/mHHB1DACFDOh2z4Qm/g0sLrZgb4AGzIBtn4u59q4 okPCzfNEiP+TfHR6EbmYsojYWdy0qnWHUpSBnwIDAQABAoIBADe/y/cd6dHw/1EH mGg3mycIUs2NpkRuCbOrIDbjQiqyfAy5LrG+EGni0rCbwRPYgBcQ9GiqhueLT7fF jn97IqcxuuxP1C/BP9SIoLhlDqMIiFGLPo4jdN9dicH5P/nGQ+wfOnnMMq0Puvpf Haksw14HcjT9ztNtjVVqbNXAHjJivlOJWrrkXmTUKm4TLmVPsDZVUfd8WEZjOoxe DBRMAXJ9vQNwoS9B1RL523ihWsI8sifPEvmiGijZajqXO23lBGzg+/Fmi1b7xkgJ 8EKV3i8Wlp4sHrdaFwZMQE/fCzQlkShzHxmBdqVi1cng/WuKRKdaJ68k9pApgpDl /kG0GIECgYEA3BhSD3fC9T6zKn55AoJwf73PK66ofAQ5AMfW8kA2rxaakSDxfsnH pj355DMTkRxnDaxZSFA2SiOTQxW6ClUykkw9UfOKZ2pzMfCtDXCSyYMZ0AxvQ49m hyDtCotxIF6VC2QczUUwF3dn+UipBJqJyphg2NnR2M8DOdB+tuaSZiUCgYEAx9pL 5jHbRwrbokWyvKNVQWpu3NxeO0Luh4gAGMlxNKh/UNQh5e01DApgTW1nKQxhkwG0 qrP4ex2lMrltW6M+fDy05iSzIGVikWJBv4QoDy7cuB/HY+S9IUD+VuJl09I4DTGh tIF5867YZwdujGuNQm2cX2vr5tMVWo68prjWc3MCgYEAyDGK+qzJdT8pwp41PZYd 8+NXPHlqoRtKKi6bkc/crZeW0ikv4E5zPgAje3EF/Djkd6hrsX3cU8VWHm/1v45N KIsWP6ORIY3O5/7tuUrLCWYpJXcaAU6/SGwnkC7ToEjHswvFsuSa4M1oknOH4Tsb 2F6PwM8ns9hgK8c8ausBAM0CgYBJIEsdU6jUedibq70W4PzVDsi577hbHsaAuPaw GyVdCzpqrPQqWX1LhpBuRFW241zgmYMt4uRMyDAmO0sUeMroUp4uh8czV2WVpMpB 9W1jANaqWJZwqsW5YTqvN+/ibc0sprhwf9/LlnKAYGvG3aO2Zr0M/UQ4FYx+sjO9 HWz6mQKBgQCvsIA537U/S/MIqS+7+sYZwSFwiUAD7xyd/l5+W9jTq8Semdo4vskL ai7BeVU1uyvYEjomDShe+huGJ7LJXAhDbdwZALxcwpKYZhKT0/oNEj7//XYWcjNG z9LP0BCe9xOgmCg/BbKn1VVKrXLcaI76xTkISdAkULA/DAZUf65NaQ=="
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // dID = "\(UIDevice.current.identifierForVendor?.uuidString ?? "")"
        dID = "deviceId123"
        btnPayby.alpha = 1
        btnPayby.isEnabled = true
        
                AF.request("https://mycortexdev.vjhsoftware.in/api/payby/token?Login_Session_Id=2761cfb3-86e8-4c4d-9e2e-11a36cb6ad55&amount=400&iapDeviceId=\(dID)&appid=20210903000000293&Institution_Id=15&Department_Id=164",method: .get,headers: ["Authorization": "bearer k3wQ2-1q8zm7LMbjaR-CWTHwGAmJfS5aoi3gAhn28YuR34Xt8BBAcHseXztU_yXu77bxqYkKBLPaUvx3-ak6WfGHIEVUYJ44fL5yiiC8BtxC_WjqITMAb-N5T7marK68STzdH7usA61EbyUOdwEcjgcjdUyHIKwoxbwYgfH6hk9SO6GNvZ7HUkYJivTVQAzArfSVggEQ-Vl6U0pSWu2angu6nfVReVa4ICyeGjFH0eE5TYbrpN3spFMjf1GP_Cbj_RYz2S0OZOYu8ZYMNBq9f2WMun3jp2JvSXDJfILnOWs"]).responseJSON { [self] data in
                    let mdata = JSON(data.data as Any)
                    self.token = mdata["Token"].string ?? ""
                    print("#token",self.token)
                    self.btnPayby.alpha = 1
                    self.btnPayby.isEnabled = true
                }
        //token = "60f23ff8-417b-49c3-821c-d609ed010e56"
    }
    
    @IBAction func onclickPay(_ sender: Any) {
        let signStr : NSString = NSString.init(format:"iapAppId=%@&iapDeviceId=%@&iapPartnerId=%@&token=%@","20210903000000293",dID,"200000061910",token)
        print("#tokenurl",signStr)
         print("privateKey",key)
       // let signStr2 = GPBRSA.encryptString(signStr as String, publicKey: key)
        let signStr2 = GPBRSA.encryptString(signStr as String, privateKey: key)
        print("signStr2",signStr2 as Any)
        
        SLDPayByPayment.SDLPayByPaymentInterface.paymentEnvironment(.test)
        SLDPayByPayment.SDLPayByPaymentInterface.initInApp("20210903000000293", partnerId: "200000061910")
        SLDPayByPayment.SDLPayByPaymentInterface.request(inApp:"20210903000000293",deviceId:dID, sign: signStr2! as String, pageOnViewContorller: self, success: { (result) in
            print("#result\(result)")
        }) { (error) in
            print(("#error\(error)"))
        }
    }
    
    
    
}


//MARK:- privateKey

/*
 
 
 "-----BEGIN RSA PRIVATE KEY----- MIIEpAIBAAKCAQEAq9KVwPAF+DuJXeRgHj4Q70iLuYEa/iAlY9ah1IIhr1h/H6dW PEC/kOTMauOC+xtmeMoCnrYGxFAG+L5j10d9bXbgMXET1eFeEjVrsLUnM1MokqGd S7nrnZjcvlnJhfNCSsbel3wCOvj4OVTaJwk0VOK5Q2tWslP+fqYSG+TjIuIO7kdz HP2BKmIaCUt8yzcVyuKizE5es+8as+qZm/TRCy23mAJOLRppuHKjf7Hb6X/eLo0F CQ85u5TD3veBxTVe4gEoU/v/mHHB1DACFDOh2z4Qm/g0sLrZgb4AGzIBtn4u59q4 okPCzfNEiP+TfHR6EbmYsojYWdy0qnWHUpSBnwIDAQABAoIBADe/y/cd6dHw/1EH mGg3mycIUs2NpkRuCbOrIDbjQiqyfAy5LrG+EGni0rCbwRPYgBcQ9GiqhueLT7fF jn97IqcxuuxP1C/BP9SIoLhlDqMIiFGLPo4jdN9dicH5P/nGQ+wfOnnMMq0Puvpf Haksw14HcjT9ztNtjVVqbNXAHjJivlOJWrrkXmTUKm4TLmVPsDZVUfd8WEZjOoxe DBRMAXJ9vQNwoS9B1RL523ihWsI8sifPEvmiGijZajqXO23lBGzg+/Fmi1b7xkgJ 8EKV3i8Wlp4sHrdaFwZMQE/fCzQlkShzHxmBdqVi1cng/WuKRKdaJ68k9pApgpDl /kG0GIECgYEA3BhSD3fC9T6zKn55AoJwf73PK66ofAQ5AMfW8kA2rxaakSDxfsnH pj355DMTkRxnDaxZSFA2SiOTQxW6ClUykkw9UfOKZ2pzMfCtDXCSyYMZ0AxvQ49m hyDtCotxIF6VC2QczUUwF3dn+UipBJqJyphg2NnR2M8DOdB+tuaSZiUCgYEAx9pL 5jHbRwrbokWyvKNVQWpu3NxeO0Luh4gAGMlxNKh/UNQh5e01DApgTW1nKQxhkwG0 qrP4ex2lMrltW6M+fDy05iSzIGVikWJBv4QoDy7cuB/HY+S9IUD+VuJl09I4DTGh tIF5867YZwdujGuNQm2cX2vr5tMVWo68prjWc3MCgYEAyDGK+qzJdT8pwp41PZYd 8+NXPHlqoRtKKi6bkc/crZeW0ikv4E5zPgAje3EF/Djkd6hrsX3cU8VWHm/1v45N KIsWP6ORIY3O5/7tuUrLCWYpJXcaAU6/SGwnkC7ToEjHswvFsuSa4M1oknOH4Tsb 2F6PwM8ns9hgK8c8ausBAM0CgYBJIEsdU6jUedibq70W4PzVDsi577hbHsaAuPaw GyVdCzpqrPQqWX1LhpBuRFW241zgmYMt4uRMyDAmO0sUeMroUp4uh8czV2WVpMpB 9W1jANaqWJZwqsW5YTqvN+/ibc0sprhwf9/LlnKAYGvG3aO2Zr0M/UQ4FYx+sjO9 HWz6mQKBgQCvsIA537U/S/MIqS+7+sYZwSFwiUAD7xyd/l5+W9jTq8Semdo4vskL ai7BeVU1uyvYEjomDShe+huGJ7LJXAhDbdwZALxcwpKYZhKT0/oNEj7//XYWcjNG z9LP0BCe9xOgmCg/BbKn1VVKrXLcaI76xTkISdAkULA/DAZUf65NaQ== -----END RSA PRIVATE KEY-----"
 
 */
