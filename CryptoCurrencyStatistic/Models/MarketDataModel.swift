//
//  MarketDataModel.swift
//  CryptoCurrencyStatistic
//
//  Created by Mikhail Konovalov on 17.09.23.
//

import Foundation

///JSON Data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10023,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 861,
     "total_market_cap": {
       "btc": 41337340.2233599,
       "eth": 673917860.5113649,
       "ltc": 17124614811.315905,
       "bch": 5166118039.709573,
       "bnb": 5116335243.036298,
       "eos": 1933883720656.4285,
       "xrp": 2208294624585.89,
       "xlm": 9351552220153.346,
       "link": 176938141866.18695,
       "dot": 266541769342.1478,
       "yfi": 200881005.00436565,
       "usd": 1098934665916.096,
       "aed": 4036387027909.814,
       "ars": 383983255161591.3,
       "aud": 1709074181779.3691,
       "bdt": 120410760370352.78,
       "bhd": 413689559245.4482,
       "bmd": 1098934665916.096,
       "brl": 5348515019013.628,
       "cad": 1487572910517.3193,
       "chf": 986166386238.4489,
       "clp": 972084637429399.1,
       "cny": 7993980440273.452,
       "czk": 25325169162969.55,
       "dkk": 7689685431281.265,
       "eur": 1029591888496.7894,
       "gbp": 887239188678.016,
       "hkd": 8602130884391.406,
       "huf": 395518027272009,
       "idr": 16887329011132606,
       "ils": 4177567164440.0664,
       "inr": 91325921423024.28,
       "jpy": 162395070255750.75,
       "krw": 1460934734215513.5,
       "kwd": 339044422063.09906,
       "lkr": 354591260678335.56,
       "mmk": 2304020478619945.5,
       "mxn": 18769034839580.76,
       "myr": 5147409975150.99,
       "ngn": 860739028679834.6,
       "nok": 11765216511991.023,
       "nzd": 1862285455032.0596,
       "php": 62326085072104.78,
       "pkr": 325746460931148.44,
       "pln": 4773187555497.236,
       "rub": 106382832985501.7,
       "sar": 4122145691368.572,
       "sek": 12273451816283.879,
       "sgd": 1498397416976.5933,
       "thb": 39234700623718.69,
       "try": 29663542338138.473,
       "twd": 35044478127665.96,
       "uah": 40519682730705.04,
       "vef": 110036328098.17847,
       "vnd": 26664199050518430,
       "zar": 20845636731029.074,
       "xdr": 830262723054.2637,
       "xag": 47703028519.99232,
       "xau": 571237228.6898429,
       "bits": 41337340223359.9,
       "sats": 4133734022335990
     },
     "total_volume": {
       "btc": 817155.4231035269,
       "eth": 13321990.032923978,
       "ltc": 338518922.2628795,
       "bch": 102123681.63339257,
       "bnb": 101139576.6556892,
       "eos": 38228961066.367836,
       "xrp": 43653508390.72578,
       "xlm": 184861231270.4095,
       "link": 3497708401.13486,
       "dot": 5268990484.744889,
       "yfi": 3971010.271847189,
       "usd": 21723710742.8198,
       "aed": 79791189558.377,
       "ars": 7590570598901.88,
       "aud": 33784932184.34073,
       "bdt": 2380276653142.0425,
       "bhd": 8177804014.291493,
       "bmd": 21723710742.8198,
       "brl": 105729300185.30374,
       "cad": 29406301047.01794,
       "chf": 19494510441.234585,
       "clp": 19216142811776.074,
       "cny": 158024789056.494,
       "czk": 500627258810.42957,
       "dkk": 152009493551.80676,
       "eur": 20352944594.947853,
       "gbp": 17538920276.455204,
       "hkd": 170046690581.5702,
       "huf": 7818589661893.373,
       "idr": 333828262984911.06,
       "ils": 82582034677.50728,
       "inr": 1805328343756.8289,
       "jpy": 3210221355020.1895,
       "krw": 28879718298612,
       "kwd": 6702220962.085492,
       "lkr": 7009550447192.921,
       "mmk": 45545814483291.95,
       "mxn": 371025772889.84186,
       "myr": 101753861119.36787,
       "ngn": 17015065830605.107,
       "nok": 232574481686.84326,
       "nzd": 36813608488.68318,
       "php": 1232060363397.58,
       "pkr": 6439347226221.551,
       "pln": 94356242452.6937,
       "rub": 2102972964140.8872,
       "sar": 81486464497.32512,
       "sek": 242621263431.18216,
       "sgd": 29620279597.834724,
       "thb": 775590500387.2828,
       "try": 586388102357.2233,
       "twd": 692758295456.8618,
       "uah": 800991991911.4403,
       "vef": 2175195156.678542,
       "vnd": 527097165398419.06,
       "zar": 412075982895.01056,
       "xdr": 16412611045.572214,
       "xag": 942992177.1199428,
       "xau": 11292202.081225103,
       "bits": 817155423103.527,
       "sats": 81715542310352.69
     },
     "market_cap_percentage": {
       "btc": 47.144542669407365,
       "eth": 17.837646598721214,
       "usdt": 7.557011148887309,
       "bnb": 3.0062497048917636,
       "xrp": 2.4079689212605815,
       "usdc": 2.380443467860828,
       "steth": 1.283595010414389,
       "doge": 0.7996741136684119,
       "ada": 0.7977362618996113,
       "ton": 0.7621492319282097
     },
     "market_cap_change_percentage_24h_usd": -0.05131468477801615,
     "updated_at": 1694952796
   }
 }
 */

struct GlobalData: Decodable {
    let data: MarketDataModel?
}

struct MarketDataModel: Decodable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcNominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
