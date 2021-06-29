cd ./base
docker build -t ai.beyond/babylon/notebooks/base . 

cd ../jupyter
docker build -t ai.beyond/babylon/notebooks/jupyter-base . 

cd ../jupyter-scipy
docker build -t ai.beyond/babylon/notebooks/jupyter-scipy . 

cd ..
docker tag ai.beyond/babylon/notebooks/base:latest 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/notebooks/base:latest
docker tag ai.beyond/babylon/notebooks/jupyter-base:latest 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/notebooks/jupyter-base:latest
docker tag ai.beyond/babylon/notebooks/jupyter-scipy:latest 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/notebooks/jupyter-scipy:latest

aws ecr get-login-password --region us-west-2 --profile bl-babylon | docker login --username AWS --password-stdin 562046374233.dkr.ecr.us-west-2.amazonaws.com
docker push 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/notebooks/base:latest
docker push 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/notebooks/jupyter-base:latest 
docker push 562046374233.dkr.ecr.us-west-2.amazonaws.com/ai.beyond/babylon/notebooks/jupyter-scipy:latest