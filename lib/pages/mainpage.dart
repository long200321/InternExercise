import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  final String introduceHomePage =
      "Flutter Exercise là một ứng dụng giúp người dùng lưu trữ, "
      "quản lý và theo dõi các bài tập một cách hiệu quả. "
      "Ứng dụng này đặc biệt hữu ích cho những người đang luyện tập"
      ", học tập hoặc thực hành các kỹ năng cần ghi chép lại.";

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter Exercise'),
        leading: Image.asset('assets/images/logo.png'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Introduce',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      widget.introduceHomePage,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    child: Hero(
                      tag: 'picture_1',
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => Picture1(
                                    introduce: widget.introduceHomePage,
                                  ),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/flutter_app_introduce.jpg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Picture1 extends StatelessWidget {
  final String introduce;

  const Picture1({super.key, required this.introduce});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: 'picture_1',
            child: Image.asset('assets/images/flutter_app_introduce.jpg'),
          ),
          Text(introduce, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
