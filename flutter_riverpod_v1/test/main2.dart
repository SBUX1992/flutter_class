// 깊은 복사(deep copy)
// 깊은 복사는 완전한 복사본을 만드는 방법 입니다. 변경 사항에만 영향을 미칩니다

void main() {
  List<int> originList = [1, 2, 3];
  List<int> deepCopy = List.from(originList);

  // 변경 사항이 얕은 복사에 영향을 미칩니다
  deepCopy[0] = 10;

  print(originList);
  print(deepCopy);
}