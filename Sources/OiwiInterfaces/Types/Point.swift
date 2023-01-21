//
//  Point.swift
//  OiwiInterfaces
//
//  Created by Thomas Bonk on 19.01.23.
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

public struct Point {
    
    // MARK: - Public Static Properties
    
    public static let zero = Point()
    
    
    // MARK: - Public Properties
    
    public let x: Int
    public let y: Int
    
    
    // MARK: - Initialization
    
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    public init() {
        self.x = 0
        self.y = 0
    }
}
