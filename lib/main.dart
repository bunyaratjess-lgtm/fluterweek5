import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xFFECEBE8), // พื้นหลังอ่อน ๆ เข้าธีม Starbucks
          appBar: AppBar(
            title: Text(
              "Starbucks",
              style: TextStyle(
                fontFamily: 'Georgia',
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xFF00704A), // สีเขียว Starbucks
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.restaurant_menu), text: "เมนู"),
                Tab(icon: Icon(Icons.location_on), text: "ที่ตั้ง"),
                Tab(icon: Icon(Icons.phone), text: "ติดต่อ"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // เมนู
              ListView(
                padding: EdgeInsets.all(16),
                children: [
                  Text(
                    "เมนูยอดนิยม",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00704A),
                    ),
                  ),
                  SizedBox(height: 0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?w=500&auto=format&fit=crop&q=60",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  menuItem("Caramel Macchiato", 120, Icons.local_cafe),
                  SizedBox(height: 20),
                  Text(
                    "เมนูทั่วไป",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00704A),
                    ),
                  ),
                  menuItem("Caffè Latte", 110, Icons.local_cafe),
                  menuItem("Mocha Frappuccino", 140, Icons.local_cafe),
                  menuItem("Green Tea Frappuccino", 150, Icons.local_cafe),
                  menuItem("Cheesecake", 90, Icons.cake),
                  menuItem("Chocolate Chip Cookie", 55, Icons.cookie),
                ],
              ),

              // ที่ตั้ง
              SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1568036193587-84226a9c5a1b?q=80&w=706&auto=format&fit=crop",
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.location_on, size: 70, color: Color(0xFF00704A)),
                    SizedBox(height: 10),
                    Text(
                      "Starbucks สาขาสยามพารากอน\n991 ถนนพระราม 1 แขวงปทุมวัน เขตปทุมวัน กรุงเทพฯ 10330",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF004C2B),
                      ),
                    ),
                  ],
                ),
              ),

              // ติดต่อ
              SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1565277441243-2be39689f95b?q=80&w=729&auto=format&fit=crop",
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.phone, size: 70, color: Color(0xFF00704A)),
                    SizedBox(height: 10),
                    Text(
                      "โทร: 02-610-2695",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF004C2B),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "เปิดทุกวัน 07:00 - 22:00 น.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF004C2B),
                      ),
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

// ฟังก์ชันช่วยสร้างรายการเมนูให้สวยงาม
Widget menuItem(String name, int price, IconData icon) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    margin: EdgeInsets.symmetric(vertical: 8),
    child: ListTile(
      leading: Icon(icon, color: Color(0xFF00704A), size: 30),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Color(0xFF004C2B),
        ),
      ),
      subtitle: Text(
        "ราคา $price บาท",
        style: TextStyle(color: Colors.grey[700]),
      ),
    ),
  );
}
