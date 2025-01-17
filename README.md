<div align="center">
  <a href="https://wasmer.io" target="_blank" rel="noopener noreferrer">
    <img width="300" src="https://raw.githubusercontent.com/wasmerio/wasmer/master/assets/logo.png" alt="Wasmer logo">
  </a>
  
  <h1>LLVM Custom Builds</h1>
  
  <p>
    <a href="https://github.com/wasmerio/llvm-custom-builds/actions?query=workflow%3A%22Build%22">
      <img src="https://github.com/wasmerio/llvm-custom-builds/workflows/Build/badge.svg" alt="Build Status">
    </a>
    <a href="https://github.com/wasmerio/llvm-custom-builds/blob/master/LICENSE">
      <img src="https://img.shields.io/github/license/wasmerio/llvm-custom-builds.svg" alt="License">
    </a>
  </p>

  <h3>
    <a href="https://wasmer.io/">Website</a>
    <span> • </span>
    <a href="https://docs.wasmer.io">Docs</a>
    <span> • </span>
    <a href="https://slack.wasmer.io/">Slack Channel</a>
  </h3>

</div>

<hr/>

> Go along your path, this is a dangerous place.

This repository contains a small `build.sh` (or `build.ps1` for Windows 
PowerShell) script that builds LLVM. The version of LLVM is defined in the CI script.
The build is run by [Github
Actions](https://github.com/wasmerio/llvm-custom-builds/actions) on 4
platforms: Linux (Ubuntu, amd64 and aarch64), Darwin (macOS), and Windows.
Builds are attached to [Github releases as
assets](https://github.com/wasmerio/llvm-custom-builds/releases).

## Prebuilds

<table>
  <thead>
    <tr>
      <th>LLVM version</th>
      <th>Architecture</th>
      <th>Platform</th>
      <th>Package</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="6">19</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/19.x/llvm-darwin-amd64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/19.x/llvm-linux-amd64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/19.x/llvm-windows-amd64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td rowspan="2">aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/19.x/llvm-linux-aarch64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/19.x/llvm-darwin-aarch64.tar.xz">download</a></td>
    </tr>
      </tr>
      <td>riscv64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/19.x/llvm-linux-riscv64.tar.xz">download</a></td>
      <tr>
    <tr>
      <td rowspan="6">18</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/18.x/llvm-darwin-amd64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/18.x/llvm-linux-amd64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/18.x/llvm-windows-amd64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td rowspan="2">aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/18.x/llvm-linux-aarch64.tar.xz">download</a></td>
    </tr>
    <tr>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/18.x/llvm-darwin-aarch64.tar.xz">download</a></td>
    </tr>
      </tr>
      <td>riscv64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/18.x/llvm-linux-riscv64.tar.xz">download</a></td>
      <tr>
    <tr>
      <td rowspan="5">16</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/16.x/darwin-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/16.x/linux-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/16.x/windows-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/16.x/linux-aarch64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>riscv64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/16.x/linux-riscv64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td rowspan="5">15</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/15.x/darwin-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/15.x/linux-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/15.x/windows-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/15.x/linux-aarch64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>riscv64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/15.x/linux-riscv64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td rowspan="4">14</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/14.x/darwin-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/14.x/linux-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/14.x/windows-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/14.x/linux-aarch64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td rowspan="4">13</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/13.x/darwin-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/13.x/linux-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/13.x/windows-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/13.x/linux-aarch64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td rowspan="4">12</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/12.x/darwin-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/12.x/linux-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/12.x/windows-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/12.x/linux-aarch64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td rowspan="4">11</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/11.x/darwin-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/11.x/linux-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/11.x/windows-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>aarch64</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/11.x/linux-aarch64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td rowspan="4">10</td>
      <td rowspan="3">amd64</td>
      <td>Darwin</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/10.x/darwin-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/10.x/linux-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>Windows</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/10.x/windows-amd64.tar.gz">download</a></td>
    </tr>
    <tr>
      <td>aarch</td>
      <td>Linux</td>
      <td><a href="https://github.com/wasmerio/llvm-custom-builds/releases/download/10.x/linux-aarch64.tar.gz">download</a></td>
    </tr>
  </tbody>
</table>

## LLVM configuration

The following configuration is the one used for all actual prebuilds:

| Options | Value |
|-|-|
| `clang` | enabled |
| `docs` | not included |
| `examples` | not included |
| `go_tests` | not included |
| `lld` | enabled |
| `optimized_tablegen` | enabled |
| `targets_to_build` | `X86` + `AArch64` |
| `terminfo` | disabled |
| `tests` | not included |
| `tools` | included |
| `utils` | not included |
| `zlib` | disabled |

# License

The entire project is under the MIT License. Please read [the `LICENSE` file][license].


[license]: https://github.com/wasmerio/llvm-custom-builds/blob/master/LICENSE
