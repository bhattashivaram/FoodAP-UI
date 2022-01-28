import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/model/category_model.dart';
import 'package:foodapp/model/food_model.dart';
import 'package:foodapp/widget/category_card.dart';
import 'package:foodapp/widget/custom_icon_button.dart';
import 'package:foodapp/widget/filter_button.dart';
import 'package:foodapp/widget/food_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildNavbar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            buildHeader(),
            SizedBox(height: 20),
            buildSearch(),
            buildFilter(),
            SizedBox(height: 15),
            builddiscount(),
            buildSectionTitle(),
            buildCategoryList(),
            buildFoodList(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/b2.jpg'),
            )
          ],
        ),
        SizedBox(height: 16),
        Text(
          "Hello X",
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "Food Delivery",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search Food",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: EdgeInsets.all(8),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        CustomIconButton(
          margin: EdgeInsets.only(left: 8),
          icon: Icon(Icons.filter_list),
          onPressed: () {},
          backgroundColor: Colors.green,
        ),
      ],
    );
  }

  Widget buildFilter() {
    return Container(
      height: 32,
      margin: EdgeInsets.only(top: 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FilterButton(
            title: "Popular",
            isSelected: true,
          ),
          FilterButton(
            title: "New Items",
            isSelected: false,
          ),
          FilterButton(
            title: "Hot Deal",
            isSelected: false,
          ),
          FilterButton(
            title: "Combo Pack",
            isSelected: false,
          ),
          FilterButton(
            title: "Special Offer",
            isSelected: false,
          ),
          FilterButton(
            title: "Combo Pack",
            isSelected: false,
          ),
          FilterButton(
            title: "Combo Pack",
            isSelected: false,
          ),
          FilterButton(
            title: "Combo Pack",
            isSelected: false,
          ),
          FilterButton(
            title: "Combo Pack",
            isSelected: false,
          ),
        ],
      ),
    );
  }

  Widget buildFoodList() {
    return Container(
      height: 220,
      margin: EdgeInsets.only(top: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          FoodModel food = foodList[index];
          return FoodCard(food: food);
        },
      ),
    );
  }

  Widget buildSectionTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Explore Categories",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {},
          textColor: Colors.green,
          child: Text("Views All"),
        )
      ],
    );
  }

  Widget buildCategoryList() {
    return InkWell(
      child: GridView.builder(
        itemCount: categories.length,
        shrinkWrap: true,
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 16 / 6,
        ),
        itemBuilder: (context, index) {
          final CategoryModel category = categories[index];
          return CategoryCard(category: category);
        },
      ),
    );
  }

  Widget buildNavbar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(29),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -7),
              blurRadius: 33,
              color: Color(0xFF6DAED9).withOpacity(0.11),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              color: Colors.green,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 35,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outlined,
              size: 35,
            ),
          )
        ],
      ),
    );
  }

  Widget builddiscount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Offers & Discounts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/burger.jpg"),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF961f).withOpacity(0.7),
                    kPrimaryColor.withOpacity(0.7),
                  ],
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SvgPicture.asset("assets/macdonalds.svg"),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "Get Discount of \n",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextSpan(
                            text: "30% \n",
                            style: TextStyle(
                              fontSize: 43,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                "at MacDonald's on your first order & Instant cashback",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
