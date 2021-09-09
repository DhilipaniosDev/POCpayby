//
//  AppDelegate.swift
//  payby
//
//  Created by VJH Software on 16/08/21.
//

import UIKit
import SLDPayByPayment

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
          SLDPayByPayment.SDLPayByPaymentInterface.paymentEnvironment(.test)
        
          SLDPayByPayment.SDLPayByPaymentInterface.initInApp("20210903000000293", partnerId: "200000061910")
        return true                                                                         
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        let components = NSURLComponents(url: url, resolvingAgainstBaseURL: false)
        let tempQueryItems : Array = (components?.queryItems)!
        
        for info in tempQueryItems {
            if(info.name == "result") {
                print("result\(String(describing: info.value))")
                break;
            }
        }
        return true
    }
}

