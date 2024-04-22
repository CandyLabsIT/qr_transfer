import 'package:equatable/equatable.dart';

/// The [RandomSamplerAliasData] class stores data structures essential for the Alias Method used in the [RandomSampler].
class RandomSamplerAliasData extends Equatable {
  /// A list of adjusted probabilities for each outcome. This list is part of the pre-processing for the Alias Method
  /// and is used to ensure that each outcome can be selected in constant time during the sampling process.
  final List<double> probabilities;

  /// A corresponding list of aliases, where each entry at index i points to another index. If the random choice falls
  /// beyond the adjusted probability at index i, the alias is used to select the outcome.
  final List<int> alias;

  /// Creates a new instance of [RandomSamplerAliasData]
  const RandomSamplerAliasData({
    required this.probabilities,
    required this.alias,
  });

  /// Creates an empty instance of [RandomSamplerAliasData] with the specified size.
  RandomSamplerAliasData.empty(int size)
      : probabilities = List<double>.filled(size, 0),
        alias = List<int>.filled(size, 0);

  @override
  List<Object> get props => <Object>[probabilities, alias];
}