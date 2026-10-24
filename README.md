# matisseR Learn

A self-paced course on age-period-cohort (APC) analysis of vital rates in R, built around [`matisseR`](https://github.com/filhoalm/matisseR),
an R toolbox for disease surveillance, with two real case studies. The MATLAB toolbox
MATISSE (by Philip S. Rosenberg), of which `matisseR` is a port, is a secondary section.

Live site: <https://filhoalm.github.io/matisse-learn/>

## Contents

| Path | Contents |
|---|---|
| `index.qmd` | Course landing page: syllabus, case studies, team, FAQ |
| `modules/` | Modules 0 to 7 (readings, runnable R code, self-checks) |
| `cases/` | The two case studies (figures from work in progress) |
| `resources.qmd`, `workshop.qmd` | Function reference, datasets, slides, papers, glossary; live workshop |
| `matlab/` | The MATLAB toolbox section |
| `assets/` | Shared setup code and page scripts |
| `data/` | The eight synthetic example datasets (CSV) |
| `downloads/` | MATLAB toolbox, live scripts, slides and papers |
| `images/` | Figures |
| `docs/` | The rendered site (what GitHub Pages serves) |

## Build

Requires R 4.1+ with `matisseR`, `data.table`, `ggplot2`, `patchwork`, `scales`, `knitr`, `rmarkdown`, and Quarto 1.4+.

```bash
quarto render
```

The site is written to `docs/`. R output is cached in `_freeze/`, so unchanged pages are not re-run.
Set GitHub Pages to deploy from the `main` branch, `/docs` folder.

## Status

Working draft. Video lessons are not recorded yet.
