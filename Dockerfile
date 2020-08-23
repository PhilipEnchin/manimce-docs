FROM sphinxdoc/sphinx
RUN pip install sphinx_rtd_theme
RUN pip install recommonmark
RUN pip install guzzle_sphinx_theme
