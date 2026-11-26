import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Column ตัวเลข + ป้ายกำกับ ใช้ซ้ำ 3 ครั้ง
  Widget _stat(String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'app2_tit11_08',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ส่วนที่ 2: รูปโปรไฟล์ + ตัวเลข 3 ช่อง
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/Je6w1l7heoTfn3cOan3q.webp'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _stat('3', 'โพสต์'),
                        _stat('1.5M', 'ผู้ติดตาม'),
                        _stat('20', 'กำลังติดตาม'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // ส่วนที่ 3: ชื่อและแคปชัน
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'อมรรัตน์ อุตะมะ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text('นักศึกษาแผนกเทคโนโลยีสารสนเทศ'),
                  Text(' ૮₍ • ᴥ • ₎ა  '),
                ],
              ),
              const SizedBox(height: 12),

              // ส่วนที่ 4: ปุ่มติดตาม (ทึบ) + ปุ่มข้อความ (มีเส้นขอบ)
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // ส่วนที่ 5: แถบไอคอน
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on),
                  Icon(Icons.person_pin),
                ],
              ),
              const SizedBox(height: 8),

              // ส่วนที่ 6: แกลเลอรีภาพ 3 ภาพจากอินเทอร์เน็ต
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: [
                  Image.network('https://i.redd.it/6tdsqspbxn5f1.jpeg',
                      fit: BoxFit.cover),
                  Image.network('https://res.cloudinary.com/ddva7xvdt/image/upload/v1786591087/9exp-genesis/articles/j6h0xzxwpnx9xrfvkxch.jpg',
                      fit: BoxFit.cover),
                  Image.network('https://images.pexels.com/photos/37227160/pexels-photo-37227160.jpeg?cs=tinysrgb&dpr=1&w=500',
                      fit: BoxFit.cover),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}