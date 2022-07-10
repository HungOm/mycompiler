Gem::Specification.new do |s|
  s.name = "mycompiler"
  s.version = "0.0.1"
  s.summary = "Compiler ruby to javascript"
  s.description = "Tiny ruby compiler for javascript"
  s.homepage = "https://github.com/HungOm/mycompiler.git"
  s.email = "hung.workspace@gmail.com"
  s.authors = ["Hung Om"]
  s.files = ["lib/mycompiler.rb"]
  s.executables = ["mycompiler"]
  s.bindir = "bin"
  s.rubyforge_project = "compiler"
  s.require_path = "lib"
  s.add_dependency "structures", ">= 0.0.1"
  s.add_dependency "tokenizer", ">= 0.0.1"
  s.add_dependency "parser", ">= 0.0.1"
  s.add_dependency "generator", ">= 0.0.1"
end