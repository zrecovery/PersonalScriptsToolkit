FROM intelanalytics/ipex-llm-inference-cpp-xpu:latest
ENV DEVICE=Arc
ENV NEOReadDebugKeys=1
ENV OverrideGpuAddressSpace=48
ENV no_proxy=localhost,127.0.0.1
WORKDIR /llm/scripts/
ENTRYPOINT ["/bin/bash", "-c", "source ipex-llm-init --gpu --device $DEVICE; bash start-ollama.sh; tail -f /dev/null"]
