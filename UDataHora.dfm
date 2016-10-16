object frmClock: TfrmClock
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Data/Hora'
  ClientHeight = 186
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 107
    Align = alTop
    TabOrder = 0
    object cxpgcntrl1: TcxPageControl
      Left = 4
      Top = 4
      Width = 457
      Height = 95
      TabOrder = 0
      Properties.ActivePage = tabInternet
      Properties.CustomButtons.Buttons = <>
      OnPageChanging = cxpgcntrl1PageChanging
      ClientRectBottom = 91
      ClientRectLeft = 4
      ClientRectRight = 453
      ClientRectTop = 24
      object tabFixo: TcxTabSheet
        Caption = ' Local '
        ImageIndex = 0
        object rgpTZ: TcxRadioGroup
          Left = 4
          Top = 4
          Caption = ' Time Zone '
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'CET'
            end
            item
              Caption = 'US Eastern'
            end
            item
              Caption = 'US Pacific'
            end
            item
              Caption = 'BRT'
            end
            item
              Caption = 'W Australia'
            end
            item
              Caption = 'Japan'
            end>
          Properties.OnChange = cbbLocalPropertiesChange
          ItemIndex = 0
          TabOrder = 0
          Height = 59
          Width = 441
        end
      end
      object tabInternet: TcxTabSheet
        Caption = ' Internet '
        ImageIndex = 1
        object lbl1: TLabel
          Left = 3
          Top = 16
          Width = 57
          Height = 13
          Caption = 'Continente:'
        end
        object Label1: TLabel
          Left = 23
          Top = 43
          Width = 37
          Height = 13
          Caption = 'Cidade:'
        end
        object cbbContinente: TcxComboBox
          Left = 66
          Top = 13
          Properties.Sorted = True
          Properties.OnChange = cbbContinentePropertiesChange
          TabOrder = 0
          Text = 'cbbContinente'
          Width = 307
        end
        object cbbCidades: TcxComboBox
          Left = 66
          Top = 40
          Properties.Sorted = True
          Properties.OnChange = cbbTimeZonesPropertiesChange
          TabOrder = 1
          Text = 'cbbTimeZones'
          Width = 307
        end
      end
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 107
    Width = 464
    Height = 79
    Align = alClient
    TabOrder = 1
    object cxlblDataHora: TcxLabel
      Left = 1
      Top = 1
      Align = alClient
      Caption = '11/03/2016 10:00:00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -35
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 232
      AnchorY = 40
    end
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 292
    Top = 18
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 398
    Top = 6
  end
end
