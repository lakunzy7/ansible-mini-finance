# 💰 Mini Finance - Personal Budget Tracker

A beautiful, responsive personal finance dashboard deployed with Ansible on Azure.

![Status](https://img.shields.io/badge/Status-Production_Ready-success)
![Ansible](https://img.shields.io/badge/Ansible-2.16-red)
![Azure](https://img.shields.io/badge/Platform-Azure-blue)

## 🎯 Features

- 📊 **Financial Dashboard**: Track income, expenses, savings, and budget in real-time
- 📋 **Transaction History**: Monitor all your financial activities
- 🎨 **Modern Design**: Beautiful purple gradient UI with smooth animations
- 📱 **Responsive**: Works perfectly on all devices
- ⚡ **Lightning Fast**: Pure HTML/CSS - no backend overhead

## 🚀 Quick Deploy

### Prerequisites

- Ansible 2.9+
- Azure subscription
- SSH key pair

### Deploy in 3 Steps
```bash
# 1. Clone the repository
git clone https://github.com/Dudubynatur3/ansible-mini-finance.git
cd ansible-mini-finance

# 2. Update inventory with your server IP
cat > inventory.ini <<EOL
[web]
finance ansible_host=YOUR_SERVER_IP

[web:vars]
ansible_user=azureuser
ansible_ssh_private_key_file=~/.ssh/id_ed25519
ansible_python_interpreter=/usr/bin/python3
EOL

# 3. Deploy!
ansible-playbook site.yml
```

**That's it! Visit `http://YOUR_SERVER_IP` 🎉**

## 📁 Project Structure
```
ansible-mini-finance/
├── files/
│   └── index.html              # Main application
├── site.yml                    # Ansible playbook
├── inventory.ini.example       # Sample inventory
└── README.md
```

## 🎨 Dashboard Preview

### Metrics Cards
- 💰 **Total Income**: $5,420/month
- 💸 **Total Expenses**: $3,180/month  
- 💵 **Savings**: $2,240
- 🎯 **Budget Status**: 59% utilized

### Transaction Table
View recent transactions with:
- Date and description
- Category classification
- Color-coded amounts

## 🛠️ Tech Stack

| Component | Technology |
|-----------|-----------|
| Frontend | HTML5, CSS3 |
| Web Server | Nginx |
| Deployment | Ansible |
| Infrastructure | Azure |
| OS | Ubuntu 22.04 LTS |

## 📝 Playbook Details

The Ansible playbook performs:

1. ✅ System preparation and updates
2. ✅ Nginx installation
3. ✅ Application deployment
4. ✅ Service configuration
5. ✅ Health verification

### Idempotency

Run the playbook multiple times safely:
```bash
ansible-playbook site.yml
# First run: changed=3
# Second run: changed=0 ✅
```

## 🧪 Testing
```bash
# Test HTTP response
curl -I http://YOUR_SERVER_IP

# Verify content
curl http://YOUR_SERVER_IP | grep "Mini Finance"

# Check nginx status
ansible web -m systemd -a "name=nginx" --become
```

## 🔧 Customization

### Change Theme Colors

Edit `files/index.html`:
```css
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
```

### Update Financial Data

Modify the dashboard values and transaction table in `files/index.html`

## 📊 Azure Resources

- **VM Size**: Standard_B2s (2 vCPU, 4GB RAM)
- **Storage**: 30GB Standard SSD
- **Region**: North Europe (optimal for Finland)
- **Cost**: ~€0.02/hour

## 🎓 What I Learned

- ✅ Ansible playbook design patterns
- ✅ File deployment with copy module
- ✅ Service management with systemd
- ✅ Handlers for automatic restarts
- ✅ Idempotent configuration management
- ✅ URI module for health checks

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a Pull Request

## 📄 License

MIT License - Free to use for learning and personal projects

## 🙏 Acknowledgments

Built as part of Azure + Ansible DevOps learning journey.

---

**⭐ If this helped you, please star the repo!**

📞 **Questions?** Open an issue or reach out on GitHub.
