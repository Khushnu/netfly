import 'package:flutter/material.dart';
import 'package:netfly/Model/cateogrymodel.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import '../main.dart';

class RowMenuWidget extends StatefulWidget {
  const RowMenuWidget({super.key, this.title});
  final String? title;
  @override
  State<RowMenuWidget> createState() => _RowMenuWidgetState();
}

class _RowMenuWidgetState extends State<RowMenuWidget> {

 var currentSelected = CategoryModel(text: 'Appetisers',);
   late bool isSelected;
   var data;
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
  void initState() {
    currentSelected=list.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    return    Responsive(mobileScreen: Column(
      children: [
        Container(
            height: 55,
            width: screenWidth,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                
                List.generate(3, (index) {
                var  e=list[index];
                   isSelected = currentSelected == e;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
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
                })..add(Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                    PopupMenuButton(itemBuilder: (_)=>[
                        for(int i=3;i<list.length;i++)
                        PopupMenuItem(child: InkWell(
                          onTap: (){
                              isSelected = currentSelected == list[i];
                            setState(() {
                               currentSelected=list[i];
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: isSelected? Colors.blue : Colors.white
                              ),
                            child: Text(list[i].text, style: TextStyle(
                              color: isSelected ? Colors.blue : Colors.black),))))
                      ],
                      child: Container(
                        height: 35,
                        width: 114,
                        decoration: BoxDecoration(
                         color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: const Row(
                          children: [
                            Text(
                              'More',
                              style: TextStyle(
                                  color:  Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                      ),
                    ),
                  )
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 9),
            child: Align( 
              alignment: Alignment.centerLeft,
              child: Text(currentSelected.text.toString(), 
              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          )
      ]
    ), mediumScreen:  Column(
      children: [
        Container(
              height: 55,
              width: screenWidth,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                  List.generate(5, (index) {
                  var  e=list[index];
                     bool isSelected = currentSelected == e;
                    data = e;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () { 
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
                  })..add(Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: 
                      PopupMenuButton(itemBuilder: (_)=>[
                          for(int i=5;i<list.length;i++)
                          PopupMenuItem(child: Text(list[i].text))
                        ],
                        child: Container(
                          height: 35,
                          width: 114,
                          decoration: BoxDecoration(
                           color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: const Row(
                            children: [
                              Text(
                                'More',
                                style: TextStyle(
                                    color:  Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                      ),
                    )
                    )
                ),
              ),
            ),
             Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 9),
            child: Align( 
              alignment: Alignment.centerLeft,
              child: Text(currentSelected.text.toString(), 
              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          )
      ],
    ), largeScreen:  Column(
      children: [
        Container(
              height: 55,
              width: screenWidth,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children:
                  List.generate(5, (index) {
                  var  e=list[index];
                     bool isSelected = currentSelected == e;
                    data = e;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
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
                  })..add(Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: 
                      PopupMenuButton(itemBuilder: (_)=>[
                          for(int i=5;i<list.length;i++)
                          PopupMenuItem(child: Text(list[i].text))
                        ],
                        child: Container(
                          height: 35,
                          width: 114,
                          decoration: BoxDecoration(
                           color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: const Row(
                            children: [
                              Text(
                                'More',
                                style: TextStyle(
                                    color:  Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                      ),
                    ))
                ),
              ),
            ),
             Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 9),
            child: Align( 
              alignment: Alignment.centerLeft,
              child: Text(currentSelected.text.toString(), 
              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          )
      ],
    ));
  }
}