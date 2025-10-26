Perfect! Here's your **README** updated with **Terraform and GitHub Actions badges** to make it more professional:

---

# 💰 Mini Finance - Personal Budget Tracker

A beautiful, responsive personal finance dashboard deployed with **Ansible** on **Azure**.

![Status](https://img.shields.io/badge/Status-Production_Ready-success)
![Ansible](https://img.shields.io/badge/Ansible-2.16-red)
![Azure](https://img.shields.io/badge/Platform-Azure-blue)
![Terraform](https://img.shields.io/badge/Terraform-1.13.4-green)
![CI/CD](https://img.shields.io/github/actions/workflow/status/lakunzy7/ansible-mini-finance/deploy.yml?branch=main)

---

## 🎯 Features

* 📊 **Financial Dashboard**: Track income, expenses, savings, and budget in real-time
* 📋 **Transaction History**: Monitor all your financial activities
* 🎨 **Modern Design**: Beautiful purple gradient UI with smooth animations
* 📱 **Responsive**: Works perfectly on all devices
* ⚡ **Lightning Fast**: Pure HTML/CSS - no backend overhead

---

## 🚀 Quick Deploy

### Prerequisites

* Ansible 2.9+
* Terraform 1.0+
* Azure subscription
* SSH key pair

### Deploy in 3 Steps

```bash
# 1. Clone the repository
git clone https://github.com/lakunzy7/ansible-mini-finance.git
cd ansible-mini-finance

# 2. Deploy infrastructure with Terraform
cd terraform
terraform init
terraform apply
# Note: Save the public IP from terraform output

# 3. Update Ansible inventory with your server IP
cat > ../ansible/inventory.ini <<EOL
[web]
finance ansible_host=YOUR_SERVER_IP

[web:vars]
ansible_user=azureuser
ansible_ssh_private_key_file=~/.ssh/id_ed25519
ansible_python_interpreter=/usr/bin/python3
EOL

# 4. Deploy application with Ansible
cd ../ansible
ansible-playbook site.yml
```

**That's it! Visit `http://YOUR_SERVER_IP` 🎉**

---

## 📁 Project Structure

```text
ansible-mini-finance/
├── ansible/
│   ├── ansible.cfg
│   ├── inventory.ini
│   └── site.yml
├── git/
│   ├── LICENSE
│   └── README.md
└── terraform/
    ├── main.tf
    ├── outputs.tf
    ├── provider.tf
    ├── terraform.tfstate
    ├── terraform.tfstate.backup
    ├── terraform.tfvars
    └── variables.tf
```

---

## 🎨 Dashboard Preview

### Metrics Cards

* 💰 **Total Income**: $5,420/month
* 💸 **Total Expenses**: $3,180/month
* 💵 **Savings**: $2,240
* 🎯 **Budget Status**: 59% utilized

### Transaction Table

View recent transactions with:

* Date and description
* Category classification
* Color-coded amounts

---

## 🛠️ Tech Stack

| Component      | Technology       |
| -------------- | ---------------- |
| Frontend       | HTML5, CSS3      |
| Web Server     | Nginx            |
| Deployment     | Ansible          |
| Infrastructure | Azure, Terraform |
| OS             | Ubuntu 22.04 LTS |

---

## 📝 Playbook Details

The **Ansible playbook** performs:

1. ✅ System preparation and updates
2. ✅ Nginx installation
3. ✅ Application deployment (Git clone / copy)
4. ✅ Service configuration and auto-reload
5. ✅ Health verification

### Idempotency

```bash
ansible-playbook site.yml
# First run: changed=3
# Second run: changed=0 ✅
```

---

## 🧪 Testing

```bash
# Test HTTP response
curl -I http://YOUR_SERVER_IP

# Verify content
curl http://YOUR_SERVER_IP | grep "Mini Finance"

# Check nginx status
ansible web -m systemd -a "name=nginx" --become
```

---

### Update Financial Data

Modify the dashboard values and transaction table in `files/index.html`

---

## 📊 Azure Resources

* **VM Size**: Standard_B2s (2 vCPU, 4GB RAM)
* **Storage**: 30GB Standard SSD
* **Region**: East US
* **Cost**: ~€0.02/hour

---

## 🎓 What I Learned

* ✅ Terraform VM provisioning and NSG rules
* ✅ Ansible playbook design patterns
* ✅ File deployment with `copy` module
* ✅ Idempotent configuration management
* ✅ URI module for health checks

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a Pull Request

---

## 📄 License

MIT License – Free to use for learning and personal projects

---

## 🙏 Acknowledgments

Built as part of **DMI DevOps learning journey**.

## 📚 Resources

* [Terraform Azure Provider Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
* [Azure Virtual Network Overview](https://learn.microsoft.com/en-us/azure/virtual-network/)
* [Ansible Ad-Hoc Commands](https://docs.ansible.com/ansible/latest/cli/ansible.html)

---

*Author:* Owofola Olakunle (Lakunzy)

*Project Type:* DevOps Infrastructure Automation

*Platform:* Microsoft Azure (Free Tier)

*Date:* October 2025

*Channel:* [CyberLab Chronicles on YouTube](https://www.youtube.com/@CyberLabChronicles)
