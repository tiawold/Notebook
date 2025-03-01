from setuptools import setup, find_packages

setup(
    name="flask_app",
    version="0.1",
    packages=find_packages(),
    install_requires=[
        'Flask',
    ],
    entry_points={
        'console_scripts': [
            'run-flask-app=app.hello:app.run',
        ],
    },
)