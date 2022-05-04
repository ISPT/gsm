# GSM

GSM-7 encoding for Elixir (WITHOUT extension chars. This is forked from _https://github.com/l1h3r/gsm_

[GSM 03.38](https://en.wikipedia.org/wiki/GSM_03.38)

## Installation

```elixir
def deps do
  [
    {:gsm, "~> 0.1.0"}
  ]
end
```

## Usage

### GSM-7 conversion

```elixir
iex> GSM.to_gsm("foo")
"foo"

iex> GSM.to_gsm("баz")
** (GSM.BadCharacter) Unsupported GSM-7 character: "б"
```

### GSM-7 validation

````elixir
# Test if valid GSM string
iex> GSM.valid?("foo ")
true

iex> GSM.valid?("баz")
false

### UTF-8 conversion

```elixir
iex> GSM.to_utf8("foo a")
"foo a"

iex> GSM.to_utf8("∫")
** (GSM.BadCharacter) Unsupported GSM-7 character: "∫"
````
