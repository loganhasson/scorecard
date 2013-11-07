json.array!(@scorecard_sheets) do |scorecard_sheet|
  json.extract! scorecard_sheet, :total, :student_id
  json.url scorecard_sheet_url(scorecard_sheet, format: :json)
end
