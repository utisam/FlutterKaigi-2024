import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_venue/l10n.dart';
import 'package:app_features_venue/src/gen/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class VenuePage extends StatelessWidget {
  const VenuePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nVenue.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: MainLogo(),
        ),
        leadingWidth: 48,
        titleSpacing: 4,
        centerTitle: false,
        title: Text(l.venuePageTitle),
        actions: const [
          SettingsButton(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: SizedBox(
            width: 1000,
            height: 800,
            child: InteractiveViewer(
              minScale: 1,
              maxScale: 3,
              child: Assets.images.floorMap
                  .image(width: 48, height: 48, semanticLabel: l.venueFloorMap),
            ),
          ),
        ),
      ),
    );
  }
}
