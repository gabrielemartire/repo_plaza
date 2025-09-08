
<img width="400" alt="c5b5d917-0699-416a-ac02-a8dccb829f54" src="https://github.com/user-attachments/assets/a756f627-663c-49cc-b4f3-890693c1ee8c" />

# REPO|PLAZA

**Repo Plaza** aiuta gli sviluppatori a monitorare le repository GitHub utilizzate come dipendenze nei loro progetti, segnalando quando una repo non è più supportata o aggiornata.

## Demo Live

- **Produzione**: [repoplaza-production.up.railway.app](http://repoplaza-production.up.railway.app/)

## Roadmap

### 🚧 In Sviluppo
- [ ] Tracking repository utilizzate come dipendenze
- [ ] Job automatici per controllo repositories

### In futuro
- Autenticazione GitHub - Login sicuro tramite OAuth GitHub
- Sistema notifiche email
- Miglioramento della Dashboard per visualizzare lo stato di tutte le dipendenze in un colpo d'occhio
- API REST per integrazioni esterne
- Report analytics sulle dipendenze

## 🛠️ Come Funziona

1. **Collega il tuo GitHub**: Autenticati con il tuo account GitHub.
2. **Aggiungi Dipendenze**: Specifica quali repository vuoi monitorare (es. rails/rails, facebook/react).
3. **Ricevi Notifiche**: Repo Plaza ti avvisa quando una repository di tuo interesse non riceve piu aggiornamenti.

## 🔧 Tecnologie Utilizzate

### Backend
- **Ruby on Rails** - Framework web principale
- **PostgreSQL** - Database per tracking dipendenze
- **Devise** - Sistema di autenticazione

### Frontend
- **Tailwind CSS** - Styling moderno e responsive

## 📋 Prerequisiti

- **Ruby** 3.0+
- **Rails** 7.0+
- **PostgreSQL** 13+
- **Docker** (per sviluppo locale)

## 🚀 Installazione

### 1. Clona il progetto
```bash
git clone https://github.com/gabrielemartire/repo_plaza.git
cd repo_plaza
```

### 2. Setup dipendenze
```bash
bundle install
```

### 3. Database con Docker
```bash
# Avvia PostgreSQL in container
docker-compose up -d db

# Setup database
rails db:create
rails db:migrate
```

### 4. Configurazione GitHub
Crea un file `.env` con le tue credenziali GitHub:
```env
GITHUB_CLIENT_ID=your_github_client_id
GITHUB_CLIENT_SECRET=your_github_client_secret
DATABASE_URL=postgresql://username:password@localhost:5432/repo_plaza_development
```

### 5. Setup frontend
```bash
rails tailwindcss:install
```

### 6. Avvia l'applicazione
```bash
bin/dev
```

Vai su `http://localhost:3000` per accedere all'app.

## 🤝 Contribuire

1. Fork del progetto
2. Branch feature (`git checkout -b feature/MonitoringNpm`)
3. Commit (`git commit -m 'Add npm package monitoring'`)
4. Push (`git push origin feature/MonitoringNpm`)
5. Pull Request

## 📄 Licenza

Progetto sotto licenza MIT - vedi `LICENSE` per dettagli.

## 👨‍💻 Autore

**Gabriele Martire**
- GitHub: [@gabrielemartire](https://github.com/gabrielemartire)
- Portfolio: [gabrielemartire.github.io](https://gabrielemartire.github.io/)

## 🙏 Ringraziamenti

- Open source maintainers che rendono possibile questo ecosistema

---

**Repo Plaza**
