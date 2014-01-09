echo "Publish the HTML pages to mkcdrec.indyramp.net and mkcdrec.sourceforge.net"

echo "Copy the style/ directory"
chmod 644 style/*.css
#scp style/*.css gdha@mkcdrec.indyramp.net:doc/
#scp style/*.css gdha@web.sourceforge.net:/home/project-web/mkcdrec/htdocs/

echo "Copy the images/"
chmod 644 images/*
#scp images/*  gdha@mkcdrec.indyramp.net:doc/
#scp images/*  gdha@web.sourceforge.net:/home/project-web/mkcdrec/htdocs/

#echo "Copy the HTML pages"
chmod 644 *.html
scp *.html   gdha@mkcdrec.indyramp.net:doc/
scp *.html   gdha@web.sourceforge.net:/home/project-web/mkcdrec/htdocs/

##### copy the mkcdrec-howto pages
#scp  -r mkcdrec-howto  gdha@mkcdrec.indyramp.net:doc/
#scp  -r mkcdrec-howto  gdha@web.sourceforge.net:/home/project-web/mkcdrec/htdocs/


echo "Done."
