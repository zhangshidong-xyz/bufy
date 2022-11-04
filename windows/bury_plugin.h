#ifndef FLUTTER_PLUGIN_BURY_PLUGIN_H_
#define FLUTTER_PLUGIN_BURY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace bury {

class BuryPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  BuryPlugin();

  virtual ~BuryPlugin();

  // Disallow copy and assign.
  BuryPlugin(const BuryPlugin&) = delete;
  BuryPlugin& operator=(const BuryPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace bury

#endif  // FLUTTER_PLUGIN_BURY_PLUGIN_H_
