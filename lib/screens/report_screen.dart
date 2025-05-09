import 'package:flutter/material.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List color1 = [
    Color(0xffF1E7EB),
    Color(0xffFAF0DB),
  ];
  List image1 = [
    'assets/images/img_13.png',
    'assets/images/img_14.png',
  ];
  List items = [
    {
      'image': 'assets/images/img_11.png',
      'title': 'Blood Group',
      'grade': 'A+',
    },
    {
      'image': 'assets/images/img_12.png',
      'title': 'Weight',
      'grade': '80kg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Report",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_horiz,
                    size: 30,
                    color: Colors.black54,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: height * 0.22,
                width: width,
                decoration: BoxDecoration(
                    color: Color(0xffDCEDF9),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 120, top: 0, bottom: 0),
                  child: Image(
                    image: AssetImage('assets/images/img_10.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: height * 0.19,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.19,
                      width: width * 0.41,
                      margin: EdgeInsets.only(left: 7, right: 7),
                      decoration: BoxDecoration(
                          color: color1[index],
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage(items[index]['image']),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  items[index]['title'],
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  items[index]['grade'],
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lattest Report",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: List.generate(
                    2,
                    (index) => ListTile(
                          horizontalTitleGap: 30,
                          contentPadding: EdgeInsets.only(bottom: 25),
                          title: Text(
                            "General Health",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            "8 files",
                            style: TextStyle(fontSize: 15),
                          ),
                          leading: Image(
                            image: AssetImage(image1[index]),
                            height: 50,
                            width: 50,
                          ),
                          trailing: Icon(Icons.more_vert),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
