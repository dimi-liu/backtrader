import backtrader as bt # 导入 Backtrader
import backtrader.feeds as btfeeds # 导入数据模块
import pandas as pd


class MySignal(bt.Indicator):
    lines = ('signal',)  # 声明 signal 线，交易信号放在 signal line 上
    params = dict(
        short_period=5,
        long_period=20)

    def __init__(self):
        self.s_ma = bt.ind.SMA(period=self.p.short_period, plot=True)
        self.l_ma = bt.ind.SMA(period=self.p.long_period, plot=True)
        # 短期均线上穿长期均线，取值为1；反之，短期均线下穿长期均线，取值为-1
        self.lines.signal = bt.ind.CrossOver(self.s_ma, self.l_ma)


# 实例化大脑
# cerebro = bt.Cerebro()
# # 加载数据
# # 读取行情数据
# # daily_price = pd.read_csv("./data/daily_price.csv", parse_dates=['datetime'])
# daily_price = pd.DataFrame()
# stock_name = '000006.SZ'
# stock_price = daily_price.query(f"sec_code=='{stock_name}'").set_index('datetime')
# datafeed = bt.feeds.PandasData(dataname=stock_price,
#                                fromdate=pd.to_datetime('2019-01-02'),
#                                todate=pd.to_datetime('2021-01-28'))
# cerebro.adddata(datafeed, name=stock_name)
# # 初始资金 1,000,000
# cerebro.broker.setcash(1000000.0)
# # 佣金，双边各 0.0003
# cerebro.broker.setcommission(commission=0.0003)
# # 滑点：双边各 0.0001
# cerebro.broker.set_slippage_perc(perc=0.0001)
# # 每次固定交易100股
# cerebro.addsizer(bt.sizers.FixedSize, stake=100)
# # 添加交易信号
# cerebro.add_signal(bt.SIGNAL_LONG, MySignal)
# # 回测时需要添加 PyFolio 分析器
# cerebro.addanalyzer(bt.analyzers.PyFolio, _name='pyfolio')
# result = cerebro.run()
# cerebro.plot(iplot=False)
# # 借助 pyfolio 进一步做回测结果分析


if __name__ == '__main__':
    print(1)