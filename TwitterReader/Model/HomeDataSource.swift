//
//  HomeDataSource.swift
//  TwitterReader
//
//  Created by George Drag on 3/20/18.
//  Copyright © 2018 Red Foundry. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    let words = ["user1","user2","user3"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
}
