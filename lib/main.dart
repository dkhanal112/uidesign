import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            child: Image.asset(
              "assets/img.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    "Urban sketching | lorem ipsum lorem ipsum",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Container(
                  child: Text("\$25"),
                )
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://img.icons8.com/bubbles/452/man-in-blue-jacket.png"),
            ),
            title: Text("Hosted by"),
            subtitle: Text(
              "Jhon doe",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              "2nd December",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "10:30-11:30 am",
            ),
          ),
          ListTile(
            leading: Icon(Icons.video_call),
            title: ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.black54,
              ),
              title: Text(
                "Event Link",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              subtitle: Text("Link visible for attendes"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text(
              "Languages",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "English",
            ),
          ),
          ListTile(
            leading: Icon(Icons.text_fields),
            title: Text(
              "Ages",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Seniors",
            ),
          ),
          Divider(
            height: 4,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Requirements",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply dummy and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("What you will learn",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem Ipsum is simply specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                Container(
                  margin: EdgeInsets.all(12),
                  width: 400,
                  color: Colors.pink,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
