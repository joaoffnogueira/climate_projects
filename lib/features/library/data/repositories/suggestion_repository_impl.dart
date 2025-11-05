import '../../data/datasources/suggestion_data_source.dart';
import '../../domain/repositories/suggestion_repository.dart';
import '../../domain/entities/suggestion.dart' as domain_entity;

class SuggestionRepositoryImpl implements SuggestionRepository {
  final SuggestionDataSource dataSource;
  SuggestionRepositoryImpl(this.dataSource);

  @override
  List<domain_entity.Suggestion> getSuggestions() =>
      dataSource.getSuggestions().map((m) => m.toDomain()).toList();
}
