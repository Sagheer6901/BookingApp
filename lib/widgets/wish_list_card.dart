import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdeveloper/app_config.dart';
import 'package:flutterdeveloper/widgets/custom_btn.dart';

class VehicleCard extends StatefulWidget {
  const VehicleCard({Key? key}) : super(key: key);

  @override
  _VehicleCardState createState() => _VehicleCardState();
}

class _VehicleCardState extends State<VehicleCard> {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    return Container(
      height: 300,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                    // color: AppConfig.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),

                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Image.asset(
                      "assets/images/car.jpg",
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              Positioned(
                  right: 20,
                  top: 20,
                  child: Icon(Icons.favorite))
            ],
          ),
          SizedBox(height: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Indica, Swift",style: TextStyle(fontSize: AppConfig.f4, fontWeight: FontWeight.bold,color: AppConfig.primaryColor),),
                Text("Wagon")
              ],),
              SizedBox(height: 5,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Facilities",style: TextStyle(fontSize: 10)),
                    Row(
                      children: [
                        Icon(Icons.airline_seat_flat_angled,size: 15,),
                        Text("6 Seater",style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    Row(children: [
                      Icon(Icons.shopping_bag,size: 15),
                      Text("3 Luggage Bags",style: TextStyle(fontSize: 10))
                    ],),
                    Row(children: [
                      Icon(Icons.airline_seat_flat,size: 15),
                      Text("AC",style: TextStyle(fontSize: 10))
                    ],)
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("RS- 9,822",style: TextStyle(fontSize: AppConfig.f4,fontWeight: FontWeight.bold),),
                          Text("Inclusive of Tax")
                        ],
                      ),
                      Text('Rs- 12,125',
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough)),                    ],
                  ),
                  CustomBtn("Remove", 30,AppConfig.wishListColor)
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}



class HotelCard extends StatefulWidget {
  const HotelCard({Key? key}) : super(key: key);

  @override
  _HotelCardState createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: AppConfig.primaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)                ),
              ),

              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)
                ),
                child: Image.asset(
                  "assets/images/hotel.jpg",
                  height: 150,
                  width: _appConfig.rW(30),
                  fit: BoxFit.cover,
                ),
              )
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("HILTON PALACE"),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text("Malam Jabba"),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                Text("Amenities:"),
                  Container(
                    height: 30,
                    width: 100,
                    child:                             Text(AppConfig.dummyReview)
                    ,
                  )

                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text("Rs"),
                              Text("5575")
                            ],
                          ),
                          Text("8700",style: const TextStyle(
                              decoration: TextDecoration.lineThrough))
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("PerNight")
                        ],
                      )
                    ],
                  ),
                  CustomBtn("Remove", 30,AppConfig.wishListColor)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}




class DriverCard extends StatefulWidget {
  const DriverCard({Key? key}) : super(key: key);

  @override
  _DriverCardState createState() => _DriverCardState();
}

class _DriverCardState extends State<DriverCard> {
  late AppConfig _appConfig;

  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
    );
  }
}


