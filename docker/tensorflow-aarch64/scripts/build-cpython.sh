# *******************************************************************************
# Copyright 2021 Arm Limited and affiliates.
# SPDX-License-Identifier: Apache-2.0
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
# *******************************************************************************

description: >-
  SSD-ResNet34 FP32 for object detection pretrained on COCO 2017 dataset. For details on how
  this model was trained please see
  <https://github.com/mlcommons/training/tree/master/image_classification> for more information
model:
  - name: resnet34-ssd1200.pytorch
    script: ssd_resnet34.py
    source: https://zenodo.org/record/3236545/files/resnet34-ssd1200.pytorch
    labels: https://raw.githubusercontent.com/amikelive/coco-labels/master/coco-labels-2014_2017.txt
    threshold: 0.5
image_preprocess:
  - input_shape: [1,3,1200,1200]
    mean: [0.485,0.456,0.406]
    std: [0.229, 0.224, 0.22]
