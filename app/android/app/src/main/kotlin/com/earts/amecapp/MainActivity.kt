package com.earts.amecapp

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Build
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import com.engineeredarts.robot.RobotForegroundService

class MainActivity : FlutterActivity() {

    private val channelName = "engineeredarts/robot/foreground_service"
    private var methodChannel: MethodChannel? = null

    // BroadcastReceiver that listens for the notification "STOP" action and
    // forwards it to Dart so the command BLoC can emit stopRequested.
    private val stopReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action == RobotForegroundService.ACTION_STOP) {
                methodChannel?.invokeMethod("stopRequested", null)
            }
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        methodChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channelName
        )

        methodChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "start", "update" -> {
                    val battery = call.argument<Double>("battery") ?: 0.0
                    val moving = call.argument<Boolean>("moving") ?: false
                    val direction = call.argument<String>("direction") ?: ""
                    val serviceIntent = Intent(this, RobotForegroundService::class.java).apply {
                        putExtra("battery", battery)
                        putExtra("moving", moving)
                        putExtra("direction", direction)
                    }
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        startForegroundService(serviceIntent)
                    } else {
                        startService(serviceIntent)
                    }
                    result.success(null)
                }
                "stop" -> {
                    stopService(Intent(this, RobotForegroundService::class.java))
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }

    override fun onResume() {
        super.onResume()
        val filter = IntentFilter(RobotForegroundService.ACTION_STOP)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(stopReceiver, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            registerReceiver(stopReceiver, filter)
        }
    }

    override fun onPause() {
        super.onPause()
        unregisterReceiver(stopReceiver)
    }
}
