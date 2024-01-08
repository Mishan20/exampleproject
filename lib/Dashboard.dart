import 'package:flutter/material.dart';
// import 'package:frontend/home.dart';
import 'package:jwt_decoder/jwt_decoder.dart';


class Dashboard extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final token;
  const Dashboard({@required this.token, super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late String email;
  @override
  void initState() {
    super.initState();
    Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);

    email = jwtDecodedToken['email'];
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
