# Play-with-Ibex

> Ibex is a heterogeneous group of nodes, a mix of AMD, INTEL and Nvidia GPUs with different architectures that gives the users a variety of options to work on.
https://www.hpc.kaust.edu.sa/ibex

I only have a portable laptop 💻 
Whenever I need to train models using GPU to accelerate, I cannot count on my own laptop. Thankfully KAUST provides abundant GPUs resources for students.
Therefore, I start my journey of making friends with Ibex.

Let's play with Ibex together!
A. Use Jupyter notebook remotely, so you can run jupyter files from ibex remote server on yous local browser!
B. Use Pycharm installed on your localhost already to run the files on the remote server with GPU!

Actually, A and B can be regarded as simliar ways you could play with ibex happily.

I'm a serious person so I would like to introduce B first.

### Pycharm connects remote server
1. download professional version Pycharm
2. create a project which you wants to run on the remote server (e.g. Test)
3. configure remote server's ip address

Tools -> Deployment -> Configuration
<img src='./img/1.png' width=600/>

create a new SFTP configuration
<img src='./img/2.png' width=200/>

fill the relevant connection information
<img src='./img/3.jpeg' width=600/>

fill the mappings
(the local path is the position where your project is on your localhost and the deployment path is the position you wanna upload your local project on the remote server). 
<span style='color:red;'>Pay attention! You only need to fill the rest of part of the whole complete path after exclude the root path you already filled in the previous step. For example, the root path I filled is '/home/xiongc/workspace' and the deployment path I should fill is '/project_name/' instead of '/home/xiongc/workspace/project_name/', otherwise you will have some troubles when the python file is running.</span>
Then click ok button
<img src='./img/4.jpeg' width=600/>

after the previous operations, the Pycharm console will show the process of uploading all the files to the remote server.
(Actually I just found this step is being done after configure the SSH interpreter :)

Select Tools -> Deployment -> Browse Remote Host, then the pannel on the left part of Pycharm will show the directories and files under the root path you filled for connections configuration page.
<img src='./img/5.png' width=600/>

4. configure project interpreter
<img src='./img/7.png' width=800/>

select SSH interpreter, the root + the directory you type will form the position where your project is uploaded in the remote server.
<img src='./img/8.png' width=600/>

fill the path obtained by executing command "which python"
<img src='./img/9.jpeg' width=600/>

Now, you can create a file name 'test.py' under your project directory on Pycharm and try to run it!

<span style="color:red;">If you want to change using another interpreter, please do the deploymemt configuration first and then set the SSH interpreter</span>

One more thing!
After configure the deployment settings, select what you want from deployment configurations list! No need to set a new server configuration again! Pay attention! Otherwise it will occur permission deny issue during uploading the files from localhost to remote server.
<img src='./img/10.png' width=600/>

If you are gonna use an existing server configuration, you should check the root path first in the Tools->Deployment panel first and fill the rest of part of the directory where you plan to upload you files remotely instead of the full path!!!
