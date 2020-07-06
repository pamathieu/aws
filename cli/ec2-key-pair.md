###### **File Content:** 
AWS ec2 create-key-pair \
--key-name dev-test-key \
--tag-specifications 'ResourceType=key-pair,Tags=[{Key=Owner,Value=WebDevCorp}]'

**Command to run:**
./ec2-key-pair.sh 


**Output**
 "KeyMaterial": "-----BEGIN RSA PRIVATE KEY-----G E N E R A T E D   P R I V A T E   K E Y   W A S  H E R E-----END RSA PRIVATE KEY-----",
    "KeyName": "dev-test-key",
    "KeyPairId": "key-07ef329e14538600d",
    "Tags": [
        {
            "Key": "Owner",
            "Value": "WebDevCorp"
        }
    ]
}

Also, run "aws ec2 describe-key-pairs" to find all the key-pairs:


The Key pair Id "**key-07ef329e14538600d**" will be used in all the created instances  


###### Pricing: 
No cost for ssh key-pairs

###### Limit: 
You can have up to five thousand key pairs per Region. 