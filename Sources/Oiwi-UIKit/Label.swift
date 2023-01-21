//
//  Label.swift
//  Oiwi-UIKit
//
//  Created by Thomas Bonk on 21.01.23.
//  Copyright 2020 OiwiUI Development Team
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import OiwiInterfaces
import UIKit

open class Label: View, LabelWidget {
    
    // MARK: - Public Properties
    
    public var text: String {
        didSet {
            self.typedNativeWidget.text = self.text
        }
    }

    
    // MARK: - Private Properties
    
    private var typedNativeWidget: UILabel! {
        nativeWidget as? UILabel
    }
    
    
    // MARK: - Initialization
    
    public required init() {
        self.text = ""
        super.init()
        self.nativeWidget = UILabel()
    }
    
    public required init(text: String) {
        self.text = text
        super.init()
        self.nativeWidget = createLabel()
    }
    
    public required init(text: String, frame frm: Frame) {
        self.text = text
        super.init(frame: frm)
        self.nativeWidget = createLabel()
    }
    
    public required init(frame frm: Frame) {
        self.text = ""
        super.init(frame: frm)
        self.nativeWidget = createLabel()
    }
    
    private func createLabel() -> UILabel {
        let label = UILabel(
            frame: CGRect(
                x: frame.origin.x,
                y: frame.origin.y,
                width: frame.size.width,
                height: frame.size.height))
        label.text = self.text
        
        return label
    }
    
}
