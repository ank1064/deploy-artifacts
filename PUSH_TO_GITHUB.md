# Push this repo to your GitHub (ank1064)

Run these commands from this directory (`deploy-artifacts`).

## 1. Create the repo on GitHub

- Go to **https://github.com/new**
- Repository name: `deploy-artifacts` (or any name you prefer)
- Leave it empty (no README, no .gitignore)
- Click **Create repository**

## 2. Initialize and push from your machine

```bash
cd /Users/ankitkumar/deploy-artifacts

# Initialize git (if not already)
git init

# Stage and commit
git add .
git commit -m "Add pre-service hook and sample Bitnami Helm chart"

# Add your repo as remote (replace REPO_NAME if you used a different name)
git remote add origin https://github.com/ank1064/deploy-artifacts.git

# Push (use main or master depending on your default branch)
git branch -M main
git push -u origin main
```

If you use SSH:

```bash
git remote add origin git@github.com:ank1064/deploy-artifacts.git
git push -u origin main
```

## 3. Using GitHub CLI (optional)

If you have `gh` installed:

```bash
cd /Users/ankitkumar/deploy-artifacts
git init
git add .
git commit -m "Add pre-service hook and sample Bitnami Helm chart"
gh repo create deploy-artifacts --private --source=. --remote=origin --push
```

Use `--public` instead of `--private` for a public repo.
