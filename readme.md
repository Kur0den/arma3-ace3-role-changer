# ACE3 ロール変更スクリプト

Arma 3のACE3 MODでユニットのロールをユーザーが動的に変更するためのスクリプトです

## 機能

- プレイヤーユニットのACE3ロールをゲーム中に変更可能
- メディックとエンジニアに対応
- フラグを踏むことで実行されるバージョンとSelf Actionsメニューから実行できるバージョンを用意


## 使用方法

### フラグVer
1. このレポジトリを`ミッションフォルダ/scripts`にクローン
2. `description.ext`をミッションフォルダ直下にコピー
3. ミッション内にフラグを配置
  - `Activation`: `Any Player`
  - `Repeatable`: `True`
4. フラグの`On Activation`に以下を記述
  - `Medic`
    ```sqf
    [thisList] execVM "scripts\arma3-ace3-role-changer\Flag-medic.sqf";
    ```
  - `Engineer`
    ```sqf
    [thisList] execVM "scripts\arma3-ace3-role-changer\Flag-engineer.sqf";
    ```
4. 楽しむ

### Self Actions menu Ver
1. `description.ext`と`initPlayerLocal.sqf`をミッションフォルダ直下に配置
2. 楽しむ


## 依存関係

- Arma 3
- ACE3 MOD

## ライセンス

MIT License
