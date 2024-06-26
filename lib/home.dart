import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List posts=[
    "post1","post2","post3","post4","post5","post6","post7","post8","post9","post10","post11","post12",
  ];
  List countries=[
    "Japan","USA","India","France","Egypt","China"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("abhayrana1701",style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios,color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon:Icon(Icons.notifications_none,color: Colors.black),
          ),
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.more_horiz,color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/profile.jpg"),
                    ),
                    Column(
                      children: [
                        Text("450",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Posts")
                      ],
                    ),
                    Column(
                      children: [
                        Text("1400",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Followers")
                      ],
                    ),
                    Column(
                      children: [
                        Text("0",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Following")
                      ],
                    )
                  ],
                ),
                SizedBox(height:10),
                Text("Abhay Rana",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Hustle and heart"),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.4,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Follow"),
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.4,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text("Message",style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(224, 220, 220, 1.0)
                        ),
                      ),
                    ),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.1,
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Icon(Icons.perm_identity_rounded,color: Colors.black),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Color.fromRGBO(224, 220, 220, 1.0)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:10),
                Container(
                  height:80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right:12),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius:30,
                                backgroundImage: AssetImage("assets/${countries[index].toLowerCase()}.jpg"),
                              ),
                              Text(countries[index]),
                            ],
                          ),
                        );
                      },
                  ),
                ),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.grid_on),
                    Icon(Icons.play_circle_outline),
                    Icon(Icons.perm_contact_cal_outlined),
                  ],
                ),
                SizedBox(height:10),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2
              ),
              itemBuilder:(context, index) {
                return Container(
                  child: Image(image: AssetImage("assets/${posts[index]}.jpg"),fit: BoxFit.cover),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home_outlined),
            Icon(Icons.search),
            Icon(Icons.add_box_outlined),
            Icon(Icons.play_circle_outline),
            Icon(Icons.account_circle_outlined),
          ],
        ),
      ),
    );
  }
}
