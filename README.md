# iOS Swift: MVP Architecture
**👨🏻‍💻 Saad El Oulladi - [Medium Link](https://saad-eloulladi.medium.com/ios-swift-mvp-architecture-pattern-a2b0c2d310a3) - [@farabi](https://github.com/farabi)**

In Apple, **MVC** is the most common application architecture patter. It was adopted by Apple as an official architectural patter for iOS where:
- The **Vew**: is a `xib` file (or a `UICiew` subclass)
- The **Controller**: A `UIViewController` subclass, which receives actions and events form the view and updates it
- The **Models**: a representation of the data

## The problematic
The main intention of MVC was to distribute the applications components among separate pices, but the result was:
- **Lack of distribution**: The controller ends up doing all the job: handles user interactions, sets up views, network calls, data parsing, etc. This is also known as **massive view controller**
- **Low test coverage**: the controller is tightly linked to the view lifecycle and testing it becomes a tough task.

## The alternative: **MVP**
**MVP architecture** improbes the situation by adding his main component: the **Presenter**

![](https://miro.medium.com/max/1366/1*es5q02G0YfjnNi5POob2nQ.png)

MVP architecture looks like MVC but it has a **key difference**: Now, the **view controller is considered as a view**, which means **it will include only the view related code, nothing more** and **all logic will be implemented in the presenter**.

The components description becomes as the following:
- **View**: views + view controllers (with all UI setup and events)
- **Presenter**: in charge of all the logic, including responding to user actions and updating the UI (**via delegate**). The presenter **will not be `UIKit` dependent**, which means well isolated, hence easily testable.
- **Model**: a representation of the data

MVP uses a **passive View pattern** -> all the actions will be forwarded to the presenter. It will trigger the UI updates using delegates; so the view only passes actions and listen to the presenter updates.
