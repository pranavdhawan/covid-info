//package com.example.earlycare;
//
//import io.flutter.app.FlutterApplication;
//import io.flutter.plugins.androidalarmmanager.AlarmService;
//import io.flutter.plugins.androidalarmmanager.AndroidAlarmManagerPlugin;
//import com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin;
//import io.flutter.plugins.pathprovider.PathProviderPlugin;
//
//@SuppressWarnings("deprecation")
//public class Application extends FlutterApplication
//        implements io.flutter.plugin.common.PluginRegistry.PluginRegistrantCallback {
//    @Override
//    public void onCreate() {
//        super.onCreate();
//        AlarmService.setPluginRegistrant(this);
//    }
//
//    @Override
//    @SuppressWarnings("deprecation")
//    public void registerWith(io.flutter.plugin.common.PluginRegistry registry) {
//        AndroidAlarmManagerPlugin.registerWith(
//                registry.registrarFor("io.flutter.plugins.androidalarmmanager.AndroidAlarmManagerPlugin"));
//
//
//        FlutterLocalNotificationsPlugin.registerWith(registry.registerFor('com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin'));
//        SharedPreferencesPlugin.registerWith(registry.registruFor('io.flutter.plugins.pathprovider.PathProviderPlugin'));
//    }
//}