import 'package:ashish_cv/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  final Profile profile;

  const Header({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            profile.name(),
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.black),
          ),
          Wrap(
            spacing: 8,
            children: [
              OutlinedButton(
                onPressed: _launchEmail,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.email_rounded),
                    SizedBox(width: 8),
                    Text(profile.email),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: _launchCall,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.call),
                    SizedBox(width: 8),
                    Text(profile.mobile),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: profile.links
                .map((e) => IconButton(
                      iconSize: 30,
                      icon: FaIcon(e.icon),
                      onPressed: () => {_launchURL(e.url)},
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  void _launchURL(String _url) async => await launch(_url);

  void _launchEmail() async {
    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: profile.email,
      queryParameters: {
        'subject': 'Hello',
      },
    ).toString();
    await launch(emailLaunchUri);
  }

  void _launchCall() async {
    await launch("tel:${profile.mobile}");
  }
}
