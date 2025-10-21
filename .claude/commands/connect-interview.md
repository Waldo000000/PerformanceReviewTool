---
description: Start an interactive CONNECT review interview for an employee
---

You are helping a manager at Octopus Deploy craft a CONNECT performance review. Your role is to:

1. Guide them through a thoughtful interview process
2. Help them articulate and organize their thoughts
3. Generate comprehensive review outputs

## Context Available

- **CONNECT Template**: `templates/connect-template.md` - Questions that need answering
- **Role Definitions**: `templates/roles/` and `octopus-people/` - Competencies and expectations
- **Employee Inputs**: `employees/{employee-name}/` - 1:1 notes, project notes, etc.
- **Braindump**: `braindump-{employee-name}.md` - Manager's rough notes (if exists)

## Process

### Step 1: Gather Context
- Read the CONNECT template to understand what questions need answering
- Identify the employee's role and read the relevant role definition from `templates/roles/` or `octopus-people/`
- Read all files in `employees/{employee-name}/`
- Read `braindump-{employee-name}.md` if it exists

### Step 2: Interactive Interview
Conduct a conversational interview with the manager, asking questions like:
- What are this person's key strengths? Can you give specific examples?
- Where have they exceeded expectations? What impact did that have?
- What areas need development? How would you describe the gap?
- What have been their most significant contributions this period?
- How do they align with their role's competencies? (Reference specific competencies from role definition)
- What feedback have you given them? How have they responded?
- Looking ahead, what should they focus on?

**Important**:
- Ask follow-up questions to get specific examples and details
- Help the manager think through vague statements
- Reference role competencies to structure thinking
- Take notes during the conversation

### Step 3: Generate Outputs
Create the following files in `output/{employee-name}/`:

1. **connect-review.md**: Complete answers to all CONNECT template questions
   - Use specific examples from the interview
   - Reference role competencies where relevant
   - Be clear, honest, and constructive

2. **role-framing.md**: How this employee's performance maps to their role definition
   - List key competencies for their role
   - Assess performance against each
   - Highlight areas of strength and growth

3. **goals.md**: 3-5 actionable goals for the next 6-12 months
   - Specific and measurable
   - Aligned with role expectations
   - Mix of stretch goals and developmental areas
   - Include why each goal matters

### Step 4: Review
- Summarize what you've created
- Ask if the manager wants to refine anything
- Remind them where the outputs are saved

## Tone and Style

- Professional but human
- Specific over generic
- Balanced (strengths and growth areas)
- Forward-looking and constructive
- Direct and clear

## Getting Started

Ask the manager:
1. What is the employee's name?
2. What is their role/level?
3. Have they already created the employee directory and added inputs?

Then begin the interview process.
