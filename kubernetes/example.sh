#!/usr/bin/env bash
# Walk through kubernetes example

if [[ $1 == "--non-interactive" ]]
then
	NON_INTERACTIVE=yes
fi

echo "Starting example script, use the --non-interactive switch to run without prompts."
echo ""
echo "Discovering if you have kubernetes configured..."
echo ""

if kubectl cluster-info
then
	echo ""
	if [[ $NON_INTERACTIVE == "yes" ]]
	then
		echo "Kubernetes is configured."
	else
		read -p "Kubernetes is configured, press any key to continue"
	fi
else
	echo ""
	echo "Kubernets is not configured."
	echo "If you're on macOS check out this GitHub issue for more details:"
	echo ""
	echo "https://github.com/docker/for-mac/issues/2990#issuecomment-686730586"
fi

read -p "Discovering if you have built the mbigras/hello-world-app:0.0.1 docker image"
echo ""
if [[ $NON_INTERACTIVE == "yes" ]]
then
else
	read -p "mbigras/hello-world-app:0.0.1 is built, press any key to continue"
	echo ""
fi

if docker inspect mbigras/hello-world-app:0.0.1 > /dev/null
then
	echo "mbigras/hello-world-app:0.0.1 is built"
	echo ""
else
	echo "mbigras/hello-world-app:0.0.1 hasn't been built"
	echo "Change build the mbigras/hello-world-app:0.0.1 with the following commands:"
	echo ""
	echo "cd ../app"
	echo "make build"
fi

echo "Deploy the hello-world-app to Kubernetes and expose it via a LoadBalancer"
echo ""

if kubectl apply -f deployment.yml
then
	if [[ $NON_INTERACTIVE == "yes" ]]
	then
		echo "hello-world-app deployed"
		echo ""
	else
		read -p "hello-world-app deployed, press any key to continue"
		echo ""
	fi	
else
fi