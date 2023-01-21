//
//  ViewWidget.swift
//  OiwiInterfaces
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

/// The `ViewWidget` defines the interface for views that represent a part of your application's
/// user interface and provides modifiers that you can use to configure views.
///
/// You can implement this protocol, if you want to provide custom views.
public protocol ViewWidget {
    associatedtype NativeType
    
    // MARK: - Properties
    
    /// The native widget; don't use this in your app to avoid incompatabilities
    var nativeWidget: NativeType! { get }
    
    var frame: Frame { get set }
    
    var superview: (any ViewWidget)? { get }
    var subviews: [any ViewWidget] { get }
    
    
    // MARK: - Initialization
    
    init()
    
    init(frame: Frame)
    
    
    // MARK: - Adding and removing subviews
    
    func addSubview(_ view: any ViewWidget)
    func removeSubview(_ view: any ViewWidget)
}
