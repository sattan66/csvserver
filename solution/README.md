alias d="docker"
d ps -a
d run -d --name=assignment infracloudio/csvserver:latest
d ps -a
d logs bd36282f744a
vi gencsv.sh
./gencsv.sh 2 8
cat inputFile
d run -d --name=assignment -v "/mnt/c/Users/satta/csvserver/solution/inputFile":"/csvserver/inputdata" infracloudio/csvserver:latest
d run -d --name=assignment1 -v "/mnt/c/Users/satta/csvserver/solution/inputFile":"/csvserver/inputdata" infracloudio/csvserver:latest
d ps -a
d exec -it assignment1 bash
d stop assignment1
d ps -a
d run -d --name=assignment2 -v "/mnt/c/Users/satta/csvserver/solution/inputFile":"/csvserver/inputdata" -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest
d ps -a
