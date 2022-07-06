import 'package:vogon_chat/core/helpers/datetime/formatos.dart';

class MensagemModel {
  MensagemModel({
    this.id,
    this.mensagem,
    this.dataHoraEnvio,
    this.nomeEnvio,
  });

  String? id;
  String? mensagem;
  DateTime? dataHoraEnvio;
  String? nomeEnvio;

  factory MensagemModel.fromJson(Map<String, dynamic> json) => MensagemModel(
        id: json['id'],
        dataHoraEnvio:
            FormatosDataHora.formatoMSG.parse(json['data_hora_envio']),
        mensagem: json['mensagem'],
        nomeEnvio: json['nome_envio'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'mensagem': mensagem,
        'data_hora_envio': FormatosDataHora.formatoMSG.format(dataHoraEnvio!),
        'nome_envio': nomeEnvio,
      };
}
