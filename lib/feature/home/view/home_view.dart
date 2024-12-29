import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/init/config/app_env.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/utility/constants/enums/locals.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part 'widget/home_appbar.dart';

/// Home view
class HomeView extends StatefulWidget {
  /// Home view constructor
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(AppEnvItems.baseUrl.value),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(AppEnvItems.apiKey.value),
          ),
          const Text(LocaleKeys.home_title).tr(),
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLanguage(
                context: context,
                value: Locales.en,
              );
            },
            child: const Text(LocaleKeys.general_save).tr(),
          ),
        ],
      ),
    );
  }
}
