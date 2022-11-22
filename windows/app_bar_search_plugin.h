#ifndef FLUTTER_PLUGIN_APP_BAR_SEARCH_PLUGIN_H_
#define FLUTTER_PLUGIN_APP_BAR_SEARCH_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace app_bar_search {

class AppBarSearchPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AppBarSearchPlugin();

  virtual ~AppBarSearchPlugin();

  // Disallow copy and assign.
  AppBarSearchPlugin(const AppBarSearchPlugin&) = delete;
  AppBarSearchPlugin& operator=(const AppBarSearchPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace app_bar_search

#endif  // FLUTTER_PLUGIN_APP_BAR_SEARCH_PLUGIN_H_
