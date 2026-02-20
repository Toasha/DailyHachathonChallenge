
//状態定義
enum Day10_LoadState: Equatable {   //状態が同じかどうかをプログラムが比較できるようになるプロトコル
    case idle
    case loading
    case loaded(String)
    case fail(String)
}
