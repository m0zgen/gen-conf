#!/bin/bash

WORK_DIR="/path/to/dir"
APP_NAME="My-App"
APP_USER="app-usr"
ENVS="dev"

function render_template() {
  eval "echo \"$(cat $1)\""
}
function generate_httpd_conf {
  echo "Generate systemd unit..."
  render_template service.tmpl > /tmp/my-app.service
}
generate_httpd_conf
