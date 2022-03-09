import 'package:url_launcher/url_launcher.dart';
void launch_twitter() async{
  if(!await launch('https://twitter.com/NetrinSports')) throw 'Could Load';
}
void launch_instagram() async{
  if(!await launch('https://www.instagram.com/netrinsports/')) throw 'Could Load';
}
void launch_linkedin() async{
  if(!await launch('https://www.linkedin.com/company/netrinsports/')) throw 'Could Load';
}