# ハンズオン手順概要

### DEVCSのgitリポジトリからリソースをローカルにダウンロードする  
NetBeans を開いて、Team > Git > Cloneを選択
![](./img2/1-clone.PNG)

Clone Repository設定画面で以下の値を入力します。
  ➖Repository URL: 別紙にてご案内した文字列を入力してください
  ➖User: 別紙にてご案内した文字列を入力してください
  ➖Password: 別紙にてご案内した文字列を入力してください
  ➖Save Password: チェックオンにする
![](./img2/1-1clone.PNG)
![](./img2/1-2clone.PNG)
![](./img2/1-3clone.PNG)
![](./img2/1-4clone.PNG)
### 自動デプロイ用のシェルスクリプトを作成する  
+ 左ペインの表示をProjectからFileに変更する
  ![](./img2/2-1create shell.PNG)

+ shフォルダに別途にてご配布した下記ファイルを追加する
  ![](./img2/2-3create shell.PNG)

+ シェルファイル
  ![](./img2/2-4create shell.PNG)

+ デプロイオプションを定義するJSONファイル
  ![](./img2/2-5create shell.PNG)

+ SQLファイル（テーブル削除（存在すれば）、テーブル作成、データ導入用）
  ![](./img2/2-6-1create shell.PNG)

+ ローカルリポジトリにコミットする
  EmployeeRESTAppを右クリック > Git > コミット
  ![](./img2/2-7-1create shell.PNG)
  ![](./img2/2-7create shell.PNG)

+ リモート(DEVCS)リポジトリにプッシュする
  EmployeeRESTAppを右クリック > Git > リモート > プッシュ
  ![](./img2/2-8-1create shell.PNG)
  ![](./img2/2-8create shell.PNG)
  ![](./img2/2-9create shell.PNG)
  ![](./img2/2-10create shell.PNG)

+ DEVCSで新しくコッミトしたリソースを確認する
  ![](./img2/2-11create shell.PNG)

### ブランチ及びタグを切る  
+ Git リポジトリ・ブラウザ > firstdemo > 分岐 > ローカル > masterを右クリック > 分岐の作成
  ![](./img2/3-1create branch.PNG)

  Create Branch画面で以下の値を入力します。
  ➖Branch Name: v1.0.0
  ![](./img2/3-2create branch.PNG)

+ リモート(DEVCS)リポジトリにプッシュする
  Git リポジトリ・ブラウザ  > firstdemoを右クリック > リモート > プッシュ
  ![](./img2/3-3-1create branch.PNG)
  ![](./img2/3-3create branch.PNG)
  ![](./img2/3-4create branch.PNG)
  ![](./img2/3-5create branch.PNG)
  ![](./img2/3-6create branch.PNG)

+ DEVCSでブラントを確認する
  ![](./img2/3-7create branch.PNG)

+ Git リポジトリ・ブラウザ  > 分岐 > ローカル > v1.0.0を右クリック > タグの作成
  ![](./img2/4-1create tag.PNG)
  Create Tag画面で以下の値を入力します。
  ➖Tag Name: v1.0.0-ST
  ➖Revision: v1.0.0

  ![](./img2/4-2create tag.PNG)

+ リモート(DEVCS)リポジトリにプッシュする
  Git リポジトリ・ブラウザ  > firstdemoを右クリック > リモート > プッシュ
  ![](./img2/4-3create tag.PNG)
  ![](./img2/4-4create tag.PNG)
  ![](./img2/4-5create tag.PNG)
  ![](./img2/4-6create tag.PNG)

+ DEVCSでタグを確認する
  ![](./img2/4-7create tag.PNG)

### DEVCSでリソースをビルドする  
+ DEVCSのメニューからBuildを選択し、New Jobボタンをクリックする
  ![](./img2/5-1create build.PNG)

+ 名前を入力する

  ➖Job Name:FirstDemoJob![](./img2/5-2create build.PNG)

