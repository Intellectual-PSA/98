import psutil
import time

# convert celsius to fahrenheit
def c_to_f(celsius):
    return 9.0/5.0 * celsius + 32

while True:
    temps = psutil.sensors_temperatures()
    for name, entries in temps.items():
        for entry in entries:
            if c_to_f(entry.current) >= 98:
                print(f'Warning: {name} temperature is above 98 degrees Fahrenheit')
    time.sleep(1)  # check every second
