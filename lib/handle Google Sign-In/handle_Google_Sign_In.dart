// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';





// Future<void> signOut() async {
//   await GoogleSignIn().signOut();
//   await FirebaseAuth.instance.signOut();
// }
//
// // Future<User?> SignInWithGoogle() async {
// //   try {
// //     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
// //     if (googleUser != null) {
// //       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
// //       final AuthCredential credential = GoogleAuthProvider.credential(
// //         accessToken: googleAuth.accessToken,
// //         idToken: googleAuth.idToken,
// //       );
// //       UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
// //       return userCredential.user;  // Return the Firebase user
// //     }
// //   } catch (e) {
// //     print("Error during Google sign-in: $e");
// //     return null;
// //   }
// // }
// //
//