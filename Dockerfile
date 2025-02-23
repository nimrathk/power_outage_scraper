FROM umihico/aws-lambda-selenium-python:3.10.12-selenium4.9.1

COPY requirements.txt ${LAMBDA_TASK_ROOT}/requirements.txt

RUN --mount=type=cache,target=/root/.cache \
    pip3 install -r ${LAMBDA_TASK_ROOT}/requirements.txt

COPY . ${LAMBDA_TASK_ROOT}

ENV APP_VERSION=1.0.0

CMD ["main.handler"]