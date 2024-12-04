import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  static List<Map<String, String>> historyData = [
    {"tv": "TV 1", "platform": "PS5", "date": "15 Sep 2024", "time": "10:00 - 11:00"},
    {"tv": "TV 3", "platform": "XBOX", "date": "15 May 2023", "time": "10:00 - 11:00"},
    {"tv": "TV 4", "platform": "XBOX", "date": "14 May 2023", "time": "10:00 - 11:00"},
    {"tv": "TV 2", "platform": "PS5", "date": "01 Jun 2023", "time": "10:00 - 11:00"},
    {"tv": "TV 5", "platform": "PC", "date": "19 May 2023", "time": "10:00 - 11:00"},
    {"tv": "TV 1", "platform": "PS5", "date": "11 May 2023", "time": "10:00 - 11:00"},
    {"tv": "TV 1", "platform": "PS5", "date": "01 Jun 2024", "time": "10:00 - 11:00"},
    {"tv": "TV 3", "platform": "XBOX", "date": "20 May 2023", "time": "10:00 - 11:00"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Riwayat",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(Icons.filter_list, color: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: historyData.length,
          itemBuilder: (context, index) {
            final item = historyData[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                color: Colors.white,
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF002647),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.tv,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  title: Text(
                    item["tv"]!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item["platform"]!),
                      SizedBox(height: 4),
                      Text("${item["date"]!} | ${item["time"]!}"),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
