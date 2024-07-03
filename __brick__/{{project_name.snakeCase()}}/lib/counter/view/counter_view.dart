import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/counter/counter.dart';
import 'package:{{project_name.snakeCase()}}/l10n/l10n.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StackedView<CounterViewModel> {
  const CounterView({super.key});

  @override
  Widget builder(
    BuildContext context,
    CounterViewModel viewModel,
    Widget? child,
  ) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: Center(
        child: Text(
          '${viewModel.counter}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => viewModel.increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => viewModel.decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }

  @override
  CounterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CounterViewModel();
}
