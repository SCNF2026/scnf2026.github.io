# SCNF 2026 website

MkDocs + Material source for the workshop website of **SCNF 2026 — Structure and Closure in Nonequilibrium Flows**.

## Local preview with conda

```bash
conda env create -f environment.yml
conda run -n mkdocs mkdocs serve
```

Then open `http://127.0.0.1:8000/` in a browser.

## Local build

```bash
conda run -n mkdocs mkdocs build --strict
```

The generated static site will be written to `site/`.

## GitHub Pages

This project is configured for deployment to GitHub Pages via GitHub Actions.

Recommended organization-site setup:

- Organization: `scnf2026`
- Repository: `scnf2026.github.io`

Once the repository is public, set **Settings → Pages → Source** to **GitHub Actions**.
