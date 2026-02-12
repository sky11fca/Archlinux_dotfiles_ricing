import psutil
import os 
import time 

LIMITS = {
    "OVERCHARGING": 100,
    "CHARGED": 60,
    "LOW": 20,
    "CRIT": 10
}

NOTIF_ID = 9991

def notify(title, message, urgency="normal", icon="battery"):
    os.system(f'dunstify -r {NOTIF_ID} -u {urgency} "{title}" "{message}" -i {icon}')

def main():
    last_notified = None 

    while True:
        battery = psutil.sensors_battery()
        if battery is None:
            break 
        
        percent = battery.percent
        charging = battery.power_plugged

        if charging:
            if percent == 100 and last_notified != "OVERCHARGING":
                notify("Battery overcharged", "Unplug your charger NOW!", "critical", "battery-full-charged")
                last_notified = "OVERCHARGING"
            elif percent >= 60 and percent < 100 and last_notified != "CHARGED":
                notify("Battery Charged", "You may unplug your charger", "normal", "battery-good")
                last_notified = "CHARGED"
        else:
            if percent <= 10 and last_notified != "CRIT":
                notify("Critical Battery", "Plug your charger immediately", "critical", "battery-empty")
                last_notified = "CRIT"
            elif percent <= 20 and last_notified != "LOW":
                notify("Low Battery", "You may want to plug your charger", "normal" ,"battery-low")
                last_notified = "LOW"
        
        if(21 < percent < 59):
            last_notified = None 
        
        time.sleep(30)

if __name__ == "__main__":
    main()
