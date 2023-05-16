object Form_Contatos: TForm_Contatos
  Left = 0
  Top = 0
  Caption = 'Contatos'
  ClientHeight = 442
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 37
    Width = 13
    Height = 21
    Caption = 'Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 43
    Height = 21
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 101
    Width = 57
    Height = 21
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 128
    Width = 38
    Height = 21
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 88
    Top = 39
    Width = 121
    Height = 23
    Enabled = False
    TabOrder = 0
    Text = '1'
  end
  object Edit2: TEdit
    Left = 87
    Top = 68
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Aline'
  end
  object Edit3: TEdit
    Left = 87
    Top = 97
    Width = 121
    Height = 23
    TabOrder = 2
    Text = '14996117854'
  end
  object Edit4: TEdit
    Left = 87
    Top = 126
    Width = 121
    Height = 23
    TabOrder = 3
    Text = 'aline@gmail.com'
  end
  object DBNavigator1: TDBNavigator
    Left = 248
    Top = 95
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 248
    Top = 132
    Width = 320
    Height = 120
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Memo1: TMemo
    Left = 24
    Top = 163
    Width = 209
    Height = 89
    TabOrder = 6
  end
  object Button1: TButton
    Left = 493
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Aline\Documents\Embarcadero\Studio\Projects\Wi' +
        'n32\Debug\Assets\Contatos.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 688
    Top = 272
  end
  object BindSourceContatos: TBindSourceDB
    DataSet = FDTableContatos
    ScopeMappings = <>
    Left = 688
    Top = 208
  end
  object FDTableContatos: TFDTable
    Active = True
    IndexFieldNames = 'Id'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Contatos'
    Left = 688
    Top = 16
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 692
    Top = 141
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'Id'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'nome'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'telefone'
      Control = Edit3
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'email'
      Control = Edit4
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceContatos
      FieldName = 'Observa'#231#245'es'
      Control = Memo1
      Track = False
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTableContatos
    Left = 696
    Top = 80
  end
end
