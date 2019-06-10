a = "not needed"
#Jul qvq gur puvpxra pebff gur ebnq?
#To get to the other side!
require "byebug"
# def rot13(secret_messages)
#     abc = "abcdefghijklmnopqrstuvwxyz"
#     arr = secret_messages.split(' ')
#     ret = []
#     ret2 = ""
#     arr.each do |word|
#         ret2 = ""
#         word.each_char do |c|
#             if abc.include?(c.downcase)
#                 cap = false
#                 if abc[abc.index(c.downcase)].upcase == c
#                     cap = true
#                 end
#                 i = (abc.index(c.downcase)+13)%26
#                 if cap
#                     ret2 = ret2 + abc[i].upcase
#                 else 
#                     ret2 = ret2 + abc[i]
#                 end
#             else 
#                 ret2 = ret2 + c
#             end
#         end
#         ret << ret2
#     end
#     ret.join(" ")
# end

def rot13(secret_messages)
    secret_messages = secret_messages.split(' ')
    secret_messages.map { |c| c.tr("a-z", "n-za-m") }
end

debugger
puts rot13(a)