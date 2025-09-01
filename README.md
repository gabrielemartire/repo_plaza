
<img width="400" alt="c5b5d917-0699-416a-ac02-a8dccb829f54" src="https://github.com/user-attachments/assets/a756f627-663c-49cc-b4f3-890693c1ee8c" />


# REPO|PLAZA

**Repo Plaza** è un sistema di monitoraggio delle dipendenze per progetti software, costruito con Ruby on Rails. L'applicazione permette agli sviluppatori di tracciare e monitorare le repository GitHub che utilizzano come dipendenze nei loro progetti, ricevendo notifiche su aggiornamenti, patch di sicurezza e breaking changes per mantenere i propri progetti sempre sicuri e aggiornati.

## 🚀 Demo Live

- **Produzione**: [repoplaza-production.up.railway.app](http://repoplaza-production.up.railway.app/)

## 🎯 Il Problema delle Dipendenze

- **Aggiornamenti Costanti**: Le librerie vengono aggiornate frequentemente
- **Vulnerabilità di Sicurezza**: Patch critiche richiedono aggiornamenti immediati
- **Breaking Changes**: Nuove versioni possono rompere il tuo codice esistente
- **Progetti Multipli**: Difficile tracciare le stesse dipendenze su più progetti
- **Mancanza di Tempo**: Impossibile controllare manualmente ogni repository

**Repo Plaza** centralizza il monitoraggio di tutte le dipendenze dei tuoi progetti in un'unica dashboard intelligente.

## ✨ Funzionalità Principali

- **Autenticazione GitHub**: Login sicuro tramite OAuth GitHub
- **Gestione Dipendenze**: Traccia le repository utilizzate come dipendenze
- **Alert Automatici**: Notifiche per nuove versioni e patch di sicurezza
- **Dashboard Centrale**: Stato di tutte le dipendenze in un colpo d'occhio
- **Tracking Versioni**: Monitora release, tag e changelog
- **Sicurezza**: Alert per vulnerabilità e CVE delle dipendenze
- **Analisi Breaking Changes**: Identifica modifiche che potrebbero rompere il codice
- **Automazione**: Controlli periodici automatici delle dipendenze
- **Responsive**: Interfaccia moderna accessibile da qualsiasi device

## 🛠️ Come Funziona

1. **Collega il tuo GitHub**: Autenticati con il tuo account GitHub
2. **Aggiungi Dipendenze**: Specifica quali repository vuoi monitorare (es. rails/rails, facebook/react)
3. **Imposta Versioni**: Indica quale versione stai usando nei tuoi progetti
4. **Ricevi Notifiche**: Repo Plaza ti avvisa quando ci sono:
   - Nuove versioni disponibili
   - Patch di sicurezza critiche
   - ⚠Breaking changes in arrivo
   - Aggiornamenti nei changelog

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


### Sidekiq gestisce i controlli automatici delle dipendenze:

```ruby
# Job principali
CheckDependencyUpdatesJob    # Controlla nuove versioni
SecurityScanJob             # Scan vulnerabilità
BreakingChangesAnalysisJob  # Analizza changelog per breaking changes
NotificationJob             # Invia email/notifiche
```

```bash
# Avvia Sidekiq worker
bundle exec sidekiq
```

## 📡 API Endpoints

```bash
# Dashboard e autenticazione
GET  /                                    # Dashboard dipendenze
POST /users/auth/github                   # Login GitHub
GET  /users/auth/github/callback          # OAuth callback

# Gestione dipendenze
GET    /dependencies                      # Lista dipendenze monitorate
POST   /dependencies                      # Aggiungi dipendenza
PUT    /dependencies/:id                  # Aggiorna versione target
DELETE /dependencies/:id                  # Rimuovi dal monitoraggio

# Monitoraggio e alert
GET /dependencies/:id/alerts              # Alert sicurezza
GET /dependencies/:id/versions            # Storico versioni
GET /dashboard/outdated                   # Dipendenze da aggiornare
GET /dashboard/security                   # Alert sicurezza attivi
```

## 🛣️ Roadmap

### ✅ Funzionalità Base
- Interface Tailwind CSS
- Deploy Railway

### 🚧 In Sviluppo
- [ ] Autenticazione GitHub
- [ ] Tracking repository
- [ ] Sistema notifiche email
- [ ] Job automatici per controllo dipendenze
- [ ] Dashboard alert sicurezza
- [ ] Analisi breaking changes

### 📋 Prossimi Passi
- [ ] Support per múltipli package manager (npm, pip, composer)
- [ ] Integrazione con dependency scanner (Dependabot, Snyk)
- [ ] API REST per integrazioni esterne
- [ ] Team collaboration features
- [ ] Report analytics sulle dipendenze

## 💡 Casi d'Uso

### Per Sviluppatori Singoli
- Monitora le gem Ruby nei tuoi progetti Rails
- Traccia librerie JavaScript nei progetti frontend
- Alert immediati per vulnerabilità di sicurezza

### Per Team di Sviluppo
- Dashboard condivisa delle dipendenze del team
- Policy di aggiornamento coordinate
- Reportistica sullo stato di sicurezza dei progetti

### Per DevOps/Security
- Audit trail degli aggiornamenti di sicurezza
- Compliance reporting per vulnerabilità
- Automazione degli update critici

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

**Repo Plaza** - Il tuo centro di controllo per le dipendenze dei progetti 🔧📦
