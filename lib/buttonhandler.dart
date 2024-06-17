import 'package:flutter/services.dart'; // To get the correct library path


class PhysicalButtonsHandler {

  static bool _bound = false;
  static late EventChannel _channel;
  static final Set<Handler> _handlers = {};
  static void listen(Handler handler) {
    _handlers.add(handler);

    if (!_bound) {
      _channel = const EventChannel('physical_buttons');
      _channel.receiveBroadcastStream().listen(_handleEvent);

      _bound = true;
    }
  }

  static void _handleEvent(dynamic event) {
    for (var a in _handlers) {
      a(event);
    }
  }
}

typedef Handler = void Function(Function key);
