import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List colorss = [
    Color(0xff1C6BA4),
    Color(0xffFAF0DB),
  ];
  List colorss2 = [
    Color(0xff3F84BB),
    Color(0xffE09F1F),
  ];
  List name = [
    "12",
    "13",
  ];
  List name2 = [
    "Tue",
    "Tue",
  ];
  List name3 = [
    "9:30 AM",
    "10:30 AM",
  ];
  List name4 = [
    "Dr. Mim Akhter",
    "Dr. Shahin Alam",
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "👋 Hello!",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "John deo",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/img.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(19)),
                        ),
                        Positioned(
                          left: 39,
                          top: 2,
                          child: CircleAvatar(
                            radius: 6,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: "Search medical..",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.tune,
                      color: Colors.black,
                      size: 30,
                    ),
                    filled: true,
                    fillColor: Color(0xffEEF6FC),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('assets/images/img_3.png'),
                      height: 50,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage('assets/images/img_4.png'),
                      height: 50,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage('assets/images/img_5.png'),
                      height: 50,
                      width: 50,
                    ),
                    Image(
                      image: AssetImage('assets/images/img_6.png'),
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.23,
                      width: width,
                      decoration: BoxDecoration(
                          color: Color(0xffDCEDF9),
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 30),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Get the Best\nMedical Service",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Lorem ipsum is simply dummy\ntext of the printing",
                                  style: TextStyle(
                                      fontSize: 13.5, color: Colors.grey),
                                ),
                              ],
                            ),
                            Image(
                              image: AssetImage('assets/images/img_1.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Upcoming Appointments",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.16,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.16,
                      width: width * 0.75,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: colorss[index],
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.14,
                              width: width * 0.17,
                              decoration: BoxDecoration(
                                  color: colorss2[index],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    name[index],
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    name2[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name3[index],
                                  style: TextStyle(
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  name4[index],
                                  style: TextStyle(
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Depression",
                                  style: TextStyle(
                                      color: index == 0
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.more_horiz,
                              size: 28,
                              color: index == 0 ? Colors.white : Colors.black,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
