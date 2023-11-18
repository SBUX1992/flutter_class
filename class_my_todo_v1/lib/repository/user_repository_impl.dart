import 'package:class_my_todo_v1/models/dto/user_dto.dart';
import 'package:class_my_todo_v1/models/entity/user_entity.dart';
import 'package:class_my_todo_v1/repository/user_repository.dart';

import 'package:class_my_todo_v1/shared/api.dart';
import 'package:class_my_todo_v1/shared/http.dart';
import 'package:dio/dio.dart';

// 싱글톤 처리
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl._single();

  // 외부에서 접근할 수 있는 변수를 static 처리
  static final UserRepositoryImpl _instance = UserRepositoryImpl._single();

  // 1 dart 언어에서 factory 키워드 - 생성자, 메서드
  // factory 생성자 - 매번 클래스에인스턴스를 같은 녀셕으로 반환 처리
  factory UserRepositoryImpl() {
    return _instance;
  }

  @override
  Future<UserEntity> signIn(UserDto userDto) async {
    try {
      // 사용자의 정보 요청 -> GET( 보안상에 이유로 POST 처리)
      // BaseURI + epSignUp
      // http://192.168.0.79:80/user/sign-in

      // userDto --> json 문자열 형식
      // dio -> 이 처리를 하기 위해서 규칙 --> DTO 안에 toJson 메서드를 구현해 놓아야 한다.
      Response response = await dio.post(epSignIn, data: userDto);

      print(response.headers['Authorization']); // token 확인
      print(response.data); // body 영역 데이터 확인
      print(response.toString()); //response 전체 확인
      return UserEntity.fromJson(response.data);
    } catch (e) {
      return UserEntity(userId: -1, username: '', email: '');
    }
  }

  @override
  Future<int> signUp(UserDto userDto) async {
    try {
      Response response = await dio.post(epSignUp, data: userDto);
      print("response${response.toString()}");
      print(response.statusCode);
      return response.data;
    } catch (e) {
      return -1;
    }
  }
}
