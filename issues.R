## Obtiene todas las issues del repositorio starter-code
issues <- getPages("/repos/aigora/starter-code/issues")

ghPOST("/repos/oscarperpinan/prueba_0303/issues",
       title = "API",
       body = "Issue creada desde la API con R")
