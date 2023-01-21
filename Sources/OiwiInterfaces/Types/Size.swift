//
//  Size.swift
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

public struct Size {
    
    // MARK: - Public Static Properties
    
    public static let zero = Size()
    
    
    // MARK: - Public Properties
    
    public let width: Int
    public let height: Int
    
    
    // MARK: - Initialization
    
    public init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    public init() {
        self.width = 0
        self.height = 0
    }
}
