
import json
import os
import subprocess

def get_response(message):
    """Returns json (as text)"""
    message = json.dumps(message)
    binary = './ocamlprog'
    try:
        process = subprocess.Popen(
            binary, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
        response, error = process.communicate(bytes(message, encoding="utf-8"))
    except OSError as exc:
        raise exc
    return response

if __name__ == "__main__":
    message = {"a": 0.5, "b": 0.5}
    response = get_response(message)
    print('float output: ', float(response))