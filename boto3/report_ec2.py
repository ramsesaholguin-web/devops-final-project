import boto3

ec2 = boto3.client('ec2')

response = ec2.describe_instances()

total = 0

for reservation in response['Reservations']:
    for instance in reservation['Instances']:
        total += 1

print(f"Total de instancias EC2: {total}")