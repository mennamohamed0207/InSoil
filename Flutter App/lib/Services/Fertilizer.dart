import 'package:flutter/material.dart';
import 'package:todo/Item_Widget.dart';

// ignore: camel_case_types
class fertilizer extends StatefulWidget {
  const fertilizer({Key? key}) : super(key: key);

  @override
  State<fertilizer> createState() => _fertilizerState();
}

// ignore: camel_case_types
class _fertilizerState extends State<fertilizer> {
  @override
  Widget build(BuildContext context) {
    List<String> Names = [
      "N-P-K 20 20 20",
      "Superphosphate",
      "Monoammonium",
      "Di-ammounium phosphate",
      "Ammounium poly-phosphate liquid",
      "Triple SuperPhosphate",
     
      
    ];
    List<String> images = [
      "https://m.media-amazon.com/images/I/81+DOyVIA2L._SL1500_.jpg",
      "https://www.foodicine.co.in/img/products/seaweed-fertilizer.jpg",
      "https://www.yara.ph/siteassets/philippines/01-yaramila-f-2.jpg",
      "https://evergrowfert.com/wp-content/uploads/2020/01/assets__up__file-1508672699-KCESGP.jpg",
      "https://www.alphaoneinc.com/wp-content/uploads/2022/03/Nat-Organic-Product.png",
      "http://statnano.com/filereader.php?p1=main_c4ca4238a0b923820dcc509a6f75849b586.png&p2=pr_brand&p3=21&p4=2"
    ];
    List<String> Prices = [
      "200 LE",
      "150 LE",
      "120 LE",
      "200 LE",
      "300 LE",
      
      "325 LE"
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("Fertilizers")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Text(
            //       "Fertilizers ",
            //       style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           fontSize: 20,
            //           fontStyle: FontStyle.italic),
            //     ),
            //   ],
            // ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Expanded(
                child: ListView.builder(
              primary: false,
              shrinkWrap: false,
              itemBuilder: (context, index) {
                return ItemWidget(
                  image: images[index],
                  title: Names[index],
                  price: Prices[index],
                );
              },
              itemCount: Names.length,
            )),
          ],
        ),
      ),
    );
  }
}