+ ビルド手順は下図によって設定する

    Mainタブを選択し、下記の値を入力します。
    ➖Name:FirstDemoJob
    ➖JDK:JDK8
    ![](./img2/5-3create build.PNG)

    BuildParametersタブには何も入力しません。
    ![](./img2/5-4create build.PNG)

    Source Controlタブを選択し、下記の値を入力します。
    ➖Source Control Option: Git
    ➖Repository: firstdemo.git
    ➖Name: origin
    ➖Reference Spec: +refs/heads/\*:refs/remotes/origin/\*
    ➖Branches: v1.0.0

    ![](./img2/5-5create build.PNG)

    Triggersタブを選択し、下記の値を入力します。
    ➖Based on SCM polling scheduleをチェックする
    ![](./img2/5-6create build.PNG)

    Environmentタブには何も入力しません。
    ![](./img2/5-7create build.PNG)

    Build Stepタブを選択し、Add Build Stepをクリックし、invoke Maven 3を追加します。
    ![](./img2/5-8create build.PNG)

    invoke Maven 3のオプションをそのままにします。
    ![](./img2/5-9create build.PNG)

    同じく、Add Build Stepをクリックし、Excute Shellを追加し、commandに下記を入力します。
    cd sh
    chmod 777 deploy.sh
    ./deploy.sh

    ![](./img2/5-10create build.PNG)

    同じく、Add Build Stepをクリックし、invoke SQLclを追加します。
    ![](./img2/5-11create build.PNG)

    Invoke SQLclに下記を入力します。
    ➖Username: 別紙にてご案内した文字列を入力してください
    ➖Password: 別紙にてご案内した文字列を入力してください
    ➖Connect String: 別紙にてご案内した文字列を入力してください
    ➖SQL File Path: ./sh/DBDataImport.sql
    ![](./img2/5-12create build.PNG)

    Post Buildタブを選択し、下記の値を入力します。
    ➖Archive the artifactsをチェックする
    ➖Files To Archive: target/EmployeeRESTApp-1.0-dist.zip
    ![](./img2/5-13create build.PNG)

    Advancedタブには何も入力しません。
    ![](./img2/5-14-1create build.PNG)

    Saveを押して設定内容を保存する。
    ![](./img2/5-14create build.PNG)
+ 「Build Now」ボタンをクリックする(ACCSインスタンを新規作成して，プロジェクトをデプロイメントする)
  ![](./img2/5-15create build.PNG)
  ![](./img3/6-1 build.PNG)

+ 出力ログを確認する
  ![](./img3/6-3 build.PNG)
  ![](./img3/6-4 build.PNG)

+ DBテーブルを削除して（存在すれば）、新テーブルを作って、データを導入する
  ![](./img3/6-5 build.PNG)

+ ビルド後の状態確認
  ![](./img3/6-6 build.PNG)

### 作成したACCSインスタンスを確認する
+ ACCS作成時間とプロジェクトデプロイメント時間は同じ
  ![](./img3/7-1 confirm.PNG)
  ![](./img3/7-2 confirm.PNG)
  ![](./img3/7-3 confirm.PNG)

+ デプロイメントプロジェクトを確認する
  ![](./img3/7-6 confirm.PNG)
  ![](./img3/7-7 confirm.PNG)
  ![](./img3/7-8 confirm.PNG)

### DEVCSにISSUEを登録する
  ![](./img3/8-1 Create issue.PNG)

New Issue画面で下記の値を入力します。
➖Summary: 画面表示不正
➖Description: http://127.0.0.1:8080/テキストボックス表示が不正。削除してください。
➖Release: 0.0.1
➖Owner: Cloud Admin
![](./img3/8-2 Create issue.PNG)
  ![](./img3/8-3 Create issue.PNG)

### ローカルリソースを修正して、リモート(DEVCS)リポジトリにプッシュする
+ 間違ったリソースを削除する(src/main/resources/client.html)
  ![](./img3/10-1 modify source.PNG)

+ ローカルリポジトリにコミットする
  ![](./img3/10-2 modify source.PNG)

+ リモート(DEVCS)リポジトリにプッシュする
  ![](./img3/10-3 modify source.PNG)
  ![](./img3/10-5 modify source.PNG)
  ![](./img3/10-5-2 modify source.PNG)

+ DEVCSは新リソースを発見しましたら、自動ビルドする
  ![](./img3/10-6 modify source.PNG)
  ![](./img3/10-7 modify source.PNG)

### ACCSインスタンス側で新プロジェクトを確認する
+ デプロイメント時間が変わりました
  ![](./img3/11-1 confirm.PNG)

+ 修正した部分を正しく表示しました(赤枠内の部分を削除しました) 
  ![](./img3/11-4 confirm.PNG)

