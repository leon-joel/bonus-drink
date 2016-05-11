# require 'pp'
# require 'logger'
# require 'active_support/core_ext/string'          # for String.first
# require 'active_support/core_ext/string/strip'  # for strip_heredoc


class BonusDrink

  # amount: 最初に買う本数
  # 戻り値: トータルで飲める本数
  def self.total_count_for(amount)
    sum = amount  # 買った本数＋貰った本数
    rest = sum    # 手元にある本数

    # 交換に出せなくなるまで繰り返す
    loop do
      d, m = rest.divmod(3)
      return sum if d == 0

      sum += d      # d本貰ったので加算
      rest = d + m  # 貰った本数d＋余り（＝交換に出さなかった）本数m
    end
  end
end