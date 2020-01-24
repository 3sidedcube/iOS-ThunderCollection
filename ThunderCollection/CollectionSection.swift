//
//  CollectionSection.swift
//  ThunderCollection
//
//  Created by Joel Trew on 19/07/2017.
//  Copyright © 2017 3 Sided Cube. All rights reserved.
//

import Foundation

public protocol CollectionSectionDisplayable {
    
    var items: [CollectionItemDisplayable] { get }
    
    var selectionHandler: SelectionHandler? { get }
    
    //MARK: Context Menu
    
    /// A function which can be used to provide a `UIContextMenuConfiguration` for the row, at a given point
    /// - Parameters:
    ///   - point: The point within the table view that the context menu should be shown for
    ///   - indexPath: The index path the context menu will be displayed for
    ///   - collectionView: The collection view that the context menu will be shown within
    @available(iOS 13.0, *)
    func sectionContextMenuConfiguration(at point: CGPoint, for indexPath: IndexPath, in collectionView: UICollectionView) -> UIContextMenuConfiguration?
    
    /// A function which can be used to provide the view for dismissing a given context menu
    /// - Parameters:
    ///   - configuration: The configuration that the dismissing menu is for
    ///   - indexPath: The index path the context menu is being displayed for
    ///   - collectionView: The collection view that the context menu will be shown within
    @available(iOS 13.0, *)
    func sectionPreviewForDismissingContextMenu(with configuration: UIContextMenuConfiguration, at indexPath: IndexPath, in collectionView: UICollectionView) -> UITargetedPreview?
    
    /// A function which can be used to provide the view for highlighting a given context menu
    /// - Parameters:
    ///   - configuration: The configuration that the highlighting menu is for
    ///   - indexPath: The index path the context menu is being displayed for
    ///   - collectionView: The collection view that the context menu will be shown within
    @available(iOS 13.0, *)
    func sectionPreviewForHighlightingContextMenu(with configuration: UIContextMenuConfiguration, at indexPath: IndexPath, in collectionView: UICollectionView) -> UITargetedPreview?
}

extension CollectionSectionDisplayable {
    
    @available(iOS 13.0, *)
    public func sectionContextMenuConfiguration(at point: CGPoint, for indexPath: IndexPath, in collectionView: UICollectionView) -> UIContextMenuConfiguration? { return nil }
    
    @available(iOS 13.0, *)
    public func sectionPreviewForDismissingContextMenu(with configuration: UIContextMenuConfiguration, at indexPath: IndexPath, in collectionView: UICollectionView) -> UITargetedPreview? { return nil }
    
    @available(iOS 13.0, *)
    public func sectionPreviewForHighlightingContextMenu(with configuration: UIContextMenuConfiguration, at indexPath: IndexPath, in collectionView: UICollectionView) -> UITargetedPreview? { return nil }
}

open class CollectionSection: CollectionSectionDisplayable {
    
    open var items: [CollectionItemDisplayable]
    
    open var selectionHandler: SelectionHandler?
    
    public init(items: [CollectionItemDisplayable], selectionHandler: SelectionHandler? = nil) {
        
        self.items = items
        self.selectionHandler = selectionHandler
    }
}
