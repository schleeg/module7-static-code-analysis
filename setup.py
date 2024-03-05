from pkg_resources import parse_requirements
from setuptools import setup

install_reqs = parse_requirements('requirements.txt')

setup(
    name='module7_static_code_analysis',
    version='1.0.0',
    author_email='delveccj@canisius.edu',
    author='Justin Del Vecchio',
    packages=['cyb600_module7'],
    tests=['tests'],
    license='Apache License Version 2.0',
)