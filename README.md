# template_siggraph_typst

A template to create SIGGRAPH papers in typst.

This template is based on the snippet from [vtta](https://gist.github.com/vtta/d6268ba81ebfdd1dc573db4b72df8436) which provides a base to *acm* papers.

## Usage

### Sample

You can use the `sample-sigconf.typ` as a base to create your own paper.

### Create your own

#### Create a new file

Like in the sample, you can use the `sigconf` class to create your paper.

```typst

You need to import the `sigconf.typ` in your document.

```typst
import sigconf.typ
```

Afterwards, you can use the `sigconf` class to create your paper.

```typst
import "sigconf.typ": acmart
#show: acmart.with(
    title = "Title",
    author = "Author",
    institute = "Institute",
    ...
)
```

#### Reconfigure the `ci.yml`

You need to reconfigure the `ci.yml` to use your document.

```yaml
name: Build Typst document
on: [push, workflow_dispatch]

permissions:
  contents: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
        
      - name: Typst
        uses: lvignoli/typst-action@main
        with:
          source_file: |
            <your_file>.typ

      - name: Upload PDF file
        uses: actions/upload-artifact@v4
        with:
          name: PDF
          path: <your_file>.pdf

      - name: Get current date
        id: date
        run: echo "DATE=$(date +%Y-%m-%d-%H:%M)" >> $GITHUB_ENV

      - name: Release
        uses: softprops/action-gh-release@v1
        if: github.ref_type == 'tag'
        with:
          name: "${{ github.ref_name }} — ${{ env.DATE }}"
          files: main.pdf
```
