#!/bin/bash

# تعداد کاربران آنلاین
echo "تعداد کاربران آنلاین:"
who | wc -l

# نوع دسترسی کاربران
echo -e "\nنوع دسترسی کاربران:"
for user in $(who | awk '{print $1}'); do
    usermod -aG $(groups $user | awk -F: '{print $2}') $user | awk '{print $1}'
done

# نسخه لینوکس
echo -e "\nنسخه لینوکس:"
lsb_release -a

# مدت زمان روشن بودن سیستم
echo -e "\nمدت زمان روشن بودن سیستم:"
uptime -p
