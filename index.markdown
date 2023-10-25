---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
sop_pages:
  - title: "CNC Programmer SOP"
    path: "docs/PanelComplete/CNCProgrammerSOP"
  - title: "Cutting Process"
    path: "docs/PanelComplete/CuttingProcess"
  - title: "Cutting SOP"
    path: "docs/PanelComplete/CuttingSOP"
  - title: "Fabrication SOP"
    path: "docs/PanelComplete/FabricationSOP"
---


## MillerClapperton Navigation

### SOP AND MANUALS
{%- for page in site.sop_pages -%}
- [{{ page.title }}]({{ site.baseurl }}/{{ page.path }})
{%- endfor -%}
