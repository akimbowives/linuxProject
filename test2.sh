#Script must 1st generate index.html then create A.html and hyperlink to A.hml in index
#Place index.html into the folder /var/www/html
#Place a.html into the folder /var/www/html/A
#Both index and A must have bodies, but the content is up to me

#Creates index.html
echo "<html>
	<head>
	<title>
	I hope this Works
	</title>
	<body>
	<a href="A/A.html">Link to A</a>
	</body>
	</html>	" >> index.html

#Creates A.html
echo "<html>
	<head>
	<title>
	Welcome to A!
	</title>
	<body>
	<a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Click This if YOU DARE</a>
	</body>
	</html> " >> A.html

#Moves index.html into the correct folder (/var/www/html)
sudo mv index.html /var/www/html/

#Makes the Directory A in /var/www/html in order to store A.html
sudo mkdir /var/www/html/A	

#Moves A.html into the correct folder (/var/www/html/A)
sudo mv A.html /var/www/html/A
