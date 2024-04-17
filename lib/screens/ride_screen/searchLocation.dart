/*import 'package:fintech_app/screens/ride_screen/globalVars.dart';
import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({super.key});

  @override
  State<SearchLocation> createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  final TextEditingController _pickupLocationController =
      TextEditingController();
  final TextEditingController DestinationController = TextEditingController();

  late GooglePlace googlePlace;

  List<AutocompletePrediction> predictions = [];
  @override
  void initState() {
    super.initState();
    String apiKey = GOOGLE_API_KEY;
    googlePlace = GooglePlace(apiKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: TextField(
                controller: _pickupLocationController,
                autofocus: false,
                textInputAction: TextInputAction.next,
                autofillHints: [AutofillHints.location],
                //style: TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                  floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                  hintText: 'Pickup Location',
                  //hintStyle: TextStyle(fontSize: 20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.black87,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  //border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  if (value.isEmpty) {
                    autoCompleteSearch(value);
                  }
                }),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: TextField(
              controller: DestinationController,
              autofocus: false,
              textInputAction: TextInputAction.next,
              autofillHints: [AutofillHints.location],
              //style: TextStyle(fontSize: 20),
              decoration: const InputDecoration(
                floatingLabelStyle: TextStyle(color: Colors.blueGrey),
                hintText: 'Final Destination',
                //hintStyle: TextStyle(fontSize: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.my_location,
                  color: Colors.black87,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                //border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void autoCompleteSearch(String value) async {
    var result = await googlePlace.autocomplete.get(value);
    if (result != null && result.predictions != null && mounted) {
      print(result.predictions!.first.description);
      setState(() {
        predictions = result.predictions!;
      });
    }
  }
}
*/