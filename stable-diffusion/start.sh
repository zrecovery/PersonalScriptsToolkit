export NEOReadDebugKeys=1
export OverrideGpuAddressSpace=48
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
cd /app
python launch.py --use-ipex
