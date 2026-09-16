# seokyung26.github.io — personal academic website

Source of https://seokyung26.github.io (GitHub Pages + Jekyll, `minima` theme).

## Edit content
Each menu item is one Markdown file. Edit the text and push:

| Menu | File |
|---|---|
| Home | `index.md` |
| Research | `research.md` |
| Publications | `publications.md` |
| About | `about.md` |
| Education | `education.md` |
| Skills | `skills.md` |
| Experience | `experience.md` |
| Contact | `contact.md` |

Menu order = `header_pages` in `_config.yml`. Lines marked `<!-- TODO -->` still need checking.

## Publish
```bash
git add .
git commit -m "Update research page"
git push
```
GitHub rebuilds the site automatically in about a minute.

## Make it pretty later
Swap `theme: minima` in `_config.yml` for another GitHub Pages theme, or use `remote_theme:` with an academic theme such as *al-folio* or *academicpages*.
