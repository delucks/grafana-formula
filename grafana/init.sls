# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}

include:
  - {{ '.archive' if grafana.pkg.use_upstream_archive else '.package' }}
  - .config
  - .service
