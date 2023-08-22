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

# Main ViewControllers

## ScheduleVC

### Features 

+ At the top of the calendar with the ability to select the day of the week.
+ Implemented the ability to hide the calendar using Swipe and the hide calendar button.
+ In the lower part of the TableView with items for the selected day.
+ In the upper right corner there is a + button that takes us to the item addition screen [ScheduleOptionsTableVC](https://github.com/DavKochkin/Schedule/blob/main/Schedule/Controllers/Schedule/ScheduleOptionsTableViewController.swift)
+ Implemented the deletion of the record by swipe to the left.

![ScheduleVC](https://github.com/DavKochkin/Schedule/assets/122441539/c315aa46-b3b5-4786-a5ae-c3a53b67c07f)
![ScheduleVC_Delete](https://github.com/DavKochkin/Schedule/assets/122441539/ba6b2aba-f9ce-4640-9ed4-23cc104dda57)

## TaskVC
List of tasks for a specific lesson/subject.

### Features 

+ TableView with a list of all tasks for the day.
+ The cell consists of the name of the subject and the task, as well as a button that can be pressed if the task is completed.
+ The + button that takes us to the task addition screen [TasksOptionsTableVC](https://github.com/DavKochkin/Schedule/blob/main/Schedule/Controllers/Tasks/TaskOptionsTableView.swift)


## ContactVC
List of contacts related to studies. 

### Features 

+ TableView with teachers and students.
+ Each cell consists of an avatar, phone number, name, mail.
+ SearchBar to search for contacts.
+ Segment Controller to select students or teachers.
+ The ability to change a contact by tap.
+ The + button that takes us to the screen of adding a contact [ContactOptions](https://github.com/DavKochkin/Schedule/blob/main/Schedule/Controllers/Contacts/ContactsOptionsTableViewController.swift)

![ContactVC](https://github.com/DavKochkin/Schedule/assets/122441539/98cdbf8e-b379-44ea-974f-576954c0f3ef)
![SearchBar](https://github.com/DavKochkin/Schedule/assets/122441539/8fcfc641-3e85-488a-aae4-89d61f445cc6)
![ChangeContact](https://github.com/DavKochkin/Schedule/assets/122441539/3f65cb9b-58b0-411a-96a5-20e0a57d06b7)

# Secondary ViewControllers 

## ScheduleOptions 

### Features 

+ Allows you to customize the date, time, name, type, body and audience of the subject.
+ When you click on Teacher's name, we go to the Teacher selection screen Teacher.
+ Color selection and transition to Colorcaption.
+ Switch if the subject is repeated every week (enabled by default).

![ColorOptions](https://github.com/DavKochkin/Schedule/assets/122441539/4ffd18e3-b5f4-4742-865e-820fbfc8bac2)
![TeachersName](https://github.com/DavKochkin/Schedule/assets/122441539/dd3bbdb9-aac7-494e-a008-7abec3f3ac6f)
![SchedOpDateTime](https://github.com/DavKochkin/Schedule/assets/122441539/f6297eed-489d-4e6b-a745-c514ec7bf441)
![ScheduleOpt](https://github.com/DavKochkin/Schedule/assets/122441539/868b84d6-dadc-4eb7-980c-c1d19418cba1)

## TaskOptions 

### Features 

+ Allows you to select Date, Time, Lesson name and Task object.
+ Choose Color in Colorcaption

![TaskOption](https://github.com/DavKochkin/Schedule/assets/122441539/5dd68b6b-4bc4-418d-84bf-ff7cb406d19d)

## ContactOptions 

### Features 

+ Allows to configure Name, Phone and Mail.
+ Choose photo.
+ Also choose the type of Friend or Teacher.

![ContactPhoto](https://github.com/DavKochkin/Schedule/assets/122441539/1f6878bb-2e36-4ffb-92bb-447d39d38792)
![ContactType](https://github.com/DavKochkin/Schedule/assets/122441539/e7532147-b685-46e2-9f4e-a976e6746b75)
![ContactName](https://github.com/DavKochkin/Schedule/assets/122441539/99096cae-f01d-4573-9e6f-1211ef77f4c3)
![ContactOpt](https://github.com/DavKochkin/Schedule/assets/122441539/f107fa2f-b6dd-47ce-8983-ad5332f0f5aa)

## TeachersVC

### Features 
+ Screen that appears when selecting a Teacher in ScheduleOptions contains all teachers.

![TeacherVC](https://github.com/DavKochkin/Schedule/assets/122441539/03616fca-ed77-420d-aade-f21c4f978fae)


## Alerts 
The Alerts appears in ScheduleOptionVC, TaskOptionVC & ContactOptionVC. 
Appears when the required fields are not filled in.

![ContactAlert](https://github.com/DavKochkin/Schedule/assets/122441539/d199217c-7143-4e81-a0cd-7ba56f79779e)
![TaskAlert](https://github.com/DavKochkin/Schedule/assets/122441539/b859e6c5-5bf7-44d0-8169-6746867bf9fd)
![ScheduleAlert](https://github.com/DavKochkin/Schedule/assets/122441539/aec122fd-9d7c-49d5-b258-b1b4eb72eab4)


  
  
