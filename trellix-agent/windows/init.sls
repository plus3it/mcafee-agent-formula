{%- from tpldir ~ '/map.jinja' import trellix with context %}

# This state assumes the pkg installer was generated by Trellix ePolicy
# Orchestrator, and so the necessary configuration is embedded in the
# installer. Also requires that the salt winrepo has been configured
# with a `trellix` pkg definition

install-trellix-agent:
  pkg.installed:
    - name: {{ trellix.package }}
{%- if trellix.version %}
    - version: {{ trellix.version }}
{%- endif %}
    - allow_updates: True
