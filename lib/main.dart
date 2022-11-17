import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;

main() async {
  var channel = IOWebSocketChannel.connect(Uri.parse('ws://127.0.0.1:8081'));
  channel.sink.add('received!');
  channel.stream.listen((message) {
    channel.sink.close(status.goingAway);
  });
}