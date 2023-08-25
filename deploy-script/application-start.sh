
cd /home/ubuntu/

data=`aws secretsmanager get-secret-value     --secret-id MongoSec`

export username=$(echo $data | jq -r '.SecretString' | jq -r '.username')

export password=$(echo $data | jq -r '.SecretString' | jq -r '.password')


chmod 400 key.pem

ansible-playbook provision.yml
