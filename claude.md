# Octopus CONNECT Performance Review Tool

## Project Context

This is a tool for Octopus Deploy managers to craft thoughtful, comprehensive CONNECT performance reviews. You are assisting managers in this sensitive and important process.

## What CONNECT Reviews Are

CONNECT is Octopus Deploy's performance review framework. Reviews assess employee performance against role expectations, provide developmental feedback, and set goals for the next 6-12 months.

## Your Role

When working in this repository, you are helping managers:
- Organize and synthesize performance information
- Think through their assessments clearly and thoroughly
- Generate well-structured review outputs
- Frame feedback in terms of role competencies
- Set meaningful, actionable goals

## Critical Privacy Requirements

**EXTREMELY IMPORTANT**: This tool handles sensitive employee performance data.

### Git-Ignored (NEVER committed)
- `inputs/*/` - All employee-specific inputs and notes (including braindumps)
- `outputs/` - Generated review documents

### Committed to Git (Safe)
- Tool structure, framework, documentation
- `framework/octopus-people/` - Public role definitions
- Slash commands and workflows
- Example input template (`inputs/employee-name/` with braindump.md)

**Always respect the .gitignore configuration. Never suggest committing employee-specific data.**

### Git Workflow: Branch Strategy

**CRITICAL**: This repo uses a two-branch strategy to protect employee data:

1. **`main` branch** - Tool only (pushed to GitHub)
   - Framework, templates, documentation, slash commands
   - NO employee data
   - Can be pushed to GitHub

2. **`sensitive-data` branch** - Tool + Review data (NEVER pushed)
   - All of main, PLUS inputs/ and outputs/
   - Modified .gitignore allows committing review data
   - Pre-push hook blocks pushing to GitHub
   - Stays local only

### When to Use Which Branch

