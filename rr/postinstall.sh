#!/bin/sh

# Increase max_user_watches
echo kernel.perf_event_paranoid=1 | sudo tee /etc/sysctl.d/51-enable-perf-events.conf && sudo sysctl --system
