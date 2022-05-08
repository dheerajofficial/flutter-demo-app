import 'package:flutter/material.dart';

class Comprehension extends StatelessWidget {
  const Comprehension({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6200EE),
        title: const Text('Comprehension'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(
                  Icons.close,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Please listen to this audio and read the passage carefully.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/a.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 10,
                    child: Opacity(
                      opacity: 0.7,
                      child: InkWell(
                        child: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(10),
                textColor: Colors.black,
                title: const Text(
                  "Passage",
                  style: TextStyle(
                    fontSize: 24,
                    height: 2,
                  ),
                ),
                subtitle: Row(
                  children: const [
                    // Text(
                    //   "",
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     height: 1.5,
                    //   ),
                    //),
                    SizedBox(width: 30),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mike and Morris lived in the same village. While Morris owned the largest jewelry shop in the village, Mike was a poor farmer. Both had large families with many sons, daughters-in-law and grandchildren. One fine day, Mike, tired of not being able to feed his family, decided to leave the village and move to the city where he was certain to earn enough to feed everyone. Along with his family, he left the village for the city. At night, they stopped under a large tree. There was a stream running',
                  style:
                      TextStyle(color: Colors.black, fontSize: 16, height: 1.5),
                  //overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
