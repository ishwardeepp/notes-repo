import 'package:flutter/material.dart';

import './new_note_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController userNoteInput = TextEditingController();
  //defining a text editing controller type to userNoteInput

  List<Widget> inputList = [];
  //creating a list inputList which takes widgets in it

  void _setText() {
    setState(() {
      Shownote widg_add = Shownote(userNoteInput.text);
      /*denotes a variable called widget_add which calls Shownote which takes
        the user input as a text*/
      inputList.add(widg_add);
      /*after Shownote gets called, it adds the widget that we built in 
        Shownote to the list inputList*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*home is a core widget brought onto the screen when the code is 
          rendered*/
      //scaffold creates a base page design and structure for the app UI

      appBar: AppBar(
        //appBar is the top bar that appears at the head of the application
        /*AppBar is a class that helps us customise the elements of the 
              app bar for a better UI*/
        title: Text("Basic Notes App"),
        backgroundColor: Color.fromARGB(255, 100, 69, 58),
        /*withOpacity replaces the given colour with the given amount of 
              opacity specified*/
        titleTextStyle:
            TextStyle(color: Color.fromARGB(255, 218, 213, 194), fontSize: 28),
      ),
      /*in the above code we customised the features of the text and 
            background of the app bar*/

      body: SingleChildScrollView(
        /*here we have used SingleChildScrollView, its used for when is used 
          when we have to render different widgets for n elements. */
        /*its literal meaning is a box in which a single widget can be 
            scrolled.it is useful when there is a single box which will normally 
            be entirely visible */

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                /*here we have defined a textfield which allows the users to 
                  type text into an app */
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Enter Your Note",
                  filled: true,
                  fillColor: Color.fromARGB(255, 100, 69, 58).withOpacity(.3),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                controller: userNoteInput,
                /*here we have defined the controller object userNoteInput */
              ),
            ),
            ElevatedButton(
              /*elevated button is similar to text button but it offers a better UX 
                as it has a defined background*/
              onPressed: () => _setText(),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(8),
                /*Material state properties represent values that depend on a 
                  widget's material state*/
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: Text('Save'),
            ),
            /*here, we have classified an elevated button which when called
                calls the setText function which further contains the
                setstate function */

            Container(
              height: 500,
              width: double.infinity,
              /*double.infinity ensures that the container will have the largest 
                possible width*/
              child: ListView(children: [...inputList]),
            ), /*Using a ListView to show the list widget when setstate is 
                  called all the listview will update*/
            /*here we have creater a Container which further has listview in it
              this takes the list inputList and by using the spread operator we
              are taking of the various widgets out of the inputList and 
              displaying them individually*/
          ],
        ),
      ),
    );
  }
}
