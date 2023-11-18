// 단위 테스트 작성 해보기

import 'package:class_my_todo_v1/models/dto/user_dto.dart';
import 'package:class_my_todo_v1/models/entity/user_entity.dart';
import 'package:class_my_todo_v1/repository/user_repository.dart';
import 'package:class_my_todo_v1/repository/user_repository_impl.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {

  late UserRepository userRepository;

  setUp(() {
    userRepository = UserRepositoryImpl();
  });

  group('회원 관리 도메인 테스트', () {
    // 1
    test('사용자 로그인 테스트', () async {
      // given

      UserDto userDto =
          UserDto(email: 'hong@example.com', password: 'hong1234');
      // when
      UserEntity userEntity = await userRepository.signIn(userDto);

      // then
      expect(userEntity, isA<UserEntity>()); // 데이터 타입이 UserEntity 확인
      expect(userEntity.username, '홍길동');
    });

    // 2
    test("사용자 회원 가입 테스트", () async {
      // given

      UserDto newUser = UserDto(
          email: "test1@naver.com", password: "1234", username: "userA");

      // when
      int result = await userRepository.signUp(newUser);

      // then
      expect(result, isA<int>()); // <-- 데이터 타입 확인
      expect(result, equals(1)); // 값 일치 여부 확인
    });
  });
}
