import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatefulWidget {
  final String bimage;
  final String name1;
  final String name2;
  final double price;
  final String description;
  const DetailScreen(
      {super.key,
      required this.bimage,
      required this.name1,
      required this.name2,
      required this.price,
      required this.description});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Colors.amber,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .35,
                child: Image.asset(widget.bimage),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.name2,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  ("\$ ${widget.price.toStringAsFixed(2)}"),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 2, 57, 102),
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .02,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .2,
              child: SingleChildScrollView(
                child: Text(
                  widget.description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .02,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Size",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizeCard(
                  size: "S",
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .025,
                ),
                const SizeCard(
                  size: "M",
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .025,
                ),
                const SizeCard(
                  size: "L",
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .025,
                ),
                const SizeCard(
                  size: "XL",
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .025,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .025,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .025,
                ),
                const SizeCard(
                  size: "XXL",
                ),
              ],
            ),
         SizedBox(
              height: MediaQuery.sizeOf(context).height * .025,
            ),
        
            ElevatedButton(
                                    style: const ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)))),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.amber)),
                                    onPressed: () {},
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical:10, horizontal: 100 ),
                                      child: Text(
                                        "Add To Cart",
                                        style: TextStyle(
                                          color: Colors.white,
        
                                          fontSize: 25,
                                          //  fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  )
          ],
        ),
      ),
    );
  }
}

class SizeCard extends StatefulWidget {
  const SizeCard({
    super.key,
    this.size,
  });
  final String? size;

  @override
  State<SizeCard> createState() => _SizeCardState();
}

class _SizeCardState extends State<SizeCard> {
  bool isChosen = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChosen = !isChosen;
        });
      },
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .05,
        width: MediaQuery.sizeOf(context).width * .11,
        child: Material(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side:
                BorderSide(style: BorderStyle.solid, color:isChosen? Colors.amber: Colors.grey)),
          child: Center(
            child: Text(
              widget.size!,
              style: const TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
