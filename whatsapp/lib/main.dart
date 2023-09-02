import 'package:flutter/material.dart';
import 'screens/pages.dart';

//Scaffold & Navigator

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: const MyHomePage()
      );
  }
}

class MyHomePage extends StatefulWidget 
{
  const MyHomePage({super.key});
  

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> 
{
  int index_of_item = 0,count = 0;

  @override
  Widget build(BuildContext context) 
  {
   
    return Scaffold
    (

//primary
      primary: true,

//resize to avoid bottom set
      resizeToAvoidBottomInset: true,

//background color
      backgroundColor: Colors.white,

//appbar      
      appBar: AppBar
      (
        title: const Text("WHATSAPP"),
      ),

//body
      body:  Center
      (
        child: Stack
        (
          fit: StackFit.passthrough,
          // overflow: Overflow.visible,
          children: 
          [
            Positioned
            (
              top: 40,
              left: 150,
//Navigator
              child: Column
              (
                children: 
                [
                  ElevatedButton
                  (
                    onPressed: () 
                    {
                      Navigator.push
                      (
                        context,
                        MaterialPageRoute
                        (
                          builder: (context) => pages(),
                        )
                      );
                    },
                    child: const Text
                    (
                      "Pages",
                      style: TextStyle
                      (
                        fontSize: 15,
                      ),
                    )
                  )
                ]
              ), 
            )
          ],
        )
      ),

//drawer
      drawer: Drawer
      (
        child: ListView
        (
          children: <Widget> 
          [
            const DrawerHeader
            (
              decoration: BoxDecoration
              (
                color: Colors.blue,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text
                (
                  "Extreme Psycho",
                  style: TextStyle(fontSize: 20),
                ), 
                accountEmail: Text("9072381972"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar
                (
                  backgroundColor: Color.fromARGB(255, 45, 175, 226),
                  child: Text
                  (
                    "EP",
                    style: TextStyle
                    (
                      fontSize: 30.0,
                      color: Colors.black
                    ),
                  ),
                ),
              ),
            ),

            ListTile
            (
              title: const Text("Profile"),
              leading: const Icon(Icons.person_3),

              onTap: ()
              {
                Navigator.pop(context);
              }, 
            ),

            ListTile(
              title: const Text("LogOut"),
              leading: const Icon(Icons.logout),

              onTap: ()
              {
                Navigator.pop(context);
              },
            ),
        
          ],
        )
      ),

//end drawer
      // endDrawer: Drawer
      // (
      //   child: ListView
      //   (
      //     children: <Widget>
      //     [
      //       const DrawerHeader
      //       (
      //         decoration: BoxDecoration
      //         (
      //           color: Colors.blue,
      //         ),
      //         child: UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(color: Colors.blue),
      //           accountName: Text
      //           (
      //             "Extreme Psycho",
      //             style: TextStyle(fontSize: 20),
      //           ), 
      //           accountEmail: Text("9072381972"),
      //           currentAccountPictureSize: Size.square(50),
      //           currentAccountPicture: CircleAvatar
      //           (
      //             backgroundColor: Color.fromARGB(255, 45, 175, 226),
      //             child: Text
      //             (
      //               "EP",
      //               style: TextStyle
      //               (
      //                 fontSize: 30.0,
      //                 color: Colors.black
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),

      //       ListTile
      //       (
      //         title: const Text("Profile"),
      //         leading: const Icon(Icons.person_3),

      //         onTap: ()
      //         {
      //           Navigator.pop(context);
      //         }, 
      //       ),

      //       ListTile(
      //         title: const Text("LogOut"),
      //         leading: const Icon(Icons.logout),

      //         onTap: ()
      //         {
      //           Navigator.pop(context);
      //         },
      //       ),
        
      //     ],
      //   )
      // ),
      
//floating action button
      floatingActionButton: FloatingActionButton
      (
        onPressed: () => setState(() 
        {
          null;
        }),
        child: Icon(Icons.message),
        shape: RoundedRectangleBorder
        (
          borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        
      ),

//floating action button location      
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, -> CENTER OF BOTTOM NAVIGATION BAR
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, -> CENTER & ABOVE BOTTOM NAVIGATION BAR
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, -> RIGHT SIDE & ON BOTTOM NAVIGATION BAR
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, -> RIGHT SIDE & ABOVE BOTTOM NAVIGATION BAR,DEFAULT

//persistent footer button
      persistentFooterButtons: <Widget>
            [
              Row
              (
                children: 
                [
                  const SizedBox
                  (
                    height: 50,
                  ),

                  ElevatedButton.icon
                  (
                    style: ElevatedButton.styleFrom
                    (
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),

                    onPressed: () {},
                    icon: const Icon
                    (
                      Icons.mark_unread_chat_alt,
                      size: 25.0,
                    ), 
                    label: const Text("Unread Messages"),
                  ),

                  const Spacer(),

                  ElevatedButton.icon
                  (
                    style: ElevatedButton.styleFrom
                    (
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),

                    onPressed: () {}, 
                    icon: const Icon
                    (
                      Icons.message,
                      size: 25.0,
                    ), 
                    label: const Text("All Messages"),
                  )

                ],
              )
            ],

//bottom navigation bar
      bottomNavigationBar: BottomNavigationBar
      (
        currentIndex: 0,
        backgroundColor: Colors.blue,
        fixedColor: Colors.black,
        items: const 
        [
          BottomNavigationBarItem
          (
            label: "Personal",
            icon: Icon(Icons.person),
          ),

          BottomNavigationBarItem
          (
            label: "Group",
            icon: Icon(Icons.groups),
          ),
        ],
        onTap: (index_of_item) {}  

        //BOTTOM APP BAR
        // bottomNavigationBar: BottomAppBar
        // (
          //  shape: const CircularNotchedRectangle(),
          //  child: Container
          //  (
          //    height: 50.0,
          //  ),
        // ),
      ),

    ); 

  }
}
