require 'mycompiler/structures'
class MyCompiler::Tokenizer
    TOKEN_TYPES =[
        [:def, /\bdef\b/],
        [:end, /\bend\b/],
        [:identifier, /\b[a-zA-Z]+\b/],
        [:integer, /\b[0-9]+\b/],
        [:oparen, /\(/],
        [:cparen,/\)/],  
        [:comma, /,/],
    ]
    def initialize(code)
        @code = code
    end

    def tokenize
        tokens = []
        until @code.empty?
           tokens << tokenize_one_token
            @code = @code.strip
        end
        tokens

    end

    def tokenize_one_token
        TOKEN_TYPES.each do |token_type,re|
            # puts token_type
            re = /\A(#{re})/
            if @code=~re 
                value =$1
                @code =@code[value.length..-1]
                return Structures::Token.new(token_type,value)
            end
        end

        raise RuntimeError.new(
            "Counld not match token #{@code.inspect}"
        )
    end
end