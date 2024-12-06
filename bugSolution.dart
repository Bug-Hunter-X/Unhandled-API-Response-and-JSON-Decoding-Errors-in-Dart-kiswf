```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body) as List<Map<String, dynamic>>;
        for (final item in data) {
          print(item['name']);
        }
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
      } 
    } else {
      throw Exception('Failed to load data: ${response.statusCode} ${response.body}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```