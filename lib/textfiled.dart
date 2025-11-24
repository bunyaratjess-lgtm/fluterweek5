import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF00704A),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFF00A86B), 
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00704A),
            foregroundColor: Colors.white,    
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, inherit: true),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00704A)),
            borderRadius: BorderRadius.circular(12),
          ),
          prefixIconColor: Color(0xFF00704A),
          labelStyle: TextStyle(color: Color(0xFF00704A), inherit: true),
        ),
        textTheme: TextTheme(
          headlineSmall: TextStyle( 
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00704A),
            inherit: true, 
          ),
          bodyMedium: TextStyle(
            color: Colors.grey[800],
            inherit: true, 
          ), 
        ),
        scaffoldBackgroundColor: Colors.grey.shade100,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF00704A),
          elevation: 3,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            inherit: true,
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STARBUCK"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png", // Replaced with a public URL for demonstration
                      height: 150,
                      fit: BoxFit.contain,
                    ),

                    SizedBox(height: 20),

                    // Title
                    Text(
                      "สมัครหรือลงชื่อเข้าใช้บัญชีของคุณ",
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 20),

                 
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),

                    SizedBox(height: 20),

                 
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),

                    SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        key: const ValueKey('registerButton'), 
                        onPressed: () {
                          print("Register pressed");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00A86B),
                        ),
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                 
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        key: const ValueKey('loginButton'), 
                        onPressed: () {
                          print("Login pressed");
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}