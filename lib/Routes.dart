import 'package:get/get.dart';
import 'Local/Core/Constant/routes.dart';
import 'Local/modules/chat/view/chat.dart';
import 'Local/modules/chat_details/view/chat_details.dart';
import 'Local/modules/close_account/view/CloseAcount.dart';
import 'Local/modules/document_sign_up/view/DocumentAuth.dart';
import 'Local/modules/forget_password_number/view/ForgetPasswordNumber.dart';
import 'Local/modules/forget_password_otp/view/ForgetPssswordOtp.dart';
import 'Local/modules/home/view/HomeScreen.dart';
import 'Local/modules/login/binding/sogn_in_binding.dart';
import 'Local/modules/login/view/signIn.dart';
import 'Local/modules/otp_sign_in/view/signInOtp.dart';
import 'Local/modules/otp_sign_up/view/sign_in_otp.dart';
import 'Local/modules/payment_card/view/paymentCard.dart';
import 'Local/modules/personal_sign_up/view/personalSignUp.dart';
import 'Local/modules/profile/view/ProfileSceen.dart';
import 'Local/modules/reset_password/view/ResetPassword.dart';
import 'Local/modules/ride_details/view/RIDE DETAILS.dart';
import 'Local/modules/sign up/view/signUp.dart';
import 'Local/modules/sign_up_terms/view/SignUpTerms.dart';
import 'Local/modules/start/view/StartScreen.dart';
import 'Local/modules/success_auth/view/SuccessAuth.dart';
import 'Local/modules/today_ride/view/TODAYRIDE.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoute.start,
    page: () => StartScreen(),
    //  middlewares: [MiddleWare()],
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.signIn,
    page: () => SignInScreen(),
    transition: Transition.fade,
    binding: SignInBinding(),
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.signUp,
    page: () => SignUpScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.signUpOtp,
    page: () => const SignOtpScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.signInOtp,
    page: () => const SignInOtpScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.signUpPersonal,
    page: () => PersonalSignUpScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.signUpBanckCard,
    page: () => const PaymentCardScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.signUpDocument,
    page: () => const DocumentAuthScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.successAuth,
    page: () => const SuccessAuthScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.forgetPasswordNumber,
    page: () => ForgetPasswordNumber(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.forgetPasswordOtp,
    page: () => ForgetPssswordOtp(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.resetPasswordPage,
    page: () => ResetPasswordScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.profile,
    page: () => ProfileScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.home,
    page: () => HomeScreen(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.deleteAccount,
    page: () => const CloseAcount(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.raideDetails,
    page: () => RideDetails(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.raideHistory,
    page: () => TodayRide(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.support,
    page: () => const SignUpTerms(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.chat,
    page: () => const Chat(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.chatDetails,
    page: () => const ChatDetails(),
    transition: Transition.fade,
    transitionDuration: const Duration(milliseconds: 700),
  )
];
