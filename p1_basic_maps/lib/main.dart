import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter GMAP Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Google Map"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          _buildGoogleMap(),
        ],
      ),
    );
  }


   Widget _buildGoogleMap(){
    return  GoogleMap(
      initialCameraPosition: CameraPosition(target: LatLng(16.0615636, -16.4264667),zoom: 7),
      mapType: MapType.hybrid,
       markers: {
        const Marker(
          markerId: MarkerId("UGB"),
          icon: BitmapDescriptor.defaultMarker,
          position: LatLng(16.0615636, -16.4264667),
          infoWindow: InfoWindow(
            title: "Université Gaston Berger",
            snippet: "Université public du Senegal"
          )
        ),
        const Marker(
          markerId: MarkerId("UCAD"),
          icon: BitmapDescriptor.defaultMarker,
          position: LatLng(14.689311243567538, -17.46676183022389),
          infoWindow: InfoWindow(
            title: "Universite Cheikh Anta Diop",snippet: "Dakar/Senegal"
          )
        ),
        const Marker(
          markerId: MarkerId("Toure"),
          icon: BitmapDescriptor.defaultMarker,
          position: LatLng(16.06583189351353, -16.423078248102474),
          infoWindow: InfoWindow(
            title: "Toure de l´oeuf place Fallou Sene", snippet: "UGB/SN"
          )
          ),
          Marker(
            markerId: MarkerId("CCOS"),
            icon: BitmapDescriptor.defaultMarker,
            position: LatLng(16.061262955150465, -16.424105058815673),
            infoWindow: InfoWindow(
              title: "Centre De Calcul Ousmane Seck",
              snippet: "CCOS"
            )
            ),
            Marker(
              markerId:MarkerId("Village H") ,
              icon: BitmapDescriptor.defaultMarker,
              position: LatLng(16.06351508431664, -16.42596302845958)
              ),
              Marker(
                markerId: MarkerId("SEFS"),
                icon: BitmapDescriptor.defaultMarker,
                position: LatLng(16.06360757332724, -16.419685208414062),
                ),
                Marker(
                  markerId: MarkerId("GLB"),
                  icon: BitmapDescriptor.defaultMarker,
                  position: LatLng(13.497329418402018, -13.743148213656998),
                  infoWindow: InfoWindow(
                    title: "GOULOUMBOU 1",
                    snippet: "GLB"
                  )
                )
      },
     
      );
  }
}


