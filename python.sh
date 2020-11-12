# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
echo "Starting python setup"

# Install most recent python version
echo "Installling most recent python version, 3.9.0."
pyenv install 3.9.0

pyenv global 3.9.0

echo "Installling jupyter lab..."
pip install jupyterlab

echo "Creating directory .virtualenvs"
cd $HOME && mkdir .virtualenvs

# Create initial python 3 env
echo "Creating virtual environment name py3_env"
python -m venv ~/.virtualenvs/py3_env

# Install python packages
echo "Installing python packages in py3_env ..."

source ~/.virtualenvs/py3_env/bin/activate

PACKAGES=(
    pandas
    numpy
    seaborn
    matplotlib
    pandas_profiling
    ipykernel
)

pip install ${PACKAGES[@]}

# Add virtual env kernal to Jupyter
python -m ipykernel install --user --name=py3_env

# Deactivate virtual env
deactivate

echo "Finished python virtual environment setup."
