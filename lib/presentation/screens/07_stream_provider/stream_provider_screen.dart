import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/stream_providers.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const _StreamView(),
    );
  }
}

class _StreamView extends ConsumerWidget {
  const _StreamView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersInChatAsync = ref.watch(usersInChatProvider);

    if (usersInChatAsync.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (usersInChatAsync.hasError) {
      return Center(
        child: Text('Error: ${usersInChatAsync.error}'),
      );
    }

    final usersInChat = usersInChatAsync.value ?? [];

    return ListView.builder(
      itemCount: usersInChat.length,
      itemBuilder: (context, index) {
        final userName = usersInChat[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(userName[0]),
          ),
          title: Text(userName),
        );
      },
    );
  }
}
