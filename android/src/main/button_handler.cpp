#include <jni.h>
#include <android/log.h>
#include <stdbool.h>

#define LOG_TAG "PhysicalButtonsHandler"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)

JNIEXPORT jboolean
extern "C" JNICALL
Java_com_example_hardware_test_PhysicalButtonHandler_handleKeyEvent(JNIEnv *env, jobject instance, jint keyCode, jint action) {
    LOGI("Key event received: keyCode=%d, action=%d", keyCode, action);
    // Handle the key event and return true if handled
    if (action == 1) {  // Key up event
        if (keyCode == 26) {  // Power key
            // Send event to Flutter
            // ...
            return JNI_TRUE;
        } else if (keyCode == 24 || keyCode == 25) {  // Volume keys
            // Send event to Flutter
            // ...
            return JNI_TRUE;
        } else if (keyCode == 131) {  // Custom key 131
            // Send event to Flutter
            // ...
            return JNI_TRUE;
        } else if (keyCode == 132) {  // Custom key 132
            // Send event to Flutter
            // ...
            return JNI_TRUE;
        }
    }
    return JNI_FALSE;
}
