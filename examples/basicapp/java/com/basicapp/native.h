/*
 * Copyright 2023 The Bazel Authors. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef RULES_ANDROID_EXAMPLES_BASICAPP_JAVA_COM_BASICAPP_NATIVE_H_
#define RULES_ANDROID_EXAMPLES_BASICAPP_JAVA_COM_BASICAPP_NATIVE_H_

#include <jni.h>

extern "C" {
JNIEXPORT jint JNICALL
Java_com_basicapp_BasicActivityJNI_getIntFromJNI(JNIEnv* env, jclass thiz, jint a);
}

#endif  // RULES_ANDROID_EXAMPLES_BASICAPP_JAVA_COM_BASICAPP_NATIVE_H_
