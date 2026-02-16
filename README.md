# DailyHachathonChallenge
技術力と実装力を上げるために毎日AIからお題を出してもらいそのお題をAIのコード生成を使わずに実装する試みです
<br>
可能な限り毎日取り組み取り組んだ内容をREADMEに記述していきます

<details>
<summary>Day1</summary>

### 内容
簡単なtodoアプリの機能
### 作業時間
30分
### 実装できたもの
- ListViewの表示
- タスクの追加
- タスクをスワイプで削除
- タスクの選択

</details>

<details>
<summary>Day2</summary>

### 内容
選択状態を持つシンプルなカウンターの実装
### 作業時間
5分
### 実装できたもの
- カウンター用のModel（Counter）の定義
- ボタンタップで数値を増加
- 数値タップによる選択状態の切り替え
- 選択状態に応じた表示の変化（色の変更）
- 状態に応じて処理を分岐するUIロジックの実装

</details>


<details>
<summary>Day3</summary>

### 内容
SwiftUI の Stepper を用いた数値操作の実装
### 作業時間
5分
### 実装できたもの
- SwiftUI の Stepper を使った数値の増減
- UI コンポーネントを使ったインタラクションの実装
  
</details>

<details>
<summary>Day4</summary>

### 内容
初歩的なhttp通信による生データの表示
### 作業時間
10分
### 実装できたもの
- URLSessionによるhttp通信
- 返ってきたjsonデータのデコード
- デコードしたデータの表示
  
</details>

<details>
<summary>Day5</summary>

### 内容
配列データに対する検索機能の実装
### 作業時間
15分
### 実装できたもの
- 検索機能の実装
- 検索バーの位置の変更
  
</details>

<details>
<summary>Day6</summary>

### 内容
TabView を用いた複数画面構成の実装
### 作業時間
5分
### 実装できたもの
- TabView を用いた2画面構成
- `.tabItem` によるタブアイコンとタイトルの設定

</details>


<details>
<summary>Day7</summary>

### 内容
TabView を基盤とした状態共有とお気に入りフィルター機能の実装

### 作業時間
60分

### 実装できたもの
- 親Viewで状態を一元管理
- `@Binding` を用いた子Viewへの状態の受け渡し
- Listによる要素単位の状態変更
- お気に入りの切り替え機能
- `filter` を用いたお気に入り表示ロジック
- 計算プロパティを用いたデータの動的絞り込み

### 学び
- @Bindingなどにより外部から渡される値に依存するデータは、初期化時ではなく描画時に計算する必要がある(初期化強いは参照できないため)ため、計算プロパティでの定義が適切でる。

</details>

<details>
<summary>Day8</summary>

### 内容
外部API（agify）を用いた非同期通信とJSONデコードの実装

### 作業時間
100分

### 実装できたもの
- URLRequest を用いたGETリクエストの作成
- URLSession.shared による非同期通信（async/await）
- JSONDecoder を用いた Codable デコード処理
- APIレスポンスを struct（AgeResponse）にマッピング
- 取得結果を @State に反映させてUIへ表示

### 学び
- URLリクエストは構造体であり、送信内容についてのみを扱い、送信そのものは行わない
- .sharedはデフォルト設定の共有URLSessionインスタンスを使う仕組み(タイムアウトの時間やCookieを保存するか、キャッシュを使うかなどの設定を共有している）
- apiを叩く流れ：エンドポイントの定義->リクエストの定義->リクエストを送信するメソッドの定義->レスポンスを受信するメソッドの定義->レスポンスをデコードする->マッピング(デコード)->モデルとして使用
- URLSession.shared.data(fof:request)は送受信をセットで行えるメソッド
- エラーハンドリングしていくことが必要

</details>
