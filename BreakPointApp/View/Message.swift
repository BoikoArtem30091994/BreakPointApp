//
//  Message.swift
//  BreakPointApp
//
//  Created by Artem Boiko on 23.01.2018.
//  Copyright © 2018 Boiko Artem. All rights reserved.
//

import Foundation

class Message {
    private var _content: String
    private var _senderID: String
    
    var content : String {
        return _content
    }
    
    var senderID: String {
        return _senderID
    }
    
    init(content: String, senderID: String) {
        self._content = content
        self._senderID = senderID
    }
    
}
