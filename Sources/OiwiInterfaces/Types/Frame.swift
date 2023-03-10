//
//  Frame.swift
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

public struct Frame {
    
    // MARK: - Public Static Properties
    
    public static let zero = Frame()
    
    
    // MARK: - Public Properties
    
    public let origin: Point
    public let size: Size
    
    
    // MARK: - Initialization
    
    public init() {
        origin = .zero
        size = .zero
    }
    
    public init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    public init(x: Int, y: Int, width: Int, height: Int) {
        self.origin = Point(x: x, y: y)
        self.size = Size(width: width, height: height)
    }
}
