def is_leapyear(year):
    return ((year % 100 != 0 and year % 4 == 0) or (year % 400 == 0))

def days_in_month(month, year):
    mdays = [31, 30]*3 + [31]*2 + [30, 31]*2
	mdays[1] = 28 + int(is_leapyear(year))
    return mdays[month - 1]

weekday = 0
year = 1900
month = 1
day_of_month = 1

sunday_count = 0

while True:
    if year == 2000 and month == 12 and day_of_month == 31:
        break

    if year >= 1901 and year <= 2000:
        if weekday == 6 and day_of_month == 1:
            sunday_count += 1

    weekday = (weekday + 1) % 7

    d = days_in_month(month, year)
    

    if month > 12:
        year += 1
        month = 1

print(sunday_count)
