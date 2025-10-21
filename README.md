# [🚧 Experimental] Octopus CONNECT Review Tool

A Claude Code-powered tool for crafting thoughtful, comprehensive performance reviews (CONNECT reviews) at Octopus Deploy.

## What This Tool Does

This tool helps managers:
1. Gather and organize all relevant information about an employee's performance
2. Work through conversations (structured or ad-hoc) to clarify their thoughts
3. Generate complete CONNECT review write-ups with proper framing and goal-setting
4. Reference role definitions and competencies from Octopus People

## Directory Structure

```
.
├── README.md                    # This file
├── inputs/                      # Employee-specific materials (GIT IGNORED)
│   └── employee-name/          # Example template - copy for each employee
│       └── braindump.md        # Quick-start guide and notes file
├── framework/                   # What shapes reviews (committed to git)
│   ├── connect-template.md     # CONNECT review questions
│   ├── output-guidelines.md    # How outputs should be formatted
│   └── octopus-people/         # Role definitions (git submodule)
└── outputs/                     # Generated reviews (GIT IGNORED)
    └── [employee-name].md      # Single file per employee
```

## Getting Started

### First Time Setup

1. **Update Octopus People data** (optional, already cloned):
   ```bash
   cd framework/octopus-people
   git pull origin main
   cd ../..
   ```
   See [UPDATE_OCTOPUS_PEOPLE.md](UPDATE_OCTOPUS_PEOPLE.md) for details.

2. **Start Claude Code** in this directory:
   ```bash
   claude
   ```

### For Each Employee Review

1. **Create input directory** by copying the example:
   ```bash
   cp -r inputs/employee-name inputs/jane-smith
   ```

2. **Add materials** to `inputs/jane-smith/`:
   - Edit `braindump.md` to add your thoughts
   - Add other files: 1:1 notes, project notes, peer feedback, etc.
   - File naming is flexible - whatever works for you

3. **Work on the review** using Claude Code:

   **Option A: Structured Interview**
   ```
   /connect-interview jane-smith
   ```

   **Option B: Incremental Conversation** (more common)
   ```
   Let me work on Jane's review
   Jane did excellent work on the API redesign project...
   ```

   **Option C: Direct commands**
   ```
   Review what I have for Jane so far
   Let's work on the technical leadership section
   ```

4. **Find your output** at `outputs/jane-smith.md`

## How It Works

### Iterative Workflow

Managers work on reviews over days or weeks, not in one sitting. This tool supports:

- **Drop in anytime**: Add a thought, Claude updates the review
- **Structured interviews**: Use `/connect-interview` when you want guided questions
- **Gap analysis**: "Review what I have and tell me what's missing"
- **Focused work**: "Let's work on the mentoring section"
- **Direct refinement**: "Add more examples to the technical leadership part"

Claude maintains the output file across sessions, building it up incrementally.

### Output Format

Reviews are generated as single markdown files (`outputs/[employee-name].md`) containing:
- Complete answers to all CONNECT template questions
- Direct quotes from role definitions for every strength/growth area
- Inline goals within the growth areas
- Actionable "how" guidance for development areas

See `framework/output-guidelines.md` for detailed formatting requirements.

## Important: Git and Privacy

**The tool itself is checked into git. Employee data is NOT.**

### Committed to Git (Safe)
- Tool structure: README, framework, slash commands
- `framework/octopus-people/` - Public organizational data
- Example template at `inputs/employee-name/`

### Git Ignored (Never Committed)
- `inputs/*/` except the example template
- `outputs/` - All generated reviews
- Any real employee data

Check `.gitignore` to see the full configuration.

## Supported Roles

Currently configured for:
- **Engineering Management**: L4, L5, L6 (Director)
- **Software Engineering IC**: L1-L6 (Graduate through Senior Principal)

Role definitions are pulled from `framework/octopus-people/Engineering/`.

## Key Files

- **`framework/output-guidelines.md`** - Critical reference for what outputs should look like
- **`framework/connect-template.md`** - CONNECT review questions to answer
- **`inputs/employee-name/braindump.md`** - Example/template for getting started
- **`claude.md`** - Instructions for Claude Code (always in context)

## Questions or Issues?

This is a living tool. Feel free to update documentation, templates, and workflows as needed!
