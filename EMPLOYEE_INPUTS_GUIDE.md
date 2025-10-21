# Employee Inputs Guide

This guide explains how to organize materials for each employee's CONNECT review.

## Directory Structure

For each employee you're reviewing, create a directory:

```
employees/[employee-name]/
```

This entire directory is git-ignored, so all contents remain private and local to your machine.

## What to Include

Put any relevant materials in the employee's directory. The tool is flexible about file naming and organization. Common inputs include:

### 1:1 Notes
- `1-1-notes.md` - Your regular 1:1 meeting notes
- `1-1-2024-Q4.md` - Notes organized by quarter
- Any format that works for you

### Project and Achievement Notes
- `projects.md` - Key projects they've worked on
- `achievements.md` - Notable accomplishments
- `incidents.md` - How they handled production issues

### Feedback
- `peer-feedback.md` - Feedback from colleagues
- `previous-review.md` - Their last CONNECT review
- `customer-feedback.md` - Any customer interactions

### Development and Growth
- `development-areas.md` - Areas they're working on
- `learning.md` - Courses, training, skills they've developed
- `career-conversations.md` - Career development discussions

## File Format

- Markdown is recommended but not required
- Plain text files work fine
- You can even include bullet lists, snippets, rough notes
- The tool will read and synthesize everything

## Organization Tips

### Option 1: Single File
Keep it simple with one comprehensive file:
```
employees/jane-smith/
  └── review-notes.md
```

### Option 2: Organized by Type
Separate different types of information:
```
employees/jane-smith/
  ├── 1-1-notes.md
  ├── projects.md
  ├── peer-feedback.md
  └── development.md
```

### Option 3: Chronological
Organize by time period:
```
employees/jane-smith/
  ├── 2024-07-to-09.md
  ├── 2024-10-to-12.md
  └── key-achievements.md
```

**Choose whatever structure works for your workflow.** The tool reads all files in the directory regardless of naming.

## Braindump Files

In addition to organized inputs, you can create a braindump file for rough, unstructured thoughts:

```
braindump-[employee-name].md
```

This file lives in the root directory (not in `employees/`) and is also git-ignored.

### When to Use Braindump

- Quick thoughts before the interview
- Notes during your thinking process
- Things you don't want to forget
- Rough ideas that need organizing

### Braindump vs. Organized Inputs

**Organized Inputs** (`employees/[name]/`):
- More structured notes
- Materials you've already gathered
- 1:1 notes, project summaries, etc.

**Braindump** (`braindump-[name].md`):
- Stream of consciousness
- Quick captures
- Pre-interview thoughts
- Unpolished ideas

Both are read by the tool during the interview process.

## Example Setup

Here's how you might set up for an employee named "Alex Chen":

```bash
# Create employee directory
mkdir employees/alex-chen

# Add organized inputs
# (copy your existing 1:1 notes, project notes, etc.)

# Create braindump for quick thoughts
touch braindump-alex-chen.md
```

Then populate the files:

**employees/alex-chen/1-1-notes.md**:
```markdown
# 1:1 Notes - Alex Chen

## 2024-10-15
- Discussed taking lead on auth refactor
- Concerned about technical debt in payments service
- Interested in mentoring junior engineers

## 2024-10-01
- Shipped user profile redesign ahead of schedule
- Great collaboration with product team
...
```

**braindump-alex-chen.md**:
```markdown
- Alex really stepped up during the outage in September
- Need to mention improved communication skills
- Possible stretch assignment: lead the API v3 design?
- Has been more proactive with code reviews
- Still needs to work on documentation habits
```

## Ready to Start

Once you have:
1. Created the employee directory
2. Added relevant input files
3. Optionally created a braindump file

You're ready to run:
```
/connect-interview [employee-name]
```

The tool will read everything and guide you through the interview process.
