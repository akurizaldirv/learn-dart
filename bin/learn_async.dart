import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
	// // FETCH DATA
	final fetchResult = await fetchPost();
	print(fetchResult);


	// // LOCAL PROMISE / FUTURE
	// print("delayed");
	// fetchPost().then((p) {
	// 	print(p.title);
	// 	print(p.userId);
	// });

	// print("delayed 2");
	// final futured = await fetchPost();
	// print(futured);
	// print("finished");
}

// jsonplaceholder.typicode.com
// posts/1

Future<Post> fetchPost() async {
	var uri = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
	final response = await http.get(uri);
	Map<String, dynamic> data = jsonDecode(response.body);

	return Post(data['title'], data['userId']);
	// print(response);
	// print(response.body.runtimeType); // string
	// print(response.statusCode);
	
}

Future<Post> fetchPostFake() {
  const delay = Duration(seconds: 10);

  return Future.delayed(delay, () {
    return Post("My Post", 123);
  });
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);

  @override
  String toString() {
    return "$title | written by: $userId";
  }
}
