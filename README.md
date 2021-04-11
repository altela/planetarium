# planetarium
This is an ARKit augmented reality app that display planets in milky way galaxy. I used this as final project in college.

# How it works
It's simply use `ARKit` framwork to run `ARWorldTrackingConfiguration` to display object markerless-ly. This AR apps recognize real-world regions of interest. At runtime, `ARKit` generates an `ARAnchor` for a real-world object it recognizes, which allows an app to refer to its details, such as size and physical location. The configuration you choose determines the kinds of real-world objects `ARKit` recognizes and makes available to your app. No 3D apps are required to make the planet's model, this app use `SceneKit` framework to render 3D shape (sphere) and place assets on the surface so it appears like a planet.

# Requirement
- MacBook that able to run XCode 10 or above.
- iPhone, iPad, or any apple gadget with A9 chip processor or above. This chip is the main reason `ARWorldTrackingConfiguration` are able to run markerless.

Note : if you run on a device lower than A9 chip, you should change `ARWorldTrackingConfiguration` to `ARSessionConfiguration`

# Copyright
This project are under MIT License.

Icons are made by [Iconika Store](https://iconscout.com/contributors/iconika)
Background are made by [Bledgesteam](https://www.walpaperlist.com/2020/01/black-screen-with-stars.html)

# How To Download The Project
Simply fork the repo and clone to your computer using XCode interface or you can do it manually by typing `git clone https://github.com/Altela/planetarium`. 
Then open `.xcodeproj` to see the project.

If you want to contribute and make changes, simply make a pull request and let me know so i can review it.

# Preview

Main Menu : 
<img src="https://github.com/Altela/planetarium/blob/master/gif/planetarium1.png" width="500" height="800">

Planet Menu : 
<img src="https://github.com/Altela/planetarium/blob/master/gif/planetarium2.png" width="500" height="800">

Note : If you pressed `The Universe` it will show entire planet in one AR session.

AR Session : 
<img src="https://github.com/Altela/planetarium/blob/master/gif/planetarium1.gif" width="500" height="800">
<img src="https://github.com/Altela/planetarium/blob/master/gif/planetarium2.gif" width="500" height="800">
