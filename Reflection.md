**AI Assistance Declaration:** ChatGPT (Codex, GPT-6), used on November 15, 2026, drafted and refined the documentation, reflection responses, R script, and fictional dataset. The actual requests, assignment-prescribed drafting prompts, key responses, and revisions are recorded in `Appendix.md`. Assistant checks are recorded in `Verification.md`; student verification and final calculations remain pending. This package does not claim that the student has completed those steps.

# Reflection Questions

These responses are AI-assisted drafts for the student to review and personalize. They describe the prepared documentation and proposed verification without inventing personal checks or experiences.

## 1. How can AI support clear Markdown documentation?

AI can help turn a short project description into a readable documentation structure. It can suggest sections such as Overview, Installation, Data, Example Code, and Outputs, then organize the material with consistent headings, lists, tables, and code fences. For this project, that structure makes it easier for a reader to understand the fictional dataset, locate the R script, run it from the correct directory, and identify the files it should produce.

AI also supports revision. A first draft may describe a script correctly but omit practical details, such as its working directory or documentation dependencies. A targeted request can improve those details without changing the project's purpose. Comparing the outline with the dplyr README provides an external example of the purpose-setup-usage progression. AI is useful as an editor and organizer, while the project files and verified behavior remain the source of truth. Clear documentation should explain what actually exists rather than add impressive-looking sections that the project cannot support.

## 2. What limitations and verification needs arise when using AI?

AI can produce confident but inaccurate instructions, invent dependencies, reference nonexistent files, or confuse ordinary Markdown code fences with executable R Markdown chunks. A document can look polished while the code fails because of a wrong path or a missing package. It can also overstate the meaning of synthetic data. The study-hours records here were invented to illustrate a pattern, so they cannot justify conclusions about actual students or causation.

Verification therefore needs several separate checks: compare documentation with the actual script and CSV; preview Markdown; execute the script; knit the `.Rmd`; and inspect the generated table and plot. The assignment also calls for primary calculations in Sheets, an independent cross-check, and a peer or self spot-check. Those student checks cannot be replaced by an AI statement that the work is correct. In this package, the assistant's successful R execution, HTML knitting, numerical cross-check, and document checks are distinguished from the personal verification that remains outstanding. The README was also previewed on GitHub after publication. That distinction prevents a proposed step from being misrepresented as completed evidence.

## 3. How should AI assistance be disclosed and the workflow improved?

Disclosure should identify the AI tool, available model/version information, date, purpose, actual prompts, important responses, and changes made during review. It should cover code and data generation as well as prose. For this project, the disclosure identifies ChatGPT (Codex, GPT-6), records the supplied requests and assignment-prescribed drafting prompts in the appendix, and acknowledges that the reflection text is also AI-assisted. No student verification, repository upload, or personal calculation should be claimed without evidence. The assignment's restriction on AI-generated code must be discussed with the instructor rather than hidden behind a generic writing-assistance statement.

A stronger workflow begins with a project summary and a README outline, then develops a draft and asks focused critique questions. Each revision should address a specific issue, such as unclear input units, missing run instructions, or inconsistent chunk formatting. After revision, the student should run the project in a clean session, calculate the required checks independently, inspect previews, and record real corrections before committing files to GitHub. Only synthetic data should be shared. This keeps AI assistance transparent and makes the final documentation easier to reproduce and maintain.
