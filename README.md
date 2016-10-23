# 5 Day Weather Forecast App

A native iOS app to display 5 days weather forecasts. Data via [OpenWeatherMap](http://openweathermap.org/forecast5), 

## Install

Requirements:
* [XCode](https://developer.apple.com/xcode/)
* [Cocoapods](http://cocoapods.org/)
* An OpenWeatherMap API Key

1. From the `app` folder, run Cocoapods install:

```sh
$ pod install
```

2. Create a Keys.plist file; for example:

```sh
$  cp weather/KeysExample.plist weather/Keys.plist
```

3. Open the weather.xcworkspace in XCode; before the first run, **don't forget to edit the Keys.plist file to include your OpenWeatherMap API Key**
