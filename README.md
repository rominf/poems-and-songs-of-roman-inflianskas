# Poems and Songs of Roman Inflianskas

This repository contains the poems and songs by Roman Inflianskas, licensed under the [Creative Commons CC0 1.0 Universal Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/). The repository also includes a Makefile to facilitate the conversion of XML source files into LaTeX format and ultimately compile them into PDF using XeLaTeX.

## Obtaining the PDF

You can obtain the compiled PDF directly from the latest release of this repository:

- **Download PDF**: [Latest Release PDF](https://github.com/rominf/poems-and-songs-of-roman-inflianskas/releases/latest/download/poems-and-songs-of-roman-inflianskas.pdf)

## Contents

- `poems-and-songs-of-roman-inflianskas.xml`: The main XML file containing the poems and songs.
- `stylesheet.xsl`: Custom XSLT stylesheet used for converting the XML to LaTeX.
- `Makefile`: A Makefile to automate the conversion and compilation process.

## Licensing

The content in this repository is licensed under the [Creative Commons CC0 1.0 Universal Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/). This means you can use, modify, distribute, and build upon the material for any purpose without needing to give attribution.

## Prerequisites

Before using the Makefile, ensure you have the following installed:

- **Git**: To clone repositories.
- **XeLaTeX**: A TeX engine capable of processing LaTeX files with XeLaTeX.
- **Make**: A build automation tool to run the Makefile.

You can install these tools on most systems via package managers. For example, on Ubuntu/Debian:

```sh
sudo apt-get update
sudo apt-get install git texlive-xetex make
```

## Usage

1. **Clone the Repository**:
   ```sh
   git clone https://github.com/rominf/poems-and-songs-of-roman-inflianskas.git
   cd poems-and-songs-of-roman-inflianskas
   ```

2. **Build the PDF**:
   The Makefile will handle cloning the TEI Stylesheets repository, copying the custom XSLT stylesheet, and compiling the XML file into a LaTeX document and then into a PDF.

   ```sh
   make
   ```

   This command will generate `poems-and-songs-of-roman-inflianskas.pdf` in the current directory.

3. **Clean Up**:
   If you want to remove the generated files, you can use the clean target:

   ```sh
   make clean
   ```

## Contributing

Contributions are welcome! If you find any issues or have improvements to suggest, please open an issue or submit a pull request.