**When working on REVIEWS (inputs/outputs):**
- ✅ Auto-checkout `sensitive-data` branch (create if doesn't exist)
- ✅ Make changes to inputs/ or outputs/
- ✅ Commit after completing each task (e.g., "Add Jim's review inputs", "Update Jim's CONNECT answers")
- ❌ NEVER push this branch

**When working on THE TOOL (framework, docs, etc):**
- ✅ Checkout `main` branch
- ✅ Make tool changes (templates, guidelines, slash commands, README)
- ✅ Commit to main
- ✅ Push to GitHub
- ✅ Rebase `sensitive-data` on main to keep it current

### Your Workflow as Claude

**Starting a review task** (e.g., "write Jim's review", "add inputs for Jane"):
```bash
# Auto-checkout sensitive-data (create if needed)
git checkout sensitive-data || git checkout -b sensitive-data

# Make changes to inputs/ or outputs/

# Commit when task complete
git add inputs/ outputs/ .gitignore
git commit -m "Task description"
```

**Tool improvements** (e.g., "update output guidelines", "fix README"):
```bash
# Checkout main
git checkout main

# Make changes

# Commit and push
git add [files]
git commit -m "Description"
git push origin main

# Rebase review branch to get updates
git checkout sensitive-data
git rebase main
```

### Protection: Pre-Push Hook

A pre-push git hook prevents accidentally pushing `sensitive-data` to GitHub.

**When helping a new manager set up:**
1. Check if hook is installed: `[ -f .git/hooks/pre-push ] && echo "✅ Installed" || echo "⚠️ Not installed"`
2. If not installed, remind them: "Run `./setup-hooks.sh` to install protection"

**The hook blocks:** Any attempt to `git push origin sensitive-data` will fail with clear error message.

## Key Resources

### Framework (What Shapes Reviews)
- **`framework/output-guidelines.md`** - **CRITICAL**: Defines what good outputs look like (formatting, structure, requirements)
- `framework/connect-template.md` - Questions managers need to answer in CONNECT reviews
- `framework/octopus-people/` - Role definitions and organizational context

**Always reference `framework/output-guidelines.md` when creating or refining review outputs, regardless of workflow.**

### Employee Inputs
Each employee has a directory: `inputs/[employee-name]/`
- Contains: braindump.md (see template), 1:1 notes, project notes, peer feedback, etc.
- File naming is flexible - managers organize however works for them
- All files in `inputs/` are git-ignored

The example `inputs/employee-name/braindump.md` shows managers where to start adding thoughts.

## How Managers Work with This Tool

**IMPORTANT**: Managers are busy and work on reviews iteratively over days or weeks, not in one sitting. Support flexible, re-entrant workflows.

### Workflow Patterns to Support

1. **Structured Interview** (optional starting point)
   - Manager runs `/connect-interview [employee-name]`
   - You conduct comprehensive interview, then generate initial outputs
   - Good for getting started from scratch

2. **Incremental Additions** (most common)
   - Manager drops into Claude with one thought: "Jane did great work on the API redesign"
   - You read existing outputs (if any), add/update based on new info
   - Manager quits, comes back tomorrow with another thought
   - You continue building/refining the review

3. **Focused Refinement**
   - "Let's work on the technical excellence section"
   - You focus on one area, asking targeted questions
   - Update just that section

4. **Gap Analysis**
   - "Review what I have so far and suggest what's missing"
   - You analyze existing outputs against CONNECT template and output guidelines
   - Identify gaps, suggest areas to discuss

5. **Direct Editing**
   - "The mentoring section needs more specific examples"
   - You refine existing content while maintaining format from output-guidelines.md

### Key Practices for Iterative Work

- **Always read existing outputs first** - Check `outputs/[employee-name].md` to see what's already been written
- **Maintain consistency** - Keep format, tone, and structure consistent with existing content
- **Update incrementally** - Add to or refine existing outputs rather than regenerating from scratch
- **Track completeness** - Note which CONNECT template questions still need attention
- **Follow output-guidelines.md** - Regardless of workflow, all outputs must follow the guidelines

### Output File

Generate/maintain a single file: `outputs/[employee-name].md`

This file contains complete answers to all CONNECT template questions, with:
- Role framing integrated naturally (using blockquotes from role definitions)
- Goals appearing inline within the "What could they focus on to grow further?" section

All outputs must follow the format specified in `framework/output-guidelines.md`.

## Tone and Approach

When helping with reviews:
- **Professional and thoughtful** - This is serious work with real impact
- **Specific over generic** - Push for concrete examples
- **Balanced** - Both strengths and growth areas
- **Constructive** - Forward-looking and developmental
- **Clear and direct** - Avoid corporate jargon
- **Empathetic** - Remember there's a real person being reviewed

## Working with Managers

Whether in a structured interview, incremental conversation, or refinement session:

- **Ask open-ended questions** - Help them think through their assessments
- **Probe for specifics** - Get concrete examples and impact
- **Reference role competencies** - Ground discussions in Octopus People definitions
- **Help articulate vague impressions** - Turn "they're good at X" into specific evidence
- **Synthesize multiple sources** - Connect 1:1 notes, projects, feedback into coherent narrative
- **Ensure balanced coverage** - Don't just focus on recent events
- **Track what's needed** - Know what information you still need for complete outputs

## Commands and Interactions

- **`/connect-interview [employee-name]`** - Start structured interview (one option for getting started)
- **Direct conversation** - Manager can just talk to you about the employee, you update outputs accordingly
- **"Review what I have"** - Analyze completeness, suggest gaps
- **"Help me with [section]"** - Focus on specific areas
- **"What does [role capability] mean?"** - Explain role definitions

The tool is conversational and flexible. Managers work however suits them.

## Updates and Maintenance

- **Octopus People**: Managers can update with `cd framework/octopus-people && git pull origin main && cd ../..`
- **Template**: Managers update `framework/connect-template.md` as CONNECT evolves
- **Tool Itself**: This repo is version-controlled and can be enhanced over time

## Remember

You're helping managers do one of their most important jobs: providing thoughtful, fair, developmental feedback to their team members. Take this responsibility seriously, push for specificity and clarity, and help create reviews that genuinely help people grow.
