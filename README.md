จัดให้แบบ **copy ไปใช้ได้เลย** ✅

***

# ✅ `README.md`

```markdown
# LaTeX Setup (WSL + macOS)

Minimal, reproducible setup for compiling **Thesis (XeLaTeX + BibLaTeX)** and **Journal Paper (PDFLaTeX + BibTeX)**.

---

## 📦 Project Structure

```

repo/
├── thesis/
│   ├── main.tex
│   └── refs.bib
├── paper/
│   ├── main.tex
│   └── refs.bib
└── .vscode/
└── settings.json

````

---

# 🐧 WSL (Ubuntu)

## 1. Install LaTeX

```bash
sudo apt update
sudo apt install texlive-full -y
````

***

## 2. Verify installation

```bash
xelatex --version
pdflatex --version
bibtex --version
biber --version
latexmk --version
```

***

## 3. (Optional) Thai fonts

```bash
sudo apt install fonts-thai-tlwg -y
fc-cache -fv
```

***

## 4. Run build manually

### Thesis (XeLaTeX + biber)

```bash
cd thesis
latexmk -xelatex main.tex
```

### Paper (MDPI - PDFLaTeX + bibtex)

```bash
cd paper
latexmk -pdf main.tex
```

***

## 5. Clean build

```bash
latexmk -c
```

***

# 🍎 macOS

## 1. Install MacTeX

Download:
👉 <https://tug.org/mactex/>

or via Homebrew:

```bash
brew install --cask mactex
```

***

## 2. Add to PATH (if needed)

```bash
export PATH="/Library/TeX/texbin:$PATH"
```

***

## 3. Verify

```bash
xelatex --version
latexmk --version
```

***

## 4. Build

Same as WSL:

```bash
latexmk -xelatex main.tex   # thesis
latexmk -pdf main.tex       # paper
```

***

# 💻 VS Code Setup

## Required Extensions

* LaTeX Workshop
* WSL (for Windows users)

***

## `.vscode/settings.json`

```json
{
  "latex-workshop.latex.autoBuild.run": "onSave",

  "latex-workshop.latex.recipes": [
    {
      "name": "xelatex (thesis)",
      "tools": ["latexmk_xe"]
    },
    {
      "name": "pdflatex (paper)",
      "tools": ["latexmk_pdf"]
    }
  ],

  "latex-workshop.latex.tools": [
    {
      "name": "latexmk_xe",
      "command": "latexmk",
      "args": [
        "-xelatex",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "-halt-on-error",
        "%DOC%"
      ]
    },
    {
      "name": "latexmk_pdf",
      "command": "latexmk",
      "args": [
        "-pdf",
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "-halt-on-error",
        "%DOC%"
      ]
    }
  ],

  "latex-workshop.latex.outDir": ""
}
```

***

## ▶ Build in VS Code

```
Ctrl + Alt + B
```

***

# ⚠️ Notes

* Thesis uses: **XeLaTeX + BibLaTeX (biber)**
* Paper uses: **PDFLaTeX + BibTeX (MDPI requirements)**
* First compile may be slow → subsequent builds are fast
* If PDF not shown:
  * Run `LaTeX Workshop: View PDF`
  * Or check if file exists in folder

***

# ✅ Quick Start

```bash
# thesis
cd thesis
latexmk -xelatex main.tex

# paper
cd paper
latexmk -pdf main.tex
```

***

# 🎯 Recommended Workflow

* Work thesis in `thesis/`
* Write paper in `paper/`
* Share `refs.bib` between both

***

```

---

ถ้าต้องการ version เพิ่ม:
- ✅ Overleaf-compatible
- ✅ Docker LaTeX (reproducible env)
- ✅ Makefile build

บอกผมได้ เดี๋ยวจัดให้ 👍
```
