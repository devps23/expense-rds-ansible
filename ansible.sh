rm -f ~/*.json
vault_token=$1
component=$2
env=$3
pip install hvac
ansible-playbook get-secrets.yml -e vault_token=$vault_token -e component_name=$component -e env=$env
ansible-playbook -i ${component}-${env}.pdevops72.online, expense.yml -e component_name=$component -e env=$env -e '@~/secrets.json' -e '@~/app.json'
rm -f ~/*.json




