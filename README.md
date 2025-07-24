# Omarchy DevOps Edition

> *Une version personnalisée d'Omarchy optimisée pour le développement DevOps et l'infrastructure*

Transform your fresh Arch Linux installation into a powerful, beautifully configured DevOps workstation based on Hyprland with a single command. This is a customized fork of the original [Omarchy project](https://github.com/basecamp/omarchy) by **David Heinemeier Hansson (DHH)** and the Basecamp team.

## 🙏 Remerciements

Un grand merci à **DHH** et à l'équipe **Basecamp** pour avoir créé le projet Omarchy original. Cette version s'appuie sur leur excellent travail pour créer un environnement de développement moderne et élégant sur Arch Linux.

## 🚀 Qu'est-ce qui a changé ?

Cette version personnalisée d'Omarchy a été adaptée pour :
- **Ajouter des outils DevOps essentiels** (Ansible, OpenTofu/Terraform)
- **Supprimer les applications non utilisées** (HEY, Basecamp, 1Password, Signal)
- **Remplacer certains outils** (KeePassXC au lieu de 1Password)
- **Configurer le clavier français par défaut** (AZERTY)
- **Optimiser les alias et fonctions** pour un workflow DevOps

## ⚡ Installation

```bash
bash <(curl -s https://raw.githubusercontent.com/Mounik/omarchy/main/boot.sh)
```

## 🛠 Outils DevOps Inclus

### Infrastructure as Code
- **OpenTofu** - Alternative open-source à Terraform
- **Ansible** - Automatisation et gestion de configuration
- **Docker** - Containerisation et déploiement

### Développement Python
- **UV** - Gestionnaire de packages Python ultra-rapide
- **Python 3** - Environnement Python moderne

### Développement Go
- **Go** - Langage de programmation moderne et performant
- **Outils Go** - Compilateur, testeur, formateur intégrés

### Outils de Ligne de Commande
- **lazygit** - Interface Git intuitive
- **lazydocker** - Gestion Docker simplifiée
- **btop** - Moniteur système moderne
- **GitHub CLI** - Intégration GitHub native

## ⌨️ Raccourcis Clavier

### Applications Principales
| Raccourci | Action |
|-----------|--------|
| `Super + Return` | Terminal (Alacritty) |
| `Super + B` | Navigateur (Chromium) |
| `Super + F` | Gestionnaire de fichiers (Nautilus) |
| `Super + N` | Éditeur (Neovim) |
| `Super + /` | Gestionnaire de mots de passe (KeePassXC) |

### Outils de Développement
| Raccourci | Action |
|-----------|--------|
| `Super + T` | Moniteur système (btop) |
| `Super + D` | Interface Docker (lazydocker) |
| `Super + O` | Notes (Obsidian) |
| `Super + M` | Musique (Spotify) |

### Web Apps Utiles
| Raccourci | Action |
|-----------|--------|
| `Super + A` | ChatGPT |
| `Super + Shift + A` | Grok |
| `Super + Y` | YouTube |
| `Super + X` | X (Twitter) |
| `Super + Shift + G` | WhatsApp Web |

## 🔧 Alias et Fonctions Personnalisés

### OpenTofu/Terraform
```bash
tf                    # Raccourci pour tofu
terraform             # Alias vers tofu
tofu-workflow         # Workflow complet : fmt + init + validate + plan
```

### Python avec UV
```bash
py                    # python3
pip                   # uv pip
venv                  # uv venv
uv-project <nom>      # Créer un nouveau projet UV
```

### Ansible
```bash
ap                    # ansible-playbook
av                    # ansible-vault
ag                    # ansible-galaxy
ai                    # ansible-inventory
```

### Go
```bash
gob                   # go build
gor                   # go run
got                   # go test
gom                   # go mod
gof                   # go fmt
gov                   # go vet
goi                   # go install
gog                   # go get
goclean               # go clean -modcache
go-project <nom>      # Créer un nouveau projet Go
go-workspace <nom>    # Créer un workspace Go
gotest-cover          # Tests avec coverage HTML
```

### Git
```bash
gs                    # git status
ga                    # git add
gc                    # git commit
gp                    # git push
gl                    # git log --oneline
```

### Docker
```bash
d                     # docker
dc                    # docker-compose
dps                   # docker ps
di                    # docker images
```

### Système
```bash
ll                    # ls -alF
la                    # ls -A
l                     # ls -CF
..                    # cd ..
...                   # cd ../..
mkcd <dir>            # mkdir + cd en une commande
```

### Hyprland
```bash
hypr-reload           # Recharger la configuration Hyprland
hypr-logs             # Voir les logs Hyprland
waybar-reload         # Redémarrer Waybar
```

## 🎨 Thèmes Disponibles

Omarchy inclut plusieurs thèmes coordonnés :
- **Catppuccin** (Dark/Light)
- **Tokyo Night**
- **Nord**
- **Gruvbox**
- **Rose Pine**
- **Everforest**
- **Kanagawa**
- **Matte Black**

Changez de thème avec la commande `omarchy-theme-menu`.

## 🇫🇷 Configuration Française

Cette version est pré-configurée pour les utilisateurs français :
- **Clavier AZERTY par défaut**
- **Configuration système appropriée**
- **Pas besoin de reconfiguration manuelle**

## 📦 Applications Incluses

### Productivité
- **KeePassXC** - Gestionnaire de mots de passe
- **Obsidian** - Prise de notes avancée
- **LibreOffice** - Suite bureautique
- **XournalPP** - Annotation PDF

### Multimédia
- **OBS Studio** - Enregistrement et streaming
- **Kdenlive** - Montage vidéo
- **Spotify** - Musique

### Développement
- **Neovim** - Éditeur modal moderne
- **GitHub CLI** - Intégration GitHub
- **Go** - Langage de programmation Google
- **Cargo** - Gestionnaire Rust
- **Docker** - Containerisation

## 🤝 Contribution

Ce fork personnel peut être utilisé comme base pour vos propres modifications. N'hésitez pas à adapter selon vos besoins !

## 📄 Licence

Comme le projet original, cette version est sous licence [MIT](https://opensource.org/licenses/MIT).

---

*Basé sur le projet [Omarchy](https://github.com/basecamp/omarchy) original de DHH et Basecamp* ❤️

