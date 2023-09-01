import 'package:flutter/material.dart';
import 'ModelClass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool refund = false;
  int I =0;
  List<ModelClass> Info = [
    ModelClass(
        TitlE: 'Order Placed',
        detail: [
          ModelClass.detail(Discricption: 'Your order has been placed', Time: '05:27 PM, 07 July,2023')
        ]
    ),
  ];
  List<ModelClass> ref = [
    ModelClass(
        TitlE: 'Shipped',
        detail: [
          ModelClass.detail(Discricption: 'Your item has been shipped.Tracking ID: 9857517343. Courier: Ecom Express.', Time: '08 July,2023'),
          ModelClass.detail(Discricption: 'Reached at wlp-waleyar,ahmedabad-ahd', Time: '07:13 PM, 08 July,2023'),
          ModelClass.detail(Discricption: 'Reached at ctp-coimbatore-cja,ahmedabad-ahd', Time: '10:13 PM, 08 July,2023'),
          ModelClass.detail(Discricption: 'Reached at ctp-coimbatore-cja,ahmedabad-ahd', Time: '12:40 AM, 09 July,2023'),
          ModelClass.detail(Discricption: 'Reached at hnh-bengaluru-blr,ahmedabad-ahd', Time: '02:18 PM, 09 July,2023'),
          ModelClass.detail(Discricption: 'Reached at sth-surat-sur,ahmedabad-ahd', Time: '12:28 AM, 11 July,2023'),
          ModelClass.detail(Discricption: 'Reached at ahh-ahmedabad-ahd,ahmedabad-ahd', Time: '11:08 AM,11 July,2023'),
          ModelClass.detail(Discricption: 'Reached at app-ahmedabad-ahd,ahmedabad-ahd', Time: '04:40 PM,11 July,2023'),
          ModelClass.detail(Discricption: 'Reached at ahj-ahmedabad-ahd,ahmedabad-ahd', Time: '07:14 AM,12 July,2023'),
          ModelClass.detail(Discricption: 'Reached at ahj-ahmedabad-ahd,ahmedabad-ahd', Time: '08:07 AM,12 July,2023'),
          ModelClass.detail(Discricption: 'Reached at ahj-ahmedabad-ahd,ahmedabad-ahd', Time: '09:27 AM,12 July,2023'),
        ]
    ),
    ModelClass(
        TitlE: 'Delivered',
        detail: [
          ModelClass.detail(Discricption: 'Your item has been delivered', Time: '03:17 PM,12 July,2023')
        ]
    ),
    ModelClass(
        TitlE: 'Return',
        color: Colors.deepOrangeAccent,
        dot: false,
        detail: [
          ModelClass.detail(Discricption: 'Return request initiated, Awb number will be shared within the next 24 hours', Time: '12:13 PM, 13 July,2023'),
          ModelClass.detail(Discricption: 'Return Pick-up will be done by 12 Jul. Refund will be proceseed after pick-up. Tracking ID: 23456778437654. Courier: xpressbess.', Time: '12:13 PM, 13 July,2023'),
          ModelClass.detail(Discricption: 'Out for pick-up: Your order is expexcted to be picked up today by our partner. Tracking ID: 23456778437654. Courier: xpressbess.', Time: '08:03 AM, 14 July,2023'),
          ModelClass.detail(Discricption: 'The product has been picked-up. The refund for this order will be intiated shortly.', Time: '05:03 PM, 14 July,2023'),
          ModelClass.detail(Discricption: 'Refund of Rs.299 is intiated. It will reflect in your Bank/UPI account in 2-3 working days.', Time: '05:03 PM, 14 July,2023'),
        ]
    ),
  ];
  int n = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22,left: 8,bottom: 15),
              child: Text(
                  'Track Order',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            for(int i =0;i<Info.length;i++)...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomStepper(index: i),
              ),
            ],
            refund?Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent,
                    radius: 3.5,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text(
                            'Refund Rs.299 is successfully credited to your UPI account ****ha@oksbi. Trsaction ID: 319745755647282. It will reflect as Meesho/Cashfree.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                          '05:10 PM, 14 July 2023',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16
                        ),
                      )
                    ],
                  )
                ],
              ),
            ):
                SizedBox()
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            setState(() {
              I++;
              if(I==4){
                refund =true;
              }
              if(n<3){
                Info.add(ref[n]);
                n++;
              }
            });
          },
          child: Text('Continue')
      ),
    );
  }
  Widget CustomStepper({required int index}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Info[index].dot?
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 5),
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            )
            :
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 3),
              child: CircleAvatar(
                backgroundColor: Color(0xffFDE3B8),
                radius: 12,
                child: CircleAvatar(backgroundColor: Colors.deepOrangeAccent, radius: 5,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(Info[index].TitlE,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(
                    color: Info[index].color,
                    width: 1.5
                  ))),
          child: Container(
            height: Info[index].dot?80*Info[index].detail.length.toDouble():99*Info[index].detail.length.toDouble(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for(int i =0;i<Info[index].detail.length;i++)...[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Info[index].detail[i].Discricption,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey.shade800
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          Info[index].detail[i].Time,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15
                          ),
                        )
                      ],
                    ),
                  )
                ],
                Info[index].detail.length>0?SizedBox(height: 10):SizedBox()
              ],
            ),
          ),
        ),
      ],
    );
}
}
