# GitHub Pages beginner guide for SCNF 2026

This repository is intended for a **GitHub Organization site**:

- Organization: `scnf2026`
- Repository: `scnf2026.github.io`
- Final site URL: `https://scnf2026.github.io/`

## 1. Preview the site locally

From the project folder:

```bash
conda env create -f environment.yml
conda run -n mkdocs mkdocs serve
```

Then open `http://127.0.0.1:8000/` in a browser.

## 2. Create the repository on GitHub

Inside the **scnf2026** organization, create a new repository with these settings:

- Repository name: `scnf2026.github.io`
- Visibility: `Private` for drafting, then change to `Public` when you are ready to publish
- **Do not** check `Add README`, `Add .gitignore`, or `Add license`

## 3. Connect your local folder to the repository

Open the project folder in Cursor and run:

```bash
git init
git add .
git commit -m "Initial site"
git branch -M main
git remote add origin https://github.com/scnf2026/scnf2026.github.io.git
git push -u origin main
```

If Git says that `origin` already exists, replace the last two lines with:

```bash
git remote remove origin
git remote add origin https://github.com/scnf2026/scnf2026.github.io.git
git push -u origin main
```

## 4. Keep drafting privately

You can continue to edit locally and push changes whenever you want:

```bash
git add .
git commit -m "Update site"
git push
```

## 5. Publish the site

When you are ready to make the site public:

1. Open the repository on GitHub.
2. Go to **Settings**.
3. Scroll to **Danger Zone**.
4. Choose **Change repository visibility** → `Public`.
5. Go to **Settings → Pages**.
6. Under **Build and deployment**, set **Source** to **GitHub Actions**.

The repository already contains `.github/workflows/pages.yml`, so GitHub Actions will build and deploy the site automatically.

## 6. Confirm the site is live

After the workflow finishes successfully, the site will be available at:

`https://scnf2026.github.io/`

You can confirm this in:

- **Actions** tab (workflow status)
- **Settings → Pages** (published URL)

## 7. Invite co-organizers later

When you are ready, invite co-organizers from the organization page:

- **Organization → People → Invite member**

For a small workshop site, a good starting setup is:

- 2 owners
- co-organizers as `Write` or `Maintain`

## 8. Recommended editing workflow after collaborators join

To keep the site stable:

- edit locally,
- preview with `mkdocs serve`,
- commit,
- push,
- let GitHub Actions deploy.

For additional safety, you can later protect the `main` branch and require pull requests.
