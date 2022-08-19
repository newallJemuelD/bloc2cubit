class CompaniesDetails {
  Rezponse? response;
  String? error;

  CompaniesDetails({this.response});

  CompaniesDetails.fromJson(Map<String, dynamic> json) {
    response =
        json['response'] != null ? Rezponse.fromJson(json['response']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    return data;
  }

  CompaniesDetails.withError(String errorMessage) {
    error = errorMessage;
  }
}

class Rezponse {
  String? appID;
  Data? data;

  Rezponse({this.appID, this.data});

  Rezponse.fromJson(Map<String, dynamic> json) {
    appID = json['appID'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['appID'] = this.appID;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Symbols>? symbols;

  Data({this.symbols});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['symbols'] != null) {
      symbols = <Symbols>[];
      json['symbols'].forEach((v) {
        symbols!.add(new Symbols.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.symbols != null) {
      data['symbols'] = this.symbols!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Symbols {
  String? baseSym;
  String? companyName;
  String? dispSym;
  String? excToken;
  String? haircut;
  String? isin;
  String? mCap;
  String? sector;
  Sym? sym;
  bool? ttEligibility;

  Symbols(
      {this.baseSym,
      this.companyName,
      this.dispSym,
      this.excToken,
      this.haircut,
      this.isin,
      this.mCap,
      this.sector,
      this.sym,
      this.ttEligibility});

  Symbols.fromJson(Map<String, dynamic> json) {
    baseSym = json['baseSym'];
    companyName = json['companyName'];
    dispSym = json['dispSym'];
    excToken = json['excToken'];
    haircut = json['haircut'];
    isin = json['isin'];
    mCap = json['mCap'];
    sector = json['sector'];
    sym = json['sym'] != null ? new Sym.fromJson(json['sym']) : null;
    ttEligibility = json['tt_eligibility'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['baseSym'] = this.baseSym;
    data['companyName'] = this.companyName;
    data['dispSym'] = this.dispSym;
    data['excToken'] = this.excToken;
    data['haircut'] = this.haircut;
    data['isin'] = this.isin;
    data['mCap'] = this.mCap;
    data['sector'] = this.sector;
    if (this.sym != null) {
      data['sym'] = this.sym!.toJson();
    }
    data['tt_eligibility'] = this.ttEligibility;
    return data;
  }
}

class Sym {
  String? asset;
  String? exc;
  String? expiry;
  String? id;
  String? instrument;
  String? lotSize;
  String? multiplier;
  String? optionType;
  String? streamSym;
  String? strike;
  String? tickSize;

  Sym(
      {this.asset,
      this.exc,
      this.expiry,
      this.id,
      this.instrument,
      this.lotSize,
      this.multiplier,
      this.optionType,
      this.streamSym,
      this.strike,
      this.tickSize});

  Sym.fromJson(Map<String, dynamic> json) {
    asset = json['asset'];
    exc = json['exc'];
    expiry = json['expiry'];
    id = json['id'];
    instrument = json['instrument'];
    lotSize = json['lotSize'];
    multiplier = json['multiplier'];
    optionType = json['optionType'];
    streamSym = json['streamSym'];
    strike = json['strike'];
    tickSize = json['tickSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['asset'] = this.asset;
    data['exc'] = this.exc;
    data['expiry'] = this.expiry;
    data['id'] = this.id;
    data['instrument'] = this.instrument;
    data['lotSize'] = this.lotSize;
    data['multiplier'] = this.multiplier;
    data['optionType'] = this.optionType;
    data['streamSym'] = this.streamSym;
    data['strike'] = this.strike;
    data['tickSize'] = this.tickSize;
    return data;
  }
}
