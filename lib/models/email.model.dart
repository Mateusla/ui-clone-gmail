class EmailModel {
  String _remetente;
  String _titulo;
  String _mensagem;
  String _data;
  String _fotoUrl;

  EmailModel({
    String remetente, String titulo, String mensagem, String data, String fotoUrl
  }) {
    this._remetente = remetente;
    this._titulo = titulo;
    this._mensagem = mensagem;
    this._data = data;
    this._fotoUrl = fotoUrl;
  }

  String get remetente => _remetente;
  set remetente(String remetente) => _remetente = remetente;

  String get fotoUrl => _fotoUrl;
  set fotoUrl(String fotoUrl) => _fotoUrl = fotoUrl;
  
  String get titulo => _titulo;
  set titulo(String titulo) => _titulo = titulo;
  
  String get mensagem => _mensagem;
  set mensagem(String mensagem) => _mensagem = mensagem;
  
  String get data => _data;
  set data(String data) => _data = data;

  EmailModel.fromJson(Map<String, dynamic> json) {
    _remetente = json['remetente'];
    _titulo = json['titulo'];
    _mensagem = json['mensagem'];
    _data = json['data'];
    _fotoUrl = json['fotoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['remetente'] = this._remetente;
    data['titulo'] = this._titulo;
    data['mensagem'] = this._mensagem;
    data['data'] = this._data;
    data['fotoUrl'] = this._fotoUrl;
    
    return data;
  }
}

