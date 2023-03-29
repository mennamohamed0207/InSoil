import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


import 'Screens/Phone_consult.dart';
import 'Services/Consultancy.dart';
import 'Services/Fertilizer.dart';

class HomePageCardWidget extends StatelessWidget {
  String title;
  String image;
  void Function() ontap;
  HomePageCardWidget({Key? key, required this.title, required this.image,required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 5),
        child: GestureDetector(
          onTap: ontap,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: Column(
              children: [
                Expanded(
                    child: Image(
                        image: NetworkImage(this.image),
                      fit: BoxFit.cover,
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    this.title,
                    style: TextStyle(
                      color: Colors.white,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget myDivider() => Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);

Widget buildExpertItem(Expert expert, context) => InkWell(
  onTap: (){
    navigateTo(context, Phone(expert.name),);
  },
  child:   Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:
      [
        Container(
          width: 120.0,
          height: 120.0,
          
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(10.0,),
            
            image: DecorationImage(
              image: NetworkImage('${expert.image}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Container(
            height: 120.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                Text(
                  '${expert.name}',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    '${expert.title}',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text(
                  '${expert.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                RatingBar.builder(
                  initialRating: expert.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20.0,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    size: 2.0,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        ),
      ],
    ),
  ),
);

Widget ExpertBuilder(list, context, {isSearch = false}) => ListView.separated(
  physics: BouncingScrollPhysics(),
  itemBuilder: (context, index) => buildExpertItem(list[index], context),
  separatorBuilder: (context, index) => myDivider(),
  itemCount: 10,);


void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);