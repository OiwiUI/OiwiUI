//
//  View.swift
//  Oiwi-UIKit
//
//  Created by Thomas Bonk on 20.01.23.
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

open class View: ViewWidget {
    
    // MARK: - Public Properties
    
    public var nativeWidget: UIView!
    public var frame: Frame
    
    public internal(set) var superview: (any ViewWidget)? = nil
    public private(set) var subviews: [any ViewWidget] = []
    
    
    // MARK: - Initialization
    
    public required init() {
        self.frame = .zero
        initialize()
    }
    
    public required init(frame: Frame) {
        self.frame = frame
        initialize()
    }
    
    
    private func initialize() {
        self.nativeWidget = UIView(
            frame: CGRect(
                x: frame.origin.x,
                y: frame.origin.y,
                width: frame.size.width,
                height: frame.size.height))
    }
    
    
    // MARK: - Adding and removing subviews
    
    public func addSubview(_ view: any ViewWidget) {
        subviews.append(view)
        (view as? View)?.superview = self
        nativeWidget.addSubview(view.nativeWidget as! UIView)
    }
    
    public func removeSubview(_ view: any ViewWidget) {
        (view.nativeWidget as! NativeType).removeFromSuperview()
        subviews.removeAll(where: { ($0 as! NativeType) == (view as! NativeType) })
        (view as? View)?.superview = nil
    }
}
