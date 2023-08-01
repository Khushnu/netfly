import 'package:flutter/material.dart';
import 'package:netfly/Model/cateogrymodel.dart';
import 'package:netfly/Model/items_model.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import 'package:netfly/Widgets/deleiveryoptions_widget.dart';
import 'package:netfly/main.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  CategoryModel? data;
 CategoryModel currentSelected = CategoryModel(text: 'Appetisers',);
  List<ItemsModel> itemsList = [
    ItemsModel(
        title: 'Chicken Momo',
        description:
            'Steamed dumplings stuffed with spiced chicken minced served with garlic & tomato chutney.',
        image:
            'https://images.unsplash.com/photo-1661082568383-d31c9a87061f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
        price: 5.50),
    ItemsModel(
        title: 'Spicy Chicken Lolipop',
        description:
            'Chicken wings marinated in himalayan herbs and spices, chickpea corn flour batter and deep-fried, coated in garlic chilli sauce.',
        image:
            'https://images.unsplash.com/photo-1604503468506-a8da13d82791?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
        price: 5.50),
    ItemsModel(
        title: 'Spicy Chicken Lolipop',
        description:
            'Chicken wings marinated in himalayan herbs and spices, chickpea corn flour batter and deep-fried, coated in garlic chilli sauce.',
        image:
            'https://images.unsplash.com/photo-1604503468506-a8da13d82791?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
        price: 5.50)
  ];

  List<CategoryModel> list = [
    CategoryModel(text: 'Appetisers',),
    CategoryModel(text: '1953 Starters'),
    CategoryModel(text: 'Starters'),
    CategoryModel(text: '1953 special cusine'),
    CategoryModel(text: 'Traditional Curries'),
    CategoryModel(text: 'Tandoori Grills'),
    CategoryModel(text: 'Vegetarian Dishes'),
    CategoryModel(text: 'Biryani Dishes'),
    CategoryModel(text: 'Kids Menu'),
    CategoryModel(text: 'Rice And Breads'),
    CategoryModel(text: 'Pizza')
  ];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
   // print(screenWidth);
    return Responsive.isMobileScreen(context) ? Column(
      children: [
        Container(
          height: 55,
          width: screenWidth,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: list.map((e) {
                // ignore: unrelated_type_equality_checks
                bool isSelected = currentSelected == e;
                data = e;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // list[list.indexOf(e)].isselected =
                      //     !list[list.indexOf(e)].isselected; 
                      currentSelected =e ;
                      setState(() {});
                    },
                    child: Container(
                      height: 35,
                      width: 114,
                      decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xff183861)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: FittedBox(
                        child: Text(
                          e.text,
                          style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Wrap(
          children: itemsList.map((e) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 192,
                  width: screenWidth * 0.9 + 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade300,
                      )),
                  padding: const EdgeInsets.all(10).copyWith(bottom: 1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        e.title,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xff183861),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              e.description,
                              style: const TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 55, 58, 62),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                                height: 90,
                                width: 90,
                                child: Image.network(
                                  e.image,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_shopping_cart,
                                size: 25,
                              )),
                          Text(
                            '£${e.price}',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff183861)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        )
      ],
    ) : Responsive.isMediumScreen(context) ? Column(
      children: [
        Container(
          height: 55,
          width: screenWidth,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: list.map((e) {
                 bool isSelected = currentSelected == e;
                // ignore: unrelated_type_equality_checks
                data = e;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                    currentSelected =e;

                      setState(() {});
                    },
                    child: Container(
                      height: 35,
                      width: 114,
                      decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xff183861)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: FittedBox(
                        child: Text(
                          e.text,
                          style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Align( 
          alignment: Alignment.centerLeft,
          child: Container(
            width: screenWidth,
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.centerRight, 
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DeliveryOptionWidget(),
                  ),
                ),
                Wrap(
                direction: Axis.horizontal,
                  children: itemsList.map((e) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 192,
                          width: screenWidth * 0.5 ,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.shade300,
                              )),
                          padding: const EdgeInsets.all(10).copyWith(bottom: 1),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                e.title,
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Color(0xff183861),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      e.description,
                                      style: const TextStyle(
                                          fontSize: 17,
                                          color: Color.fromARGB(255, 55, 58, 62),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: SizedBox(
                                        height: 90,
                                        width: 90,
                                        child: Image.network(
                                          e.image,
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_shopping_cart,
                                        size: 25,
                                      )),
                                  Text(
                                    '£${e.price}',
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff183861)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ]
            ),
          ),
        )
      ],
    ) : Column(
      children: [
        Container(
          height: 55,
          width: screenWidth,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: list.map((e) {
                 bool isSelected = currentSelected == e;
                // ignore: unrelated_type_equality_checks
                data = e;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      currentSelected =e;

                      setState(() {});
                    },
                    child: Container(
                      height: 35,
                      width: 114,
                      decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xff183861)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: FittedBox(
                        child: Text(
                          e.text,
                          style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        Align( 
          alignment: Alignment.centerLeft,
          child: Container(
            child: Stack( 
              children: [ 
                
                const Align(
                  alignment: Alignment.centerRight, 
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DeliveryOptionWidget(),
                  ),
                ),
                Wrap(
                  runSpacing: 1,
                children: itemsList.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 192,
                        width: screenWidth * 0.3 + 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.shade300,
                            )),
                        padding: const EdgeInsets.all(10).copyWith(bottom: 1),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              e.title,
                              style: const TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff183861),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    e.description,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 55, 58, 62),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: Image.network(
                                        e.image,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_shopping_cart,
                                      size: 25,
                                    )),
                                Text(
                                  '£${e.price}',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff183861)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              ]
            ),
          ),
        )
      ],
    );
  }
}
