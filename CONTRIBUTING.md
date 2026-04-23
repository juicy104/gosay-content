# Contributing

Gosay Content への Issue / PR を歓迎します。

## What To Propose

- 新しい phrase の追加
- 既存 phrase の改善
- 誤字脱字の修正

## Content Structure

`content/` 配下には次の要素があります。

- `phrases/`
- `phrases-index.md`

## Before Opening A PR

可能であれば、次を確認してください。

```bash
./scripts/validate-content.sh
```

## Notes

- アプリ本体への反映は別 repo への同期で行われる想定です
- repo 設定によっては push 後すぐに本番反映される場合があります
