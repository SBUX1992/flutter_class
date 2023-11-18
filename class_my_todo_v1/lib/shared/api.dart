// baseURI -> 서버 주소 + 포트
// endPoint -> 미리 정의
// 자신의 IP 주소 입력 해야 함 - 192.168.0.79

const baseUri = "http://192.168.0.79:80";
const pathUser = "/user";
const epSignUp = "$pathUser/sign-up";
const epSignIn = "$pathUser/sign-in";

const pathTodo = "/todos";
const epTodoList = "$pathTodo/all";
const epTodoById = "$pathTodo/{id}";
const epTodoCreate = "$pathTodo/create";