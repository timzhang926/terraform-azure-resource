
all: init plan apply

init:
	terraform init -upgrade

plan:	
	terraform plan -out main.tfplan

apply:
	terraform apply main.tfplan

destroy:
	terraform plan -destroy -out main.destroy.tfplan

git-push:
	git pull && git add -A && git commit -m "Update" && git push -o ci.skip

