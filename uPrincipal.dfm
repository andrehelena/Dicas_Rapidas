object Form_Principal: TForm_Principal
  Left = 0
  Top = 0
  Caption = 'Dicas'
  ClientHeight = 685
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object Button1: TButton
    Left = 8
    Top = 604
    Width = 129
    Height = 73
    Caption = 'Sair'
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 153
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 495
      Top = 32
      Width = 33
      Height = 31
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 495
      Top = 104
      Width = 33
      Height = 31
      OnClick = SpeedButton2Click
    end
    object Edit_Origem: TLabeledEdit
      Left = 40
      Top = 32
      Width = 449
      Height = 31
      EditLabel.Width = 61
      EditLabel.Height = 23
      EditLabel.Caption = 'Origem'
      TabOrder = 0
    end
    object Edit_Destino: TLabeledEdit
      Left = 40
      Top = 104
      Width = 449
      Height = 31
      EditLabel.Width = 62
      EditLabel.Height = 23
      EditLabel.Caption = 'Destino'
      TabOrder = 1
    end
    object Button_Copy: TButton
      Left = 495
      Top = 64
      Width = 114
      Height = 39
      Caption = 'Copiar'
      TabOrder = 2
      OnClick = Button_CopyClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 306
    Width = 779
    Height = 111
    Align = alTop
    TabOrder = 2
    object SpeedButton3: TSpeedButton
      Left = 495
      Top = 32
      Width = 33
      Height = 31
      StyleElements = [seFont, seBorder]
      OnClick = SpeedButton3Click
    end
    object Edit_CriarDir: TLabeledEdit
      Left = 40
      Top = 32
      Width = 449
      Height = 31
      EditLabel.Width = 114
      EditLabel.Height = 23
      EditLabel.Caption = 'Criar diret'#243'rio'
      TabOrder = 0
      StyleElements = [seFont, seBorder]
    end
    object Button_CriarDir: TButton
      Left = 495
      Top = 63
      Width = 186
      Height = 39
      Caption = 'Criando diret'#243'rio'
      TabOrder = 1
      StyleElements = [seFont, seBorder]
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 153
    Width = 779
    Height = 153
    Align = alTop
    TabOrder = 3
    object SpeedButton4: TSpeedButton
      Left = 495
      Top = 32
      Width = 33
      Height = 31
      OnClick = SpeedButton1Click
    end
    object SpeedButton5: TSpeedButton
      Left = 495
      Top = 104
      Width = 33
      Height = 31
      OnClick = SpeedButton2Click
    end
    object Edit_OrigemSelecto: TLabeledEdit
      Left = 40
      Top = 32
      Width = 449
      Height = 31
      EditLabel.Width = 61
      EditLabel.Height = 23
      EditLabel.Caption = 'Origem'
      TabOrder = 0
      Text = 'C:\Users\andre\Desktop\Arquivos\'
    end
    object Edit_DestinoSeleto: TLabeledEdit
      Left = 40
      Top = 104
      Width = 449
      Height = 31
      EditLabel.Width = 62
      EditLabel.Height = 23
      EditLabel.Caption = 'Destino'
      TabOrder = 1
      Text = 'C:\Users\andre\Desktop\Arquivos_Destino\'
    end
    object Button2: TButton
      Left = 495
      Top = 63
      Width = 114
      Height = 39
      Caption = 'Copiar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 417
    Width = 779
    Height = 120
    Align = alTop
    TabOrder = 4
    object SpeedButton6: TSpeedButton
      Left = 495
      Top = 32
      Width = 33
      Height = 31
      StyleElements = [seFont, seBorder]
      OnClick = SpeedButton6Click
    end
    object Edit_Diretorio: TLabeledEdit
      Left = 40
      Top = 32
      Width = 449
      Height = 31
      EditLabel.Width = 73
      EditLabel.Height = 23
      EditLabel.Caption = 'Caminho'
      TabOrder = 0
      StyleElements = [seFont, seBorder]
    end
    object Button_ValidarDir: TButton
      Left = 495
      Top = 69
      Width = 186
      Height = 39
      Caption = 'Executar'
      TabOrder = 1
      StyleElements = [seFont, seBorder]
      OnClick = Button_ValidarDirClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 280
    object Abrir1: TMenuItem
      Caption = 'Abrir'
      OnClick = Abrir1Click
    end
  end
  object TrayIcon1: TTrayIcon
    PopupMenu = PopupMenu1
    OnClick = TrayIcon1Click
    Left = 712
    Top = 8
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    OkButtonLabel = 'Diret'#243'rio'
    Options = [fdoPickFolders]
    Left = 328
    Top = 24
  end
  object FileOpenDialog2: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Todos'
        FileMask = '*.*'
      end>
    FileTypeIndex = 0
    OkButtonLabel = 'Selecione'
    Options = [fdoFileMustExist]
    Left = 592
    Top = 416
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 664
    Top = 104
  end
end
