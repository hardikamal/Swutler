//
//  Swutler
//
//  Created by Steve Stomp on 20/05/2017.
//  Copyright © 2017 Code&Coding. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // Storyboard
    public class func instantiateFromStoryboard(storyboardName: String, storyboardId: String = "") -> Self {
        return instantiateFromStoryboardHelper(storyboardName: storyboardName, storyboardId: storyboardId)
    }
    
    private class func instantiateFromStoryboardHelper<T>(storyboardName: String, storyboardId: String) -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: storyboardId) as! T
        return controller
    }
}
