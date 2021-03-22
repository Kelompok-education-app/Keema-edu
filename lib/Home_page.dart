import 'package:keema_app/Authenticate/login.dart';
import 'package:keema_app/Services/Auth.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'ProfilePage.dart';
import 'constants.dart';
import 'category.dart';
import 'package:flutter/material.dart';
import 'Course_Screen.dart';

class HomeScreen extends StatelessWidget {
  final String email;
  HomeScreen({this.email});
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
      child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                  child: DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/background.jpg"),
                          fit: BoxFit.cover)),
                  child: Text("Hi, " + email, style: TextStyle(color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                ListTile(
                  leading: IconButton(
                  onPressed: (){
                    
                  },
                  icon: Icon(Icons.people),
                  alignment: Alignment.center,
                  ),
                  title: Text("Keema Flutter Developers" , style: TextStyle(
                  fontSize: 18,  
                  fontWeight: FontWeight.bold),
                  
                  ),
                  onTap: () {
                 
                  },
                ),
                  SizedBox(height: 5),
                  ListTile(
                  leading: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person),
                  alignment: Alignment.center,
                  ),
                
                  title: Text("Raymond Tjahyadi 535190030" , 
                  style: TextStyle(
                  fontSize: 18,  
                  fontWeight: FontWeight.bold),
                  
                  ),
                  onTap: () {
                  },
                ),
                SizedBox(height: 5),
                  ListTile(
                  leading: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person),
                  alignment: Alignment.center,
                  ),
                  title: Text("Leonardo Tejaya 535190027" , style: TextStyle(
                  fontSize: 18,  
                  fontWeight: FontWeight.bold),
                  
                  ),
                  onTap: () {
                
                  },
                ),
                    SizedBox(height: 5),
                  ListTile(
                  leading: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person),
                  alignment: Alignment.center,
                  ),
                  title: Text("Ferdy Sechannandito 535190046" , style: TextStyle(
                  fontSize: 18,  
                  fontWeight: FontWeight.bold),
                  
                  ),
                  onTap: () {
                
                  },
                ),
                    SizedBox(height: 5),
                    ListTile(
                  leading: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person),
                  alignment: Alignment.center,
                  ),
                  title: Text("Muhammad yana Harris 535190036" , style: TextStyle(
                  fontSize: 18,  
                  fontWeight: FontWeight.bold),
                  
                  ),
                  onTap: () {
                
                  },
                ),
                    SizedBox(height: 5),
                     ListTile(
                  leading: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.person),
                  alignment: Alignment.center,
                  ),
                  title: Text("Andre Ertanto 535190029" , style: TextStyle(
                  fontSize: 18,  
                  fontWeight: FontWeight.bold),
                  
                  ),
                  onTap: () {
                
                  },
                ),
                    SizedBox(height: 5),
                  ListTile(
                  leading: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.logout),
                  alignment: Alignment.center,
                  ),
                  title: Text("Logout" , style: TextStyle(
                  fontSize: 18,  
                  fontWeight: FontWeight.bold),
                  
                  ),
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Loginpage();
                  }));
                  },
                ),
              
              
              ]),
            )
          ],
        ),
  ),
  
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        actions: [
            IconButton(
              color: Colors.white,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProfilePage(email);
                      }));
                    },
                    icon: Icon(Icons.person_outline))
        ],
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.indigo[50],
      
    
      body: SingleChildScrollView(
        
      child: Padding(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Welcome To Keema! 🎓", style: TextStyle(letterSpacing: 5, fontSize: 24 , fontWeight: FontWeight.bold)),
              SizedBox(height: 15),
               Text("Select a course you want to learn", style: kSubheadingextStyle),
               SizedBox(height:10),
              CarouselSlider(
                
   options: CarouselOptions(height: 200.0,
   autoPlay: true,
   autoPlayInterval: Duration(seconds: 3),
   enableInfiniteScroll: false,
  ),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Image.asset('assets/images/study$i.png')
        );
      },
    );
  }).toList(),
),

             
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Category", style: kTitleTextStyle),
               
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 800,
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1.9 / 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 20),
            itemCount: categories.length,
            itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                  splashColor: Colors.purple,
                 onTap: (){
                   print("U Tap: ${categories[index].name} ");
                   Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => CourseDetails(category: categories[index], )
                   ));
                 },
                      child: Card(
                      color: Colors.indigo[100],
                      shadowColor: Colors.black,
                      elevation: 10,
                      shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
            ),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(categories[index].name , style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold

                            ),),
                            Text(categories[index].numOfCourses.toString() + ' Courses' , style: 
                            TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold

                            ),
                            
                            
                            
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(14, 10, 10, 0),
                              child: Image.asset(categories[index].image),
                            ),
       
                          ],
                          
                        ),
                      ),
                    ),
                  ),
                );
            }),
              ),
              ], 
          ),
        ),
      ),
    );
  }
}
