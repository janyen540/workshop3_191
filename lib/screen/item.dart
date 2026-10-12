import 'package:flutter/material.dart';
import '../models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  // ฟังก์ชันเลือกสีพื้นหลังตามประเภทของอาหาร
  Color getColorByType(String type) {
    switch (type) {
      case "ต้ม":
        return Colors.lightBlueAccent; // สีฟ้าสำหรับประเภทยอดฮิต/ต้ม
      case "สุขภาพ":
        return Colors.lightGreenAccent; // สีเขียวสำหรับอาหารสุขภาพ
      case "ผัด":
        return Colors.orangeAccent;    // สีส้มสำหรับประเภทผัด
      case "ทอด":
        return Colors.amberAccent;     // สีเหลืองสำหรับประเภททอด
      default:
        return Colors.grey.shade300;   // สีเทาเป็นค่าเริ่มต้นหากไม่ตรงกับเงื่อนไข
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emp.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // เรียกใช้ฟังก์ชันกำหนดสีตามประเภทอาหารของเมนูนั้นๆ
            color: getColorByType(emp[index].type),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    emp[index].name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "ประเภทอาหาร : ${emp[index].type}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "ราคา : ${emp[index].price} บาท",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Image.asset(
                emp[index].foodpic.image,
                width: 70,
                height: 70,
              ),
            ],
          ),
        );
      },
    );
  }
}