# flutter_hive

A new Flutter project.

https://www.youtube.com/watch?v=FB9GpmL0Qe0

https://www.youtube.com/watch?v=mMgr47QBZWA

https://medium.com/@Ikay_codes/hive-flutter-local-data-storage-with-hive-typeadapter-61e995589e6a


use of await in initializing Hive and opening a box; 
because openBox return a future.

To create and write data into an open box, we use add, put, and putAll.

singleton instance of that box

*** boxes are key-value structured
*** Keys can only be of the type String
*** data type like List, Map, DateTime, and Uint8List

Read
We use get and getAt method to get data from a Hive box by passing in the key or index as the parameter

Update
To update a box data in Hive, use the putAt method with the key or index of that value.

*** You could also use the put method to override the value of a key.


Delete
You can delete data in a box using the delete method. To do this, simply pass in the key or index of the data as a parameter to the delete method.




CUSTOM OBJECT Hive Box

registering the adapter. 
*** You should register your adapter before opening the box to avoid errors.

------------------------------------------------
CLI: flutter packages pub run build_runner build
------------------------------------------------



