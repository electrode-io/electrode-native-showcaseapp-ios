# ElectrodeNativeiOSShowCaseApp
## Requirements

- Xcode 9.1
- Carthage. Install by downloading the latest [packaged release](https://github.com/Carthage/Carthage/releases).

## Getting Started

### Clone the repo

```
git clone https://github.com/electrode-io/ElectrodeNativeiOSShowCaseApp.git`
```

### Install Dependencies

Run `carthage` to checkout dependencies.

```
carthage bootstrap --no-build --platform ios
```
 ### Build
 
- Open the `ElectrodeNativeIOSShowCaseApp.xcodeproj` in Xcode
- Change the target to `ElectrodeContainer` and build that first before building the `ElectrodeNativeIOSShowCaseApp`
- Once container is built, change the target to `ElectrodeNativeiOSShowCaseApp` and run the project.
 
 NOTE: If you clean the project, the container needs to be built again. While building the container you might see a terminal pop up with an error, please ignore and close the window. 
