###### Container ######

- It is a widget that combines common painting, positioning, and sizing of the child widget.
- It is also a class to store one or more widgets and positions them on the screen according to our needs.
- Generally, it is similler to a box for storing contants.
- It allows many attributes to the user for decorating its child widget , such as using margin, which separated the containers with other contains.

###### Text widget ######

- The text widget display a string of text with single style.
- The string might break accross multiple line or might all be displayed on the same line depanding on the layout containers. 

##### Buttons ######

- Buttons are the graphical control element that provides.
- A usen to trigger an event such as tasking actions, making choice, searching things and many more. 
- Types of button:
    * Text Button (flat button)
    * Elevated Button (Raised Button)
    * Outlined Button


###### InkWell Widget ######

- Inkwell is the material widget in flutter
- It respond to the touch action as performed by the users.
- InkWill will respond when the user clicks it/ Tap on it.
- There are so many gestures like double tap, long press, tap down, etc.

###### ScrollView Widget ######

A widget that combines a Scrollable and a Viewport to create an interactive scrolling pane of content in one dimension.
Scrollable widgets consist of three pieces:
- A Scrollable widget, which listens for various user gestures and implements the interaction design for scrolling.
- A viewport widget, such as Viewport or ShrinkWrappingViewport, which implements the visual design for scrolling by displaying only a portion of the widgets inside the scroll view.
- One or more slivers, which are widgets that can be composed to created various scrolling effects, such as lists, grids, and expanding headers.


###### ListView Widget ######

- In Flutter, ListView is a scrollable list of widgets arranged linearly. It displays its children sequentially in the scrolling direction, either vertically or horizontally.

There are different types of ListViews :
    * ListView
    * ListView.builder
    * ListView.separated
    * ListView.custom

###### Circle Avater ######

- It is a simply circle which we can add background color, background image or just text
- It usually represent a user with his image or with his initials 
- Although we can make a similer widget from the ground up
- This widgets comes in handy in the fist development of an application.


##### Style and Theme ######

- Themes are an integral part of UI for any application. Themes are used to design the fonts and colors of an application to make it more presentable. In Flutter, the Theme widget is used to add themes to an application. One can use it either for a particular part of the application like buttons and navigation bar or define it in the root of the application to use it throughout the entire app.

- Properties of Theme Widget

    * child : The child property takes in a widget as the object to show below the Theme widget in the widget tree.
    * data : This property takes in ThemeData class as the object to specify the styling, colors and typography to be used.


###### Text Field ######

- A TextField an input element which hold the alphanumeric data, such as name, password, address etc.
- Enable the user to enter text information using a programmable code.

##### Date and Time Picker ######

- In Flutter, the DateTime.now() function is used to get the current date and time from the system. To update the time dynamically, setState() is used inside a StatefulWidget.

- DateTime.now() stores the current date and time.
A Container displays the time and date.
When the Refresh button is pressed, setState() updates the UI with the latest current time.

