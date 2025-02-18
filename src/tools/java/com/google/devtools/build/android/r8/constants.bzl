# Copyright 2025 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Constants used by the R8 desugar tool."""

DESUGAR_JVM_FLAGS = [
    # b/71513487
    "-XX:+TieredCompilation",
    "-XX:TieredStopAtLevel=1",
    "-Xms8g",
    "-Xmx8g",
    # b/172508621
    "-Dcom.android.tools.r8.sortMethodsOnCfWriting",
    "-Dcom.android.tools.r8.allowAllDesugaredInput",
    "-Dcom.android.tools.r8.noCfMarkerForDesugaredCode",
    "-Dcom.android.tools.r8.lambdaClassFieldsNotFinal",
]
