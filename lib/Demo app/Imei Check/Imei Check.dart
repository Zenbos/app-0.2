// import '../backend/api_requests/api_calls.dart';
// import '../flutter_flow/flutter_flow_icon_button.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '../flutter_flow/flutter_flow_widgets.dart';
// import 'package:styled_divider/styled_divider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
//
// class ChequeoGratisCopyWidget extends StatefulWidget {
//   const ChequeoGratisCopyWidget({Key? key}) : super(key: key);
//
//   @override
//   _ChequeoGratisCopyWidgetState createState() =>
//       _ChequeoGratisCopyWidgetState();
// }
//
// class _ChequeoGratisCopyWidgetState extends State<ChequeoGratisCopyWidget> {
//   ApiCallResponse? imeiCheck;
//   TextEditingController? imeifieldController;
//   final scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   void initState() {
//     super.initState();
//     imeifieldController = TextEditingController();
//     WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
//   }
//
//   @override
//   void dispose() {
//     imeifieldController?.dispose();
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
//       appBar: responsiveVisibility(
//         context: context,
//         desktop: false,
//       )
//           ? AppBar(
//         backgroundColor: Color(0xFFFB1C1C),
//         automaticallyImplyLeading: false,
//         leading: FlutterFlowIconButton(
//           borderColor: Colors.transparent,
//           borderRadius: 30,
//           borderWidth: 1,
//           buttonSize: 60,
//           icon: Icon(
//             Icons.arrow_back_rounded,
//             color: Colors.white,
//             size: 30,
//           ),
//           onPressed: () async {
//             context.pushNamed(
//               'HomePage',
//               extra: <String, dynamic>{
//                 kTransitionInfoKey: TransitionInfo(
//                   hasTransition: true,
//                   transitionType: PageTransitionType.fade,
//                   duration: Duration(milliseconds: 300),
//                 ),
//               },
//             );
//           },
//         ),
//         title: Image.asset(
//           'assets/images/Jorg.png',
//           width: 170,
//           height: 50,
//           fit: BoxFit.fill,
//         ),
//         actions: [],
//         centerTitle: true,
//         elevation: 2,
//       )
//           : null,
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Visibility(
//             visible: responsiveVisibility(
//               context: context,
//               desktop: false,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Stack(
//                   alignment: AlignmentDirectional(0, -1),
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.height * 1,
//                       decoration: BoxDecoration(
//                         color: FlutterFlowTheme.of(context).secondaryBackground,
//                       ),
//                       child: Visibility(
//                         visible: responsiveVisibility(
//                           context: context,
//                           tabletLandscape: false,
//                           desktop: false,
//                         ),
//                         child: Align(
//                           alignment: AlignmentDirectional(0, 0),
//                           child: SingleChildScrollView(
//                             primary: false,
//                             child: Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Align(
//                                   alignment: AlignmentDirectional(0, 0),
//                                   child: SelectionArea(
//                                       child: Text(
//                                         'Chequeo de Imei gratis',
//                                         textAlign: TextAlign.center,
//                                         style: FlutterFlowTheme.of(context)
//                                             .bodyText1
//                                             .override(
//                                           fontFamily: 'Open Sans',
//                                           fontSize: 24,
//                                           useGoogleFonts: GoogleFonts.asMap()
//                                               .containsKey(
//                                               FlutterFlowTheme.of(context)
//                                                   .bodyText1Family),
//                                         ),
//                                       )),
//                                 ),
//                                 Align(
//                                   alignment: AlignmentDirectional(0, 0),
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         25, 5, 25, 5),
//                                     child: SelectionArea(
//                                         child: Text(
//                                           'Verifique IMEI para obtener toda la información sobre su dispositivo, incluida la lista negra, SimLock, modelo, garantía GRATIS.\n\nSolo compatible iPhone...',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyText1,
//                                         )),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       5, 20, 5, 0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Expanded(
//                                         child: Padding(
//                                           padding:
//                                           EdgeInsetsDirectional.fromSTEB(
//                                               5, 0, 10, 0),
//                                           child: TextFormField(
//                                             controller: imeifieldController,
//                                             onFieldSubmitted: (_) async {
//                                               setState(() {
//                                                 FFAppState().NIMEIString =
//                                                     imeifieldController!.text;
//                                               });
//                                             },
//                                             autofocus: true,
//                                             obscureText: false,
//                                             decoration: InputDecoration(
//                                               labelText:
//                                               'Numero de IMEI (15 digitos)',
//                                               hintText: 'EJ: 352341515236458',
//                                               hintStyle:
//                                               FlutterFlowTheme.of(context)
//                                                   .bodyText2,
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Colors.black,
//                                                   width: 4,
//                                                 ),
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                               ),
//                                               focusedBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Colors.black,
//                                                   width: 4,
//                                                 ),
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                               ),
//                                               errorBorder: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Color(0x00000000),
//                                                   width: 4,
//                                                 ),
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                               ),
//                                               focusedErrorBorder:
//                                               OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Color(0x00000000),
//                                                   width: 4,
//                                                 ),
//                                                 borderRadius:
//                                                 BorderRadius.circular(10),
//                                               ),
//                                             ),
//                                             style: FlutterFlowTheme.of(context)
//                                                 .bodyText1
//                                                 .override(
//                                               fontFamily:
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .bodyText1Family,
//                                               fontSize: 20,
//                                               useGoogleFonts: GoogleFonts
//                                                   .asMap()
//                                                   .containsKey(
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .bodyText1Family),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 0, 5, 0),
//                                         child: FFButtonWidget(
//                                           onPressed: () async {
//                                             var _shouldSetState = false;
//                                             imeiCheck =
//                                             await IMEICheckApiCall.call(
//                                               imeiNumber:
//                                               imeifieldController!.text,
//                                             );
//                                             _shouldSetState = true;
//                                             setState(() {
//                                               FFAppState().Desbloqueo =
//                                                   valueOrDefault<String>(
//                                                     getJsonField(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                       r'''$.object.simlock''',
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                               FFAppState().Pais =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.pais(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                             });
//                                             setState(() {
//                                               FFAppState().Operador =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.operador(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                               FFAppState().ID =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.id(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                             });
//                                             setState(() {
//                                               FFAppState().FDCompra =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.fechaCompra(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                               FFAppState().NSeal =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.nSerie(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                             });
//                                             setState(() {
//                                               FFAppState().Imei2 =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.imei2(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                               FFAppState().Imei =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.imei(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                             });
//                                             setState(() {
//                                               FFAppState().Modelo =
//                                                   valueOrDefault<String>(
//                                                     IMEICheckApiCall.modelo(
//                                                       (imeiCheck?.jsonBody ?? ''),
//                                                     ).toString(),
//                                                     'No Encontrado',
//                                                   );
//                                             });
//                                             if ((imeiCheck?.succeeded ??
//                                                 true)) {
//                                               await Future.delayed(
//                                                   const Duration(
//                                                       milliseconds: 5000));
//                                             } else {
//                                               ScaffoldMessenger.of(context)
//                                                   .showSnackBar(
//                                                 SnackBar(
//                                                   content: Text(
//                                                     'Hubo un error en la solicitud',
//                                                     style: FlutterFlowTheme.of(
//                                                         context)
//                                                         .title1
//                                                         .override(
//                                                       fontFamily: 'Roboto',
//                                                       useGoogleFonts: GoogleFonts
//                                                           .asMap()
//                                                           .containsKey(
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .title1Family),
//                                                     ),
//                                                   ),
//                                                   duration: Duration(
//                                                       milliseconds: 4000),
//                                                   backgroundColor:
//                                                   Color(0xFFCE0000),
//                                                 ),
//                                               );
//                                               if (_shouldSetState)
//                                                 setState(() {});
//                                               return;
//                                             }
//
//                                             ScaffoldMessenger.of(context)
//                                                 .showSnackBar(
//                                               SnackBar(
//                                                 content: Text(
//                                                   'Verificacion Exitosa',
//                                                   style: FlutterFlowTheme.of(
//                                                       context)
//                                                       .title1
//                                                       .override(
//                                                     fontFamily: 'Roboto',
//                                                     useGoogleFonts: GoogleFonts
//                                                         .asMap()
//                                                         .containsKey(
//                                                         FlutterFlowTheme.of(
//                                                             context)
//                                                             .title1Family),
//                                                   ),
//                                                 ),
//                                                 duration: Duration(
//                                                     milliseconds: 4000),
//                                                 backgroundColor:
//                                                 Color(0xFF07A500),
//                                               ),
//                                             );
//                                             setState(() {
//                                               FFAppState().PopupIMEIData =
//                                                   FFAppState().PopupIMEIData +
//                                                       1;
//                                             });
//                                             if (_shouldSetState)
//                                               setState(() {});
//                                           },
//                                           text: 'Verificar',
//                                           options: FFButtonOptions(
//                                             width: 100,
//                                             height: 50,
//                                             color: FlutterFlowTheme.of(context)
//                                                 .primaryColor,
//                                             textStyle:
//                                             FlutterFlowTheme.of(context)
//                                                 .subtitle2
//                                                 .override(
//                                               fontFamily:
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family,
//                                               color: Colors.white,
//                                               useGoogleFonts: GoogleFonts
//                                                   .asMap()
//                                                   .containsKey(
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .subtitle2Family),
//                                             ),
//                                             borderSide: BorderSide(
//                                               color: Colors.transparent,
//                                               width: 1,
//                                             ),
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     if (FFAppState().EJIMEIData == 0)
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 5, 0, 20),
//                                         child: FFButtonWidget(
//                                           onPressed: () async {
//                                             setState(() {
//                                               FFAppState().EJIMEIData =
//                                                   FFAppState().EJIMEIData + 1;
//                                             });
//                                           },
//                                           text: 'Ver Ejemplo',
//                                           options: FFButtonOptions(
//                                             width: 170,
//                                             height: 50,
//                                             color: Color(0x0039D2C0),
//                                             textStyle:
//                                             FlutterFlowTheme.of(context)
//                                                 .subtitle2
//                                                 .override(
//                                               fontFamily:
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family,
//                                               color:
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .primaryColor,
//                                               useGoogleFonts: GoogleFonts
//                                                   .asMap()
//                                                   .containsKey(
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .subtitle2Family),
//                                             ),
//                                             elevation: 0,
//                                             borderSide: BorderSide(
//                                               color: Color(0x0039D2C0),
//                                               width: 0,
//                                             ),
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                           ),
//                                         ),
//                                       ),
//                                     if (FFAppState().EJIMEIData == 1)
//                                       Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 5, 0, 20),
//                                         child: FFButtonWidget(
//                                           onPressed: () async {
//                                             setState(() {
//                                               FFAppState().EJIMEIData =
//                                                   FFAppState().EJIMEIData + -1;
//                                             });
//                                           },
//                                           text: 'Ocultar Ejemplo',
//                                           options: FFButtonOptions(
//                                             width: 170,
//                                             height: 50,
//                                             color: Color(0x0039D2C0),
//                                             textStyle:
//                                             FlutterFlowTheme.of(context)
//                                                 .subtitle2
//                                                 .override(
//                                               fontFamily:
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .subtitle2Family,
//                                               color:
//                                               FlutterFlowTheme.of(
//                                                   context)
//                                                   .primaryColor,
//                                               useGoogleFonts: GoogleFonts
//                                                   .asMap()
//                                                   .containsKey(
//                                                   FlutterFlowTheme.of(
//                                                       context)
//                                                       .subtitle2Family),
//                                             ),
//                                             elevation: 0,
//                                             borderSide: BorderSide(
//                                               color: Color(0x0039D2C0),
//                                               width: 0,
//                                             ),
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                           ),
//                                         ),
//                                       ),
//                                   ],
//                                 ),
//                                 if (FFAppState().EJIMEIData == 1)
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 0, 0, 10),
//                                     child: Container(
//                                       width: 350,
//                                       height: 440,
//                                       decoration: BoxDecoration(
//                                         color: Color(0xFFFF2828),
//                                         borderRadius: BorderRadius.circular(15),
//                                         border: Border.all(
//                                           width: 2,
//                                         ),
//                                       ),
//                                       child: Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 0, 10, 0),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.max,
//                                           children: [
//                                             Align(
//                                               alignment:
//                                               AlignmentDirectional(-0.9, 0),
//                                               child: SelectionArea(
//                                                   child: Text(
//                                                     'Ejemplo',
//                                                     style:
//                                                     FlutterFlowTheme.of(context)
//                                                         .bodyText1
//                                                         .override(
//                                                       fontFamily:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyText1Family,
//                                                       fontSize: 16,
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
//                                             ),
//                                             Container(
//                                               width: double.infinity,
//                                               height: 400,
//                                               decoration: BoxDecoration(
//                                                 color: Colors.transparent,
//                                                 boxShadow: [
//                                                   BoxShadow(
//                                                     blurRadius: 4,
//                                                     color: Color(0x33000000),
//                                                     offset: Offset(0, 2),
//                                                     spreadRadius: 10,
//                                                   )
//                                                 ],
//                                               ),
//                                               child: Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Container(
//                                                     width: double.infinity,
//                                                     height: 100,
//                                                     decoration: BoxDecoration(
//                                                       color: FlutterFlowTheme
//                                                           .of(context)
//                                                           .secondaryBackground,
//                                                       borderRadius:
//                                                       BorderRadius.only(
//                                                         bottomLeft:
//                                                         Radius.circular(0),
//                                                         bottomRight:
//                                                         Radius.circular(0),
//                                                         topLeft:
//                                                         Radius.circular(10),
//                                                         topRight:
//                                                         Radius.circular(10),
//                                                       ),
//                                                       border: Border.all(
//                                                         width: 3,
//                                                       ),
//                                                     ),
//                                                     child: Align(
//                                                       alignment:
//                                                       AlignmentDirectional(
//                                                           0, 0),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             'Chequeo de IMEI (Gratis)',
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily:
//                                                               'Open Sans',
//                                                               fontSize: 25,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                   ListView(
//                                                     padding: EdgeInsets.zero,
//                                                     shrinkWrap: true,
//                                                     scrollDirection:
//                                                     Axis.vertical,
//                                                     children: [
//                                                       Container(
//                                                         width: 100,
//                                                         height: 300,
//                                                         decoration:
//                                                         BoxDecoration(
//                                                           color: FlutterFlowTheme
//                                                               .of(context)
//                                                               .secondaryBackground,
//                                                           borderRadius:
//                                                           BorderRadius.only(
//                                                             bottomLeft:
//                                                             Radius.circular(
//                                                                 10),
//                                                             bottomRight:
//                                                             Radius.circular(
//                                                                 10),
//                                                             topLeft:
//                                                             Radius.circular(
//                                                                 0),
//                                                             topRight:
//                                                             Radius.circular(
//                                                                 0),
//                                                           ),
//                                                           border: Border.all(
//                                                             color: Colors.black,
//                                                             width: 2,
//                                                           ),
//                                                         ),
//                                                         child: Column(
//                                                           mainAxisSize:
//                                                           MainAxisSize.max,
//                                                           children: [
//                                                             Padding(
//                                                               padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(
//                                                                   0,
//                                                                   2,
//                                                                   0,
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Modelo:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'IMEI:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'IMEI 2:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Numero de serie:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Comprado en:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Fecha estimada de compra:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Unidad de demostracion:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Operador inicial:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Operador:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Próxima política de amarre:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'País:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
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
//                                                                   0),
//                                                               child: Row(
//                                                                 mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: EdgeInsetsDirectional
//                                                                         .fromSTEB(
//                                                                         10,
//                                                                         0,
//                                                                         15,
//                                                                         0),
//                                                                     child:
//                                                                     Column(
//                                                                       mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .max,
//                                                                       children: [
//                                                                         SelectionArea(
//                                                                             child:
//                                                                             Text(
//                                                                               'Sim-Bloqueo:',
//                                                                               style: FlutterFlowTheme.of(context)
//                                                                                   .bodyText1
//                                                                                   .override(
//                                                                                 fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
//                                                                                 fontWeight: FontWeight.w900,
//                                                                                 useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
//                                                                               ),
//                                                                             )),
//                                                                       ],
//                                                                     ),
//                                                                   ),
//                                                                   Column(
//                                                                     mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                     children: [
//                                                                       SelectionArea(
//                                                                           child:
//                                                                           Text(
//                                                                             'xxxxxxxxxxx',
//                                                                             style: FlutterFlowTheme.of(context)
//                                                                                 .bodyText1,
//                                                                           )),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     if (FFAppState().PopupIMEIData == 1)
//                       Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child: Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
//                           child: Material(
//                             color: Colors.transparent,
//                             elevation: 5,
//                             child: Container(
//                               height: MediaQuery.of(context).size.height * 0.8,
//                               decoration: BoxDecoration(
//                                 color: Colors.transparent,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 4,
//                                     color: Color(0x33000000),
//                                     offset: Offset(0, 2),
//                                     spreadRadius: 3000,
//                                   )
//                                 ],
//                                 border: Border.all(
//                                   color: Colors.transparent,
//                                   width: 2,
//                                 ),
//                               ),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: FlutterFlowTheme.of(context)
//                                       .primaryBackground,
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: Color(0xFF171616),
//                                   ),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Align(
//                                       alignment: AlignmentDirectional(0, 0.05),
//                                       child: Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 10, 0, 20),
//                                         child: SelectionArea(
//                                             child: Text(
//                                               'Datos del Telefono',
//                                               style: FlutterFlowTheme.of(context)
//                                                   .bodyText1
//                                                   .override(
//                                                 fontFamily:
//                                                 FlutterFlowTheme.of(context)
//                                                     .bodyText1Family,
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.bold,
//                                                 useGoogleFonts: GoogleFonts
//                                                     .asMap()
//                                                     .containsKey(
//                                                     FlutterFlowTheme.of(
//                                                         context)
//                                                         .bodyText1Family),
//                                               ),
//                                             )),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           10, 0, 10, 10),
//                                       child: Column(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                         MainAxisAlignment.center,
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                         children: [
//                                           Column(
//                                             mainAxisSize: MainAxisSize.max,
//                                             crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                             children: [
//                                               SelectionArea(
//                                                   child: Text(
//                                                     'Modelo:',
//                                                     textAlign: TextAlign.start,
//                                                     style:
//                                                     FlutterFlowTheme.of(context)
//                                                         .bodyText1
//                                                         .override(
//                                                       fontFamily:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .bodyText1Family,
//                                                       fontSize: 13,
//                                                       fontWeight:
//                                                       FontWeight.bold,
//                                                       useGoogleFonts: GoogleFonts
//                                                           .asMap()
//                                                           .containsKey(
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family),
//                                                     ),
//                                                   )),
//                                               Material(
//                                                 color: Colors.transparent,
//                                                 elevation: 0,
//                                                 child: Container(
//                                                   width: 330,
//                                                   decoration: BoxDecoration(
//                                                     color: Colors.transparent,
//                                                   ),
//                                                   child: SelectionArea(
//                                                       child: Text(
//                                                         FFAppState().Modelo,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 15,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                 ),
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'IMEI:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().Imei,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'IMEI 2:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().Imei2,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'Numero De Serie:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().NSeal,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'Fecha De Compra:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().FDCompra,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'ID:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().ID,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'Test 1:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().Operador,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'Test 2:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().Pais,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                                 children: [
//                                                   SelectionArea(
//                                                       child: Text(
//                                                         'Test 3:',
//                                                         textAlign: TextAlign.start,
//                                                         style: FlutterFlowTheme.of(
//                                                             context)
//                                                             .bodyText1
//                                                             .override(
//                                                           fontFamily:
//                                                           FlutterFlowTheme.of(
//                                                               context)
//                                                               .bodyText1Family,
//                                                           fontSize: 13,
//                                                           fontWeight:
//                                                           FontWeight.bold,
//                                                           useGoogleFonts: GoogleFonts
//                                                               .asMap()
//                                                               .containsKey(
//                                                               FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family),
//                                                         ),
//                                                       )),
//                                                   Material(
//                                                     color: Colors.transparent,
//                                                     elevation: 0,
//                                                     child: Container(
//                                                       width: 330,
//                                                       decoration: BoxDecoration(
//                                                         color:
//                                                         Colors.transparent,
//                                                       ),
//                                                       child: SelectionArea(
//                                                           child: Text(
//                                                             FFAppState().Desbloqueo,
//                                                             style:
//                                                             FlutterFlowTheme.of(
//                                                                 context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                               fontFamily: FlutterFlowTheme.of(
//                                                                   context)
//                                                                   .bodyText1Family,
//                                                               fontSize: 15,
//                                                               useGoogleFonts: GoogleFonts
//                                                                   .asMap()
//                                                                   .containsKey(
//                                                                   FlutterFlowTheme.of(context)
//                                                                       .bodyText1Family),
//                                                             ),
//                                                           )),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                               Divider(
//                                                 height: 3,
//                                                 thickness: 2,
//                                               ),
//                                               Align(
//                                                 alignment:
//                                                 AlignmentDirectional(0, 0),
//                                                 child: Padding(
//                                                   padding: EdgeInsetsDirectional
//                                                       .fromSTEB(0, 30, 0, 0),
//                                                   child: FFButtonWidget(
//                                                     onPressed: () async {
//                                                       setState(() {
//                                                         FFAppState()
//                                                             .PopupIMEIData = 0;
//                                                       });
//                                                     },
//                                                     text: 'Ok',
//                                                     options: FFButtonOptions(
//                                                       width: 130,
//                                                       height: 40,
//                                                       color:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .primaryColor,
//                                                       textStyle:
//                                                       FlutterFlowTheme.of(
//                                                           context)
//                                                           .subtitle2
//                                                           .override(
//                                                         fontFamily: FlutterFlowTheme.of(
//                                                             context)
//                                                             .subtitle2Family,
//                                                         color: Colors
//                                                             .white,
//                                                         useGoogleFonts: GoogleFonts
//                                                             .asMap()
//                                                             .containsKey(
//                                                             FlutterFlowTheme.of(context)
//                                                                 .subtitle2Family),
//                                                       ),
//                                                       borderSide: BorderSide(
//                                                         color:
//                                                         Colors.transparent,
//                                                         width: 1,
//                                                       ),
//                                                       borderRadius:
//                                                       BorderRadius.circular(
//                                                           8),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
