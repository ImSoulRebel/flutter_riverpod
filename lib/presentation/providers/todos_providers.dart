import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/domain/entities/todo.dart';
import 'package:uuid/uuid.dart';

part 'todos_providers.g.dart';

enum FilterType { all, completed, pending }

const uuid = Uuid();

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all;

  void setFilter(FilterType filter) => state = filter;
}

@Riverpod(keepAlive: true)
class TodoList extends _$TodoList {
  @override
  List<Todo> build() => [
        Todo(
            id: uuid.v4(),
            description: 'Juan Carlos',
            completedAt: DateTime.now()),
        Todo(id: uuid.v4(), description: 'Maria Fernanda', completedAt: null),
        Todo(
            id: uuid.v4(),
            description: 'Pedro Gomez',
            completedAt: DateTime.now()),
        Todo(id: uuid.v4(), description: 'Ana Lucia', completedAt: null),
        Todo(id: uuid.v4(), description: 'Luis Miguel', completedAt: null),
      ];

  void createTodo(String description) {
    final newTodo = Todo(
      id: uuid.v4(),
      description: description,
      completedAt: null,
    );

    state = [...state, newTodo];
  }

  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id != id) return todo;

      if (todo.done) {
        return todo.copyWith(completedAt: null);
      } else {
        return todo.copyWith(completedAt: DateTime.now());
      }
    }).toList();
  }
}

@Riverpod(keepAlive: true)
List<Todo> filteredTodoList(Ref ref) =>
    ref.watch(todoListProvider).where((todo) {
      final filter = ref.watch(todoCurrentFilterProvider);

      switch (filter) {
        case FilterType.all:
          return true;
        case FilterType.completed:
          return todo.done;
        case FilterType.pending:
          return !todo.done;
      }
    }).toList();
