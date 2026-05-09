import boto3

cloudwatch = boto3.client('cloudwatch')

response = cloudwatch.list_metrics(Namespace='AWS/EC2')

for metric in response['Metrics'][:10]:
    print(metric['MetricName'])