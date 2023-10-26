import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'ApiService.dart'; // Replace with your file path
import 'dart:convert'; // Import the dart:convert package
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

class APIDemoScreen extends StatelessWidget{
  final ApiService apiService = ApiService('https://jsonplaceholder.typicode.com/'); // Replace with your API endpoint

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter REST API Example'),
        ),
        body: FutureBuilder(
          future: apiService.fetchData('users'), // Replace 'endpoint' with the specific API endpoint you want to call
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              // Parse the JSON data and display it
              final data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]['name']),
                  );
                },
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Call a function to post data when the button is pressed
            postDataToUsersApi();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  // Function to post data to the "users" API
  Future<void> postDataToUsersApi() async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': 'Anu', // Replace with your data
        'email': 'anu@example.com', // Replace with your data
      }),
    );

    if (response.statusCode == 201) {
      // Data posted successfully
      print('Data posted successfully');
    } else {
      // Handle the error if data posting fails
      print('Failed to post data. Status Code: ${response.statusCode}');
    }
  }
 

}
