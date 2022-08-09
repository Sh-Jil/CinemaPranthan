import 'package:bloc/bloc.dart';
import 'package:cinemapranthan/backend/Failures/mainfailure.dart';
import 'package:cinemapranthan/backend/callback/personrepo.dart';
import 'package:cinemapranthan/backend/models/personcredits/personcredits.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../backend/models/personprofile/personprofile.dart';
part 'person_detail_event.dart';
part 'person_detail_state.dart';
part 'person_detail_bloc.freezed.dart';

@injectable
class PersonDetailBloc extends Bloc<PersonDetailEvent, PersonDetailState> {
  final PersonRepo personrepo;
  PersonDetailBloc(this.personrepo) : super(PersonDetailState.initial()) {
    on<_Getdetails>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<PersonDetail>> getdetail =
          await personrepo.getpersondetail(personid: event.personid);
      emit(getdetail.fold(
          (l) => state.copyWith(isLoading: false, options: some(left(l))),
          (r) => state.copyWith(
              isLoading: false, options: Some(right(r)), persondetails: r)));
    });
  }
}

@injectable
class PersonCreditBloc extends Bloc<PersonDetailEvent, PersonCreditState> {
  final PersonCreditRepo personcreditrepo;
  PersonCreditBloc(this.personcreditrepo) : super(PersonCreditState.initial()) {
    on<_GetCredits>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<PersonCredit>> getdetail =
          await personcreditrepo.getpersoncredit(personid: event.personid);

      emit(getdetail.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, options: Some(right(r)), personcredits: r)));
    });
  }
}

@injectable
class PersonImageBloc extends Bloc<PersonDetailEvent, PersonImageState> {
  final PersonImageRepo personImageRepo;
  PersonImageBloc(this.personImageRepo) : super(PersonImageState.initial()) {
    on<_GetImages>((event, emit) async {
      emit(state.copyWith(isLoading: true, options: const None()));
      final Either<MainFailures, List<PersonImage>> getdetail =
          await personImageRepo.getpersonimage(personid: event.personid);

      emit(getdetail.fold(
          (l) => state.copyWith(isLoading: false, options: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false, options: Some(right(r)), personimage: r)));
    });
  }
}
