# GestureViewController
ViewController with four hidden which can be called via gestures

## Animation

<p align = "center"><img src = "https://github.com/miracle0930/GestureViewController/blob/master/Screenshots/GestureViewControllerDemo.gif" /></p>

## Features

- SubViews on four directions had been pre-installed, call delegate and enable swipe gesture to enable them.

- Subview was UIView by default, enabled custom UIControl

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
- Initial `gestureView` in your `viewDidLoad()`method
```swift
import GestureViewController

class ViewController: GestureViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // set gestureView's delegate to self
        gestureView.delegate = self
        // enable hiddenViews based on your app's business logic, and also enable swipe gesture. 
        enableTopHiddenView()
        gestureView.enableUpSwipeGesture(true)
        gestureView.enableDownSwipeGesture(true)
    }
    
    override func topHiddenViewShowsUp() {
        // remember to call `super` when overriding `showsUp` and `hides` methods
        super.topHiddenViewShowsUp()
        /*
            your business logic....
        */
    }
    
    override func topHiddenViewHides() {
        super.topHiddenViewHides()
        /*
            your business logic....
        */
    }
}
```

## Author
Hao Guan, guanhao0930@gmail.com

## License

GestureViewController is available under the MIT license. See the LICENSE file for more info.
