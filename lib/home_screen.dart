import 'package:ecommerce_3/cart_screen.dart';
import 'package:ecommerce_3/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;
  int isSelectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        
        showSelectedLabels: true,
        showUnselectedLabels: true,
       currentIndex: isSelectedIndex,
        items: const [
          
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_outlined), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile"),
        ],
        landscapeLayout:BottomNavigationBarLandscapeLayout.spread ,
        onTap:(int index) {
          _navigateToPage(context, index);
        },

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1,
                  height: MediaQuery.sizeOf(context).height * .1,
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/download.jpeg",
                      ),
                      // child: Image.asset("assets/images/1.png",fit: BoxFit.cover,),
                    ),
                    title: const Text(
                      "Hey Sammy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                    subtitle: const Text(
                      "How you doing!!",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 13,
                        // fontWeight:FontWeight.w900
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_on)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(
                    Icons.settings_backup_restore,
                    size: 30,
                    color: Colors.grey,
                  ),
                  hintText: "Search here",
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  //     focusedBorder: OutlineInputBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(20)),

                  //       borderSide: BorderSide(
                  //         style: BorderStyle.none,
                  //         color: Colors.grey
                  //       )
                  //     ),
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .01,
            ),
            Material(
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "View more",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .02,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .11,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: circleCardinfo.length,
                        itemBuilder: (context, index) {
                          final circle = circleCardinfo[index];
                          final cname = circle["name"];
                          final cimage = circle["image"];
                          return SizedBox(
                            width: MediaQuery.sizeOf(context).height * .1,
                            child: CircleCard(
                              image: cimage,
                              name: cname,
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .009,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height * .17,
                          width: MediaQuery.sizeOf(context).width / 1,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "20% Off",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.sizeOf(context).height *
                                        .025,
                                  ),
                                  const Text(
                                    "Buy more at affordable prices",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      // fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const Text(
                                    "Black Friday Maketing",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      //  fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.sizeOf(context).height *
                                        .015,
                                  ),
                                  ElevatedButton(
                                    style: const ButtonStyle(
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)))),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.white)),
                                    onPressed: () {},
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2),
                                      child: Text(
                                        "Order Now",
                                        style: TextStyle(
                                          color: Colors.amber,

                                          fontSize: 20,
                                          //  fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -2,
                          child: Image.asset(
                            "assets/images/7.png",
                            width: MediaQuery.sizeOf(context).width / 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .02,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommeded",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * .3,
                      child: GridView.builder(
                          itemCount: shirtCardinfo.length,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  mainAxisExtent: 190,
                                  mainAxisSpacing: 20,
                                  crossAxisSpacing: 20),
                          itemBuilder: ((context, index) {
                            final shirt = shirtCardinfo[index];
                            final simage = shirt["image"];
                            final sname1 = shirt["name1"];
                            final sname2 = shirt["name2"];
                            final sprice = shirt["price"];
                            final sdescription = shirt["description"];
                            return ShirtCard(
                              bimage: simage,
                              description: sdescription,
                              price: sprice,
                              name1: sname1,
                              name2: sname2,
                              isSelectedIndex: isSelected,
                              ontap: () {
                                isSelected = index;

                                Get.to(DetailScreen(
                                  bimage: simage,
                                  name1: sname1,
                                  name2: sname2,
                                  price: sprice, description: sdescription,
                                ));
                              },
                            );
                          })),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShirtCard extends StatefulWidget {
  const ShirtCard({
    super.key,
    this.bimage,
    this.name2,
    this.price,
    this.name1,
    this.isSelectedIndex,
    this.ontap, required this.description,
  });
  final String? bimage;
  final String? name1;
  final String? name2;
  final double? price;
  final int? isSelectedIndex;
  final void Function()? ontap;
  final String description;

  @override
  State<ShirtCard> createState() => _ShirtCardState();
}

class _ShirtCardState extends State<ShirtCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: widget.ontap,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * .12,
                  width: MediaQuery.sizeOf(context).width * .4,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 238, 237, 237)),
                  child: Image.asset(
                    widget.bimage!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                  bottom: 60,
                  right: -2,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: const Icon(
                      Icons.favorite,
                    ),
                    color: isFavorite ? Colors.amber : Colors.grey,
                  ))
            ],
          ),
          Text(
            widget.name1!,
            style: const TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w800),
          ),
          // SizedBox(
          //   height: MediaQuery.sizeOf(context).height * .01,
          // ),
          Text(
            widget.name2!,
            style: const TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(
                ("\$ ${widget.price!.toStringAsFixed(2)}"),
                style: const TextStyle(
                    color: Color.fromARGB(255, 2, 57, 102),
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CircleCard extends StatelessWidget {
  const CircleCard({
    super.key,
    this.image,
    this.name,
  });
  final String? image;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(image!),
          backgroundColor: Colors.white,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .01,
        ),
        Text(
          name!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}

List<Map<String, String>> circleCardinfo = [
  {
    "name": "All",
    "image": "assets/images/download.jpeg",
  },
  {"name": "Shoes", "image": "assets/images/adidasshoe.webp"},
  {"name": "Hats", "image": "assets/images/hat1.png"},
  {"name": "Phones", "image": "assets/images/phone.png"},
  {"name": "T-Shirt", "image": "assets/images/tshirt.png"},
  {"name": "Watches", "image": "assets/images/watch.png"},
];
List<Map<String, dynamic>> shirtCardinfo = [
  {
    "name1": "Adidas Woodie ",
    "image": "assets/images/2.png",
    "name2": "Black and Brown color",
    "price": 120.00,
        "description":
       " Adidas AG is a German athletic apparel and footwear corporation headquartered in Herzogenaurach, Bavaria, Germany. It is the largest sportswear manufacturer in Europe, and the second largest in the world, after Nike."
  },
  {
    "name1": "Lious Vuiton",
    "image": "assets/images/3.png",
    "name2": "Deep green color",
    "price": 160.00,
        "description":
       " Louis Vuitton Malletier, commonly known as Louis Vuitton, is a French luxury fashion house and company founded in 1854 by Louis Vuitton"
  },
  {
    "name1": "Gucci",
    "image": "assets/images/4.png",
    "name2": "Blak and white color",
    "price": 140.00,
        "description":
       "Guccio Gucci S.p.A., doing business as Gucci, is an Italian luxury fashion house based in Florence, Italy. Its product lines include handbags, ready-to-wear, footwear, accessories, and home decoration and it licenses its name and branding to Coty for fragrance and cosmetics under the name Gucci Beauty."
  },
  {
    "name1": "Prada woodie",
    "image": "assets/images/5.png",
    "name2": "Black and White color",
    "price": 900.50,
    "description":
     "   Prada S.p.A. is an Italian luxury fashion house founded in 1913 in Milan by Mario Prada. It specializes in leather handbags, travel accessories, shoes, ready-to-wear, and other fashion accessories. Prada licenses its name and branding to Luxottica for eyewear and LOréal for fragrances and cosmetics."
  },
  {
    "name1": "Balenciaga",
    "image": "assets/images/6.png",
    "name2": "Orange Color",
    "price": 220.20,
        "description":
       " Balenciaga SA is a luxury fashion house founded in 1919 by the Spanish couturier Cristóbal Balenciaga in San Sebastian, Spain, and currently based in Paris. Balenciaga produces ready-to-wear footwear, handbags, and accessories, and licenses its name and branding to Coty for fragrances."
  },
  {
    "name1": "Dior woodie",
    "image": "assets/images/7.png",
    "name2": "pink color",
    "price": 800.00,
        "description":
        "Christian Dior SE, commonly known as Dior, is a French multinational luxury fashion house controlled and chaired by French businessman Bernard Arnault, who also heads LVMH. Dior holds 42.36% shares and 59.01% of voting rights within LVMH"
  },
  {
    "name1": "Celine",
    "image": "assets/images/8.png",
    "name2": "color",
    "price": 500.00,
        "description":
       " Celine is a French luxury ready-to-wear and leather goods brand owned by the LVMH group since 1996. It was founded in 1945 by Céline Vipiana"
  },
  {
    "name1": "Loewe",
    "image": "assets/images/9.png",
    "name2": "Whine Color",
    "price": 100.00,
        "description":
        "Loewe is a Spanish luxury fashion house specialising in leather goods, clothing, perfumes and other fashion accessories. Founded in 1846, Loewe is LVMH's oldest luxury fashion house." 
  },
  {
    "name1": "Versace",
    "image": "assets/images/10.png",
    "name2": "Black and White",
    "price": 120.00,
        "description":
        "Gianni Versace S.r.l., usually referred to as Versace, is an Italian luxury fashion company founded by Gianni Versace in 1978 known for flashy prints and bright colors"
  },
  {
    "name1": "Versace",
    "image": "assets/images/10.png",
    "name2": "Black and White",
    "price": 120.00,
        "description":
        "Gianni Versace S.r.l., usually referred to as Versace, is an Italian luxury fashion company founded by Gianni Versace in 1978 known for flashy prints and bright colors"
  },
];

void _navigateToPage(BuildContext context, int index) {
    switch (index) {
      case 0:

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 2:
        
        Get.to(const CartScreen());
        break;
      // case 2:
  
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ),
      //   );
      //   break;
    }
  }