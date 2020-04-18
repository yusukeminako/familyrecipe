## README
## NAME
Family recipe 〜料理代行会社のサイト〜

## FAMILYRECIPEとは
料理の代行サービスの情報を発信する為のページである。SNSでの情報発信がメインであるが、ホームページを作成することで新たな顧客層にFAMILRECIPE知っていただきたいとの想いでこのページを作成。実際に私の妻が始めた事業である。

## デプロイ先
https://familyrecipe05.herokuapp.com/

## ページ紹介
・TOP<br>
・会社概要<br>
・新着情報<br>
・Instaglam<br>
・レシピ<br>
・お問い合わせ<br>

情報発信をメインとしたサイトである。<br>
お問い合わせフォームでユーザーが情報入力ができるようになっている。<br>

## お問い合わせフォームについて
お問い合わせフォームは正規表現でバリデーションしている。<br>
・名前、電話番号、メールアドレスの入力がないと[*○○は必須です。]<br>
・名前半角数字があるとき、[*名前に半角数字を含んではいけません。]<br>
・電話番号10桁または11桁以外の場合、[*10桁または11桁の半角数字で入力お願いします。]<br>
・メールアドレス(/^(0[5-9]0[0-9]{8}|0[1-9][1-9][0-9]{7})$/)以外とき[*メールアドレスが正しくありません]<br><br>
お問い合わせフォームで情報を入力後、確認画面に遷移するようになっている。確認画面の実装にはsessionを使ってデータの保持をし、確認画面でsessionのデータを呼び出し、入力情報を表示している。


## Demo
お問い合わせフォーム</br>
![Image from Gyazo](https://i.gyazo.com/df08e2e1e4777e3826d278f2bb684190.gif)<br>
Instaglam<br>
![Image from Gyazo](https://i.gyazo.com/e426c85e2cd43f42173b2ce51bc014af.jpg)

## contactsテーブル
|Column|Type|Options|<br>
|------|----|null: false|<br>
|name|text|null: false|<br>
|tel|text|null: false|<br>
|mail|text|null: false|<br>
|content|text||

## 使用したgem
gem 'rails', '~> 5.2.3'<br>
gem 'mysql2', '>= 0.4.4', '< 0.6.0'

## 今後の実装について
・本番環境のデータベース設定ができていないのでその部分の設定を完成させる<br>
*本番環境はHerokuを使用
