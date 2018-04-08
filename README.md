# GestureViewController
ViewController with four direction pre-installed hidden views which could be called via swipe gestures.

## Animation

<p align = "center"><img src = "https://github.com/miracle0930/GestureViewController/blob/master/Screenshots/GestureViewControllerDemo.gif" /></p>

## Requirements

- Xcode9, Swift 4

## Installation

```ruby
pod 'GestureViewController', :git => 'https://github.com/miracle0930/GestureViewController.git'
```
## Usage

- import framework
```swift
import GestureViewController
```
- Initialize `gestureView` in your `viewDidLoad()`method
```swift
import GestureViewController

class ViewController: GestureViewController {
    
    var topHiddenView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // set gestureView's delegate to self
        gestureView.delegate = self
        
        // enable hiddenViews based on your app's business logic, and also enable swipe gesture. 
        topHiddenView = UIView(frame: CGRect(x: 0, y: -200, width: kScreenWith, height: 200))
        topHiddenView!.backgroundColor = .blue
        enableTopHiddenView(topHiddenView: topHiddenView!)
        
        // enable swipe gestures
        gestureView.enableUpSwipeGesture(true)
        gestureView.enableDownSwipeGesture(true)
    }
    
    override func topHiddenViewShowsUp() {
        // remember to call `super` when overriding `showsUp` and `hides` methods.
        super.topHiddenViewShowsUp()
        // commont out the next line to display shadow effect.
        // hiddenViewWillShow(hiddenView: topHiddenView!)
        /*
            your business logic....
        */
    }
    
    override func topHiddenViewHides() {
        super.topHiddenViewHides()
        /*
            your business logic....
        */
        // comment out the next line and put it into a completion handler to remove shadow effect.
        // self.hiddenViewDidHide(hiddenView: self.topHiddenView!)
    }
}
```
- Override the `hiddenViewWillShow(hiddenView: UIView)` and `hiddenViewDidhide(hiddenView: UIView)` method to customize your shadow effect.
```swift
    open func hiddenViewWillShow(hiddenView: UIView, shadowOffset: CGSize = CGSize(width: 0, height: 0), 
                                 shadowColor: CGColor = UIColor.gray.cgColor, shadowRadius: CGFloat = 100, shadowOpacity: Float = 0.8) {
        hiddenView.layer.shadowOffset = shadowOffset
        hiddenView.layer.shadowColor = shadowColor
        hiddenView.layer.shadowOpacity = shadowOpacity
        hiddenView.layer.shadowRadius = shadowRadius
    }
    
    open func hiddenViewDidHide(hiddenView: UIView) {
        hiddenView.layer.shadowOffset = CGSize(width: 0, height: 0)
        hiddenView.layer.shadowColor = UIColor.clear.cgColor
        hiddenView.layer.shadowOpacity = 0.00;
        hiddenView.layer.shadowRadius = 0
    }
```

## Credits
Maintained by [**@miracle0930**](https://twitter.com/Mirace0930), guanhao0930@gmail.com

## License

GestureViewController is available under the MIT license. See the LICENSE file for more info.
