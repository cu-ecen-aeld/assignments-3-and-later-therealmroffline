#include <stdio.h>
#include <syslog.h>
#include <errno.h>
#include <string.h>
int  main(int argc, char* argv[]) 
{
   openlog(NULL,0,LOG_USER);
   FILE *fp;
   if (argc != 3)
   {

	   syslog(LOG_ERR, "error: wrong number of arguments ");
	   return 1;
   }
   else{
   	
   	fp = fopen(argv[1], "w+");
	   
	   if( NULL == fp)
	   { 
	   return 1;
	   }
	   else
	   {
	   

	   fputs(argv[2], fp);
	   fclose(fp);
	   syslog(LOG_DEBUG,"Writing %s  to %s ",argv[2] , argv[1]);
	   return 0;

	   }
	   
   
   
   	syslog(LOG_ERR, "error:   %s",strerror(errno));
   	return 0;
   	}
}
