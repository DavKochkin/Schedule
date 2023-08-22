# Schedule

### Description 
An application using Realm, three View Controllers with the ability to view, add subjects to the schedule,
select colors, specify the type, name of the teacher, avatar, and so on. 
Used TableView, Alerts, layout in the code.

!! To connect the pod in the root folder, enter the command pod install or arch -x86_64 pod install (for m1/m2 processor)

# Stack 

+ Swift
+ UiKit
+ Programmatically Autolayout
+ Realm
+ FSCalendar
+ MVC

# ScheduleVC

### Features 

+ At the top of the calendar with the ability to select the day of the week.
+ Implemented the ability to hide the calendar using Swipe and the hide calendar button.
+ In the lower part of the TableView with items for the selected day.
+ In the upper right corner there is a + button that takes us to the item addition screen [ScheduleOptionsTableVC](https://github.com/DavKochkin/Schedule/blob/main/Schedule/Controllers/Schedule/ScheduleOptionsTableViewController.swift)
+ Implemented the deletion of the record by swipe to the left.

<img width="300" alt="ScheduleVC" scr="https://github.com/DavKochkin/Schedule/assets/122441539/c315aa46-b3b5-4786-a5ae-c3a53b67c07f">
<img width="300" alt="ScheduleVC_Delete" scr="https://github.com/DavKochkin/Schedule/assets/122441539/ba6b2aba-f9ce-4640-9ed4-23cc104dda57">
