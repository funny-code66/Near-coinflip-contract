COMMAND:
near login
y

COMMAND:
near create-account coinflip.invoker113.testnet --masterAccount invoker113.testnet --initialBalance 10

RESULT:
Saving key to '/home/ubuntu/.near-credentials/testnet/coinflip.invoker113.testnet.json'
Retrying request to broadcast_tx_commit as it has timed out [
  'EgAAAGludm9rZXIxMTMudGVzdG5ldABOW/IVGclpWocWQ3nxOMUBYLQNiZrvh3XCjO20XZQjgEH3blkJUQAAGwAAAGNvaW5mbGlwLmludm9rZXIxMTMudGVzdG5ldIcdBZdgeflBVnEA3EM54UZUvBGwb+FgLlMi7SzwzartAwAAAAADAAAASkgBFBaVRQgAAAAAAAUAMzjxaMB3KeYcaD0KyMS1W/pX834Kx2n0RUoHLK4w/JsAAAAAAAAAAAEAuzpwkOotYYeAHZPJO2zrh8LenucGiEBWjSPFueIvAbVNNFZw3L3v0DL+cgEb+SsMLdllMIhXd5ZI7NaK6B8RAw=='
]
Account coinflip.invoker113.testnet for network "testnet" was created.

COMMAND:
NFT_CONTRACT_ID=dev-1651693593091-53120347380265
MAIN_ACCOUNT=invoker113.testnet

COMMAND:
echo $NFT_CONTRACT_ID
echo $MAIN_ACCOUNT

COMMAND:
near dev-deploy --accountId $NFT_CONTRACT_ID --wasmFile res/coin_flip.wasm
RESULT:
Starting deployment. Account id: dev-1651693593091-53120347380265, node: https://rpc.testnet.near.org, helper: https://helper.testnet.near.org, file: res/coin_flip.wasm
Transaction Id EUrTVVqT18KtJ9DaG819y7vgzSof3bvPjYu3Qj3xBj5
To see the transaction in the transaction explorer, please open this url in your browser
https://explorer.testnet.near.org/transactions/EUrTVVqT18KtJ9DaG819y7vgzSof3bvPjYu3Qj3xBj5
Done deploying to dev-1651693593091-53120347380265

COMMAND:
near call dev-1651693593091-53120347380265 new '{"owner_id": "invoker113.testnet"}' --accountId invoker113.testnet

near call dev-1651698991169-63286900714466 withdraw '{"to":"longc3505.testnet", "amount":100000000000000000}' --accountId longc3505.testnet

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
