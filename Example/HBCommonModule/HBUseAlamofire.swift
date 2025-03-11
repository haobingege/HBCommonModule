//
//  HBUseAlamofire.swift
//  HBCommonModule_Example
//
//  Created by haobin on 2025/3/10.
//  Copyright © 2025 haobingege. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

@objcMembers
public class HBUseAlamofire: NSObject {
    
    @objc public func fetchData(from url: String, completion: @escaping (String?) -> Void) {
        AF.request(url).responseString {
            response in switch response.result { 
                case .success(let value): completion(value)
                case .failure: completion(nil)
            
            }
        }
    }
}
