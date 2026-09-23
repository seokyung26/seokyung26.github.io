# Seokyung Park — academic website

Public research website: https://seokyung26.github.io/

This repository contains the website, selected research figures and the academic CV. Research implementation repositories remain private.

## Content

- `index.md`: homepage
- `research.md` and `projects/`: four research areas
- `publications.md`: published work, manuscript status and presentations
- `about.md`, `education.md`, `experience.md`, `skills.md`, `contact.md`: academic background
- `assets/documents/`: downloadable CV in PDF and Word formats
- `_layouts/` and `assets/css/site.css`: custom presentation over GitHub Pages / Jekyll

GitHub Pages publishes the `main` branch at the repository root. Lora is distributed under the SIL Open Font License; see `assets/fonts/OFL.txt`.


## Website templates

The homepage uses Jon Barron's website structure and stylesheet. Research detail pages use Academic Project Page Template. Both are pinned to the latest revision available on or before 2025-11-17. See [TEMPLATE_CREDITS.md](TEMPLATE_CREDITS.md) for exact versions and licensing.

## Editing the website

- Edit `index.md` for the introduction, portrait links and homepage research list.
- Edit `research.md` for the complete project list.
- Edit the corresponding file in `projects/` for project text, figures, results and status. Quadruped sections use the IDs `greenhouse`, `reservoir`, `terrain` and `phenotyping`; preserve these IDs and their matching numbered tabs.
- Store figures in `assets/images/`, then reference them with `/assets/images/filename`.
- `_layouts/default.html` controls personal pages; `_layouts/project.html` controls the academic project-page shell. Use `assets/css/site.css` for local style changes. Original template styles are in `assets/template/`.
- Commit changes to `main`; GitHub Pages rebuilds the public website automatically.

Do not run the earlier one-off website generator: the checked-in pages and layouts are now the source of truth. Unpublished full manuscripts and private implementation code are not included.
