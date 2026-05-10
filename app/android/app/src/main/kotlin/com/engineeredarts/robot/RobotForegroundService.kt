package com.engineeredarts.robot

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import androidx.core.app.NotificationCompat

class RobotForegroundService : Service() {

    companion object {
        const val CHANNEL_ID = "robot_control"
        const val NOTIF_ID = 42
        const val ACTION_STOP = "com.engineeredarts.robot.STOP"
        private const val EXTRA_UPDATE = "is_update"
    }

    private var notificationManager: NotificationManager? = null

    override fun onCreate() {
        super.onCreate()
        notificationManager = getSystemService(NotificationManager::class.java)
        ensureChannel()
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val battery   = intent?.getDoubleExtra("battery", 0.0) ?: 0.0
        val moving    = intent?.getBooleanExtra("moving", false) ?: false
        val direction = intent?.getStringExtra("direction") ?: ""
        val isUpdate  = intent?.getBooleanExtra(EXTRA_UPDATE, false) ?: false

        val notification = buildNotification(battery, moving, direction)

        if (isUpdate) {
            // Refresh the existing notification without re-calling startForeground.
            notificationManager?.notify(NOTIF_ID, notification)
        } else {
            startForeground(NOTIF_ID, notification)
        }
        return START_STICKY
    }

    private fun ensureChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            notificationManager?.createNotificationChannel(
                NotificationChannel(
                    CHANNEL_ID,
                    "Robot control",
                    NotificationManager.IMPORTANCE_LOW
                )
            )
        }
    }

    private fun buildNotification(
        battery: Double, moving: Boolean, direction: String
    ): Notification {
        // Broadcast the STOP action so MainActivity can relay it to Dart.
        val stopBroadcastIntent = Intent(ACTION_STOP)
        val stopPi = PendingIntent.getBroadcast(
            this, 0, stopBroadcastIntent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
        val status = if (moving) "Moving $direction" else "Idle"
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("Ameca · ${battery.toInt()}%")
            .setContentText(status)
            .setSmallIcon(android.R.drawable.ic_menu_compass)
            .setOngoing(true)
            .addAction(android.R.drawable.ic_media_pause, "STOP", stopPi)
            .build()
    }
}

