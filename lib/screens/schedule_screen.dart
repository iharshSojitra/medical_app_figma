import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int selected = 0;
  List date = [
    "12",
    "13",
    "14",
    "15",
    "16",
  ];
  List day = [
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
  ];
  List timing = [
    "12:00 PM",
    "11:00 PM",
    "10:00 PM",
  ];

  List color1 = [
    Color(0xff1C6BA4),
    Color(0xffF1E7EB),
    Color(0xffFAF0DB),
  ];
  List items = [
    {
      'image': 'assets/images/img_7.png',
      'time': '12:30 PM',
      'name': 'Dr. Zim Akhter',
      'profession': 'Cardiologist',
    },
    {
      'image': 'assets/images/img_8.png',
      'time': '11:30 AM',
      'name': 'Dr. Shahin Alam',
      'profession': 'Cardiologist',
    },
    {
      'image': 'assets/images/img_9.png',
      'time': '10:30 PM',
      'name': 'Dr. Mim Akhter',
      'profession': 'Cardiologist',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  Text(
                    "Schedule",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.date_range,
                    size: 28,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            SizedBox(
              height: height * 0.12,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      height: height * 0.12,
                      width: width * 0.17,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: selected == index
                              ? Color(0xff1C6BA4)
                              : Color(0xffDCEDF9),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              date[index],
                              style: TextStyle(
                                  fontSize: 28,
                                  color: selected == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              day[index],
                              style: TextStyle(
                                fontSize: 18,
                                color: selected == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox();
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            timing[index],
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                              "    - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"),
                        ],
                      ),
                      Container(
                        height: height * 0.15,
                        width: width,
                        margin: EdgeInsets.only(
                            top: 15, bottom: 15, left: 45, right: 15),
                        decoration: BoxDecoration(
                            color: color1[index],
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  height: height * 0.09,
                                  width: width * 0.16,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(items[index]['image']),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index]['time'],
                                    style: TextStyle(
                                        color: index == 0
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    items[index]['name'],
                                    style: TextStyle(
                                        color: index == 0
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Cardiologist",
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
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
