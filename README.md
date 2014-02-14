SFGaugeView
===========
A custom UIView with a gauge control (tachometer like control).
Detects swipe gesture and sets the needle/level appropriately.
You can customize colors, the maximum level, min/max images, etc.

![Alt text](/screenshot.png "Screenshot")

Setup
-----

**Installing with [CocoaPods](http://cocoapods.org)**

If you're unfamiliar with CocoaPods you can check out this tutorial [here](http://www.raywenderlich.com/12139/introduction-to-cocoapods).

1. In Terminal navigate to the root of your project.
2. Run 'touch Podfile' to create the Podfile.
3. Open the Podfile using 'open -e Podfile'
4. Add the pod `SFGaugeView` to your [Podfile](https://github.com/CocoaPods/CocoaPods/wiki/A-Podfile).

        platform :ios, '7.0'
        pod 'SFGaugeView'
        
5. Run `pod install`.
6. Open your app's `.xcworkspace` file to launch Xcode and start using the control!

Usage
-----
1. Either create SFGaugeView by dragging UIView from storyboard and change implementing class or create it programmatically
2. Create an outlet (if create via storyboard)
3. Set up parameters

        maxLevel = The maximum level of gauge control (int value)
        needleColor = Color of needle
        bgColor = Background Color of gauge control
        hideLevel = If set to YES the current level is hidden
        minImage = An image for min level (see screenshot)
        maxImage = An image for max level (see screenshot)
        currentLevel = Sets the current Level

4. GaugeControl interaction
        currentLevel = Returns the current level

Delegate Method
---------

        - (void) sfGaugeView:(SFGaugeView*) gaugeView didChangeLevel:(NSInteger) level;

Author(s)
-------

[Simpliflow GmbH](https://github.com/simpliflow)

[Thomas Winkler](https://github.com/tomgong)

Licence
-------

Distributed under the MIT License.
