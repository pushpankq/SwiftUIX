//
// Copyright (c) Vatsal Manot
//

import Swift
import SwiftUI

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

public protocol opaque_CocoaController {
    var rootViewName: ViewName? { get }
    
    var presentationCoordinator: CocoaPresentationCoordinator { get }
    
    func present(
        _ presentation: CocoaPresentation,
        animated: Bool,
        completion: (() -> Void)?
    )
}

public protocol CocoaController: opaque_CocoaController, UIViewController {
    
}

#endif
