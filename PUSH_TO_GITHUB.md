# Steps to Push Project to GitHub

## Prerequisites
- GitHub account
- Git installed on your computer
- GitHub CLI or access to GitHub website

## Step-by-Step Instructions

### Step 1: Update .gitignore (if needed)
Make sure `.env` files are in `.gitignore` to protect sensitive information.

### Step 2: Initialize Git (if not already done)
```bash
cd sdc
git init
```

### Step 3: Add all files to Git
```bash
git add .
```

### Step 4: Create your first commit
```bash
git commit -m "Initial commit: FurEverHome project with login and signup pages"
```

### Step 5: Create a new repository on GitHub

**Option A: Using GitHub Website**
1. Go to https://github.com
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Repository name: `sdcfurever` (or your preferred name)
5. Description: "FurEverHome - Pet Adoption Platform"
6. Choose Public or Private
7. **DO NOT** initialize with README, .gitignore, or license (we already have files)
8. Click "Create repository"

**Option B: Using GitHub CLI (if installed)**
```bash
gh repo create sdcfurever --public --source=. --remote=origin --push
```

### Step 6: Add GitHub repository as remote
After creating the repository on GitHub, copy the repository URL and run:

```bash
git remote add origin https://github.com/YOUR_USERNAME/sdcfurever.git
```

Replace `YOUR_USERNAME` with your actual GitHub username.

### Step 7: Verify remote is added
```bash
git remote -v
```

### Step 8: Push to GitHub
```bash
git branch -M main
git push -u origin main
```

If prompted, enter your GitHub username and password (or use a Personal Access Token).

### Step 9: Verify on GitHub
Go to your repository on GitHub and verify all files are there.

---

## Troubleshooting

### If you get authentication errors:
1. Use Personal Access Token instead of password:
   - Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Generate new token with `repo` permissions
   - Use this token as password when pushing

### If you want to add more changes later:
```bash
git add .
git commit -m "Your commit message"
git push
```

### If you need to ignore more files:
Add them to `.gitignore` files:
- `sdc/.gitignore` for Java/Maven files
- `sdc/frontend/.gitignore` for Node.js/React files

---

## Quick Command Summary
```bash
cd sdc
git init
git add .
git commit -m "Initial commit: FurEverHome project"
git remote add origin https://github.com/YOUR_USERNAME/sdcfurever.git
git branch -M main
git push -u origin main
```

---

## Important Notes
- ✅ Never commit `.env` files (they contain sensitive keys)
- ✅ Never commit `node_modules` (already in .gitignore)
- ✅ Never commit compiled files like `target/` (already in .gitignore)
- ✅ Use meaningful commit messages
- ✅ Push frequently to keep your code backed up
