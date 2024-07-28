import 'package:flutter/material.dart';
import 'package:skribbl/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roomNameController = TextEditingController();
  late String? _maxRoundsValue;
  late String? _maxRoomSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Create Room',
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
                Controller: _nameController, hintText: "Enter Your Name"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField(
                Controller: _roomNameController, hintText: "Enter Room Name"),
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButton<String>(
            focusColor: Color(0xffF5F5FA),
            items: <String>["2", "5", "10", "15"]
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem(
                        value: value,
                        child: new Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )))
                .toList(),
            hint: Text(
              "Selext max Rounds",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                _maxRoundsValue = value;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButton<String>(
            focusColor: Color(0xffF5F5FA),
            items: <String>["2", "3", "4", "5","6","7","8","9"]
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem(
                        value: value,
                        child: new Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )))
                .toList(),
            hint: Text(
              "Selext Room Size",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                _maxRoomSize = value;
              });
            },
          ),
          SizedBox(height: 40,),
          ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 201, 134, 213),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width / 2.5, 50),
                  ),
                ),
                onPressed: () {
                 
                },
                child: const Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
