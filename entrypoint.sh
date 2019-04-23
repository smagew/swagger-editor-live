#!/bin/sh

usage()
{
    echo "usage: [[-f][-port]]"
    echo "./entrypoint.sh -f /var/project/swagger.sjon -port 8000"
}

SWAGGER_FILE=${PWD}/swagger.json
EDITOR_PORT=8000

while [ "$1" != "" ]; do
    case $1 in
        -f ) shift
            SWAGGER_FILE=$1
        ;;
        -port ) shift
            EDITOR_PORT=$1
        ;;
        * )  usage
             exit 1
    esac
    shift
done

echo "Swagger file: ${SWAGGER_FILE}"
echo "Port: ${EDITOR_PORT}"
echo ""
echo "Editor: http://localhost:${EDITOR_PORT}"
echo ""
echo ""

swagger-editor-live ${SWAGGER_FILE} --port=${EDITOR_PORT} --host=0.0.0.0