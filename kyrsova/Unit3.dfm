object Form3: TForm3
  Left = 883
  Top = 298
  Caption = #1042#1110#1076#1087#1088#1072#1074#1082#1072' '#1085#1072' Email(Beta-version)'
  ClientHeight = 109
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 16
    Width = 195
    Height = 16
    Caption = #1042#1074#1077#1076#1110#1090#1100' Email-'#1072#1076#1088#1077#1089#1091' '#1086#1090#1080#1084#1091#1074#1072#1095#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 240
    Top = 64
    Width = 75
    Height = 25
    Caption = #1042#1110#1076#1087#1088#1072#1074#1080#1090#1080
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 40
    Top = 40
    Width = 193
    Height = 21
    Hint = 'name@mail.com'
    TabOrder = 1
    Text = 'Name@mail.com'
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 72
    Top = 64
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 104
    Top = 64
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 40
    Top = 64
  end
end
