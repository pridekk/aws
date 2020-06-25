import boto3
import json
import time
import datetime

bucket = 'spec-news-test' 
key = '2020-06-23/201812220006021801_201912181326161001.json'
s3 = boto3.client('s3')

obj = s3.get_object(Bucket=bucket, Key=key)