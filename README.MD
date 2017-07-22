
This is a simplest Padrino app created with

`padrino g project reform-padrino`

I've added `reform` and `dry-validation` to Gemfile, and created an example file `personal_data.rb` with simple model and form.

<pre>
marcin@thinktank:~/Projects/reform-padrino$ padrino c
=> Loading development console (Padrino v.0.14.0.1)
=> Loading Application ReformPadrino::App
2.2.6 :001 > require_relative './personal_data.rb'
 => true 
2.2.6 :002 > form = PersonalData.new(Member.new)
 => #<PersonalData:0x000000037135d8 @fields={"firstname"=>nil}, @model=#<Member:0x00000003713600>, @mapper=#<#<Class:0x00000003713470>:0x000000037132e0 @model=#<Member:0x00000003713600>>, @_changes={}, @errors=#<Reform::Contract::Errors:0x00000003713010 @errors={}>> 
2.2.6 :003 > form.validate({firstname:'Marcin'})
NoMethodError: undefined method `required' for #<#<Class:0x000000037a4588>:0x000000036b7e18>
	from /home/marcin/Projects/reform-padrino/personal_data.rb:13:in `block in <class:PersonalData>'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-logic-0.4.1/lib/dry/logic/rule.rb:69:in `instance_exec'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-logic-0.4.1/lib/dry/logic/rule.rb:69:in `block in bind'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-logic-0.4.1/lib/dry/logic/rule.rb:51:in `call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-logic-0.4.1/lib/dry/logic/rule.rb:51:in `[]'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-logic-0.4.1/lib/dry/logic/rule.rb:47:in `call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-logic-0.4.1/lib/dry/logic/operations/check.rb:33:in `call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:48:in `block (2 levels) in call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:47:in `each'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:47:in `block in call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:46:in `each'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:46:in `each_with_object'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:46:in `call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:85:in `block in call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:83:in `each'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/dry-validation-0.11.0/lib/dry/validation/executor.rb:83:in `reduce'
... 5 levels...
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/reform-2.2.4/lib/reform/validation/groups.rb:51:in `call'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/reform-2.2.4/lib/reform/validation.rb:36:in `valid?'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/reform-2.2.4/lib/reform/contract/validate.rb:18:in `validate!'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/reform-2.2.4/lib/reform/contract/validate.rb:10:in `validate'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/reform-2.2.4/lib/reform/form/validate.rb:23:in `validate'
	from (irb):3
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/padrino-core-0.14.0.1/lib/padrino-core/cli/base.rb:43:in `console'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/thor-0.19.4/lib/thor/command.rb:27:in `run'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/thor-0.19.4/lib/thor/invocation.rb:126:in `invoke_command'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/thor-0.19.4/lib/thor.rb:369:in `dispatch'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/thor-0.19.4/lib/thor/base.rb:444:in `start'
	from /home/marcin/.rvm/gems/ruby-2.2.6/gems/padrino-core-0.14.0.1/bin/padrino:9:in `<top (required)>'
	from /home/marcin/.rvm/gems/ruby-2.2.6/bin/padrino:23:in `load'
	from /home/marcin/.rvm/gems/ruby-2.2.6/bin/padrino:23:in `<main>'
	from /home/marcin/.rvm/gems/ruby-2.2.6/bin/ruby_executable_hooks:15:in `eval'
	from /home/marcin/.rvm/gems/ruby-2.2.6/bin/ruby_executable_hooks:15:in `<main>'
2.2.6 :004 > 

</pre>
