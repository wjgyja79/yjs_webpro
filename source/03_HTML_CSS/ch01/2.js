// JavaScript source code
var name = prompt("이름은 ?", "홍길동"); // 취소를 클릭하면 'null'리턴
if (name != "null" && name != "") {
    document.write(name + "반갑습니다<br>");
}