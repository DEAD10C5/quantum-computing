import boto3
from braket.aws import AwsDevice
from braket.circuits import Circuit

device = AwsDevice("arn:aws:braket:::device/quantum-simulator/amazon/sv1")
s3_folder = ("amazon-braket-Your-Bucket-Name", "folder-name") # Use the S3 bucket you created during onboarding

bell = Circuit().h(0).cnot(0, 1)
task = device.run(bell, s3_folder, shots=100)
print(task.result().measurement_counts)
