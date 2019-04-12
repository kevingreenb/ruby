require_relative "./employee.rb"
require "byebug"

class Startup
    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salary)
        @name = name
        @funding = funding
        @salaries = {}
        salary.each do |title, salary|
            @salaries[title] = salary
        end
        @employees = []
    end

    def valid_title?(str)
        return @salaries.has_key?(str)
    end

    def>(another_startup)
      return self.funding > another_startup.funding
    end

    def hire(emp, title)
        if self.valid_title?(title)
            @employees << Employee.new(emp, title)
        else 
            raise "invalid title"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(emp)
        if @funding - @salaries[emp.title] > 0
            emp.pay(@salaries[emp.title])
            @funding -= @salaries[emp.title]
        else
            raise "not enough funding"
        end
    end

    def payday
        @employees.each {|emp| self.pay_employee(emp)}
    end

    def average_salary          
        temp = @employees.map { |employee| @salaries[employee.title] }
        temp.inject {|sum, val| sum + val }/temp.length     
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(start)
        @funding += start.funding
        start.salaries.each do |title, salary|
            if !@salaries.has_key?(title)
                @salaries[title] = salary
            end
        end
        start.employees.each { |emp| @employees << emp}
        start.close
    end

end

