LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include

# Add your application source files here...
LOCAL_SRC_FILES := Alan.cpp AlanActionControl.cpp AlanAnimation.cpp AlanItemCount.cpp BigAlan.cpp Camera.cpp Common.cpp Component.cpp Enemy.cpp EnemySpawn.cpp Game.cpp GameObject.cpp GridControl.cpp HudCounter.cpp HudMeter.cpp HudTimer.cpp InputManager.cpp Interpol.cpp Light.cpp Main.cpp MiniTileMap.cpp Music.cpp Parallax.cpp Rect.cpp Resources.cpp Sound.cpp Sprite.cpp StageState.cpp State.cpp TileMap.cpp TileSet.cpp Timer.cpp TitleState.cpp Vec2.cpp

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_mixer SDL2_ttf

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog -Wl,--no-warn-shared-textrel

LOCAL_DISABLE_FATAL_LINKER_WARNINGS := true

include $(BUILD_SHARED_LIBRARY)
