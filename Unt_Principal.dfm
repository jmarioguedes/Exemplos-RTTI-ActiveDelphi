object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Programa'#231#227'o Baseada em Regras'
  ClientHeight = 446
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object bGerarDocumento: TButton
      Left = 9
      Top = 7
      Width = 399
      Height = 25
      Caption = 'Gerar Documento'
      TabOrder = 0
      OnClick = bGerarDocumentoClick
    end
  end
  object mDocumento: TMemo
    Left = 0
    Top = 41
    Width = 417
    Height = 405
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 73
    ExplicitHeight = 373
  end
end
