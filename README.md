# template_siggraph_typst

A template to create SIGGRAPH papers in typst.

This template is based on the snippet from [vtta](https://gist.github.com/vtta/d6268ba81ebfdd1dc573db4b72df8436) which provides a base to *acm* papers.

## Usage

### Sample

You can use the `sample-sigconf.typ` as a base to create your own paper.

### Create your own

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
