<!--# README-->

<!--This README would normally document whatever steps are necessary to get the-->
<!--application up and running.-->

<!--Things you may want to cover:-->

<!--* Ruby version-->

<!--* System dependencies-->

<!--* Configuration-->

<!--* Database creation-->

<!--* Database initialization-->

<!--* How to run the test suite-->

<!--* Services (job queues, cache servers, search engines, etc.)-->

<!--* Deployment instructions-->

<!--* ...-->

# MASTERs

## サイト概要
管理者が業務連絡や過去の連絡事項の変更点などを投稿し、
それを確認したスタッフが各自チェックを行うことで誰がどこまで把握しているのかを確認できる連絡管理アプリです。
チェックの有無によって連絡を分けることで把握漏れを防ぎ、各連絡のコメント機能で管理者に直接質問を行うことができるためスタッフの疑問解消にも繋がります。
既読かどうか確認できるメッセージアプリなども存在しますが、それだけでは残りの未チェックの人までを把握することは難しく、
管理者側にとって確認を行う時間と労力が大きな負担となることから、情報伝達に特化したアプリを作成しました。



### サイトテーマ
日々の連絡を __「正しく」__ __「確実に」__ 伝達する連絡管理アプリ


### 作成の背景
レストランで22名のスタッフをマネジメントしていた際に感じた情報伝達の難しさを解消したいと思い作成しました。
シフト制の職場では人によって働く日数が異なるため、2週間に1度しか出勤しないスタッフもおり、
出勤した日に2週間分の情報を把握しなければならないことで十分に理解が出来ずミスが目立っていました。
また、2週間分の連絡事項の中でも後から情報がアップデートされることで、どれが最新であるか分かりづらいことも誤認識を引き起こす原因となっており、
情報の共有不足によって引き起こされるミスを防ぎたいと考えたことがMASTERsを作成するきっかけとなっています。


### ターゲットユーザ
特定多数の相手を管理する立場の人

### 主な利用シーン
- 複数の相手に向けて連絡を行うとき
- 過去に投稿した連絡の紐付けによる情報の変更点を相手に伝えたいとき
- 誰がどのくらい把握してるのか確認したいとき

## 設計書
- [ER図](https://drive.google.com/file/d/1Fal9Ujkk-QrWhgf-4C220bZ52zRVQxBv/view?usp=sharing)
- [テーブル定義書](https://docs.google.com/spreadsheets/d/1LBrolq5LKG2RGz3D7pPrrrtQr4juKXZeCF1ZjXyLuk0/edit?usp=sharing)
- [ワイヤーフレーム(staff)](https://drive.google.com/file/d/1fAR0Guv7OMKoSW1whaBHNKO3hz6MsBLv/view?usp=sharing)

## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1tgeQV8z7OhbchBoVh_remVqJHYZ1D6R1DJseSlaHsEg/edit?usp=sharing>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9