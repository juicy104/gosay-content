# Gosay Content

Gosay の phrase コンテンツを管理する公開リポジトリです。

この repo では `content/` 配下のフレーズとインデックスを編集します。
アプリ本体の UI やデプロイ設定は別リポジトリで管理します。

## Directory Layout

```text
content/
  phrases/
    001-sample.md
  phrases-index.md
```

## Local Workflow

最低限の整合性確認は次のコマンドで行えます。

```bash
./scripts/validate-content.sh
```

## Sync To App Repo

この repo は、GitHub Actions でアプリ本体 repo の `content/` を更新する想定です。

ワークフローを有効にするには、GitHub 側で次を設定してください。

- Secret: `GOSAY_APP_SYNC_TOKEN`
- Variable: `GOSAY_APP_REPOSITORY`
  - 例: `juicy104/gosay`
- Variable: `GOSAY_APP_BRANCH`
  - 例: `main`

## Contribution

Issue や PR での提案を歓迎します。

- フレーズの追加
- 説明や表現の改善
- 誤字や不自然な表現の修正
