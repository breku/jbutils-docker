#!/usr/bin/env bash


LOCAL_VARIABLES="false"
PROD_VARIABLES="false"

function readArgs(){
    while [[ $# -gt 0 ]]
    do
    key="$1"
        case $key in
            --prod)
            LOCAL_VARIABLES="false"
            PROD_VARIABLES="true"
            shift
            ;;
            --local)
            LOCAL_VARIABLES="true"
            PROD_VARIABLES="false"
            shift
            ;;
            *)    # unknown option
            echo "Unknown argument. Exiting."
            exit 1
            shift # past argument
            ;;
        esac
    done
}

function validateArgs(){
    echo "> Validating arguments..."
    if [[ $LOCAL_VARIABLES = "false" && $PROD_VARIABLES = "false" ]]; then
        echo "No arguments provided."
        echo "Usage ./script --local or /script --prod"
        exit 2
    fi
    echo "< Done."
}

function startDocker(){
    echo "> Starting docker..."
    docker-compose up -d
    echo "< Done."
}

function copyVariables(){
    echo "> Copying variables..."
    if [[ $LOCAL_VARIABLES = "true" ]]; then
        echo "Copy local var"
        cp settings/local.env .env
    fi
    if [[ $PROD_VARIABLES = "true" ]]; then
        echo "Copy prod var"
        cp settings/prod.env .env
    fi
    echo "< Done."
}

readArgs $@
validateArgs
copyVariables
startDocker

