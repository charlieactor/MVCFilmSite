## Charlie Actor's MVC Film Site

This MVC Film site allows the user to search a database of films based on their ID, update/delete said films once they're found, or search the whole database by keyword. Given more time, I'd like to add an update cast feature, proper redirects when POSTing, and some styling.

I struggled immensely with the release year, as it seemed impossible to get Java and SQL to speak the same language on what time of variable a YEAR is. I had it as an int, then a LocalDateTime, then a date, then finally a year....only to find out there's no ResultSet.setYear method. Eventually I changed the year back to an int and resolved to figure it out later.  

I had a TON of trouble due to the language_id, only to go back a lot later after hours of head smashing to see I should've ignored it from the get go. BUT it works now! Wasted a bunch of time, and now I don't have the time to do proper redirects or get to stretch goals, but that's how it goes I guess! I'll practice those again another time.