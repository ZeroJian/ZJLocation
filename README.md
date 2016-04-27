#### Background Location Tracking , Batterysave in Background Location Model

#### This demo will allow you be batterysave in backgroundLocation,You can set a time interval to stop location.



- make sure you checked `Background Model`  - `Location updates`
 
- make sure your project `Info` added Key `NSLocationAlwaysUsageDescription`
 
 
### Requirements
---
- ios 7.0 +
- xcode 7.3

### Usage
---
updating location:

	ZJLocationService.startLocation()
	
stopUpdating location:
	
	ZJLocationService.stopLocation()
	
default and maximal timeInterval is 179 seconds, if you custom timeInterval:

	ZJLocationService.time = 120
	
if you need currentLocation:

	ZJLocationService.sharedManager.didUpdateLocation = { 
		[weak self] location in
      	print(location)
    }

If you need the last location before each stopLocation:

	ZJLocationService.sharedManager.lastBackgroundLocation = {
		[weak self] location in
		print(location)
	}


### License

ZJLocation is released under the MIT license. See LICENSE for details.
 