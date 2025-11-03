# GitHub Repository Setup Instructions

Your Tyndale Coin website is ready! Follow these steps to push it to GitHub:

## Step 1: Authenticate with GitHub CLI

Run this command in your terminal:

```bash
gh auth login
```

Follow the prompts:
- Choose "GitHub.com"
- Choose "HTTPS" 
- Choose "Login with a web browser"
- Authorize GitHub CLI when the browser opens

## Step 2: Create Repository and Push

Once authenticated, run:

```bash
gh repo create tyndalecoin --public --description "Tyndale Coin (\$TYN) - Honoring William Tyndale" --source=. --remote=origin --push
```

This will:
- Create a public repository called "tyndalecoin" on GitHub
- Set it as the remote origin
- Push all your code

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub: `https://github.com/YOUR_USERNAME/tyndalecoin`
2. Click **Settings** → **Pages**
3. Under **Source**, select **Deploy from a branch**
4. Choose branch: **main** and folder: **/ (root)**
5. Click **Save**

Your site will be available at: `https://YOUR_USERNAME.github.io/tyndalecoin/`

## Alternative: If you prefer using a Personal Access Token

1. Create a token at: https://github.com/settings/tokens
2. Select "repo" scope
3. Run:
```bash
export GH_TOKEN=your_token_here
gh repo create tyndalecoin --public --description "Tyndale Coin (\$TYN) - Honoring William Tyndale" --source=. --remote=origin --push
```

