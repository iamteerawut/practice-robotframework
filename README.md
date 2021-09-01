# Practice Robot Framework

<img alt="robotframework" src="https://img.shields.io/pypi/v/robotframework?label=version">

## Installation

If you already have [Python](http://python.org/) with [pip](http://pip-installer.org/) installed, you can simply run via `python`:

```bash
python -m pip install virtualenv
```

Creating a virtual environment via `python`:

```bash
python -m venv venv
```

Entering the virtual environment via `pip`:

```bash
.\venv\scripts\activate
```

Installing python package from the requirement file via `python`:

```bash
python -m pip install -r requirements.txt
```

Exiting the virtual environment via `batch`:

```bash
deactivate
```

## Usage

Now you can execute Robot Framework from the command line using `robot` command or by executing the `robot` module directly like `python -m robot`

```bash
robot -d .\robotframework\reports .\robotframework\integrations\1-getting-started
```

Or by using via `batch`

```bash
.\run-test
```

## Documentation

- [Robot Framework User Guide](http://robotframework.org/robotframework/#user-guide)
- [Standard libraries](http://robotframework.org/robotframework/#standard-libraries)
- [Built-in tools](http://robotframework.org/robotframework/#built-in-tools)
- [API documentation](http://robot-framework.readthedocs.org/)
- [General documentation and demos](http://robotframework.org/#documentation)

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
Please make sure to update tests as appropriate.
