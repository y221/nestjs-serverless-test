## 手順メモ
任意の場所でディレクトリを作成(sls_sample)  
docker上でやる場合、remote-containerの拡張いれておくと楽  
dockerfileをもとにコンテナ起動してなかに入る  
（ファイル作る系は全部資材あげてるのでそれを参照）

npmモジュールインストール
```
npm install -g serverless
```
serverless frameworkのconfig設定
```
serverless config credentials --provider aws --key ｛key｝ --secret {secret-key}
```
キーが設定されていることを確認
```
cat ~/.aws/credentials
```
nestを作成
```
npx nest new .
```
必要なモジュールをインストール
```
npm i -S aws-lambda aws-serverless-express express
npm i -D @types/aws-serverless-express serverless-layers
```
サーバー処理部分
```
cd src
touch handler.ts
```
aws側の設定など
```
touch serverless.yml
```
デプロイ
```
npm run deploy:dev
```
デプロイされたオブジェクトを全消し
```
serverless remove -v
```
