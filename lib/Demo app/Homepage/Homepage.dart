// import '../../flutter_flow/flutter_flow_drop_down.dart';
// import '../../flutter_flow/flutter_flow_expanded_image_view.dart';
// import '../../flutter_flow/flutter_flow_theme.dart';
// import '../../flutter_flow/flutter_flow_util.dart';
// import '../../flutter_flow/flutter_flow_video_player.dart';
// import '../../flutter_flow/flutter_flow_widgets.dart';
// import   'package:styled_divider/styled_divider.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:provider/provider.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';
//
// class HomePageWidget extends StatefulWidget {
//   const HomePageWidget({Key? key}) : super(key: key);
//
//   @override
//   _HomePageWidgetState createState() => _HomePageWidgetState();
// }
//
// class _HomePageWidgetState extends State<HomePageWidget> {
//   String? dropDownValue1;
//   String? dropDownValue2;
//   TextEditingController? textController1;
//   TextEditingController? textController2;
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     textController1 = TextEditingController(text: 'Rialaq');
//     textController2 = TextEditingController(text: 'Rialaq2022@gmail.com');
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }
//
//   @override
//   void dispose() {
//     textController1?.dispose();
//     textController2?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     context.watch<FFAppState>();
//
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       drawer: Container(
//         width: 300,
//         child: Drawer(
//           elevation: 16,
//           child: Container(
//             width: 100,
//             height: 100,
//             decoration: BoxDecoration(
//               color: Color(0xFF37474F),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 10),
//                   child: GradientText(
//                     'Turbo Sim Express',
//                     style: FlutterFlowTheme.of(context).title2.override(
//                       fontFamily: 'Open Sans',
//                       color: Colors.black,
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       fontStyle: FontStyle.italic,
//                       useGoogleFonts: GoogleFonts.asMap().containsKey(
//                           FlutterFlowTheme.of(context).title2Family),
//                     ),
//                     colors: [
//                       FlutterFlowTheme.of(context).primaryColor,
//                       FlutterFlowTheme.of(context).secondaryColor,
//                       FlutterFlowTheme.of(context).tertiaryColor
//                     ],
//                     gradientDirection: GradientDirection.ltr,
//                     gradientType: GradientType.linear,
//                   ),
//                 ),
//                 if (responsiveVisibility(
//                   context: context,
//                   phone: false,
//                   tablet: false,
//                   tabletLandscape: false,
//                   desktop: false,
//                 ))
//                   Card(
//                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                     color: Color(0xFFF5F5F5),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.network(
//                             'https://picsum.photos/seed/922/600',
//                             width: 100,
//                             height: 100,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Container(
//                                 width: 200,
//                                 decoration: BoxDecoration(),
//                                 child: TextFormField(
//                                   controller: textController1,
//                                   autofocus: true,
//                                   obscureText: false,
//                                   decoration: InputDecoration(
//                                     labelText: 'Usuario',
//                                     hintStyle:
//                                     FlutterFlowTheme.of(context).bodyText2,
//                                     enabledBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                     focusedBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                     errorBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                     focusedErrorBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                   ),
//                                   style: FlutterFlowTheme.of(context).bodyText1,
//                                 ),
//                               ),
//                               Container(
//                                 width: 200,
//                                 child: TextFormField(
//                                   controller: textController2,
//                                   autofocus: true,
//                                   obscureText: false,
//                                   decoration: InputDecoration(
//                                     labelText: 'Correo electronico',
//                                     hintStyle:
//                                     FlutterFlowTheme.of(context).bodyText2,
//                                     enabledBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                     focusedBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                     errorBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                     focusedErrorBorder: UnderlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Color(0x00000000),
//                                         width: 1,
//                                       ),
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(4.0),
//                                         topRight: Radius.circular(4.0),
//                                       ),
//                                     ),
//                                   ),
//                                   style: FlutterFlowTheme.of(context).bodyText1,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 Divider(
//                   height: 10,
//                   thickness: 5,
//                   indent: 10,
//                   endIndent: 10,
//                   color: Colors.black,
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                   child: ListView(
//                     padding: EdgeInsets.zero,
//                     shrinkWrap: true,
//                     scrollDirection: Axis.vertical,
//                     children: [
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                         child: Container(
//                           width: 100,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF455A64),
//                             borderRadius: BorderRadius.circular(12),
//                             shape: BoxShape.rectangle,
//                           ),
//                           child: Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
//                             child: InkWell(
//                               onTap: () async {
//                                 context.pushNamed(
//                                   'n001',
//                                   extra: <String, dynamic>{
//                                     kTransitionInfoKey: TransitionInfo(
//                                       hasTransition: true,
//                                       transitionType:
//                                       PageTransitionType.rightToLeft,
//                                     ),
//                                   },
//                                 );
//                               },
//                               child: ListTile(
//                                 title: Text(
//                                   'Home',
//                                   textAlign: TextAlign.center,
//                                   style: FlutterFlowTheme.of(context).title3,
//                                 ),
//                                 tileColor: Color(0xFFF5F5F5),
//                                 dense: false,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                         child: Container(
//                           width: 100,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF455A64),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
//                             child: InkWell(
//                               onTap: () async {
//                                 context.pushNamed('ApiCalls');
//                               },
//                               child: ListTile(
//                                 title: Text(
//                                   'Codigo ICCID',
//                                   textAlign: TextAlign.center,
//                                   style: FlutterFlowTheme.of(context).title3,
//                                 ),
//                                 tileColor: Color(0xFFF5F5F5),
//                                 dense: false,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                         child: Container(
//                           width: 100,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF455A64),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Padding(
//                             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
//                             child: InkWell(
//                               onTap: () async {
//                                 context.pushNamed(
//                                   'Chequeo_Gratis',
//                                   extra: <String, dynamic>{
//                                     kTransitionInfoKey: TransitionInfo(
//                                       hasTransition: true,
//                                       transitionType: PageTransitionType.fade,
//                                       duration: Duration(milliseconds: 0),
//                                     ),
//                                   },
//                                 );
//                               },
//                               child: ListTile(
//                                 title: Text(
//                                   'Codigo IMSI',
//                                   textAlign: TextAlign.center,
//                                   style: FlutterFlowTheme.of(context).title3,
//                                 ),
//                                 tileColor: Color(0xFFF5F5F5),
//                                 dense: false,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Color(0xFF455A64),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: InkWell(
//                             onTap: () async {
//                               context.pushNamed(
//                                 'Chequeo_GratisCopy',
//                                 extra: <String, dynamic>{
//                                   kTransitionInfoKey: TransitionInfo(
//                                     hasTransition: true,
//                                     transitionType: PageTransitionType.scale,
//                                     alignment: Alignment.bottomCenter,
//                                   ),
//                                 },
//                               );
//                             },
//                             child: ListTile(
//                               title: Text(
//                                 'Chequeo de IMEI (Gratis)',
//                                 textAlign: TextAlign.center,
//                                 style: FlutterFlowTheme.of(context).title3,
//                               ),
//                               tileColor: Color(0xFFF5F5F5),
//                               dense: false,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: NestedScrollView(
//         headerSliverBuilder: (context, _) => [
//           if (responsiveVisibility(
//             context: context,
//             desktop: false,
//           ))
//             SliverAppBar(
//               pinned: false,
//               floating: false,
//               backgroundColor: FlutterFlowTheme.of(context).primaryColor,
//               automaticallyImplyLeading: true,
//               title: Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
//                 child: InkWell(
//                   onTap: () async {
//                     await Navigator.push(
//                       context,
//                       PageTransition(
//                         type: PageTransitionType.fade,
//                         child: FlutterFlowExpandedImageView(
//                           image: Image.asset(
//                             'assets/images/Jorg.png',
//                             fit: BoxFit.contain,
//                           ),
//                           allowRotation: false,
//                           tag: 'imageTag2',
//                           useHeroAnimation: true,
//                         ),
//                       ),
//                     );
//                   },
//                   child: Hero(
//                     tag: 'imageTag2',
//                     transitionOnUserGestures: true,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.asset(
//                         'assets/images/Jorg.png',
//                         width: 170,
//                         height: 50,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               actions: [],
//               centerTitle: true,
//               elevation: 4,
//             )
//         ],
//         body: Builder(
//           builder: (context) {
//             return SafeArea(
//               child: GestureDetector(
//                 onTap: () => FocusScope.of(context).unfocus(),
//                 child: Visibility(
//                   visible: responsiveVisibility(
//                     context: context,
//                     tabletLandscape: false,
//                     desktop: false,
//                   ),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Align(
//                           alignment: AlignmentDirectional(0, 0),
//                           child: SelectionArea(
//                               child: Text(
//                                 'Bienvenido a Turbo Sim Express',
//                                 textAlign: TextAlign.center,
//                                 style: FlutterFlowTheme.of(context).title1.override(
//                                   fontFamily: 'Lato',
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold,
//                                   fontStyle: FontStyle.italic,
//                                   decoration: TextDecoration.underline,
//                                   useGoogleFonts: GoogleFonts.asMap()
//                                       .containsKey(FlutterFlowTheme.of(context)
//                                       .title1Family),
//                                 ),
//                               )),
//                         ),
//                         Align(
//                           alignment: AlignmentDirectional(0, 0),
//                           child: SelectionArea(
//                               child: Text(
//                                 'Calidad y garantia',
//                                 style: FlutterFlowTheme.of(context).bodyText1,
//                               )),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
//                           child: Material(
//                             color: Colors.transparent,
//                             elevation: 10,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Container(
//                               width: double.infinity,
//                               height: 450,
//                               decoration: BoxDecoration(
//                                 color: FlutterFlowTheme.of(context)
//                                     .secondaryBackground,
//                                 borderRadius: BorderRadius.circular(12),
//                                 border: Border.all(
//                                   color: Colors.transparent,
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Align(
//                                     alignment: AlignmentDirectional(-0.8, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0, 20, 0, 0),
//                                       child: SelectionArea(
//                                           child: GradientText(
//                                             'Servicio de imei',
//                                             textAlign: TextAlign.center,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .title1
//                                                 .override(
//                                               fontFamily:
//                                               FlutterFlowTheme.of(context)
//                                                   .title1Family,
//                                               letterSpacing: 0.2,
//                                               useGoogleFonts:
//                                               GoogleFonts.asMap()
//                                                   .containsKey(
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .title1Family),
//                                             ),
//                                             colors: [
//                                               Color(0xFFFF0000),
//                                               Colors.black,
//                                               Color(0xFFFF0000)
//                                             ],
//                                             gradientType: GradientType.radial,
//                                             radius: 1,
//                                           )),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         16, 16, 16, 16),
//                                     child: FlutterFlowVideoPlayer(
//                                       path:
//                                       'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
//                                       videoType: VideoType.network,
//                                       autoPlay: true,
//                                       looping: true,
//                                       showControls: false,
//                                       allowFullScreen: false,
//                                       allowPlaybackSpeedMenu: false,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         20, 0, 20, 0),
//                                     child: AutoSizeText(
//                                       'En Turbo sim express se ofrece una variedad de servicios de chequeo de  IMEI para brindarle toda la información sobre su dispositivo, ¡Rápida y eficaz!',
//                                       textAlign: TextAlign.center,
//                                       style: FlutterFlowTheme.of(context)
//                                           .bodyText1,
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 16, 0, 0),
//                                     child: FFButtonWidget(
//                                       onPressed: () async {
//                                         context.pushNamed(
//                                           'Chequeo_GratisCopy',
//                                           extra: <String, dynamic>{
//                                             kTransitionInfoKey: TransitionInfo(
//                                               hasTransition: true,
//                                               transitionType:
//                                               PageTransitionType.scale,
//                                               alignment: Alignment.bottomCenter,
//                                               duration:
//                                               Duration(milliseconds: 500),
//                                             ),
//                                           },
//                                         );
//                                       },
//                                       text: 'Chequear IMEI (Gratis)',
//                                       options: FFButtonOptions(
//                                         width: 250,
//                                         height: 40,
//                                         color: FlutterFlowTheme.of(context)
//                                             .secondaryColor,
//                                         textStyle: FlutterFlowTheme.of(context)
//                                             .subtitle2
//                                             .override(
//                                           fontFamily:
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family,
//                                           color: Colors.white,
//                                           useGoogleFonts:
//                                           GoogleFonts.asMap()
//                                               .containsKey(
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(2, 15, 2, 15),
//                           child: Material(
//                             color: Colors.transparent,
//                             elevation: 10,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             child: Container(
//                               width: double.infinity,
//                               height: 1170,
//                               decoration: BoxDecoration(
//                                 color: FlutterFlowTheme.of(context)
//                                     .secondaryBackground,
//                                 borderRadius: BorderRadius.circular(12),
//                                 border: Border.all(
//                                   color: Colors.transparent,
//                                 ),
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Align(
//                                     alignment: AlignmentDirectional(-0.8, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0, 10, 0, 10),
//                                       child: GradientText(
//                                         'Turbo Sim',
//                                         style:
//                                         FlutterFlowTheme.of(context).title1,
//                                         colors: [
//                                           Color(0xFFFF0000),
//                                           Colors.black,
//                                           Color(0xFFFF0000)
//                                         ],
//                                         gradientType: GradientType.radial,
//                                         radius: 1,
//                                       ),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: AlignmentDirectional(-0.95, 0),
//                                     child: SelectionArea(
//                                         child: Text(
//                                           'En prueba',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyText1
//                                               .override(
//                                             fontFamily:
//                                             FlutterFlowTheme.of(context)
//                                                 .bodyText1Family,
//                                             fontSize: 17,
//                                             useGoogleFonts: GoogleFonts.asMap()
//                                                 .containsKey(
//                                                 FlutterFlowTheme.of(context)
//                                                     .bodyText1Family),
//                                           ),
//                                         )),
//                                   ),
//                                   Container(
//                                     width: double.infinity,
//                                     height: 110,
//                                     decoration: BoxDecoration(
//                                       color: FlutterFlowTheme.of(context)
//                                           .secondaryBackground,
//                                     ),
//                                     child: SingleChildScrollView(
//                                       scrollDirection: Axis.horizontal,
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Padding(
//                                             padding:
//                                             EdgeInsetsDirectional.fromSTEB(
//                                                 5, 0, 0, 0),
//                                             child: Card(
//                                               clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                               color: Color(0xFFBCBCBC),
//                                               elevation: 10,
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                 BorderRadius.circular(12),
//                                               ),
//                                               child: Row(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         5, 0, 0, 0),
//                                                     child: ClipRRect(
//                                                       borderRadius:
//                                                       BorderRadius.circular(
//                                                           8),
//                                                       child: CachedNetworkImage(
//                                                         imageUrl:
//                                                         'https://www.lapulga.com.do/f/6741367-4.jpg',
//                                                         width: 75,
//                                                         height: 80,
//                                                         fit: BoxFit.cover,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         10, 10, 10, 10),
//                                                     child: Column(
//                                                       mainAxisSize:
//                                                       MainAxisSize.max,
//                                                       children: [
//                                                         SelectionArea(
//                                                             child: Text(
//                                                               'Gpp LTE',
//                                                               style: FlutterFlowTheme
//                                                                   .of(context)
//                                                                   .bodyText1,
//                                                             )),
//                                                         Row(
//                                                           mainAxisSize:
//                                                           MainAxisSize.max,
//                                                           children: [
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Version:',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estado',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'corte',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'v1.42',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estable',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'si',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                             EdgeInsetsDirectional.fromSTEB(
//                                                 5, 0, 0, 0),
//                                             child: Card(
//                                               clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                               color: Color(0xFFBCBCBC),
//                                               elevation: 10,
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                 BorderRadius.circular(12),
//                                               ),
//                                               child: Row(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         5, 0, 0, 0),
//                                                     child: ClipRRect(
//                                                       borderRadius:
//                                                       BorderRadius.circular(
//                                                           8),
//                                                       child: CachedNetworkImage(
//                                                         imageUrl:
//                                                         'https://www.lapulga.com.do/f/6741367-4.jpg',
//                                                         width: 75,
//                                                         height: 80,
//                                                         fit: BoxFit.cover,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         10, 10, 10, 10),
//                                                     child: Column(
//                                                       mainAxisSize:
//                                                       MainAxisSize.max,
//                                                       children: [
//                                                         SelectionArea(
//                                                             child: Text(
//                                                               'Gpp LTE',
//                                                               style: FlutterFlowTheme
//                                                                   .of(context)
//                                                                   .bodyText1,
//                                                             )),
//                                                         Row(
//                                                           mainAxisSize:
//                                                           MainAxisSize.max,
//                                                           children: [
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Version:',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estado',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'corte',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'v1.42',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estable',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'si',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                             EdgeInsetsDirectional.fromSTEB(
//                                                 5, 0, 0, 0),
//                                             child: Card(
//                                               clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                               color: Color(0xFFBCBCBC),
//                                               elevation: 10,
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                 BorderRadius.circular(12),
//                                               ),
//                                               child: Row(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         5, 0, 0, 0),
//                                                     child: ClipRRect(
//                                                       borderRadius:
//                                                       BorderRadius.circular(
//                                                           8),
//                                                       child: CachedNetworkImage(
//                                                         imageUrl:
//                                                         'https://www.lapulga.com.do/f/6741367-4.jpg',
//                                                         width: 75,
//                                                         height: 80,
//                                                         fit: BoxFit.cover,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         10, 10, 10, 10),
//                                                     child: Column(
//                                                       mainAxisSize:
//                                                       MainAxisSize.max,
//                                                       children: [
//                                                         SelectionArea(
//                                                             child: Text(
//                                                               'Gpp LTE',
//                                                               style: FlutterFlowTheme
//                                                                   .of(context)
//                                                                   .bodyText1,
//                                                             )),
//                                                         Row(
//                                                           mainAxisSize:
//                                                           MainAxisSize.max,
//                                                           children: [
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Version:',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estado',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'corte',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'v1.42',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estable',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'si',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                             EdgeInsetsDirectional.fromSTEB(
//                                                 5, 0, 0, 0),
//                                             child: Card(
//                                               clipBehavior:
//                                               Clip.antiAliasWithSaveLayer,
//                                               color: Color(0xFFBCBCBC),
//                                               elevation: 10,
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                 BorderRadius.circular(12),
//                                               ),
//                                               child: Row(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         5, 0, 0, 0),
//                                                     child: ClipRRect(
//                                                       borderRadius:
//                                                       BorderRadius.circular(
//                                                           8),
//                                                       child: CachedNetworkImage(
//                                                         imageUrl:
//                                                         'https://www.lapulga.com.do/f/6741367-4.jpg',
//                                                         width: 75,
//                                                         height: 80,
//                                                         fit: BoxFit.cover,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   Padding(
//                                                     padding:
//                                                     EdgeInsetsDirectional
//                                                         .fromSTEB(
//                                                         10, 10, 10, 10),
//                                                     child: Column(
//                                                       mainAxisSize:
//                                                       MainAxisSize.max,
//                                                       children: [
//                                                         SelectionArea(
//                                                             child: Text(
//                                                               'Gpp LTE',
//                                                               style: FlutterFlowTheme
//                                                                   .of(context)
//                                                                   .bodyText1,
//                                                             )),
//                                                         Row(
//                                                           mainAxisSize:
//                                                           MainAxisSize.max,
//                                                           children: [
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Version:',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estado',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'corte',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                             Column(
//                                                               mainAxisSize:
//                                                               MainAxisSize
//                                                                   .max,
//                                                               children: [
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'v1.42',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'Estable',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                                 SelectionArea(
//                                                                     child: Text(
//                                                                       'si',
//                                                                       style: FlutterFlowTheme.of(
//                                                                           context)
//                                                                           .bodyText1,
//                                                                     )),
//                                                               ],
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: AlignmentDirectional(-0.95, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0, 10, 0, 0),
//                                       child: SelectionArea(
//                                           child: Text(
//                                             'Actual version',
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1
//                                                 .override(
//                                               fontFamily:
//                                               FlutterFlowTheme.of(context)
//                                                   .bodyText1Family,
//                                               fontSize: 17,
//                                               useGoogleFonts:
//                                               GoogleFonts.asMap()
//                                                   .containsKey(
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .bodyText1Family),
//                                             ),
//                                           )),
//                                     ),
//                                   ),
//                                   Container(
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       color: FlutterFlowTheme.of(context)
//                                           .secondaryBackground,
//                                     ),
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                           EdgeInsetsDirectional.fromSTEB(
//                                               3, 2, 3, 3),
//                                           child: Card(
//                                             clipBehavior:
//                                             Clip.antiAliasWithSaveLayer,
//                                             color: Color(0xFFA4161A),
//                                             elevation: 10,
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                               BorderRadius.circular(12),
//                                             ),
//                                             child: Column(
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Text(
//                                                   'Gpp Lte',
//                                                   style: FlutterFlowTheme.of(
//                                                       context)
//                                                       .title1,
//                                                 ),
//                                                 Row(
//                                                   mainAxisSize:
//                                                   MainAxisSize.max,
//                                                   children: [
//                                                     Padding(
//                                                       padding:
//                                                       EdgeInsetsDirectional
//                                                           .fromSTEB(
//                                                           5, 0, 0, 0),
//                                                       child: ClipRRect(
//                                                         borderRadius:
//                                                         BorderRadius
//                                                             .circular(15),
//                                                         child: Image.asset(
//                                                           'assets/images/My_project-1_(2).png',
//                                                           width: 130,
//                                                           height: 130,
//                                                           fit: BoxFit.contain,
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     Expanded(
//                                                       child: Padding(
//                                                         padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                             5, 5, 5, 5),
//                                                         child: Column(
//                                                           mainAxisSize:
//                                                           MainAxisSize.min,
//                                                           children: [
//                                                             Container(
//                                                               decoration:
//                                                               BoxDecoration(
//                                                                 color: Color(
//                                                                     0xFFE5383B),
//                                                                 borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                                     12),
//                                                               ),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   SelectionArea(
//                                                                       child:
//                                                                       AutoSizeText(
//                                                                         'Sube todos los modelos de iPhone 13 , iPhone 12 , iPhone 11 y iPhone X .',
//                                                                         textAlign:
//                                                                         TextAlign
//                                                                             .center,
//                                                                         style: FlutterFlowTheme.of(
//                                                                             context)
//                                                                             .bodyText1
//                                                                             .override(
//                                                                           fontFamily:
//                                                                           FlutterFlowTheme.of(context).bodyText1Family,
//                                                                           fontSize:
//                                                                           14,
//                                                                           useGoogleFonts:
//                                                                           GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                         ),
//                                                                       )),
//                                                                   Divider(
//                                                                     height: 5,
//                                                                     thickness:
//                                                                     0.5,
//                                                                     indent: 5,
//                                                                     endIndent:
//                                                                     5,
//                                                                     color: Color(
//                                                                         0xFF14181B),
//                                                                   ),
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .spaceEvenly,
//                                                                     crossAxisAlignment:
//                                                                     CrossAxisAlignment
//                                                                         .start,
//                                                                     children: [
//                                                                       Container(
//                                                                         decoration:
//                                                                         BoxDecoration(
//                                                                           color:
//                                                                           Colors.transparent,
//                                                                           borderRadius:
//                                                                           BorderRadius.only(
//                                                                             bottomLeft:
//                                                                             Radius.circular(12),
//                                                                             bottomRight:
//                                                                             Radius.circular(0),
//                                                                             topLeft:
//                                                                             Radius.circular(0),
//                                                                             topRight:
//                                                                             Radius.circular(0),
//                                                                           ),
//                                                                         ),
//                                                                         child:
//                                                                         Column(
//                                                                           mainAxisSize:
//                                                                           MainAxisSize.max,
//                                                                           children: [
//                                                                             SelectionArea(
//                                                                                 child: Text(
//                                                                                   'Tipo:',
//                                                                                   textAlign: TextAlign.start,
//                                                                                   style: FlutterFlowTheme.of(context).bodyText1.override(
//                                                                                     fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                     fontSize: 11,
//                                                                                     useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                                   ),
//                                                                                 )),
//                                                                             SelectionArea(
//                                                                                 child: Text(
//                                                                                   'Largo',
//                                                                                   style: FlutterFlowTheme.of(context).bodyText1.override(
//                                                                                     fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                     color: Color(0xFF008F39),
//                                                                                     useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                                   ),
//                                                                                 )),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                       Container(
//                                                                         decoration:
//                                                                         BoxDecoration(
//                                                                           color:
//                                                                           Colors.transparent,
//                                                                           borderRadius:
//                                                                           BorderRadius.only(
//                                                                             bottomLeft:
//                                                                             Radius.circular(0),
//                                                                             bottomRight:
//                                                                             Radius.circular(12),
//                                                                             topLeft:
//                                                                             Radius.circular(0),
//                                                                             topRight:
//                                                                             Radius.circular(0),
//                                                                           ),
//                                                                         ),
//                                                                         child:
//                                                                         Column(
//                                                                           mainAxisSize:
//                                                                           MainAxisSize.max,
//                                                                           children: [
//                                                                             SelectionArea(
//                                                                                 child: Text(
//                                                                                   'Estado:',
//                                                                                   textAlign: TextAlign.start,
//                                                                                   style: FlutterFlowTheme.of(context).bodyText1.override(
//                                                                                     fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                     fontSize: 11,
//                                                                                     useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                                   ),
//                                                                                 )),
//                                                                             SelectionArea(
//                                                                                 child: Text(
//                                                                                   'Estable',
//                                                                                   style: FlutterFlowTheme.of(context).bodyText1.override(
//                                                                                     fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                     color: Color(0xFF008F39),
//                                                                                     useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                                   ),
//                                                                                 )),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                             Padding(
//                                                               padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(
//                                                                   0,
//                                                                   2,
//                                                                   0,
//                                                                   2),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .spaceEvenly,
//                                                                 children: [
//                                                                   Expanded(
//                                                                     child:
//                                                                     Container(
//                                                                       height:
//                                                                       30,
//                                                                       constraints:
//                                                                       BoxConstraints(
//                                                                         maxWidth:
//                                                                         150,
//                                                                       ),
//                                                                       decoration:
//                                                                       BoxDecoration(
//                                                                         color: Color(
//                                                                             0xFF008F39),
//                                                                         borderRadius:
//                                                                         BorderRadius.circular(10),
//                                                                       ),
//                                                                       child:
//                                                                       Row(
//                                                                         mainAxisSize:
//                                                                         MainAxisSize.max,
//                                                                         mainAxisAlignment:
//                                                                         MainAxisAlignment.center,
//                                                                         children: [
//                                                                           Padding(
//                                                                             padding: EdgeInsetsDirectional.fromSTEB(
//                                                                                 4,
//                                                                                 0,
//                                                                                 0,
//                                                                                 0),
//                                                                             child: SelectionArea(
//                                                                                 child: Text(
//                                                                                   'Disponibles: ',
//                                                                                   style: FlutterFlowTheme.of(context).bodyText1,
//                                                                                 )),
//                                                                           ),
//                                                                           SelectionArea(
//                                                                               child: Text(
//                                                                                 '00',
//                                                                                 style:
//                                                                                 FlutterFlowTheme.of(context).bodyText1,
//                                                                               )),
//                                                                         ],
//                                                                       ),
//                                                                     ),
//                                                                   ),
//                                                                   Container(
//                                                                     decoration:
//                                                                     BoxDecoration(
//                                                                       color: Colors
//                                                                           .transparent,
//                                                                       borderRadius:
//                                                                       BorderRadius.circular(
//                                                                           10),
//                                                                     ),
//                                                                     child:
//                                                                     Padding(
//                                                                       padding: EdgeInsetsDirectional
//                                                                           .fromSTEB(
//                                                                           4,
//                                                                           4,
//                                                                           4,
//                                                                           4),
//                                                                       child: SelectionArea(
//                                                                           child: Text(
//                                                                             'V: 1.40',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Divider(
//                           height: 4,
//                           thickness: 2,
//                         ),
//                         Container(
//                           width: 100,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             color: FlutterFlowTheme.of(context)
//                                 .secondaryBackground,
//                           ),
//                         ),
//                         Align(
//                           alignment: AlignmentDirectional(0, 0),
//                           child: Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
//                             child: SelectionArea(
//                                 child: Text(
//                                   'Codigo ICCID',
//                                   style: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                     fontFamily: FlutterFlowTheme.of(context)
//                                         .bodyText1Family,
//                                     fontSize: 20,
//                                     useGoogleFonts: GoogleFonts.asMap()
//                                         .containsKey(
//                                         FlutterFlowTheme.of(context)
//                                             .bodyText1Family),
//                                   ),
//                                 )),
//                           ),
//                         ),
//                         Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         100, 0, 0, 0),
//                                     child: SelectionArea(
//                                         child: Text(
//                                           'ICCID',
//                                           textAlign: TextAlign.center,
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyText1,
//                                         )),
//                                   ),
//                                   Align(
//                                     alignment: AlignmentDirectional(0, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           140, 0, 0, 0),
//                                       child: SelectionArea(
//                                           child: Text(
//                                             'Estado',
//                                             textAlign: TextAlign.center,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1,
//                                           )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Card(
//                                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                                     color: Color(0xFFF5F5F5),
//                                     child: FFButtonWidget(
//                                       onPressed: () {
//                                         print('Button pressed ...');
//                                       },
//                                       text: '8901 4103 2704 2160 3408',
//                                       options: FFButtonOptions(
//                                         width: 240,
//                                         height: 40,
//                                         color: Colors.transparent,
//                                         textStyle: FlutterFlowTheme.of(context)
//                                             .subtitle2
//                                             .override(
//                                           fontFamily:
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family,
//                                           color: Colors.black,
//                                           useGoogleFonts:
//                                           GoogleFonts.asMap()
//                                               .containsKey(
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                   Material(
//                                     color: Colors.transparent,
//                                     elevation: 5,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15),
//                                     ),
//                                     child: Container(
//                                       width: 100,
//                                       height: 30,
//                                       constraints: BoxConstraints(
//                                         maxWidth: double.infinity,
//                                         maxHeight: double.infinity,
//                                       ),
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF07A500),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             blurRadius: 4,
//                                             color: Color(0x33000000),
//                                             offset: Offset(0, 2),
//                                             spreadRadius: 2,
//                                           )
//                                         ],
//                                         borderRadius: BorderRadius.circular(15),
//                                         border: Border.all(
//                                           width: 2,
//                                         ),
//                                       ),
//                                       child: SelectionArea(
//                                           child: Text(
//                                             'Estable',
//                                             textAlign: TextAlign.center,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1,
//                                           )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Card(
//                                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                                     color: Color(0xFFF5F5F5),
//                                     child: FFButtonWidget(
//                                       onPressed: () {
//                                         print('Button pressed ...');
//                                       },
//                                       text: '8901 4103 2704 2160 3408',
//                                       options: FFButtonOptions(
//                                         width: 240,
//                                         height: 40,
//                                         color: Colors.transparent,
//                                         textStyle: FlutterFlowTheme.of(context)
//                                             .subtitle2
//                                             .override(
//                                           fontFamily:
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family,
//                                           color: Colors.black,
//                                           useGoogleFonts:
//                                           GoogleFonts.asMap()
//                                               .containsKey(
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                   Material(
//                                     color: Colors.transparent,
//                                     elevation: 5,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15),
//                                     ),
//                                     child: Container(
//                                       width: 100,
//                                       height: 30,
//                                       constraints: BoxConstraints(
//                                         maxWidth: double.infinity,
//                                         maxHeight: double.infinity,
//                                       ),
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF07A500),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             blurRadius: 4,
//                                             color: Color(0x33000000),
//                                             offset: Offset(0, 2),
//                                             spreadRadius: 2,
//                                           )
//                                         ],
//                                         borderRadius: BorderRadius.circular(15),
//                                         border: Border.all(
//                                           width: 2,
//                                         ),
//                                       ),
//                                       child: SelectionArea(
//                                           child: Text(
//                                             'Estable',
//                                             textAlign: TextAlign.center,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1,
//                                           )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Card(
//                                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                                     color: Color(0xFFF5F5F5),
//                                     child: FFButtonWidget(
//                                       onPressed: () {
//                                         print('Button pressed ...');
//                                       },
//                                       text: '8901 4103 2704 2160 3408',
//                                       options: FFButtonOptions(
//                                         width: 240,
//                                         height: 40,
//                                         color: Colors.transparent,
//                                         textStyle: FlutterFlowTheme.of(context)
//                                             .subtitle2
//                                             .override(
//                                           fontFamily:
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family,
//                                           color: Colors.black,
//                                           useGoogleFonts:
//                                           GoogleFonts.asMap()
//                                               .containsKey(
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                   Material(
//                                     color: Colors.transparent,
//                                     elevation: 5,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15),
//                                     ),
//                                     child: Container(
//                                       width: 100,
//                                       height: 30,
//                                       constraints: BoxConstraints(
//                                         maxWidth: double.infinity,
//                                         maxHeight: double.infinity,
//                                       ),
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF07A500),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             blurRadius: 4,
//                                             color: Color(0x33000000),
//                                             offset: Offset(0, 2),
//                                             spreadRadius: 2,
//                                           )
//                                         ],
//                                         borderRadius: BorderRadius.circular(15),
//                                         border: Border.all(
//                                           width: 2,
//                                         ),
//                                       ),
//                                       child: SelectionArea(
//                                           child: Text(
//                                             'Estable',
//                                             textAlign: TextAlign.center,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1,
//                                           )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Card(
//                                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                                     color: Color(0xFFF5F5F5),
//                                     child: FFButtonWidget(
//                                       onPressed: () {
//                                         print('Button pressed ...');
//                                       },
//                                       text: '8901 4103 2704 2160 3408',
//                                       options: FFButtonOptions(
//                                         width: 240,
//                                         height: 40,
//                                         color: Colors.transparent,
//                                         textStyle: FlutterFlowTheme.of(context)
//                                             .subtitle2
//                                             .override(
//                                           fontFamily:
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family,
//                                           color: Colors.black,
//                                           useGoogleFonts:
//                                           GoogleFonts.asMap()
//                                               .containsKey(
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                   Material(
//                                     color: Colors.transparent,
//                                     elevation: 5,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15),
//                                     ),
//                                     child: Container(
//                                       width: 100,
//                                       height: 30,
//                                       constraints: BoxConstraints(
//                                         maxWidth: double.infinity,
//                                         maxHeight: double.infinity,
//                                       ),
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF07A500),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             blurRadius: 4,
//                                             color: Color(0x33000000),
//                                             offset: Offset(0, 2),
//                                             spreadRadius: 2,
//                                           )
//                                         ],
//                                         borderRadius: BorderRadius.circular(15),
//                                         border: Border.all(
//                                           width: 2,
//                                         ),
//                                       ),
//                                       child: SelectionArea(
//                                           child: Text(
//                                             'Estable',
//                                             textAlign: TextAlign.center,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1,
//                                           )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                               child: Row(
//                                 mainAxisSize: MainAxisSize.max,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Card(
//                                     clipBehavior: Clip.antiAliasWithSaveLayer,
//                                     color: Color(0xFFF5F5F5),
//                                     child: FFButtonWidget(
//                                       onPressed: () {
//                                         print('Button pressed ...');
//                                       },
//                                       text: '8901 4103 2704 2160 3408',
//                                       options: FFButtonOptions(
//                                         width: 240,
//                                         height: 40,
//                                         color: Colors.transparent,
//                                         textStyle: FlutterFlowTheme.of(context)
//                                             .subtitle2
//                                             .override(
//                                           fontFamily:
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family,
//                                           color: Colors.black,
//                                           useGoogleFonts:
//                                           GoogleFonts.asMap()
//                                               .containsKey(
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family),
//                                         ),
//                                         borderSide: BorderSide(
//                                           color: Colors.transparent,
//                                           width: 1,
//                                         ),
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                     ),
//                                   ),
//                                   Material(
//                                     color: Colors.transparent,
//                                     elevation: 5,
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15),
//                                     ),
//                                     child: Container(
//                                       width: 100,
//                                       height: 30,
//                                       constraints: BoxConstraints(
//                                         maxWidth: double.infinity,
//                                         maxHeight: double.infinity,
//                                       ),
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFF07A500),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             blurRadius: 4,
//                                             color: Color(0x33000000),
//                                             offset: Offset(0, 2),
//                                             spreadRadius: 2,
//                                           )
//                                         ],
//                                         borderRadius: BorderRadius.circular(15),
//                                         border: Border.all(
//                                           width: 2,
//                                         ),
//                                       ),
//                                       child: SelectionArea(
//                                           child: Text(
//                                             'Estable',
//                                             textAlign: TextAlign.center,
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1,
//                                           )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         Divider(
//                           height: 4,
//                           thickness: 2,
//                         ),
//                         Padding(
//                           padding:
//                           EdgeInsetsDirectional.fromSTEB(10, 15, 10, 5),
//                           child: SelectionArea(
//                               child: Text(
//                                 '¿QUÉ ES ICCID? ¿POR QUÉ NECESITAS ICCID?',
//                                 textAlign: TextAlign.center,
//                                 style: FlutterFlowTheme.of(context).bodyText1,
//                               )),
//                         ),
//                         Column(
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Padding(
//                               padding:
//                               EdgeInsetsDirectional.fromSTEB(5, 5, 5, 0),
//                               child: SelectionArea(
//                                   child: AutoSizeText(
//                                     'ICCID es lo que se comparte en este sitio web y facilita la activación del desbloqueo de su iPhone para que pueda usarlo como un dispositivo internacional.',
//                                     textAlign: TextAlign.justify,
//                                     style: FlutterFlowTheme.of(context).bodyText1,
//                                   )),
//                             ),
//                             if (FFAppState().Visibilidad == 0)
//                               Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                                 child: FFButtonWidget(
//                                   onPressed: () async {
//                                     setState(() {
//                                       FFAppState().Visibilidad =
//                                           FFAppState().Visibilidad + 1;
//                                     });
//                                   },
//                                   text: 'Ver mas',
//                                   options: FFButtonOptions(
//                                     width: 130,
//                                     height: 40,
//                                     color: Color(0x0039D2C0),
//                                     textStyle: FlutterFlowTheme.of(context)
//                                         .subtitle2
//                                         .override(
//                                       fontFamily:
//                                       FlutterFlowTheme.of(context)
//                                           .subtitle2Family,
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryColor,
//                                       useGoogleFonts: GoogleFonts.asMap()
//                                           .containsKey(
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family),
//                                     ),
//                                     elevation: 0,
//                                     borderSide: BorderSide(
//                                       color: Colors.transparent,
//                                       width: 1,
//                                     ),
//                                     borderRadius: BorderRadius.circular(0),
//                                   ),
//                                 ),
//                               ),
//                             if (FFAppState().Visibilidad == 1)
//                               Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                                 child: FFButtonWidget(
//                                   onPressed: () async {
//                                     setState(() {
//                                       FFAppState().Visibilidad =
//                                           FFAppState().Visibilidad + -1;
//                                     });
//                                   },
//                                   text: 'Ver menos',
//                                   options: FFButtonOptions(
//                                     width: 130,
//                                     height: 40,
//                                     color: Color(0x0039D2C0),
//                                     textStyle: FlutterFlowTheme.of(context)
//                                         .subtitle2
//                                         .override(
//                                       fontFamily:
//                                       FlutterFlowTheme.of(context)
//                                           .subtitle2Family,
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryColor,
//                                       useGoogleFonts: GoogleFonts.asMap()
//                                           .containsKey(
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family),
//                                     ),
//                                     elevation: 0,
//                                     borderSide: BorderSide(
//                                       color: Colors.transparent,
//                                       width: 1,
//                                     ),
//                                     borderRadius: BorderRadius.circular(0),
//                                   ),
//                                 ),
//                               ),
//                             if (FFAppState().Visibilidad == 1)
//                               Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
//                                 child: SelectionArea(
//                                     child: Text(
//                                       '\nICCID (Integrated Circuit Card Identifier) es el código de la SIM. Cada secuencia de números ICCID generalmente consta de 19 o 20 caracteres. Están impresos en la superficie de la tarjeta SIM y almacenados dentro de la memoria de la SIM. Cada número ICCID es único y es un identificador único para la tarjeta SIM, similar al número de la cedula o cuenta bancaria.\n\nCon el bloqueo de iPhone, solo se puede usar con un operador específico. Sin embargo, cuando hay ICCID en una lista determinada (por convención de Apple), cualquier operador puede operar normalmente. Entonces, este ICCID se usa para engañar al iPhone para que lo identifique a través de una SIM emparejada.',
//                                       textAlign: TextAlign.justify,
//                                       style: FlutterFlowTheme.of(context).bodyText1,
//                                     )),
//                               ),
//                             if (FFAppState().Visibilidad == 1)
//                               Padding(
//                                 padding:
//                                 EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                                 child: FFButtonWidget(
//                                   onPressed: () async {
//                                     setState(() {
//                                       FFAppState().Visibilidad =
//                                           FFAppState().Visibilidad + -1;
//                                     });
//                                   },
//                                   text: 'Ver menos',
//                                   options: FFButtonOptions(
//                                     width: 130,
//                                     height: 40,
//                                     color: Color(0x0039D2C0),
//                                     textStyle: FlutterFlowTheme.of(context)
//                                         .subtitle2
//                                         .override(
//                                       fontFamily:
//                                       FlutterFlowTheme.of(context)
//                                           .subtitle2Family,
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryColor,
//                                       useGoogleFonts: GoogleFonts.asMap()
//                                           .containsKey(
//                                           FlutterFlowTheme.of(context)
//                                               .subtitle2Family),
//                                     ),
//                                     borderSide: BorderSide(
//                                       color: Colors.transparent,
//                                     ),
//                                     borderRadius: BorderRadius.circular(0),
//                                   ),
//                                 ),
//                               ),
//                           ],
//                         ),
//                         Divider(
//                           height: 2,
//                           thickness: 2,
//                           color: Colors.black,
//                         ),
//                         SelectionArea(
//                             child: AutoSizeText(
//                               'Codigo IMSI',
//                               textAlign: TextAlign.center,
//                               style: FlutterFlowTheme.of(context).bodyText1,
//                             )),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 20),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.max,
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     0, 0, 2.5, 0),
//                                 child: FlutterFlowDropDown<String>(
//                                   options: ['Rep. Dom.', 'U.S.A'],
//                                   onChanged: (val) =>
//                                       setState(() => dropDownValue1 = val),
//                                   width: 180,
//                                   height: 50,
//                                   textStyle: FlutterFlowTheme.of(context)
//                                       .bodyText1
//                                       .override(
//                                     fontFamily: FlutterFlowTheme.of(context)
//                                         .bodyText1Family,
//                                     color: Colors.black,
//                                     useGoogleFonts: GoogleFonts.asMap()
//                                         .containsKey(
//                                         FlutterFlowTheme.of(context)
//                                             .bodyText1Family),
//                                   ),
//                                   hintText: 'Pais',
//                                   fillColor: Color(0x2E8C8C8C),
//                                   elevation: 2,
//                                   borderColor: Colors.transparent,
//                                   borderWidth: 0,
//                                   borderRadius: 0,
//                                   margin: EdgeInsetsDirectional.fromSTEB(
//                                       12, 4, 12, 4),
//                                   hidesUnderline: true,
//                                 ),
//                               ),
//                               FlutterFlowDropDown<String>(
//                                 options: ['Claro', 'Altice'],
//                                 onChanged: (val) =>
//                                     setState(() => dropDownValue2 = val),
//                                 width: 180,
//                                 height: 50,
//                                 textStyle: FlutterFlowTheme.of(context)
//                                     .bodyText1
//                                     .override(
//                                   fontFamily: FlutterFlowTheme.of(context)
//                                       .bodyText1Family,
//                                   color: Colors.black,
//                                   useGoogleFonts: GoogleFonts.asMap()
//                                       .containsKey(
//                                       FlutterFlowTheme.of(context)
//                                           .bodyText1Family),
//                                 ),
//                                 hintText: 'Compania',
//                                 fillColor: Color(0x2E8C8C8C),
//                                 elevation: 2,
//                                 borderColor: Colors.transparent,
//                                 borderWidth: 0,
//                                 borderRadius: 0,
//                                 margin: EdgeInsetsDirectional.fromSTEB(
//                                     12, 4, 12, 4),
//                                 hidesUnderline: true,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
//                           child: Card(
//                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                             color: Color(0x0039D2C0),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       5, 10, 5, 10),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 0, 5, 0),
//                                         child: Container(
//                                           height: 30,
//                                           decoration: BoxDecoration(
//                                             color: Color(0x0039D2C0),
//                                           ),
//                                           child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             children: [
//                                               SelectionArea(
//                                                   child: AutoSizeText(
//                                                     'Pais: ',
//                                                     style:
//                                                     FlutterFlowTheme.of(context)
//                                                         .bodyText1
//                                                         .override(
//                                                       fontFamily:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyText1Family,
//                                                       fontWeight:
//                                                       FontWeight.w900,
//                                                       useGoogleFonts: GoogleFonts
//                                                           .asMap()
//                                                           .containsKey(
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family),
//                                                     ),
//                                                   )),
//                                               SelectionArea(
//                                                   child: AutoSizeText(
//                                                     'Albania',
//                                                     style:
//                                                     FlutterFlowTheme.of(context)
//                                                         .bodyText1
//                                                         .override(
//                                                       fontFamily:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyText1Family,
//                                                       decoration:
//                                                       TextDecoration
//                                                           .underline,
//                                                       useGoogleFonts: GoogleFonts
//                                                           .asMap()
//                                                           .containsKey(
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family),
//                                                     ),
//                                                   )),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         height: 30,
//                                         decoration: BoxDecoration(
//                                           color: Color(0x0039D2C0),
//                                         ),
//                                         child: Row(
//                                           mainAxisSize: MainAxisSize.max,
//                                           children: [
//                                             SelectionArea(
//                                                 child: AutoSizeText(
//                                                   'Compañia: ',
//                                                   style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                     fontFamily:
//                                                     FlutterFlowTheme.of(
//                                                         context)
//                                                         .bodyText1Family,
//                                                     fontWeight:
//                                                     FontWeight.w900,
//                                                     useGoogleFonts: GoogleFonts
//                                                         .asMap()
//                                                         .containsKey(
//                                                         FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1Family),
//                                                   ),
//                                                 )),
//                                             SelectionArea(
//                                                 child: AutoSizeText(
//                                                   'Albania Mobile',
//                                                   style:
//                                                   FlutterFlowTheme.of(context)
//                                                       .bodyText1
//                                                       .override(
//                                                     fontFamily:
//                                                     FlutterFlowTheme.of(
//                                                         context)
//                                                         .bodyText1Family,
//                                                     decoration:
//                                                     TextDecoration
//                                                         .underline,
//                                                     useGoogleFonts: GoogleFonts
//                                                         .asMap()
//                                                         .containsKey(
//                                                         FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1Family),
//                                                   ),
//                                                 )),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Container(
//                                       width: 100,
//                                       height: 100,
//                                       decoration: BoxDecoration(
//                                         color: Color(0x0039D2C0),
//                                       ),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           SelectionArea(
//                                               child: Text(
//                                                 'IMEI (1)',
//                                                 style: FlutterFlowTheme.of(context)
//                                                     .bodyText1
//                                                     .override(
//                                                   fontFamily:
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .bodyText1Family,
//                                                   color: Colors.black,
//                                                   fontSize: 16,
//                                                   useGoogleFonts: GoogleFonts
//                                                       .asMap()
//                                                       .containsKey(
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyText1Family),
//                                                 ),
//                                               )),
//                                           FFButtonWidget(
//                                             onPressed: () {
//                                               print('Button pressed ...');
//                                             },
//                                             text: '2760111',
//                                             options: FFButtonOptions(
//                                               width: 130,
//                                               height: 40,
//                                               color: Colors.transparent,
//                                               textStyle:
//                                               FlutterFlowTheme.of(context)
//                                                   .subtitle2
//                                                   .override(
//                                                 fontFamily:
//                                                 FlutterFlowTheme.of(
//                                                     context)
//                                                     .subtitle2Family,
//                                                 color: Colors.black,
//                                                 useGoogleFonts: GoogleFonts
//                                                     .asMap()
//                                                     .containsKey(
//                                                     FlutterFlowTheme.of(
//                                                         context)
//                                                         .subtitle2Family),
//                                               ),
//                                               borderSide: BorderSide(
//                                                 color: Colors.transparent,
//                                                 width: 1,
//                                               ),
//                                               borderRadius:
//                                               BorderRadius.circular(8),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 100,
//                                       height: 100,
//                                       decoration: BoxDecoration(
//                                         color: Color(0x0039D2C0),
//                                       ),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           SelectionArea(
//                                               child: Text(
//                                                 'IMEI (2)',
//                                                 style: FlutterFlowTheme.of(context)
//                                                     .bodyText1
//                                                     .override(
//                                                   fontFamily:
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .bodyText1Family,
//                                                   color: Colors.black,
//                                                   fontSize: 16,
//                                                   useGoogleFonts: GoogleFonts
//                                                       .asMap()
//                                                       .containsKey(
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyText1Family),
//                                                 ),
//                                               )),
//                                           FFButtonWidget(
//                                             onPressed: () {
//                                               print('Button pressed ...');
//                                             },
//                                             text: '2760111',
//                                             options: FFButtonOptions(
//                                               width: 130,
//                                               height: 40,
//                                               color: Colors.transparent,
//                                               textStyle:
//                                               FlutterFlowTheme.of(context)
//                                                   .subtitle2
//                                                   .override(
//                                                 fontFamily:
//                                                 FlutterFlowTheme.of(
//                                                     context)
//                                                     .subtitle2Family,
//                                                 color: Colors.black,
//                                                 useGoogleFonts: GoogleFonts
//                                                     .asMap()
//                                                     .containsKey(
//                                                     FlutterFlowTheme.of(
//                                                         context)
//                                                         .subtitle2Family),
//                                               ),
//                                               borderSide: BorderSide(
//                                                 color: Colors.transparent,
//                                                 width: 1,
//                                               ),
//                                               borderRadius:
//                                               BorderRadius.circular(8),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 100,
//                                       height: 100,
//                                       decoration: BoxDecoration(
//                                         color: Color(0x0039D2C0),
//                                       ),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           SelectionArea(
//                                               child: Text(
//                                                 'IMEI (3)',
//                                                 style: FlutterFlowTheme.of(context)
//                                                     .bodyText1
//                                                     .override(
//                                                   fontFamily:
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .bodyText1Family,
//                                                   color: Colors.black,
//                                                   fontSize: 16,
//                                                   useGoogleFonts: GoogleFonts
//                                                       .asMap()
//                                                       .containsKey(
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyText1Family),
//                                                 ),
//                                               )),
//                                           FFButtonWidget(
//                                             onPressed: () {
//                                               print('Button pressed ...');
//                                             },
//                                             text: '2760111',
//                                             options: FFButtonOptions(
//                                               width: 130,
//                                               height: 40,
//                                               color: Colors.transparent,
//                                               textStyle:
//                                               FlutterFlowTheme.of(context)
//                                                   .subtitle2
//                                                   .override(
//                                                 fontFamily:
//                                                 FlutterFlowTheme.of(
//                                                     context)
//                                                     .subtitle2Family,
//                                                 color: Colors.black,
//                                                 useGoogleFonts: GoogleFonts
//                                                     .asMap()
//                                                     .containsKey(
//                                                     FlutterFlowTheme.of(
//                                                         context)
//                                                         .subtitle2Family),
//                                               ),
//                                               borderSide: BorderSide(
//                                                 color: Colors.transparent,
//                                                 width: 1,
//                                               ),
//                                               borderRadius:
//                                               BorderRadius.circular(8),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Divider(
//                           height: 2,
//                           thickness: 2,
//                           color: Colors.black,
//                         ),
//                         Align(
//                           alignment: AlignmentDirectional(-0.9, 0),
//                           child: Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//                             child: SelectionArea(
//                                 child: AutoSizeText(
//                                   'Descripcion',
//                                   style: FlutterFlowTheme.of(context).bodyText1,
//                                 )),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
//                           child: ClipRRect(
//                             child: Container(
//                               width: 100,
//                               height: 320,
//                               decoration: BoxDecoration(
//                                 color: FlutterFlowTheme.of(context)
//                                     .secondaryBackground,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 4,
//                                     color: Color(0x33000000),
//                                     offset: Offset(0, 2),
//                                     spreadRadius: 4,
//                                   )
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: EdgeInsetsDirectional.fromSTEB(
//                                     10, 10, 10, 10),
//                                 child: SelectionArea(
//                                     child: AutoSizeText(
//                                       'somos tienda virtual con ventas al por mayor y por unidad.\n\nTenemos la mejor gama de Turbo Sim para Iphone del mercado, entre los cuales tenemos Heicard, Gevey Pro, GPP LTE, R-SIM y MKSD; los mismos de alta gama y rendimiento y pueden ser actualizados con nuestras herramientas de actualización.\n\n*Delivery disponible para envíos e instalaciones a Domicilio con un costo adicional dependiendo la zona.\n\nOjo: Debe tener el equipo actualizado hasta la última versión.\n\nGarantía: 90 días de garantía a todos nuestros clientes.',
//                                       style: FlutterFlowTheme.of(context).bodyText1,
//                                     )),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
