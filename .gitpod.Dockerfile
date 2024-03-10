FROM gitpod/workspace-python-3.12

USER gitpod

# Install virtualenv
RUN pip install virtualenv

# Create a virtual environment and activate it (in Docker style)
RUN python -m venv .venv
ENV PATH="/app/.venv/bin:$PATH"

# Upgrade pip in the virtual environment
RUN pip install --upgrade pip

# Install the necessary packages in the virtual environment
RUN pip install --upgrade git+https://github.com/huggingface/transformers.git accelerate datasets[audio]
