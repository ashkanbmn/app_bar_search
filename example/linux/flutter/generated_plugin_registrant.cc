//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <app_bar_search/app_bar_search_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) app_bar_search_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AppBarSearchPlugin");
  app_bar_search_plugin_register_with_registrar(app_bar_search_registrar);
}
