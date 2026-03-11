# superintervals-wheels

Pre-built Python wheels for [superintervals](https://github.com/kcleal/superintervals),
patched to fix the broken `test/3rd-party/rust-lapper_kc` submodule that blocks the upstream build.

## Usage

### Install from releases

```bash
pip install https://github.com/YOUR_USERNAME/superintervals-wheels/releases/download/v0.3.0/superintervals-0.3.0-cp310-cp310-linux_x86_64.whl
```

### Trigger a new build

1. Go to **Actions → Build Wheels → Run workflow**
2. Fill in:
   - `git_sha`: commit SHA from [kcleal/superintervals](https://github.com/kcleal/superintervals)
   - `version_label`: e.g. `v0.3.0`

## Supported Python versions

- 3.10
- 3.11
- 3.12

## What's patched

- Removed `.gitmodules` referencing broken `test/3rd-party/rust-lapper_kc` submodule
- Removed `test/3rd-party/` directory
- Source otherwise unmodified
