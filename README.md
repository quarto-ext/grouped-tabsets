# Grouped Tabsets

[See the extension in action](https://quarto-ext.github.io/grouped-tabsets/).

This quarto extension provides support for "grouped" tabsets in Quarto HTML documents.

Consider the case where you have a collection of tabsets potentially spread across many documents, all logically grouped together. 
A typical example are code snippets in multiple languages.
When your reader switches languages across one of the tabs, this naturally implies an intent to switch the other tabs as well.

Grouped tabs offer easy support for this use case. 

## Installing

Type this in your shell:

```
$ quarto install quarto-ext/grouped-tabsets
```

## Enabling

Add this to your project `_quarto.yml` file:

```yaml
filters:
  - quarto-ext/grouped-tabsets
```

## Using

Add the `group` attribute to your tabsets:

```markdown

::: {.panel-tabset group="language"}

## R

R-specific examples

## Python

Python-specific examples
:::
```

In this case, the `language` group is shared across your entire website and stored in [local storage](https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage), so tabs will be automatically set across documents and visits to the website.
