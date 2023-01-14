import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:true_axis/Register/View/register_page.dart';

import '../../Widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? emailAddressLoginController;
  TextEditingController? passwordLoginController;

  late bool passwordLoginVisibility;

  @override
  void initState() {
    super.initState();
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
  }

  @override
  void dispose() {
    emailAddressLoginController?.dispose();
    passwordLoginController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1F24),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
            minWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: Image.asset("assets/images/login.png").image),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 80.0, horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome back",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w300),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Text(
                    "Login to access your account below.",
                    style: TextStyle(
                        color: Color(0xFF57636C),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: TextFormField(
                    controller: emailAddressLoginController,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      labelStyle: const TextStyle(
                        color: Color(0xFF8B97A2),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      hintText: "Enter your email...",
                      hintStyle: const TextStyle(
                        color: Color(0xFF8B97A2),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: const Color(0xFF111417),
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                    ),
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    // FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: TextFormField(
                    controller: passwordLoginController,
                    obscureText: !passwordLoginVisibility,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(
                        color: Color(0xFF8B97A2),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      hintText: "Enter your password...",
                      hintStyle: const TextStyle(
                        color: Color(0xFF8B97A2),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: const Color(0xFF111417),
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordLoginVisibility =
                              !passwordLoginVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordLoginVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: const Color(0x98FFFFFF),
                          size: 20,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                      child: FFButtonWidget(
                        onPressed: () async {
                          // await Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //         ForgotPasswordWidget(),
                          //   ),
                          // );
                        },
                        text: "Forgot Password?",
                        options: FFButtonOptions(
                          width: 170,
                          height: 40,
                          color: const Color(0x001A1F24),
                          textStyle: const TextStyle(
                            color: Color(0xFF8B97A2),
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                          // FlutterFlowTheme.of(context).bodyText2,
                          elevation: 0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        // final user = await signInWithEmail(
                        //   context,
                        //   emailAddressLoginController!.text,
                        //   passwordLoginController!.text,
                        // );
                        // if (user == null) {
                        //   return;
                        // }
                        //
                        // await Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => NavBarPage(
                        //         initialPage: 'MY_Card'),
                        //   ),
                        //       (r) => false,
                        // );
                      },
                      text: "Login",
                      options: FFButtonOptions(
                        width: 120,
                        height: 50,
                        color: const Color(0xFF00968A),
                        textStyle: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        // FlutterFlowTheme.of(context).subtitle2,
                        elevation: 3,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Get.to(() => const RegisterPage());
                        // await Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         RegisterAccountWidget(),
                        //   ),
                        // );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xFF111417),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Get.to(() => const RegisterPage());
                            // await Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         RegisterAccountWidget(),
                            //   ),
                            // );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                                // FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(24, 0, 4, 0),
                                child: Text(
                                  "Create",
                                  style: TextStyle(
                                    color: Color(0xFF00968A),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Color(0xFF00968A),
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        // final user = await signInAnonymously(context);
                        // if (user == null) {
                        //   return;
                        // }
                        //
                        // final budgetListCreateData =
                        // createBudgetListRecordData(
                        //   budgetUser: currentUserReference,
                        // );
                        // await BudgetListRecord.collection
                        //     .doc()
                        //     .set(budgetListCreateData);
                        // await Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //         NavBarPage(initialPage: 'MY_Card'),
                        //   ),
                        //       (r) => false,
                        // );
                      },
                      text: "Continue as Guest",
                      options: FFButtonOptions(
                        width: 230,
                        height: 50,
                        color: const Color(0xFF111417),
                        textStyle: const TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        elevation: 3,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
