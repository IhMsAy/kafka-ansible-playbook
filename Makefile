.PHONY: deps lint deploy verify

deps:
	ansible-galaxy collection install -r requirements.yml

lint:
	yamllint .
	ansible-playbook site.yml --syntax-check

deploy:
	ansible-playbook site.yml --ask-vault-pass

verify:
	ansible-playbook verify.yml --ask-vault-pass

