

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:carousel_slider/carousel_slider.dart';
List<String> images = [
      
      "https://www.foodicine.co.in/img/products/seaweed-fertilizer.jpg",
     
      "https://www.yara.ph/siteassets/philippines/01-yaramila-f-2.jpg",
      "https://evergrowfert.com/wp-content/uploads/2020/01/assets__up__file-1508672699-KCESGP.jpg",
      "https://www.alphaoneinc.com/wp-content/uploads/2022/03/Nat-Organic-Product.png",
      "http://statnano.com/filereader.php?p1=main_c4ca4238a0b923820dcc509a6f75849b586.png&p2=pr_brand&p3=21&p4=2"
    ];

class Recommend extends StatefulWidget {
  const Recommend({super.key});

  @override
  State<Recommend> createState() => _RecommendState();

}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Recommended for your land")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: NetworkImage(
                        "https://m.media-amazon.com/images/I/81+DOyVIA2L._SL1500_.jpg"),
                    height: 200,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.1,
              child: Card(
                elevation: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                        child: ListTile(
                      title: Text("N-P-K  20-20-20",style: TextStyle(fontSize: 30),),
                      subtitle: Text("200 LE"),
                    )),
                  ],
                ),
              ),
            ),
             SizedBox(
             height:height*0.1,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children:  [
                      Text("Amount per acre :",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),

                      Padding(
                        padding: EdgeInsetsDirectional.only(start: width*0.1,end: width*0.05),
                        child: Text("60 KG",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                      ),
                      Text("3 Bags",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 18),)
                    ],
                  ),
                ),
              ),
            ),
           
      
            SizedBox(
              height: height * 0.22,
              child: const Card(
                  elevation: 5,
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: ReadMoreText(
                        'NPK 20 20 20 is a highly concentrated, balanced plant fertiliser. It contains equal parts nitrogen, phosphorus, and potassium.It can quickly and effectively raise the nutrient content of the soil providing a suitable foundation for plants. However, it should be used for just a short period of time and then either be diluted or substituted for another, less concentrated fertiliser.',
                        trimLines: 2,
                        colorClickableText: Colors.green,
                      
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle:
                            TextStyle(color:Colors.green,fontSize: 15, fontWeight: FontWeight.bold),
                            lessStyle: TextStyle(color:Colors.green,fontSize: 15, fontWeight: FontWeight.bold),
                      ))),
            ),
             Padding(
               padding: const EdgeInsets.all(15),
               child: Row(
                children: const [
                   Text(
                    "Alternatives ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ],
            ),
             ),
            Container(
              height: 0.25*height,
              width: width,
              child: Card(
                elevation: 5,
                child: Container(
                  
                        child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true
                      ),
                      items: images
                .map((item) => Container(
                      child: Image.network(item, fit: BoxFit.cover, width: 0.6*width),
                    ))
                .toList(),
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
