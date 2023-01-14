import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController? emailAddressLoginController;
  TextEditingController? passwordCreateController;
  TextEditingController? passwordConfirmController;

  late bool passwordLoginVisibility;
  late bool passwordConfirmVisibility;

  @override
  void initState() {
    super.initState();
    emailAddressLoginController = TextEditingController();
    passwordCreateController = TextEditingController();
    passwordLoginVisibility = false;
    passwordConfirmController = TextEditingController();
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    emailAddressLoginController?.dispose();
    passwordCreateController?.dispose();
    passwordConfirmController?.dispose();
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
                image: Image.asset("assets/images/register.png").image),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/axis-logo-no-background.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.fitHeight,
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w300),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Text(
                    "Create your account below.",
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
                    controller: passwordCreateController,
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: TextFormField(
                    controller: passwordConfirmController,
                    obscureText: !passwordConfirmVisibility,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
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
                          () => passwordConfirmVisibility =
                              !passwordConfirmVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          passwordConfirmVisibility
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (passwordCreateController?.text !=
                              passwordConfirmController?.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Passwords don\'t match!',
                                ),
                              ),
                            );
                            return;
                          }

                          // final user = await createAccountWithEmail(
                          //   context,
                          //   emailAddressController!.text,
                          //   passwordCreateController!.text,
                          // );
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
                          //         CompleteProfileWidget(),
                          //   ),
                          //       (r) => false,
                          // );
                        },
                        text: "Create Account",
                        options: FFButtonOptions(
                          width: 160,
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
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xFF111417),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: () async {
                          Get.back();
                          // await Navigator.push(
                          //   context,
                          //   PageTransition(
                          //     type:
                          //     PageTransitionType.leftToRight,
                          //     duration:
                          //     const Duration(milliseconds: 220),
                          //     reverseDuration:
                          //     const Duration(milliseconds: 220),
                          //     child: LoginPageWidget(),
                          //   ),
                          // );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xFF00968A),
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 24, 0),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Color(0xFF00968A),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                              // FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
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
