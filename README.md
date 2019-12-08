# rebar3 templates

A set of additional [rebar3 templates](https://www.rebar3.org/docs/using-templates).

## Install

Clone this repository and make a symbolic link to the default [rebar3 template directory](https://www.rebar3.org/docs/using-templates#section-custom-templates
).

```
git clone https://github.com/joaohf/rebar3_templates
ln -sf rebar3_templates $HOME/.config/rebar3/templates
```

## Templates

### gen_server

`rebar3 new gen_server name=mymodule`

| Variable | Description |
| -------- | ----------- |
| name | gen_server module name|

### large_common_test_suite

`rebar3 new large_common_test_suite name=mytest`

| Variable | Description | Optional |
| -------- | ----------- | --------
| name | gen_server module name|
| desc | Test suite description
| author_name | author's name | yes |
| datetime | Date and Time | yes

### small_common_test_suite

`rebar3 new small_common_test_suite name=mytest`

| Variable | Description | Optional |
| -------- | ----------- | --------
| name | gen_server module name|
| desc | Test suite description
| author_name | author's name | yes |
| datetime | Date and Time | yes


## License

See [LICENSE](LICENSE) file.