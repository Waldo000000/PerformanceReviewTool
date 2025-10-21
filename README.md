# [🚧 Experimental] Octopus CONNECT Review Tool

A Claude Code-powered tool for crafting thoughtful, comprehensive performance reviews (CONNECT reviews) at Octopus Deploy.

## What This Tool Does

This tool helps managers:
1. Gather and organize all relevant information about an employee's performance
2. Work through an interactive interview process to clarify their thoughts
3. Generate complete CONNECT review write-ups with proper framing and goal-setting
4. Reference role definitions and competencies from Octopus People

## Getting Started

### First Time Setup

1. **Update Octopus People data** (optional, already cloned):
   ```bash
   cd octopus-people
   git pull origin main
   cd ..
   ```
   See [UPDATE_OCTOPUS_PEOPLE.md](UPDATE_OCTOPUS_PEOPLE.md) for details.

2. **Start Claude Code** in this directory:
   ```bash
   claude
   ```

### For Each Employee Review

1. **Create employee directory**:
   ```bash
   mkdir employees/[employee-name]
   ```

2. **Add input materials** in `employees/[employee-name]/`:
   - 1:1 notes (any format/naming)
   - Previous review feedback
   - Project notes, peer feedback, etc.
   - Anything relevant to their performance

3. **Create a braindump file** (optional but recommended):
   ```bash
   # In the root directory
   touch braindump-[employee-name].md
   ```
   Use this to jot down thoughts before or during the interview process.

4. **Start the interview process**:
   In Claude Code:
   ```
   /connect-interview [employee-name]
   ```

5. **Review outputs** in `output/[employee-name]/`:
   - CONNECT answers
   - Goal recommendations
   - Role framing references

## Directory Structure

```
.
├── README.md                       # This file
├── UPDATE_OCTOPUS_PEOPLE.md       # Instructions for updating role data
├── templates/                      # CONNECT templates and role definitions
│   ├── connect-template.md        # Questions managers answer
│   └── roles/                     # Role definitions (extracted from Octopus People)
├── octopus-people/                # Local copy of github.com/octopusdeploy/people
├── employees/                      # Employee-specific inputs (GIT IGNORED)
│   └── [employee-name]/           # One directory per employee
│       ├── 1-1-notes.md
│       ├── project-notes.md
│       └── ...
├── braindump-[name].md            # Manager's rough notes (GIT IGNORED)
├── output/                        # Generated reviews (GIT IGNORED)
│   └── [employee-name]/
│       ├── connect-review.md
│       ├── goals.md
│       └── role-framing.md
└── .claude/                       # Claude Code configuration
    └── commands/                  # Slash commands for workflows
```

## Important: Git and Privacy

**The tool itself is checked into git. Employee data is NOT.**

### Checked In (Safe to Commit)
- All tool files: README, templates, slash commands
- The octopus-people directory (organizational data)
- Directory structure (.gitkeep files)

### Git Ignored (Never Committed)
- `employees/*/` - All employee-specific inputs
- `braindump-*.md` - Your rough notes
- `output/` - Generated reviews
- `notes/` - Any other personal notes

Check `.gitignore` to see the full list.

## Supported Roles

Currently configured for:
- **Engineering Management**: L4, L5, Director of Engineering
- **Software Engineering IC**: L1, L2, L3, L4 (Senior Engineer), Principal Engineer

Additional roles can be added by extracting definitions from `octopus-people/` and adding to `templates/roles/`.

## How It Works

1. **Templates** define the CONNECT review format and questions
2. **Octopus People** provides role definitions and competencies
3. **Employee inputs** give context on performance and achievements
4. **Claude Code** conducts an interactive interview to help crystallize your thoughts
5. **Outputs** are generated with proper framing, specific examples, and actionable goals

The entire process is conversational - just start Claude Code and use `/connect-interview` to begin.

## Questions or Issues?

This is a living tool. If you find something unclear or want to enhance the workflow, feel free to update the documentation and templates!
