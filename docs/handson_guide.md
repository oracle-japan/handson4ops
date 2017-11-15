# ハンズオン手順概要

### DEVCSのgitリポジトリからリソースをローカルにダウンロードする

|作業者     |作業目的                                       |
|:---       |:---                                           |
|運用者(Ops)|ローカル端末からコードを修正する準備を行います |

NetBeans を開いて、Team > Git > Cloneを選択

![](./img2/1-clone.PNG)

Clone Repository設定画面で以下の値を入力します。

- Repository URL: 別紙にてご案内した文字列を入力してください
- User: 別紙にてご案内した文字列を入力してください
- Password: 別紙にてご案内した文字列を入力してください
- Save Password: チェックオンにする

![](./img2/1-1clone.PNG)

![](./img2/1-2clone.PNG)

![](./img2/1-3clone.PNG)

![](./img2/1-4clone.PNG)


### 自動デプロイ用のシェルスクリプトを作成する

|作業者 |作業目的   |
|:---   |:---       |
|運用者(Ops)|開発者が作成したアプリケーションを実行環境(ACCS,DBCS)にデプロイするためのスクリプトを作成し、Developer Cloud上のGitリポジトリへのプッシュを行います。|

+ 左ペインの表示をProjectからFileに変更する

![](./img2/2-1create_shell.PNG)

+ shフォルダに別途にてご配布した下記ファイルを追加する

![](./img2/2-3create_shell.PNG)

+ シェルファイル

![](./img2/2-4create_shell.PNG)

+ デプロイオプションを定義するJSONファイル

![](./img2/2-5create_shell.PNG)

+ SQLファイル（テーブル削除（存在すれば）、テーブル作成、データ導入用）

![](./img2/2-6-1create_shell.PNG)

+ ローカルリポジトリにコミットする

  EmployeeRESTAppを右クリック > Git > コミット

![](./img2/2-7-1create_shell.PNG)

![](./img2/2-7create_shell.PNG)

+ リモート(DEVCS)リポジトリにプッシュする

  EmployeeRESTAppを右クリック > Git > リモート > プッシュ

![](./img2/2-8-1create_shell.PNG)

![](./img2/2-8create_shell.PNG)

![](./img2/2-9create_shell.PNG)

![](./img2/2-10create_shell.PNG)

+ DEVCSで新しくコミットしたリソースを確認する

![](./img2/2-11create_shell.PNG)

### ブランチ及びタグを切る

|作業者     |作業目的   |
|:---       |:---       |
|運用者(Ops)|環境設定用スクリプトのコミットが完了した時点でタグを切り、アプリケーションのリリースポイントを作成し、Developer Cloud上のGitリポジトリに登録します。|

+ Git リポジトリ・ブラウザ > firstdemo > 分岐 > ローカル > masterを右クリック > 分岐の作成

![](./img2/3-1create_branch.PNG)

Create Branch画面で以下の値を入力します。

  - Branch Name: v1.0.0

![](./img2/3-2create_branch.PNG)

+ リモート(DEVCS)リポジトリにプッシュする

  Git リポジトリ・ブラウザ  > firstdemoを右クリック > リモート > プッシュ

![](./img2/3-3-1create_branch.PNG)

![](./img2/3-3create_branch.PNG)

![](./img2/3-4create_branch.PNG)

![](./img2/3-5create_branch.PNG)

![](./img2/3-6create_branch.PNG)

+ DEVCSでブランチを確認する

![](./img2/3-7create_branch.PNG)

+ Git リポジトリ・ブラウザ  > 分岐 > ローカル > v1.0.0を右クリック > タグの作成

![](./img2/4-1create_tag.PNG)

Create Tag画面で以下の値を入力します。

- Tag Name: v1.0.0-ST
- Revision: v1.0.0

![](./img2/4-2create_tag.PNG)

+ リモート(DEVCS)リポジトリにプッシュする

  Git リポジトリ・ブラウザ  > firstdemoを右クリック > リモート > プッシュ

![](./img2/4-3create_tag.PNG)

![](./img2/4-4create_tag.PNG)

![](./img2/4-5create_tag.PNG)

![](./img2/4-6create_tag.PNG)

+ DEVCSでタグを確認する

![](./img2/4-7create_tag.PNG)

### DEVCSでリソースをビルドする

|作業者     |作業目的   |
|:---       |:---       |
|運用者(Ops)|アプリケーションのコンパイル・実行環境へのデプロイを行なうビルドジョブの定義を行います。|

+ DEVCSのメニューからBuildを選択し、New Jobボタンをクリックする

![](./img2/5-1create_build.PNG)

+ 名前を入力する
  - Job Name:FirstDemoJob

![](./img2/5-2create_build.PNG)

+ ビルド手順は下図によって設定する

    Mainタブを選択し、下記の値を入力します。

    - Name:FirstDemoJob
    - JDK:JDK8

![](./img2/5-3create_build.PNG)

    BuildParametersタブには何も入力しません。

