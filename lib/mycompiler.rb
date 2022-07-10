
class  MyCompiler
    def initialize(src)
        @src = src
    end

    def compile
        tokens = Tokenizer.new(@src).tokenize
        tree = Parser.new(tokens).parse
        generated_code =  Generator.new.generate(tree)
        return generated_code
    end    
end

require 'mycompiler/parser'
require 'mycompiler/tokenizer'
require 'mycompiler/generator'