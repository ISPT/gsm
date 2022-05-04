defmodule GSM.Conversion do
  @moduledoc """
  GSM-7/UTF-8 character conversion maps.
  """
  # UTF-8 to GSM-7 mapping, based on:
  #
  # https://github.com/threez/smspromote/blob/master/lib/smspromote/encoding.rb
  #
  @conversion %{
    # COMMERCIAL AT
    0x0040 => "\x00",
    # POUND SIGN
    0x00A3 => "\x01",
    # DOLLAR SIGN
    0x0024 => "\x02",
    # YEN SIGN
    0x00A5 => "\x03",
    # LATIN SMALL LETTER E WITH GRAVE
    0x00E8 => "\x04",
    # LATIN SMALL LETTER E WITH ACUTE
    0x00E9 => "\x05",
    # LATIN SMALL LETTER U WITH GRAVE
    0x00F9 => "\x06",
    # LATIN SMALL LETTER I WITH GRAVE
    0x00EC => "\x07",
    # LATIN SMALL LETTER O WITH GRAVE
    0x00F2 => "\x08",
    # LATIN CAPITAL LETTER C WITH CEDILLA
    0x00C7 => "\x09",
    # LINE FEED
    0x000A => "\x0A",
    # LATIN CAPITAL LETTER O WITH STROKE
    0x00D8 => "\x0B",
    # LATIN SMALL LETTER O WITH STROKE
    0x00F8 => "\x0C",
    # CARRIAGE RETURN
    0x000D => "\x0D",
    # LATIN CAPITAL LETTER A WITH RING ABOVE
    0x00C5 => "\x0E",
    # LATIN SMALL LETTER A WITH RING ABOVE
    0x00E5 => "\x0F",
    # GREEK CAPITAL LETTER DELTA
    0x0394 => "\x10",
    # LOW LINE
    0x005F => "\x11",
    # GREEK CAPITAL LETTER PHI
    0x03A6 => "\x12",
    # GREEK CAPITAL LETTER GAMMA
    0x0393 => "\x13",
    # GREEK CAPITAL LETTER LAMDA
    0x039B => "\x14",
    # GREEK CAPITAL LETTER OMEGA
    0x03A9 => "\x15",
    # GREEK CAPITAL LETTER PI
    0x03A0 => "\x16",
    # GREEK CAPITAL LETTER PSI
    0x03A8 => "\x17",
    # GREEK CAPITAL LETTER SIGMA
    0x03A3 => "\x18",
    # GREEK CAPITAL LETTER THETA
    0x0398 => "\x19",
    # GREEK CAPITAL LETTER XI
    0x039E => "\x1A",
    # ESCAPE TO EXTENSION TABLE or NON-BREAKING SPACE
    nil => "\x1B",
    # LATIN CAPITAL LETTER AE
    0x00C6 => "\x1C",
    # LATIN SMALL LETTER AE
    0x00E6 => "\x1D",
    # LATIN SMALL LETTER SHARP S (German)
    0x00DF => "\x1E",
    # LATIN CAPITAL LETTER E WITH ACUTE
    0x00C9 => "\x1F",
    # SPACE
    0x0020 => "\x20",
    # EXCLAMATION MARK
    0x0021 => "\x21",
    # QUOTATION MARK
    0x0022 => "\x22",
    # NUMBER SIGN
    0x0023 => "\x23",
    # CURRENCY SIGN
    0x00A4 => "\x24",
    # PERCENT SIGN
    0x0025 => "\x25",
    # AMPERSAND
    0x0026 => "\x26",
    # APOSTROPHE
    0x0027 => "\x27",
    # LEFT PARENTHESIS
    0x0028 => "\x28",
    # RIGHT PARENTHESIS
    0x0029 => "\x29",
    # ASTERISK
    0x002A => "\x2A",
    # PLUS SIGN
    0x002B => "\x2B",
    # COMMA
    0x002C => "\x2C",
    # HYPHEN-MINUS
    0x002D => "\x2D",
    # FULL STOP
    0x002E => "\x2E",
    # SOLIDUS
    0x002F => "\x2F",
    # DIGIT ZERO
    0x0030 => "\x30",
    # DIGIT ONE
    0x0031 => "\x31",
    # DIGIT TWO
    0x0032 => "\x32",
    # DIGIT THREE
    0x0033 => "\x33",
    # DIGIT FOUR
    0x0034 => "\x34",
    # DIGIT FIVE
    0x0035 => "\x35",
    # DIGIT SIX
    0x0036 => "\x36",
    # DIGIT SEVEN
    0x0037 => "\x37",
    # DIGIT EIGHT
    0x0038 => "\x38",
    # DIGIT NINE
    0x0039 => "\x39",
    # COLON
    0x003A => "\x3A",
    # SEMICOLON
    0x003B => "\x3B",
    # LESS-THAN SIGN
    0x003C => "\x3C",
    # EQUALS SIGN
    0x003D => "\x3D",
    # GREATER-THAN SIGN
    0x003E => "\x3E",
    # QUESTION MARK
    0x003F => "\x3F",
    # INVERTED EXCLAMATION MARK
    0x00A1 => "\x40",
    # LATIN CAPITAL LETTER A
    0x0041 => "\x41",
    # LATIN CAPITAL LETTER B
    0x0042 => "\x42",
    # LATIN CAPITAL LETTER C
    0x0043 => "\x43",
    # LATIN CAPITAL LETTER D
    0x0044 => "\x44",
    # LATIN CAPITAL LETTER E
    0x0045 => "\x45",
    # LATIN CAPITAL LETTER F
    0x0046 => "\x46",
    # LATIN CAPITAL LETTER G
    0x0047 => "\x47",
    # LATIN CAPITAL LETTER H
    0x0048 => "\x48",
    # LATIN CAPITAL LETTER I
    0x0049 => "\x49",
    # LATIN CAPITAL LETTER J
    0x004A => "\x4A",
    # LATIN CAPITAL LETTER K
    0x004B => "\x4B",
    # LATIN CAPITAL LETTER L
    0x004C => "\x4C",
    # LATIN CAPITAL LETTER M
    0x004D => "\x4D",
    # LATIN CAPITAL LETTER N
    0x004E => "\x4E",
    # LATIN CAPITAL LETTER O
    0x004F => "\x4F",
    # LATIN CAPITAL LETTER P
    0x0050 => "\x50",
    # LATIN CAPITAL LETTER Q
    0x0051 => "\x51",
    # LATIN CAPITAL LETTER R
    0x0052 => "\x52",
    # LATIN CAPITAL LETTER S
    0x0053 => "\x53",
    # LATIN CAPITAL LETTER T
    0x0054 => "\x54",
    # LATIN CAPITAL LETTER U
    0x0055 => "\x55",
    # LATIN CAPITAL LETTER V
    0x0056 => "\x56",
    # LATIN CAPITAL LETTER W
    0x0057 => "\x57",
    # LATIN CAPITAL LETTER X
    0x0058 => "\x58",
    # LATIN CAPITAL LETTER Y
    0x0059 => "\x59",
    # LATIN CAPITAL LETTER Z
    0x005A => "\x5A",
    # LATIN CAPITAL LETTER A WITH DIAERESIS
    0x00C4 => "\x5B",
    # LATIN CAPITAL LETTER O WITH DIAERESIS
    0x00D6 => "\x5C",
    # LATIN CAPITAL LETTER N WITH TILDE
    0x00D1 => "\x5D",
    # LATIN CAPITAL LETTER U WITH DIAERESIS
    0x00DC => "\x5E",
    # SECTION SIGN
    0x00A7 => "\x5F",
    # INVERTED QUESTION MARK
    0x00BF => "\x60",
    # LATIN SMALL LETTER A
    0x0061 => "\x61",
    # LATIN SMALL LETTER B
    0x0062 => "\x62",
    # LATIN SMALL LETTER C
    0x0063 => "\x63",
    # LATIN SMALL LETTER D
    0x0064 => "\x64",
    # LATIN SMALL LETTER E
    0x0065 => "\x65",
    # LATIN SMALL LETTER F
    0x0066 => "\x66",
    # LATIN SMALL LETTER G
    0x0067 => "\x67",
    # LATIN SMALL LETTER H
    0x0068 => "\x68",
    # LATIN SMALL LETTER I
    0x0069 => "\x69",
    # LATIN SMALL LETTER J
    0x006A => "\x6A",
    # LATIN SMALL LETTER K
    0x006B => "\x6B",
    # LATIN SMALL LETTER L
    0x006C => "\x6C",
    # LATIN SMALL LETTER M
    0x006D => "\x6D",
    # LATIN SMALL LETTER N
    0x006E => "\x6E",
    # LATIN SMALL LETTER O
    0x006F => "\x6F",
    # LATIN SMALL LETTER P
    0x0070 => "\x70",
    # LATIN SMALL LETTER Q
    0x0071 => "\x71",
    # LATIN SMALL LETTER R
    0x0072 => "\x72",
    # LATIN SMALL LETTER S
    0x0073 => "\x73",
    # LATIN SMALL LETTER T
    0x0074 => "\x74",
    # LATIN SMALL LETTER U
    0x0075 => "\x75",
    # LATIN SMALL LETTER V
    0x0076 => "\x76",
    # LATIN SMALL LETTER W
    0x0077 => "\x77",
    # LATIN SMALL LETTER X
    0x0078 => "\x78",
    # LATIN SMALL LETTER Y
    0x0079 => "\x79",
    # LATIN SMALL LETTER Z
    0x007A => "\x7A",
    # LATIN SMALL LETTER A WITH DIAERESIS
    0x00E4 => "\x7B",
    # LATIN SMALL LETTER O WITH DIAERESIS
    0x00F6 => "\x7C",
    # LATIN SMALL LETTER N WITH TILDE
    0x00F1 => "\x7D",
    # LATIN SMALL LETTER U WITH DIAERESIS
    0x00FC => "\x7E",
    # LATIN SMALL LETTER A WITH GRAVE
    0x00E0 => "\x7F"
  }

  @spec conversion :: map
  def conversion, do: @conversion
end
