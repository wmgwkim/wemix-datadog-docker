FROM gcr.io/datadoghq/agent:latest

# datadog tag setting
COPY ["datadog-yaml/datadog.yaml", "/etc/datadog-agent/datadog.yaml"]

# system-probe setting
COPY ["datadog-yaml/system-probe.yaml", "/etc/datadog-agent/system-probe.yaml"]

# process setting
COPY ["datadog-yaml/process_conf.yaml", "/etc/datadog-agent/conf.d/process.d/conf.yaml"]

# wemix3.0 metric setting
COPY ["datadog-yaml/prometheus_conf.yaml", "/etc/datadog-agent/conf.d/prometheus.d/conf.yaml"]

# system_core metric setting
COPY ["datadog-yaml/system_core_conf.yaml", "/etc/datadog-agent/conf.d/system_core.d/conf.yaml"]

