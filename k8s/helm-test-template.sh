#!/bin/bash
helm template test chart && helm lint ./chart
helm template test back && helm lint ./back
helm template test front && helm lint ./front