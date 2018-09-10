# SLTouchAuth

[![CI Status](https://img.shields.io/travis/ankitkargathra/SLTouchAuth.svg?style=flat)](https://travis-ci.org/ankitkargathra/SLTouchAuth)
[![Version](https://img.shields.io/cocoapods/v/SLTouchAuth.svg?style=flat)](https://cocoapods.org/pods/SLTouchAuth)
[![License](https://img.shields.io/cocoapods/l/SLTouchAuth.svg?style=flat)](https://cocoapods.org/pods/SLTouchAuth)
[![Platform](https://img.shields.io/cocoapods/p/SLTouchAuth.svg?style=flat)](https://cocoapods.org/pods/SLTouchAuth)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
- Got to project -> target -> Linked framework and library
- Add SLTouchAuth.framework
- import SLTouchAuth in ViewController.swift file
- Put the code.

```ruby
SLTouchIDAuth.shared.openTouchIDAlert { (success, error) in
if error == nil {
// success
} else{
 // fail
}
}
```

## Requirements

## Installation

SLTouchAuth is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SLTouchAuth'
```

## Author

ankitkargathra, ankit.kargathra@gmail.com

## License

SLTouchAuth is available under the MIT license. See the LICENSE file for more info.
