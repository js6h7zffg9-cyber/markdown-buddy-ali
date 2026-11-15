# AI Assistance Declaration: ChatGPT (Codex, GPT-6), 2026-11-15,
# generated this script and the fictional dataset at the user's request.
# Prompt: "please complete **R script and synthetic dataset**,"
# Validation: executed with R 4.5.0; report knitted and summary values
# independently checked. Student verification remains pending.
# Full requests and documentation prompts: ../Appendix.md
# Run from the project root: source("scripts/analyze_study_data.R")

analyze_study_data <- function(
    input_file = "data/synthetic_study_data.csv",
    output_dir = "outputs") {
  # 1. Import the entirely fictional teaching dataset.
  if (!file.exists(input_file)) {
    stop("Input file missing. Run from the project root folder.")
  }
  study <- read.csv(input_file, stringsAsFactors = FALSE)

  # 2. Validate structure, identifiers, completeness, and numeric ranges.
  expected <- c("student_id", "study_hours", "exam_score")
  if (!identical(names(study), expected) || nrow(study) == 0L) {
    stop("Expected nonempty data with student_id, study_hours, exam_score.")
  }
  if (anyNA(study) || anyDuplicated(study$student_id) > 0L ||
      any(!grepl("^S[0-9]{3}$", study$student_id))) {
    stop("Missing values, duplicate IDs, or invalid fictional IDs found.")
  }
  if (!is.numeric(study$study_hours) || !is.numeric(study$exam_score)) {
    stop("Study hours and exam scores must be numeric.")
  }
  if (any(!is.finite(study$study_hours)) ||
      any(!is.finite(study$exam_score)) ||
      any(study$study_hours < 0 | study$study_hours > 168) ||
      any(study$exam_score < 0 | study$exam_score > 100)) {
    stop("Values must be finite; hours 0-168 and scores 0-100.")
  }

  # 3. Summarize each numeric variable; no external packages are needed.
  numeric_columns <- c("study_hours", "exam_score")
  summary_table <- data.frame(
    variable = numeric_columns,
    count = vapply(study[numeric_columns], length, integer(1)),
    mean = vapply(study[numeric_columns], mean, numeric(1)),
    median = vapply(study[numeric_columns], median, numeric(1)),
    minimum = vapply(study[numeric_columns], min, numeric(1)),
    maximum = vapply(study[numeric_columns], max, numeric(1)),
    row.names = NULL
  )

  # 4. Export results. Re-running replaces files with the same names.
  dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
  write.csv(summary_table, file.path(output_dir, "summary_statistics.csv"),
            row.names = FALSE)

  # A PDF graphics device works without extra plotting packages.
  grDevices::pdf(file.path(output_dir, "study_hours_vs_exam_score.pdf"),
                width = 7, height = 5)
  on.exit(grDevices::dev.off(), add = TRUE)
  plot(study$study_hours, study$exam_score,
       main = "Study Hours and Exam Scores (Synthetic Data)",
       sub = "Fictional teaching data; no real-world or causal conclusions",
       xlab = "Study hours in the week before the exam",
       ylab = "Exam score (out of 100)",
       pch = 19, col = "steelblue", ylim = c(0, 100))
  print(summary_table)
  invisible(summary_table)
}

analyze_study_data()
