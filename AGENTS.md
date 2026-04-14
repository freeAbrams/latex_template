# Template Notes

This directory is the source template for future paper workspaces.

## Workflow

- Copy or fork this directory when starting a new paper.
- Keep the directory self-contained and open the copied directory itself in VS Code.
- Keep the entry file name as `main.tex` unless there is a strong reason to change it.
- Shared fonts and tools live in sibling directories: `../.fonts/` and `../.tools/`.

## Included Examples

- `main.tex` contains placeholder sections, a figure example, and a table example.
- `pic/example-image.png` is a committed sample asset for the figure example.
- Replace content inside `main.tex`, but keep the workspace structure unchanged.

## Label Convention

Use lowercase kebab-case after the prefix.

- Sections: `sec:background`, `sec:purpose`, `sec:goal`, `sec:method`
- Subsections: `sec:method:overview`, `sec:method:figure-example`
- Figures: `fig:method:sample-image`
- Tables: `tab:method:schedule`
- Equations: `eq:method:loss`

Prefer labels grouped by the parent section when the object belongs to one section.
