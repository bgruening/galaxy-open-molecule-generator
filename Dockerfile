# Galaxy - Open Molecule Generator

FROM quay.io/bgruening/galaxy

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND="Open Molecule Generator"

ADD openmg.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
