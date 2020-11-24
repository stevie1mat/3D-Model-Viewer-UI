import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:model_viewer/model_viewer.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: Text("Model Viewer")),
        body: Column(
          children: [
            Container(
              width: 460.0,
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 4.0, //extend the shadow
                    offset: Offset(
                      7.0, // Move to right 10  horizontally
                      2.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/02/23/10/47/fantasy-4872955_1280.jpg')),
                borderRadius:
                    new BorderRadius.only(bottomLeft: Radius.circular(100.0)),
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 30),
            // Text(
            //   'Revived Again By',
            //   style: GoogleFonts.lato(),
            // ),
            // Image.asset('assets/line.png', height: 40),
            Stack(children: <Widget>[
              Container(
                  height: 80,
                  child: Text('AI CYRONICS',
                      style: GoogleFonts.cinzel(fontSize: 26))),
              Positioned(
                  top: 15,
                  left: 12,
                  child: Image.asset('assets/line.png', height: 40)),
              Positioned(
                  top: 43,
                  left: 30,
                  child: Text('BE REVIVED AGAIN',
                      style: GoogleFonts.lato(fontSize: 12))),
            ]),
            Container(
                height: 300,
                child: ModelViewer(
                  backgroundColor: Colors.white,
                  //src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                  src: 'etc/assets/Astronaut.glb', // a bundled asset file
                  alt: "A 3D model of an astronaut",
                  ar: false,
                  autoRotate: true,
                  cameraControls: true,
                )),

            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Colors.grey[200],
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            decoration: new BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                //background color of box
                                BoxShadow(
                                  color: Colors.green[200],
                                  blurRadius: 10.0, // soften the shadow
                                  spreadRadius: 2.0, //extend the shadow
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    0.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, bottom: 0, top: 0),
                              child: IconButton(
                                icon:
                                    Icon(Icons.play_arrow, color: Colors.white),
                              ),
                            )),
                        InkWell(
                            onTap: () {
                              // _shareText();
                            },
                            child: Icon(Icons.share,
                                color: Colors.black54, size: 20)),
                        InkWell(
                            onTap: () {
                              // _shareText();
                            },
                            child: Icon(Icons.upload_file,
                                color: Colors.black54, size: 22)),
                        Container(
                            decoration: new BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                //background color of box
                                BoxShadow(
                                  color: Colors.pink[200],
                                  blurRadius: 10.0, // soften the shadow
                                  spreadRadius: 2.0, //extend the shadow
                                  offset: Offset(
                                    0.0, // Move to right 10  horizontally
                                    0.0, // Move to bottom 10 Vertically
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, bottom: 0, top: 0),
                              child: IconButton(
                                icon: Icon(Icons.backpack_outlined,
                                    color: Colors.white),
                              ),
                            )),
                      ],
                    ))),
            SizedBox(height: 52),
            Container(
                height: 82,
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      [Colors.red, Color(0xEEF44336)],
                      [Colors.yellow[800], Color(0x77E57373)],
                      [Colors.orange, Color(0x66FF9800)],
                      [Colors.pink, Color(0x55FFEB3B)]
                    ],
                    durations: [35000, 19440, 10800, 6000],
                    heightPercentages: [0.20, 0.23, 0.25, 0.30],
                    blur: MaskFilter.blur(BlurStyle.solid, 10),
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight,
                  ),
                  waveAmplitude: 0,
                  size: Size(
                    double.infinity,
                    double.infinity,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
