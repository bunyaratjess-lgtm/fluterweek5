import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Restaurant Info"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.restaurant), text: "เมนู"),
                Tab(icon: Icon(Icons.location_on), text: "ที่ตั้ง"),
                Tab(icon: Icon(Icons.phone), text: "ติดต่อ"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                padding: EdgeInsets.all(16),
                children: [
                  Text(
                    "เมนูยอดนิยม",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.network(
                    "https://recipe.sgethai.com/wp-content/uploads/2025/03/cover-pad-thai.webp",
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.fastfood),
                    title: Text("ผัดไทยกุ้งสด"),
                    subtitle: Text("ราคา 60 บาท"),
                  ),
                  Text(
                    "เมนูทั้งหมด",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(Icons.ramen_dining),
                    title: Text("ก๋วยเตี๋ยวต้มยำ"),
                    subtitle: Text("ราคา 50 บาท"),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_pizza),
                    title: Text("พิซซ่าเตาถ่าน"),
                    subtitle: Text("ราคา 120 บาท"),
                  ),
                  ListTile(
                    leading: Icon(Icons.food_bank),
                    title: Text("ข้าวผัดกุ้ง"),
                    subtitle: Text("หอมกลิ่นกระทะ ใส่กุ้งสดตัวโต"),
                  ),
                  ListTile(
                    leading: Icon(Icons.soup_kitchen),
                    title: Text("ต้มยำกุ้ง"),
                    subtitle: Text("เปรี้ยว เผ็ด หอมสมุนไพรไทย"),
                  ),
                  ListTile(
                    leading: Icon(Icons.restaurant_menu),
                    title: Text("แกงเขียวหวานไก่"),
                    subtitle: Text("กลมกล่อม หอมกะทิ"),
                  ),
                  ListTile(
                    leading: Icon(Icons.lunch_dining),
                    title: Text("หมูทอดกระเทียม"),
                    subtitle: Text("หมูคั่วกรอบ หอมกระเทียมเจียว"),
                  ),
                  ListTile(
                    leading: Icon(Icons.set_meal),
                    title: Text("ไก่ทอดน้ำปลา"),
                    subtitle: Text("หนังกรอบ เนื้อฉ่ำ"),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_dining),
                    title: Text("ยำวุ้นเส้น"),
                    subtitle: Text("รสจัดจ้าน หอมมะนาวสด"),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_fire_department),
                    title: Text("ลาบหมู"),
                    subtitle: Text("เผ็ดนัว หอมข้าวคั่ว"),
                  ),
                  ListTile(
                    leading: Icon(Icons.grass),
                    title: Text("ส้มตำไทย"),
                    subtitle: Text("เผ็ด เปรี้ยว หวาน ลงตัว"),
                  ),
                  ListTile(
                    leading: Icon(Icons.crisis_alert),
                    title: Text("หมูกรอบคั่วพริกเกลือ"),
                    subtitle: Text("หมูกรอบผัดพริกเกลือหอม ๆ"),
                  ),
                  ListTile(
                    leading: Icon(Icons.eco),
                    title: Text("กะเพราหมูสับ"),
                    subtitle: Text("เผ็ดจัด กลิ่นกะเพราแรง"),
                  ),
                  ListTile(
                    leading: Icon(Icons.rice_bowl),
                    title: Text("ข้าวมันไก่"),
                    subtitle: Text("ไก่นุ่ม น้ำจิ้มเต้าเจี้ยว"),
                  ),
                  ListTile(
                    leading: Icon(Icons.restaurant),
                    title: Text("ข้าวหน้าเป็ด"),
                    subtitle: Text("เป็ดอบซอส หนังกรอบ"),
                  ),
                  ListTile(
                    leading: Icon(Icons.brunch_dining),
                    title: Text("ข้าวผัดอเมริกัน"),
                    subtitle: Text("ไก่ทอด ไส้กรอก ไข่ดาว"),
                  ),
                  ListTile(
                    leading: Icon(Icons.set_meal),
                    title: Text("ผัดซีอิ๊วหมู"),
                    subtitle: Text("เส้นใหญ่หอมไหม้นิด ๆ"),
                  ),
                  ListTile(
                    leading: Icon(Icons.food_bank),
                    title: Text("ราดหน้าทะเล"),
                    subtitle: Text("น้ำราดเหนียวนุ่ม เครื่องทะเลเต็มคำ"),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_activity),
                    title: Text("ปีกไก่ทอดเกลือ"),
                    subtitle: Text("กรอบนอกนุ่มใน"),
                  ),
                  ListTile(
                    leading: Icon(Icons.dining),
                    title: Text("ข้าวขาหมู"),
                    subtitle: Text("เนื้อนุ่ม น้ำพะโล้เข้มข้น"),
                  ),
                  ListTile(
                    leading: Icon(Icons.food_bank_outlined),
                    title: Text("หมูน้ำตก"),
                    subtitle: Text("หมูย่างคลุกลาบรสจัด"),
                  ),
                  ListTile(
                    leading: Icon(Icons.egg_alt),
                    title: Text("ไข่พะโล้"),
                    subtitle: Text("หวานเค็มกำลังดี"),
                  ),
                  ListTile(
                    leading: Icon(Icons.set_meal_outlined),
                    title: Text("ปลาทอดน้ำปลา"),
                    subtitle: Text("ปลากรอบนอกนุ่มใน น้ำปลาหอม"),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Image.network(
                        "https://patoisfdimage4-fcbugqebgmbma7he.z01.patois.com/patois/image/2023/10/19/PATOIS_2023-10-19_17_10_17_223c2e69-ea67-49da-b6aa-897c0df2b795.jpg",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Icon(Icons.location_on, size: 70, color: Colors.red),
                     
                      SizedBox(height: 10),
                      Text(
                        "6/599 ซอยพหลโยธิน 52 ถนนพหลโยธิน เขตสายไหม กรุงเทพฯ และวิทยาเขตนนทบุรี ตั้งอยู่ที่ 54 ถนนรัตนาธิเบศร์ อำเภอเมืองนนทบุรี จังหวัดนนทบุรี ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Image.network(
                        "https://www.shutterstock.com/image-photo/woman-sitting-desk-working-she-260nw-1966736413.jpg",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    Icon(Icons.phone, size: 70, color: Colors.green),
                    SizedBox(height: 10),
                    Text("โทร: 081-234-5678", style: TextStyle(fontSize: 20)),
                    SizedBox(height: 10),
                    Text(
                      "เปิดทุกวัน 09:00 - 21:00 น.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}