# Galaxy - Open Molecule Generator

FROM quay.io/bgruening/galaxy:16.01

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND "Open Molecule Generator" \
    GALAXY_CONFIG_CONDA_AUTO_INSTALL True \
    GALAXY_CONFIG_CONDA_AUTO_INIT True

# Install deepTools
ADD openmg.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
