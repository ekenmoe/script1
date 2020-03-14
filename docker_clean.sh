#!/bin/bash
#Emile Ken


# Cleanup docker files: containers and images.


echo -e "\n\n =========== Starting the Docker Clean Up Script ================== \n\n"


docker rmi $(docker images --filter "dangling=true" -q --no-trunc)


docker volume rm $(docker volume ls -qf dangling=true)


echo -n "\n\n ============================ Clean Up Completed ============================= \n\n"



