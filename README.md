# SnowShoe-Swift

The [SnowShoe Stamp](http://www.snowshoestamp.com) is an authentication tool for smartphones.

<p align="center" >
  <img src="https://beta.snowshoestamp.com/static/api/img/stamp.gif" alt="SnowShoe" title="SnowShoe" width="160" height="284">
</p>

## Installation

SnowShoe-Swift is available through [CocoaPods](http://cocoapods.org). To install
it, add the following line to your Podfile:

```ruby
pod "SnowShoe-Swift"
```

## Usage

### Example

To run the example project, clone the repo, run `pod install` from the Example directory, and open `SnowShoeSwift-xcworkspace`.

### In your own project

The core piece of this library is the `SnowShoeView`, a subclass of `UIView` that automatically detects stamps and handles the API query.

To use it, add this import:

`import SnowShoe_Swift`

Then, assign your key and secret from the [SnowShoe Dashboard](https://beta.snowshoestamp.com/applications/application/list/) to the view:

```swift
snowShoeView.appKey = "YOUR_APP_KEY"
snowShoeView.appSecret = "YOUR_APP_SECRET"
```

Then, implement `SnowShoeDelegate`, which will be notified when a stamp request is made to the API and when a result comes back:

```swift
public protocol SnowShoeDelegate {
  func onStampRequestMade()
  func onStampResult(result: SnowShoeResult?)
}
```

Then assign the delegate to the `SnowShoeView`:

```swift
snowShoeView.delegate = delegate
```

## Author

Matt Luedke, mluedke2@gmail.com

Hardware and API managed by [SnowShoe](http://snowshoestamp.com/)

## License

SnowShoe-Swift is available under the MIT license. See the LICENSE file for more info.