![](./img2/5-4create_build.PNG)

    Source Controlタブを選択し、下記の値を入力します。

    - Source Control Option: Git
    - Repository: firstdemo.git
    - Name: origin
    - Reference Spec: +refs/heads/\*:refs/remotes/origin/\*
    - Branches: v1.0.0

![](./img2/5-5create_build.PNG)

    Triggersタブを選択し、下記の値を入力します。

    - Based on SCM polling scheduleをチェックする

![](./img2/5-6create_build.PNG)

    Environmentタブには何も入力しません。

![](./img2/5-7create_build.PNG)

    Build Stepタブを選択し、Add Build Stepをクリックし、invoke Maven 3を追加します。

![](./img2/5-8create_build.PNG)

    invoke Maven 3のオプションをそのままにします。

![](./img2/5-9create_build.PNG)

    同じく、Add Build Stepをクリックし、Excute Shellを追加し、commandに下記を入力します。

    cd sh
    chmod 777 deploy.sh
    ./deploy.sh

![](./img2/5-10create_build.PNG)

    同じく、Add Build Stepをクリックし、invoke SQLclを追加します。

![](./img2/5-11create_build.PNG)

    Invoke SQLclに下記を入力します。

    - Username: 別紙にてご案内した文字列を入力してください
    - Password: 別紙にてご案内した文字列を入力してください
    - Connect String: 別紙にてご案内した文字列を入力してください
    - SQL File Path: ./sh/DBDataImport.sql

![](./img2/5-12create_build.PNG)

    Post Buildタブを選択し、下記の値を入力します。

    - Archive the artifactsをチェックする
    - Files To Archive: target/EmployeeRESTApp-1.0-dist.zip

![](./img2/5-13create_build.PNG)

    Advancedタブには何も入力しません。

![](./img2/5-14-1create_build.PNG)

    Saveを押して設定内容を保存する。

![](./img2/5-14create_build.PNG)

+ 「Build Now」ボタンをクリックする(ACCSインスタンを新規作成して，プロジェクトをデプロイメントする)

![](./img2/5-15create_build.PNG)

![](./img3/6-1_build.PNG)

+ 出力ログを確認する

![](./img3/6-3_build.PNG)

![](./img3/6-4_build.PNG)

+ DBテーブルを削除して（存在すれば）、新テーブルを作って、データを導入する

![](./img3/6-5_build.PNG)

+ ビルド後の状態確認

![](./img3/6-6_build.PNG)

### 作成したACCSインスタンスを確認する

|作業者     |作業目的   |
|:---       |:---       |
|運用者(Ops)|ジョブによってデプロイされたアプリケーションが正常に稼働している事を確認します。|

+ ACCS作成時間とプロジェクトデプロイメント時間は同じ

![](./img3/7-1_confirm.PNG)

![](./img3/7-2_confirm.PNG)

![](./img3/7-3_confirm.PNG)

+ デプロイメントプロジェクトを確認する

![](./img3/7-6_confirm.PNG)

![](./img3/7-7_confirm.PNG)

![](./img3/7-8_confirm.PNG)

### DEVCSにISSUEを登録する

|作業者     |作業目的   |
|:---       |:---       |
|運用者(Ops)|アプリケーション確認中に画面不具合があるため、開発者(Dev)に連絡するためにDeveloper Cloud上でIssueの登録を行います。|

![](./img3/8-1_Create_issue.PNG)

New Issue画面で下記の値を入力します。

- Summary: 画面表示不正
- Description: http://127.0.0.1:8080/テキストボックス表示が不正。削除してください。
- Release: 0.0.1
- Owner: Cloud Admin

![](./img3/8-2_Create_issue.PNG)

![](./img3/8-3_Create_issue.PNG)

### ローカルリソースを修正して、リモート(DEVCS)リポジトリにプッシュする

|作業者     |作業目的   |
|:---       |:---       |
|開発者(Dev)|登録されたIssueを確認し、ソースコードを修正してDeveloper Cloud上のGitリポジトリにプッシュを行います。|

+ 間違ったリソースを削除する(src/main/resources/client.html)

![](./img3/10-1_modify_source.PNG)

+ ローカルリポジトリにコミットする

![](./img3/10-2_modify_source.PNG)

+ リモート(DEVCS)リポジトリにプッシュする

![](./img3/10-3_modify_source.PNG)

![](./img3/10-5_modify_source.PNG)

![](./img3/10-5-2_modify_source.PNG)

+ DEVCSは新リソースを発見しましたら、自動ビルドする

![](./img3/10-6_modify_source.PNG)

![](./img3/10-7_modify_source.PNG)

### ACCSインスタンス側で新プロジェクトを確認する

|作業者     |作業目的   |
|:---       |:---       |
|運用者(Ops)|開発者(Dev)が修正を行ったソースコードのプッシュをトリガーとして、ACCS上にデプロイされた修正済みアプリケーションの確認を行います。|

+ デプロイメント時間が変わりました

![](./img3/11-1_confirm.PNG)

+ 修正した部分を正しく表示しました(赤枠内の部分を削除しました)

![](./img3/11-4_confirm.PNG)
