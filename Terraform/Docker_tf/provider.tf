############################################################
# Terraform Configuration File: provider.tf
# This file contains the configuration for the Docker provider
# and specifies the required provider version.
############################################################

terraform {
    # Required providers block specifies the Docker provider
    required_providers {
        docker = {
            # Source of the Docker provider
            source  = "kreuzwerker/docker"
            # Version of the Docker provider
            version = "3.0.2"
        }
    }
}

############################################################
# Docker Provider Configuration
# This block configures the Docker provider to use the Unix
# socket for communication with the Docker daemon.
############################################################

provider "docker" {
    # Host configuration for Docker provider
    host = "npipe:////./pipe/docker_engine"
}