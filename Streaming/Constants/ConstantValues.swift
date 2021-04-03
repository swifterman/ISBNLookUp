//
//  ConstantValues.swift
//  Streaming
//
//  Created by Vafa on 3/26/21.
//

import Foundation
import UIKit

enum ColorsData {
    case mainYellow
    case mainGreen
    case mainBlue
    case mainGray
    
    var color : String {
        switch self {
        case .mainYellow:
            return "#fed049"
        case .mainGreen:
            return "#007580"
        case .mainBlue:
            return "#282846"
        case .mainGray:
            return "#d8ebe4"
        }
    }
}


enum SeguePages {
    case loginToMain
    
    var name : String {
        switch self {
        case .loginToMain:
            return "loginToMain"
        default:
            return "loginToMain"
        }
    }
}
