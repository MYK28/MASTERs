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
管理者がスタッフに向けて業務連絡や過去の連絡事項の変更点などを投稿し、それを確認したスタッフが各自チェックを行うことで誰がどこまで把握しているのかを確認できる連絡管理アプリです。管理者だけでなく、スタッフにとっても未チェックの情報を一度に確認できることで把握漏れを防ぐことや、各連絡へのコメント機能を使用して管理者への質問を行うことができます。
既読かどうか確認できるメッセージアプリなども存在しますが、それだけでは残りの未チェックの人までを把握することは難しく、管理者側にとって確認を行う時間と労力が大きな負担となることから、情報伝達とその確認により特化したアプリを作成しました。



### サイトテーマ
日々の連絡を「正しく」「確実に」伝達する連絡管理アプリ


### 作成の背景
レストランで22名のスタッフをマネジメントしていた際に感じた情報伝達の難しさを解消したいと思い作成しました。シフト制の職場では人によって働く日数が異なるため、2週間に1度しか出勤しないスタッフは出勤した日に2週間分の情報を把握しなければならず、理解に時間がかかってしまったり把握の漏れが目立っていました。また、2週間分の連絡事項の中でも後から情報がアップデートされることで、どれが最新であるか分かりづらいことも誤認識を引き起こす原因となっており、情報の共有不足によって引き起こされるミスを防ぎたいと考えたことがきっかけです。
管理者側の課題としては各スタッフがどれくらい把握できているかの指標がないために連絡を何度も行ってしまうなど、２度手間３度手間が多発していたことから、業務の効率化を図るためにも情報連絡に特化したアプリを作成したいと考えMASTERsを制作しました。

### ターゲットユーザ
特定多数の相手を管理する立場の人

### 主な利用シーン
複数の相手に向けて連絡を行うとき
過去に投稿した連絡の紐付けによる情報の変更点を相手に伝えたいとき
誰がどのくらい把握してるのか確認したいとき

## 設計書


## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1tgeQV8z7OhbchBoVh_remVqJHYZ1D6R1DJseSlaHsEg/edit?usp=sharing>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9