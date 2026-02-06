#DigitalOcean API token
do_token = ""

#Suffix that will get appended to harbor to generate the dns record. Your name for example.
instance_suffix = ""

#Password for Harbor, the script runs sed commands, so avoid using characters that may collide with it
harbor_password = ""

#Email needs to be valid, otherwise certbot will fail
email = ""

#Adjust to a current version of Docker. Tested on 27.3
docker_version = "27.3"

#DigitalOcean region
region = "fra1"

#Instance size
size = "s-4vcpu-8gb"

#Image to be used. This was tested on "ubuntu-20-04-x64". If you use any other OS, you will need to adapt the commands on the "files/harbor-configuration.sh" configuration file to that particular OS.
image = "ubuntu-24-04-x64"

#DigitalOcean Domain
digitalocean_domain = ""

# ssh_keys = [ "your_key_id" ]
# Retrieve using (max 200 keys in account): `curl -s -X GET -H "Content-Type: application/json" -H "Authorization: Bearer $DIGITALOCEAN_TOKEN" "https://api.digitalocean.com/v2/account/keys?per_page=200"  | jq -r '.ssh_keys[] | select(.name=="YOUR_KEY_NAME") | .id'`
# If you have more than 200 keys in your account, use: `doctl -t $DIGITALOCEAN_TOKEN compute ssh-key list | grep YOUR_KEY_NAME | awk '{ print $1 }'`
ssh_keys = [ ]
