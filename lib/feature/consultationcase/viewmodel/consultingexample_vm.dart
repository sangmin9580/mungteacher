import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/feature/consultationcase/model/consultation_writing_model.dart';
import 'package:project/feature/consultationcase/repo/consultation_repo.dart';

class ConsultingExampleViewModel
    extends AsyncNotifier<List<ConsultationWritingModel>> {
  late final ConsultationRepository _repository;
  List<ConsultationWritingModel> _list = [];
  bool hasMoreData = true; // 데이터가 더 있는지 여부를 표시
  bool isLoading = false;

  Future<List<ConsultationWritingModel>> _fetchConsultations({
    DateTime? lastTimestamp,
    int limit = 5,
  }) async {
    final List<ConsultationWritingModel> consultations =
        await _repository.getConsultations(
      lastTimestamp: lastTimestamp,
      limit: limit,
    );
    if (consultations.isEmpty) {
      hasMoreData = false;
    }

    return consultations;
  }

  @override
  Future<List<ConsultationWritingModel>> build() async {
    _repository = ref.read(consultationRepo);
    _list = await _fetchConsultations();
    return _list;
  }

  Future<void> fetchNextPage() async {
    if (_list.isEmpty || !hasMoreData || isLoading) return;

    isLoading = true;
    state = await AsyncValue.guard(() async {
      final nextPage =
          await _fetchConsultations(lastTimestamp: _list.last.timestamp);
      _list.addAll(nextPage);
      return _list;
    });
    isLoading = false;
  }

  Future<void> refresh() async {
    hasMoreData = true;
    _list = [];
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final consultations = await _fetchConsultations();
      _list = consultations;
      return _list;
    });
  }
}

final consultationListProvider = AsyncNotifierProvider<
    ConsultingExampleViewModel, List<ConsultationWritingModel>>(
  () => ConsultingExampleViewModel(),
);
