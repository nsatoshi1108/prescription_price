module PrescriptionsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_prescriptions_path
    elsif action_name == 'edit'
      prescription_path
    end
  end
end
