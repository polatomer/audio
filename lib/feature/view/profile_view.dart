import 'package:audio/product/constants/color_constant.dart';
import 'package:audio/product/constants/image_enum.dart';
import 'package:audio/product/extensions/png_extension.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _profileAppBar(context),
      body: Padding(
        padding: context.padding.horizontalNormal,
        child: ListView(
          children: const [
            _CustumerProfileHeader(),
            SizedBox(height: 25),
            Divider(),
            _SectionTitle(title: 'General'),
            _ProfileTitle(title: 'Edit Profile'),
            Divider(),
            _ProfileTitle(title: 'Notifications'),
            Divider(),
            _ProfileTitle(title: 'Wishlist'),
            Divider(),
            _SectionTitle(title: 'Legal'),
            _ProfileTitle(title: 'Terms of Use'),
            Divider(),
            _ProfileTitle(title: 'PrivacyPolicy'),
            Divider(),
            _SectionTitle(title: 'Personal'),
            _ProfileTitle(title: 'Report a Bug'),
            Divider(),
            _ProfileTitle(title: 'Logout'),
            Divider(),
          ],
        ),
      ),
    );
  }

  AppBar _profileAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
      title: Text(
        'Profile',
        style: context.general.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _CustumerProfileHeader extends StatelessWidget {
  const _CustumerProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyTopNormal,
      child: Row(
        children: [
          PngImage(name: ImageEnum.avatar.name),
          Padding(
            padding: context.padding.onlyLeftMedium,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Andrea Hirata',
                  style: context.general.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  'hirata@gmail.com',
                  style: context.general.textTheme.titleSmall,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ProfileTitle extends StatelessWidget {
  const _ProfileTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyTopNormal,
      child: InkWell(
        child: Text(
          title,
          style: context.general.textTheme.titleMedium,
        ),
        onTap: () {},
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.verticalNormal,
      child: Text(
        title,
        style: context.general.textTheme.titleSmall?.copyWith(color: ColorConstant.platinumGranite),
      ),
    );
  }
}
