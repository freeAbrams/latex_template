# Template Notes

This directory is the source template for future paper workspaces.

## Workflow

- Copy or fork this directory when starting a new paper.
- Keep the directory self-contained and open the copied directory itself in VS Code.
- Keep the entry file name as `main.tex` unless there is a strong reason to change it.
- Keep paths relative to this workspace root.
- Shared fonts and tools live in sibling directories: `../.fonts/` and `../.tools/`.

## Structure

- Entry file: `main.tex`
- Figures: `pic/`
- Local build: `build.sh`
- Local VS Code settings: `.vscode/settings.json`

## Included Examples

- `main.tex` contains placeholder sections, a figure example, a table example, and examples for `\subsubsection` and `BottomColumnBlock`.
- `pic/example-image.png` is a committed sample asset for the figure example.
- Replace content inside `main.tex`, but keep the workspace structure unchanged.

## Build Workflow

- Build by saving `main.tex` in VS Code with LaTeX Workshop enabled.
- The workspace setting runs `bash ./build.sh %DOC%.tex`.

## Writing Style

- Match the existing Japanese academic prose in `main.tex`.
- Keep one sentence per line when editing prose.
- Use concise declarative sentences with Japanese academic punctuation `，` and `．`.
- Prefer neutral connective phrases such as `本研究では`, `そこで`, `これにより`, and `一方`.
- Introduce technical terms plainly and stop at conceptual or method-design depth unless the document clearly needs implementation detail.
- When adding new sections, remove only redundancy created by the new text so the paper does not become repetitive.

## Heading and Layout

- Follow the heading hierarchy defined in `paper_style.sty`.
- `\subsubsection` is enabled and should be used when needed; its numbering is `section.subsection.subsubsection` such as `4.4.1`.
- Keep `\subsubsection` at the same visual weight and size as `\subsection` unless the style file is intentionally changed again.
- The paper body uses two columns without balancing the final page.
- Do not add manual balancing that would move bibliography items into the right column before the left column is naturally filled.
- Use `BottomColumnBlock` when multiple tables or similar blocks must stay together at the bottom of one column and the following prose should continue from the top of the next column.
- When a `BottomColumnBlock` needs to land in a specific column, adjust its insertion point in `main.tex`; do not add ad hoc vertical spacing or manual page-break hacks around the block.

## Label Convention

Use lowercase kebab-case after the prefix.

- Sections: `sec:background`, `sec:purpose`, `sec:goal`, `sec:method`
- Subsections: `sec:method:overview`, `sec:method:figure-example`
- Subsubsections: `sec:method:overview:implementation`
- Figures: `fig:method:sample-image`
- Tables: `tab:method:schedule`
- Equations: `eq:method:loss`

Prefer labels grouped by the parent section when the object belongs to one section.
