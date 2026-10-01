# Build the DAppNode package
build:
    npx @dappnode/dappnodesdk build

# Re-validate hoprd.cfg.yaml against the real hoprd config parser
validate-config:
    ./test/validate-hoprd-config.sh
