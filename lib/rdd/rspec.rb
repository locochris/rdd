def describe_readme(readme, example_regex=default_example_regex)
  open(readme) do |f|
    f.read.scan(example_regex).each do |example_name, example_code|
      describe "#{example_name} (from README)" do
        subject { eval_code(example_code) } # This is safe isn't it!?!?  :)

        it { should == expected_output(example_code) }
      end
    end
  end
end

def default_example_regex
  @default_example_regex ||= /(Example:[ ].*?)\n``` ruby\n(.*?)```/m
end

def expected_output(example_code)
  example_code.scan(/^# => (.*)/).flatten.join("\n")
end

def eval_code code
  IO.popen("ruby", "w+") { |f|
    f.write code
    f.close_write
    f.read.strip
  }
end
