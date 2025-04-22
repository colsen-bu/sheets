# Configuration file for the Sphinx documentation builder.

# -- Project information

html_static_path = ['_static']

project = 'colsen-sheets'
copyright = '2025, Chris Olsen'
author = 'Chris Olsen'

release = '1.0.2'
version = '1.0.2'

# -- General configuration

extensions = [
    'sphinx.ext.duration',
    'sphinx.ext.doctest',
    'sphinx.ext.autodoc',
    'sphinx.ext.autosummary',
    'sphinx.ext.intersphinx',
    'sphinx_design',
]

intersphinx_mapping = {
    'python': ('https://docs.python.org/3/', None),
    'sphinx': ('https://www.sphinx-doc.org/en/master/', None),
}
intersphinx_disabled_domains = ['std']

templates_path = ['_templates']

# -- Options for HTML output

html_theme = 'sphinx_rtd_theme'  # Use ReadTheDocs theme instead

html_theme_options = {
    "navigation_depth": 4,
    "collapse_navigation": False,
    "sticky_navigation": True,
    "titles_only": False,
    "display_version": True,
    "style_nav_header_background": "#3a1c6e",  # Dark purple for header
}

# Custom styling
html_css_files = [
    'css/custom.css',
]

html_js_files = [
    'js/custom.js',
]

# Favicon and logo
html_favicon = '_static/favicon.ico'
html_logo = '_static/NET3000_new.png'

# -- Options for EPUB output
epub_show_urls = 'footnote'

