aws iam create-role --role-name lambda-ex --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy --role-name lambda-ex --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

zip function.zip test.py

aws lambda create-function --function-name lmabda-test \
--zip-file fileb://function.zip --handler test.handler --runtime python3.7 \
--role arn:aws:iam::104871657422:role/lambda-ex


aws lambda delete-function --function-name lmabda-test