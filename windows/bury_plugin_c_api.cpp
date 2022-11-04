#include "include/bury/bury_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "bury_plugin.h"

void BuryPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  bury::BuryPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
