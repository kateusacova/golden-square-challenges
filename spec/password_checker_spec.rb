require 'password_checker'

RSpec.describe PasswordChecker do
  it 'returns true if password meets requirements' do
    password = PasswordChecker.new
    expect(password.check("mypassword123")).to eq true
  end

  it 'fail if password does not meet requirements' do
    password = PasswordChecker.new
    expect { password.check("123") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
