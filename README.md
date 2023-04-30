<h1 align="center">Docker Notes :</h1>
<div align="center">
  <img alt="Demo" src="https://www.howtogeek.com/wp-content/uploads/csit/2021/04/075c8694.jpeg?height=200p&trim=2,2,2,2" />
</div>

<ul>
<h3 align="center">CREATE & RUN CONTAINER</h3>
<li>docker run = docker create + docker start</li>
<li>docker run <"image">.:creating and running a container from an Image.</br>
OR  docker create <"image"> :o/ docker id <br/>
& docker start -a <"image">ID : -a=> make docker watch for output from the container and print it out to terminal.</li>

<h3 align="center">CHECK CONTAINERS</h3>

<li>docker ps : see al the running containers.</li>
<li>docker ps --all : see all the container created get idea of running container. </li>
<li>docker images : check images .</li>
<li>docker build -t <"NAME"> . = rename image .</li>

<h3 align="center">DELETE CONTAINERS</h3>

<li>docker system prune : delete all stoped container & network & Images &build cache.</li>
<li>docker rm <"containerName OR ID"> </li>

<h3 align="center">SEE DETAILS</h3>

<li>docker logs <"containerID"> : not rerunning OR restarting the container getting a records from all logs emitted from the container. </br>
out put : hi there.
</li>
<li>docker exec -it <"containerImgOrID"> sh : Check files And root Folder.</li>

<h3 align="center">CLOSE CONTAINERS</h3>

<li>docker stop <"containerID">:clean & 10sec to stop container(recommanded). </li>
<li>docker kill <"containerID">: stop right now the container.</li>

<h3 align="center">Run Another Command in Container = run process.</h3>

<li>docker exec -it <"containerID"> <"new Command"> : Execute an additonal command in a container <-it = create input enter text>.</li>
<li>docker exec -it <"contaierID"> sh : open terminal in our program.</li>

<h3 align="center">Some Command</h3>

<li>cd ~/ :Home directory </li>
<li>cd / :Root directory</li>
<li>echo : Ecrir export :declare variable </li>
<li>sh :cmd or Command Show</li>
<li>ls : list directory.</li>
<li>-p :declare PORT</li>
<li>-t :declare Name of image OR container</li>
<li>exec -it : get text input in terminal</li>
<h3 align="center">Create Two Containers Isolated</h3>

<li>open 2 Terminal and write = docker run -it <"DockerImage"> sh : 
go to first terminal & create new file with TOUCH "hithere" command and see the deffirence between tow containers with LS command .</li>
<h3 align="center">Dockerfile Instruction & Argument</h3>
<li>	FROM					Alpine		:preparing image / like os system.
</li>
<li>	RUN					apk add --update redis	:run this command apk = apache Package.
</li>
<li>CMD					["redis-server"]		:argrment to cmd</li>
<li>WORKDIR 				specify the directory to enter package.json</li>
<li>COPY					Give The Path of package.json</li>
<h3 align="center">Command with Dockerfile</h3>
<li>docker build -t <"NameOfImage"> .  : build.  </li>
<li>docker run -p <"browserPort"> : <"containerPort"> <"containerName"> : RUN.</li>
<li>docker exec -it <"containerImgOrID"> sh : Check files And root Folder.</li>
<li>COPY ./package.js ./  : copy just package to install it after copy the rest.</li>
</ul>