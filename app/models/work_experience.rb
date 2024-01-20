class WorkExperience < ApplicationRecord

  belongs_to :user

  EMPLOYMENT_TYPE = ['Full-time', 'Part-time', 'Self-Employeed', 'Freelance', 'Trainee', 'Internship']

  LOCATION_TYPE = ['On-site', 'Hybrid', 'Remote']

  validates :company, :start_date, :job_title, :location, presence: true
  validates :employment_type, presence: true, inclusion: { in: EMPLOYMENT_TYPE, message: 'not a valid employment type' }
  validates :location_type, presence: true, inclusion: { in: LOCATION_TYPE, message: 'not a valid location type' }

  validate :work_experiences_last_date
  validate :presence_of_end_date
  validate :end_date_greater_than_start_date, if: :currently_not_working_here?

  def work_experiences_last_date
    if end_date.present? && currently_working_here
      errors.add(:end_date,'must be blank if you are currnetly working in this company')
    end
  end

  def presence_of_end_date
    if end_date.nil? && !currently_working_here
      errors.add(:end_date, "must be present if you are not currently working in this company")
    end
  end

  def currently_not_working_here?
    !currently_working_here
  end

  def end_date_greater_than_start_date
    return if end_date.nil?

    if end_date < start_date
      errors.add(:end_date, "must be greater than start date")
    end
  end

  def company_with_employment_type
    "#{company} (#{employment_type})".strip
  end

  def job_location
    "#{location} (#{location_type}) "
  end

  def job_duration
    months = if end_date.present?
             ((end_date.year - start_date.year) * 12 + end_date.month - start_date.month - ( end_date.day >= start_date.day ? 0 : 1)).round
             else
              ((Date.today.year - start_date.year) * 12 + Date.today.month - start_date.month - (Date.today.day >= start_date.day ? 0 : 1)).round
             end 

    result = months.divmod(12)

    duration = "#{result.first} #{result.first > 1 ? 'years' : 'year' } #{result.last} #{result.last > 1 ? 'months' : 'month' } "

    if currently_working_here
      "#{start_date.strftime("%d %B %Y ")} - Present (#{duration})" 
    else
      "#{start_date.strftime("%d %B %Y ")} - #{end_date.strftime("%d %B %Y ")} (#{duration})"
    end
  end
end
