#!/usr/bin/env bash
ansible -i hosts -m ping All -u build
