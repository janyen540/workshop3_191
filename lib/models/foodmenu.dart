enum Foodpic {
  menu1(image: "assets/images/1.png"),
  menu2(image: "assets/images/2.png"),
  menu3(image: "assets/images/3.png"),
  menu4(image: "assets/images/4.png"),
  menu5(image: "assets/images/5.png"),
  menu6(image: "assets/images/6.png"),
  menu7(image: "assets/images/7.png");

  const Foodpic({required this.image});
  final String image;
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
  });

  String name;
  String type;
  String component;
  int price;
  Foodpic foodpic;
}

List<FoodMenu> emp = [
  FoodMenu(
    name: "สุกี้ผักรวม",
    type: "ต้ม",
    component: "ไข่ไก่,เกี๊ยวกุ้ง,ปูอัด,เบคอน,ผักสด",
    price: 299,
    foodpic: Foodpic.menu1,
  ),
  FoodMenu(
    name: "สลัดผัก",
    type: "สุขภาพ",
    component: "แครอท,มะเขือเทศ,ผักรวม",
    price: 159,
    foodpic: Foodpic.menu2,
  ),
];