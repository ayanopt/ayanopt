# I'm Ayan and I enjoy Math and Trading
I've been forward-testing statistical arbitrage trading techniques. The repo is private as a lot of it has information that I don't want shared. However, there is a lot code I want to slowly roll out for people to see regarding its infrastructure. I have some cool optimizations that people can replicate, and also borrow the infrastructure if they want to trade themselves. It's currently written in C++, Python and R, and I use bash to run/schedule commands from an EC2 instance. I love Python but I want to move to a C++/Rust architecture to improve performance. I thought this would be a good medium to share my findings and keep myself accountable
The results are updated every weekday by crontab scheduling on EC2.

## Here are the results so far, note that some may not perform well because I am still in the process of testing.

I use statistical arbitrage, which you can read about here: https://en.wikipedia.org/wiki/Statistical_arbitrage. All these gains/losses are from using 1000$ of stock. So if I were trading SPY and SPX, I would go short 1000$ worth of SPY and long 1000$ worth of SPX.

For context:
121, 21, 41 are all from 1 pair of stocks. 41 is the most frequent trader and trades on lesser divergence, while 121 is the most restrictive and trades only when there is a lot of divergence. This similar logic applies to 191, 181 and 171 which trade a different pair.

As of 10/12, I would report these are going well, I'm looking for consistency.
    

<div>
<a>Pair B</a>
<img src="./imgs/stat_arb21.jpg"/>
<img src="./imgs/stat_arb41.jpg"/>
<img src="./imgs/stat_arb121.jpg"/>
<a>Pair B</a>
<img src="./imgs/stat_arb171.jpg"/>
<img src="./imgs/stat_arb181.jpg"/>
<img src="./imgs/stat_arb191.jpg"/>
</div>
