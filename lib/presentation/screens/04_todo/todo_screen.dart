import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/presentation/providers/todos_providers.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider + Providers'),
      ),
      body: const _TodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => ref
            .read(todoListProvider.notifier)
            .createTodo(RandomGenerator.getRandomName()),
      ),
    );
  }
}

class _TodoView extends ConsumerWidget {
  const _TodoView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFilter = ref.watch(todoCurrentFilterProvider);
    final todoList = ref.watch(filteredTodoListProvider);

    return Column(
      children: [
        const ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text('Estas son las personas a invitar a la fiesta'),
        ),

        SegmentedButton(
          segments: const [
            ButtonSegment(
              value: FilterType.all,
              icon: Text('Todos'),
            ),
            ButtonSegment(
              value: FilterType.completed,
              icon: Text('Invitados'),
            ),
            ButtonSegment(
              value: FilterType.pending,
              icon: Text('No invitados'),
            ),
          ],
          selected: <FilterType>{currentFilter},
          onSelectionChanged: (values) => ref
              .read(todoCurrentFilterProvider.notifier)
              .setFilter(values.first),
        ),

        const SizedBox(height: 5),

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              final todo = todoList[index];
              return SwitchListTile(
                  title: Text(todo.description),
                  value: todo.completedAt != null,
                  onChanged: (_) =>
                      ref.read(todoListProvider.notifier).toggleTodo(todo.id));
            },
          ),
        )
      ],
    );
  }
}
