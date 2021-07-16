$LLVM_VERSION = $args[0]
$LLVM_REPO_URL = $args[1]

if ([string]::IsNullOrEmpty($LLVM_REPO_URL)) {
    $LLVM_REPO_URL = "https://github.com/llvm/llvm-project.git"
}

if ([string]::IsNullOrEmpty($LLVM_VERSION)) {
    Write-Output "Usage: $PSCommandPath <llvm-version> <llvm-repository-url>"
    Write-Output ""
    Write-Output "# Arguments"
    Write-Output "  llvm-version         The name of a LLVM release branch without the 'release/' prefix"
    Write-Output "  llvm-repository-url  The URL used to clone LLVM sources (default: https://github.com/llvm/llvm-project.git)"

	exit 1
}

# Clone the LLVM project.
if (-not (Test-Path -Path "llvm-project" -PathType Container)) {
	git clone "$LLVM_REPO_URL" llvm-project
}

Set-Location llvm-project
git fetch origin
git checkout "release/$LLVM_VERSION"
git reset --hard origin/"release/$LLVM_VERSION"

# Create a directory to build the project.
New-Item -Path "build/Release/include" -Force -ItemType "directory"
# Copy llvm-c headers
Copy-Item -r llvm/include/llvm-c build/Release/include
Set-Location build

# Create a directory to receive the complete installation.
New-Item -Path "install" -Force -ItemType "directory"

# Adjust compilation based on the OS.
$CMAKE_ARGUMENTS = ""

# Run `cmake` to configure the project.
cmake `
	-G "Visual Studio 15 2017 Win64" `
	-DCMAKE_BUILD_TYPE=Release `
	-DCMAKE_INSTALL_PREFIX=install `
	-DLLVM_ENABLE_PROJECTS="clang;lld" `
	-DLLVM_ENABLE_TERMINFO=OFF `
	-DLLVM_ENABLE_ZLIB=OFF `
	-DLLVM_INCLUDE_DOCS=OFF `
	-DLLVM_INCLUDE_EXAMPLES=OFF `
	-DLLVM_INCLUDE_GO_TESTS=OFF `
	-DLLVM_INCLUDE_TESTS=OFF `
	-DLLVM_INCLUDE_TOOLS=ON `
	-DLLVM_INCLUDE_UTILS=OFF `
	-DLLVM_OPTIMIZED_TABLEGEN=ON `
	-DLLVM_STATIC_LINK_CXX_STDLIB=ON `
	$CMAKE_ARGUMENTS `
	../llvm

# Copy llvm headers
Copy-Item -r include/llvm Release/include

# Showtime!
cmake --build . --config Release --target INSTALL
