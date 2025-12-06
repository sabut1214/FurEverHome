# Step-by-Step Guide: Push Fresh Project to GitHub

## Goal
Push your current project to GitHub with ONLY you as a contributor (no old history/contributors)

---

## Step 1: Open PowerShell
1. Press `Windows Key + X`
2. Click **"Windows PowerShell"** or **"Terminal"**
3. Or search for "PowerShell" in the start menu

---

## Step 2: Navigate to Your Project Folder
Copy and paste this command:

```powershell
cd E:\sdcfurever\sdc
```

Press **Enter**

You should see: `PS E:\sdcfurever\sdc>`

---

## Step 3: Remove Old Git History
This removes all old commits and contributors:

```powershell
Remove-Item -Recurse -Force .git
```

Press **Enter**

*(If it asks for confirmation, type `Y` and press Enter)*

---

## Step 4: Initialize Fresh Git Repository
Create a brand new git repository:

```powershell
git init
```

Press **Enter**

You should see: `Initialized empty Git repository in E:/sdcfurever/sdc/.git/`

---

## Step 5: Add All Your Files
Add all project files to git:

```powershell
git add .
```

Press **Enter**

*(This might show some warnings about line endings - that's normal, ignore it)*

---

## Step 6: Create Your First Commit
Save your files with a commit message:

```powershell
git commit -m "Initial commit: FurEverHome project"
```

Press **Enter**

You should see: `[main (root-commit) xxxxx] Initial commit...`

---

## Step 7: Connect to Your GitHub Repository
Link your local folder to your GitHub repo:

```powershell
git remote add origin https://github.com/sabut1214/sdcfurever.git
```

Press **Enter**

*(No output is normal - it worked if no error appears)*

---

## Step 8: Make Sure You're on Main Branch
Set the branch name to "main":

```powershell
git branch -M main
```

Press **Enter**

---

## Step 9: Push to GitHub
Push your project to GitHub:

```powershell
git push -u origin main --force
```

Press **Enter**

**⚠️ IMPORTANT:** This will ask for your credentials!

---

## Step 10: Enter GitHub Credentials

### What Git Will Ask:
```
Username for 'https://github.com': 
```
**Enter:** `sabut1214`
Press **Enter**

```
Password for 'https://sabut1214@github.com': 
```
**Enter:** Your Personal Access Token (NOT your GitHub password)
Press **Enter**

---

## Step 11: Get Personal Access Token (If You Don't Have One)

### 11a. Go to GitHub Token Page
1. Open browser
2. Go to: **https://github.com/settings/tokens**
3. Make sure you're logged in to GitHub

### 11b. Create New Token
1. Click **"Generate new token"** dropdown
2. Click **"Generate new token (classic)"**

### 11c. Configure Token
- **Note:** Type `sdcfurever-push`
- **Expiration:** Choose `90 days` or `No expiration`
- **Select scopes:** Check the box for **`repo`** (this enables full repository access)
  - This will automatically check all boxes under "repo"

### 11d. Generate and Copy Token
1. Scroll down
2. Click **"Generate token"** (green button)
3. **IMPORTANT:** Copy the token immediately - you won't see it again!
   - It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`

### 11e. Use Token as Password
- Go back to PowerShell where it's asking for password
- Paste the token
- Press Enter

---

## Step 12: Verify Success

### Check PowerShell Output
You should see something like:
```
Enumerating objects: X, done.
Counting objects: 100% (X/X), done.
Writing objects: 100% (X/X), done.
To https://github.com/sabut1214/sdcfurever.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

### Check GitHub
1. Open browser
2. Go to: **https://github.com/sabut1214/sdcfurever**
3. Refresh the page (F5)
4. You should see:
   - ✅ All your project files
   - ✅ Only 1 commit (your initial commit)
   - ✅ Only you as a contributor (sabut1214)

---

## Complete Command List (Copy-Paste)

Copy all these commands and paste them one by one:

```powershell
cd E:\sdcfurever\sdc

Remove-Item -Recurse -Force .git

git init

git add .

git commit -m "Initial commit: FurEverHome project"

git remote add origin https://github.com/sabut1214/sdcfurever.git

git branch -M main

git push -u origin main --force
```

*(After the last command, enter your username and token when prompted)*

---

## Troubleshooting

### Problem: "remote origin already exists"
**Solution:** Run this first:
```powershell
git remote remove origin
```
Then continue from Step 7.

### Problem: "Authentication failed"
**Solution:** 
- Make sure you're using a Personal Access Token, NOT your password
- Create a new token at https://github.com/settings/tokens
- Make sure the token has `repo` permissions

### Problem: "fatal: not a git repository"
**Solution:**
- Make sure you ran `git init` (Step 4)
- Make sure you're in the `sdc` folder

### Problem: "nothing to commit"
**Solution:**
- Check: `git status`
- Make sure files exist in the folder
- Try: `git add .` again

### Problem: Files still not showing on GitHub
**Solution:**
- Wait 10-30 seconds and refresh the GitHub page
- Check: Did the push command complete successfully?
- Verify: `git remote -v` shows the correct URL

---

## Success Checklist
- ✅ PowerShell is open and in `E:\sdcfurever\sdc` folder
- ✅ Old .git folder removed
- ✅ Fresh git repository initialized
- ✅ All files added and committed
- ✅ Remote repository connected
- ✅ Push completed successfully
- ✅ GitHub shows your files
- ✅ Only you appear as contributor

---

## Need Help?
If any step fails, share:
1. Which step number failed
2. The exact error message you see
