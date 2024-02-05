import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/theme/app_theme.dart';
import 'package:split_it/shared/models/event_model.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel model;
  final bool isLoading;
  const EventTileWidget(
      {super.key, required this.model, this.isLoading = false});

  IconDollarType get type =>
      model.value! > 0 ? IconDollarType.receive : IconDollarType.send;
  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Row(
        children: [
          LoadingWidget(size: Size(48, 48)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: LoadingWidget(size: Size(81, 19)),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 17,
                      width: 61,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 18,
                      width: 44,
                    )
                  ],
                ),
              ),
            ]),
          ))
        ],
      );
    }
    return Row(
      children: [
        IconDollarWidget(
          type: type,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                model.title!,
                style: AppTheme.textStyles.eventTileTile,
              ),
              subtitle: Text(
                model.created!.toIso8601String(),
                style: AppTheme.textStyles.eventTileSubtitle,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "R\$ ${model.value}",
                    style: AppTheme.textStyles.eventTileMoney,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${model.people} pessoa${model.people == 1 ? '' : 's'}",
                    style: AppTheme.textStyles.eventTilePeople,
                  )
                ],
              ),
            ),
            Divider()
          ]),
        ))
      ],
    );
  }
}
