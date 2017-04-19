
## Requirements

## Installation

HxLib is Not available through [CocoaPods Trunk](http://cocoapods.org). To install
it, grab it directly fom here. 

```ruby
pod 'HxLib', :git => 'https://github.com/Hexperimental/HxLib'
```

## Goodies. 

### HxLocalStorage

```swift

//Set default values
HxLocalStorage.defaultValue(1, forKey: "someKey")

//Getting values 
HxLocalStorage.read("someKey")

//Setting values
HxLocalStorage.write("my new value", forKey: "someKey")


//Removing values
HxLocalStorage.erase("someKey")
//or 
HxLocalStorage.write(nil, forKey: "someKey")


//Setting values will work nice with String, Int, Float and Bool
//to store any other value ( allowed by UserDefaults ) needs to be casted as AnyObject
HxLocalStorage.defaultValue(Dictionary() as AnyObject, forKey: "someKey")
HxLocalStorage.write(123.234 as AnyObject, forKey: "someKey")

```


## License

HxLib is available under the MIT license. See the LICENSE file for more info.
