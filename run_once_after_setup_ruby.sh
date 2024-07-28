#!/bin/bash

brew install asdf

asdf plugin add ruby
asdf plugin-update ruby
asdf install ruby latest
asdf global ruby latest