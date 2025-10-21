# CONNECT Review Output Guidelines

This document defines what good CONNECT review outputs look like. Use these guidelines whether working through `/connect-interview`, iterative conversations, or direct refinement.

## Core Principle

**Every strength and growth area must be explicitly grounded in Octopus People role definitions, with concrete examples and actionable guidance.**

## Output Files

For each employee, create in `output/{employee-name}/`:

1. **connect-review.md** - Complete answers to all CONNECT template questions
2. **role-framing.md** - Performance mapped to role competencies
3. **goals.md** - 3-5 actionable goals for next 6-12 months

## Critical Formatting Requirements

### 1. Direct Quotes from Octopus People

**Every strength and growth area MUST be explicitly linked to Octopus People role definitions.**

#### Format

Use blockquotes with level indicators:

```markdown
### [Strength/Focus Area]: [Capability Name]

> **L[X]**: [Exact quote from Octopus People capability/example/dimension]

[Specific details about how the employee demonstrates this (for strengths) or context for the growth area, with concrete examples]
```

#### Rules

- **Quote exactly** from Octopus People (capabilities, examples, dimensions, levels)
- **Include level indicator** (e.g., `**L4:**`, `**L5:**`, `**L3:**`)
- **Typically reference** the employee's current level
- **May reference** the level above (for stretch areas) or below (for foundational gaps)
- **Explicitly note which level** you're referencing in the text
  - Examples: "This aligns with L5 expectations around..."
  - "While meeting L4 requirements, there's opportunity to grow toward L5..."
  - "This demonstrates L4 capability in..."
- **After the blockquote**, provide employee-specific details and concrete examples

#### Example: Strength

```markdown
### Strength: Technical Leadership

> **L4**: Provides technical direction for their team, making architectural decisions that balance immediate needs with long-term maintainability.

Alex demonstrated this during the auth service refactor, where they designed a solution that solved our immediate security concerns while establishing patterns the team could reuse. They facilitated three design review sessions, incorporating feedback from both the team and the principal engineer, ultimately delivering a solution that reduced our technical debt while enabling future auth features. This strongly aligns with L4 expectations for technical leadership within a team context.
```

#### Example: Growth Area with Level Above

```markdown
### Focus Area: Cross-Team Influence

> **L5**: Proactively builds relationships across teams, identifying opportunities for collaboration and shared solutions.

While Alex collaborates effectively within their immediate team (meeting L4 expectations), there's opportunity to grow toward L5 by building stronger cross-team connections. [Continue with "how" guidance...]
```

### 2. "How" Guidance for Growth Areas

**Every growth area MUST include actionable "how" guidance that helps the employee understand paths to development.**

#### Requirements

- **Actionable**: Help the employee understand concrete paths to growth
- **Specific when possible**: Include specific resources, practices, or opportunities when:
  - The manager mentioned them in conversation
  - You have reasonable knowledge from context
  - Specific examples would genuinely help
- **General when appropriate**: Provide general but actionable guidance when specifics aren't available
- **Balanced**: Clear enough to be helpful, NOT overly prescriptive
- **Employee-owned**: Emphasize employee ownership and autonomy
- **Supportive**: Make clear that support is available (not micromanagement or spoonfeeding)

#### Example: Specific Resources

```markdown
### Focus Area: Cross-Team Collaboration

> **L5**: Proactively builds relationships across teams, identifying opportunities for collaboration and shared solutions.

While Alex collaborates well within their immediate team (meeting L4 expectations), there's opportunity to grow toward L5 by building stronger cross-team connections. Consider reaching out to the Platform team about the shared observability challenges you've mentioned, or joining the monthly Architecture Guild meetings where cross-cutting concerns are discussed. You might also explore pairing with Jamie (who bridges multiple teams) to learn their approach. The goal is to develop your own style of building these bridges - identify opportunities that resonate with you, and reach out for guidance from your manager or peers as you navigate them.
```

#### Example: General Guidance

```markdown
### Focus Area: Mentoring Junior Engineers

> **L4**: Actively mentors junior team members, helping them develop technical skills and navigate challenges.

To strengthen mentoring capabilities, consider taking on more deliberate mentoring moments - perhaps setting up regular pairing sessions with one of the junior engineers, or offering to review their design documents before they share them widely. Focus on asking questions that help them think through problems rather than providing answers directly. You'll develop your own mentoring style; check in with your manager periodically to reflect on what's working and where you'd like support in growing this skill.
```

## What Makes Good Interview Information

To satisfy these output guidelines, you need:

### For Each Strength
1. **Which capability/dimension** from their role definition they demonstrate
2. **Specific examples** with context and impact
3. **The level** they're demonstrating (usually current, sometimes above)

### For Each Growth Area
1. **Which capability/dimension** needs development
2. **The gap**: What's expected vs. what you observe
3. **Context**: Why this matters for their role/growth
4. **How guidance**: Specific resources/practices OR general but actionable paths
5. **The level** being referenced (current or target level above)

## Interview Questions Should Elicit This

When conducting interviews (or having iterative conversations), ask questions that gather:
- **Concrete examples**: "Can you give me a specific example of when they did X?"
- **Impact**: "What was the result? Who benefited?"
- **Frequency/consistency**: "Is this a one-time thing or a pattern?"
- **Level alignment**: "Does this feel like L4 behavior or are they showing L5 capabilities?"
- **Resources for growth**: "Have you discussed any specific ways they could develop this? Are there people/teams/opportunities you've thought of?"
- **Ownership and support**: "How much guidance do they need vs. figuring it out themselves?"

## Template Adherence

When answering questions from `templates/connect-template.md`, ensure every strength and growth area follows these formatting rules. The direct quotes ground feedback in documented expectations, and the "how" guidance makes growth areas actionable while respecting employee autonomy.

## Iterative Refinement

These guidelines apply whether you're:
- Working through a full interview
- Adding one thought at a time over multiple days
- Refining existing outputs
- Filling gaps in partially complete reviews

Always maintain this structure and level of specificity.
