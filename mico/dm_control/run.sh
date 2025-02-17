# Copyright 2023 The Google Research Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash
# Note that to run this you need to obtain the gin files for Dopamine JAX
# agents:
# DQN: github.com/google/dopamine/tree/master/dopamine/jax/agents/dqn/configs
# Rainbow: github.com/google/dopamine/tree/master/dopamine/jax/agents/rainbow/configs
# QR-DQN: github.com/google/dopamine/tree/master/dopamine/jax/agents/quantile/configs
# IQN: github.com/google/dopamine/tree/master/dopamine/jax/agents/implicit_quantile/configs
set -e
set -x

# virtualenv -p python3 .
# source ./bin/activate

# pip install -r mico/requirements.txt
python3 -m mico.dm_control.train \
  --base_dir=temp2 \
  --gin_files=mico/dm_control/configs/ve.gin \
  --agent_name "vemico" \
  # --gin_bindings="JaxImplicitQuantileAgent.min_replay_history=100" \
  # --gin_bindings="create_metric_agent.agent_name='metric_implicit_quantile'" \
  # --gin_bindings="MetricImplicitQuantileAgent.tau=0.03"
