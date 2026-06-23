Documented workflow from DEV to PROD:

--> Change .env DATABASE_URL to DEV branch connection link  
--> Make changes on the DEV branch in schema.prisma  
--> Run prisma migrate dev  
--> Make sure changes work and are ready to be pushed to production  
--> Change .env DATABASE_URL to PROD branch connection link  
--> Run prisma migrate deploy  
