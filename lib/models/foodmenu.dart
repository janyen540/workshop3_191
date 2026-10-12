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
  FoodMenu(
    name: "ผัดไทยกุ้งสด",
    type: "ผัด",
    component: "เส้นจันท์,กุ้งสด,เต้าหู้,ถั่วงอก,ถั่วลิสง",
    price: 89,
    foodpic: Foodpic.menu3,
  ),
  FoodMenu(
    name: "ไก่ทอดเกาหลี",
    type: "ทอด",
    component: "ปีกไก่,ซอสโคชูจัน,งาขาว",
    price: 199,
    foodpic: Foodpic.menu4,
  ),
  FoodMenu(
    name: "ต้มยำกุ้ง",
    type: "ต้ม",
    component: "กุ้งแม่น้ำ,เห็ดฟาง,ตะไคร้,ใบมะกรูด,พริกขี้หนู",
    price: 250,
    foodpic: Foodpic.menu5,
  ),
  FoodMenu(
    name: "ข้าวผัดกระเทียม",
    type: "ผัด",
    component: "ข้าวสวย,กระเทียมเจียว,ต้นหอม,ไข่ดาว",
    price: 69,
    foodpic: Foodpic.menu6,
  ),
  FoodMenu(
    name: "เฟรนช์ฟรายส์",
    type: "ทอด",
    component: "มันฝรั่ง,เกลือ,ผงปาปริก้า",
    price: 79,
    foodpic: Foodpic.menu7,
  ),
];