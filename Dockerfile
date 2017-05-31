# Galaxy - Open Molecule Generator

FROM bgruening/galaxy-stable:17.05

MAINTAINER Björn A. Grüning, bjoern.gruening@gmail.com

ENV GALAXY_CONFIG_BRAND="Open Molecule Generator"

ADD openmg.yaml $GALAXY_ROOT/tools.yaml
RUN install-tools $GALAXY_ROOT/tools.yaml
