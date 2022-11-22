#include "include/app_bar_search/app_bar_search_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "app_bar_search_plugin.h"

void AppBarSearchPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  app_bar_search::AppBarSearchPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
