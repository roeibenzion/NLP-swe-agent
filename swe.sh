docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(pwd)/keys.cfg:/app/keys.cfg \
  sweagent/swe-agent-run:latest \
  python run.py --image_name=sweagent/swe-agent:latest \
  --model_name gpt4 \
  --data_path https://github.com/pvlib/pvlib-python/issues/1603 \
  --config_file config/default_from_url.yaml  --skip_existing=False