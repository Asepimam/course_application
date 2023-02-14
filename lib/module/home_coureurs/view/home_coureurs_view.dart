import 'package:course_application/item_list.dart';
import 'package:flutter/material.dart';
import 'package:course_application/core.dart';
import '../controller/home_coureurs_controller.dart';

class HomeCoureursView extends StatefulWidget {
  const HomeCoureursView({Key? key}) : super(key: key);

  Widget build(context, HomeCoureursController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Welcome",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueGrey[200],
                        ),
                      ),
                      const Text(
                        "Find Your Course",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.blueGrey[500],
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "60% off",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Feb 8 - Mar 20",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.blueGrey[300],
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "join Ccourse",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset("assets/images/home.png")
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Subject",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "all",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueGrey[200],
                  ),
                ),
              ],
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.9,
              ),
              itemCount: items.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = items[index];

                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsCoureursView(item: item),
                      ),
                    );
                  },
                  child: Container(
                    // width: 300,
                    // height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset(item["imageUrl"],
                            width: 100, height: 100, fit: BoxFit.cover),
                        Text(
                          item["name_Coures"],
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.blueGrey[200],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "${item["price"]}\$",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey[200],
                                ),
                              ),
                              TextSpan(
                                text: "/month",
                                style: TextStyle(
                                  color: Colors.blueGrey[800],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 24.0,
                              color: Colors.orange,
                            ),
                            Text(
                              "${item["view"]}",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            const Text(
                              "Views",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HomeCoureursView> createState() => HomeCoureursController();
}
