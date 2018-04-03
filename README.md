# Handin/submission LaTeX template
Light weight template for handing in school submissions using LaTeX. Suitable for math, physics, statistics and the like.
Here is the [handin-doc.pdf](https://raw.githubusercontent.com/Strauman/Handin-LaTeX/master/docs/handin-doc.pdf)
## Super quick start

### Texlive (MacOS and Linux): Only if you have texlive 2018
1. Install the package from [CTAN](https://ctan.org/pkg/handin). With `texlive`: `tlmgr install handin`
if you dont have texlive 2018, you can pretest it [here](https://www.tug.org/texlive/pretest.html): https://www.tug.org/texlive/pretest.html
2. Add `\usepackage{handin}` to your preamble (that is any place before `\begin{document}`

### MikTeX (Windows):
It's already a part of MikTeX, so just do `\usepackage{handin}`

### And then
use the [docs](http://mirrors.ctan.org/macros/latex/contrib/handin/handin-doc.pdf).

It is probably not the latest version though.
## Quickstart
`\usepackage{handin}`. However I reccomend checking out the example.tex in the quickstart:

Download the [example.zip](https://github.com/Strauman/Handin-LaTeX-template/blob/master/example.zip?raw=true). It contains two files: [example.tex](https://raw.githubusercontent.com/Strauman/Handin-LaTeX-template/master/example.tex) and [handin.sty](https://raw.githubusercontent.com/Strauman/Handin-LaTeX-template/master/handin.sty). Build example.tex and you're all good to go.

## Example files
Look at the [example.pdf](https://raw.githubusercontent.com/Strauman/Handin-LaTeX-template/master/example.pdf) generated by [example.tex](https://raw.githubusercontent.com/Strauman/Handin-LaTeX-template/master/example.tex) for an example that could be used at UiT - The Arctic University of Norway.

## Dependencies
`inputenc,graphicx,lastpage,scrextend,fancyhdr,geometry,amsmath,mathtools,bm,esint,iflang`

## Internationalization
Currently using `iflang` to decide betwen norwegian and english.

## Quick docs:
### Commands
`\problem{1}` would create a *Problem 1* headline and `\pproblem{a}` would then print *1a)* subheadline (with some margin magic and other snacks). More functionality will be made, also feel free to request functionality.

### Front page (`\maketitle`)
[layout.pdf](https://raw.githubusercontent.com/Strauman/Handin-LaTeX-template/master/layout.pdf?raw=true) is an overview of what commands writes out what where. They are all used as commands to be set:
- `\title{Assignment title}`
- `\author{Author(s)}`
- `\coursename{TST-101}`
- `\coursetitle{Test course}`
- `\institute{Institute of Physics and Technology}`
- `\logo{path/to/logo/or/image}`
- `\pagetext{Page \thepage~of \pageref{LastPage}}`
- `\containspages{Contains \pageref{LastPage} pages, front page included}`

`pagetext` and `containspages` are set to the values you see above.
