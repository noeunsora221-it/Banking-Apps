import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            "https://i.pinimg.com/1200x/1f/4f/32/1f4f32459b8d46d44355a30f9eefbc5b.jpg",
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 131, 235),
        title: Text(
          "JWT Mobile Banking",
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                Image.network(
                  "https://i.pinimg.com/originals/e2/c5/f9/e2c5f97f478ccdb4b2fa8649b8ccc859.gif",
                  width: 500,
                  height: 170,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Row(
                      children: [
                        Card(
                          color: Colors.red,
                          child: Container(
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    "កម្ចីសាច់ប្រាក់",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 1),
                        Card(
                          color: Colors.red,
                          child: Container(
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    "សមតុល្យភាព",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 1),
                            Card(
                              color: Colors.red,
                              child: Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        "បញ្ចូលទឹកប្រាក់",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Card(
                                  color: Colors.red,
                                  child: Container(
                                    width: 100,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            "សេវាកម្ម",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 40),
                            Card(
                              elevation: 20,
                              color: const Color.fromARGB(255, 23, 146, 247),
                              child: Container(
                                width: 130,
                                height: 120,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Text(
                                        "ស្កេន Mobile",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.qr_code,
                                          size: 60,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        SizedBox(height: 25),
                        Column(
                          children: [
                            SizedBox(height: 25),
                            Card(
                              elevation: 20,
                              color: const Color.fromARGB(255, 23, 146, 247),
                              child: Container(
                                width: 130,
                                height: 120,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Call Centre \n\t\tSupport",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.support_agent,
                                          size: 52,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),

                        Column(
                          children: [
                            SizedBox(height: 25),
                            Card(
                              elevation: 20,
                              color: const Color.fromARGB(255, 23, 146, 247),
                              child: Container(
                                width: 130,
                                height: 120,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Text(
                                        "Transfer",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.account_balance_wallet,
                                          size: 70,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(height: 5),
                    Column(
                      children: [
                        SizedBox(height: 5),
                        Card(
                          elevation: 20,
                          color: const Color.fromARGB(255, 23, 146, 247),
                          child: Container(
                            width: 130,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    "Promotions",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.devices_outlined,
                                      size: 70,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(height: 5),
                        Card(
                          elevation: 20,
                          color: const Color.fromARGB(255, 23, 146, 247),
                          child: Container(
                            width: 130,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    "Balance",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.account_balance_sharp,
                                      size: 70,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 5),
                    Column(
                      children: [
                        SizedBox(height: 5),
                        Card(
                          elevation: 20,
                          color: const Color.fromARGB(255, 23, 146, 247),
                          child: Container(
                            width: 130,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    "សមតុល្យប្រាក់",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mobile_friendly_outlined,
                                      size: 70,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 5),
                        Card(
                          elevation: 20,
                          color: const Color.fromARGB(255, 23, 146, 247),
                          child: Container(
                            width: 130,
                            height: 120,
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    "ប័ណ្ណឥណទាន",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.credit_card,
                                      size: 70,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                    Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 23, 146, 247),
                      child: Container(
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 2),
                              Text(
                                "បង្កើតQR",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.create_new_folder_outlined,
                                  size: 70,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Card(
                      elevation: 20,
                      color: const Color.fromARGB(255, 23, 146, 247),
                      child: Container(
                        width: 130,
                        height: 120,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Text(
                                "កម្ចីសាច់ប្រាក់",
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.desk_sharp,
                                  size: 70,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.network(
                  "https://i.pinimg.com/webp85/1200x/01/26/35/012635a8c6a7f2c4aea4472cf88cb9e5.webp",
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.pinimg.com/736x/a4/d4/fc/a4d4fc94f2c845de5756a6e9cce8d2fd.jpg",
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.pinimg.com/736x/e9/bb/4e/e9bb4e315b7901e504fb97def0a0f695.jpg",
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.pinimg.com/736x/f5/30/31/f53031b1def930f12326ac3d7ec42acf.jpg",
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.pinimg.com/webp85/1200x/ac/69/8e/ac698ef5ee9a875d6683dc916badb282.webp",
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.pinimg.com/1200x/39/47/02/394702f470d444cfb8321f700f944b16.jpg",
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://i.pinimg.com/webp85/1200x/91/72/bb/9172bb9d4126f351e2c007720bede75d.webp",
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
