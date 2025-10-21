# Updating Octopus People Data

The `octopus-people/` directory contains a local copy of the Octopus People repository, which provides role definitions and organizational context for performance reviews.

## Why Local Copy?

This tool maintains a local snapshot of Octopus People so that:
- Reviews are crafted against the role definitions that were current at the time
- Historical reviews remain consistent with the expectations that existed when they were written
- The tool works offline once initially set up

## How to Update

When you need to pull the latest role definitions and organizational data:

```bash
cd octopus-people
git pull origin main
cd ..
```

## When to Update

Consider updating:
- At the start of each review cycle
- When role definitions have been significantly revised
- When new roles are added that you need to review against

## Checking Current Version

To see what version of Octopus People you're using:

```bash
cd octopus-people
git log -1 --oneline
git remote -v
cd ..
```

This will show the latest commit and confirm you're tracking the official repository.
