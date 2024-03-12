unit Unit1_Contatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.Components, Data.Bind.DBScope, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.ODBCBase;

type
  TForm_Contatos = class(TForm)
    FDConnection1: TFDConnection;
    FDTableContatos: TFDTable;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BindingsList1: TBindingsList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Button1: TButton;
    FDMSAccessService1: TFDMSAccessService;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDQueryContatos: TFDQuery;
    BindSourceDBContatos: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Contatos: TForm_Contatos;

implementation

{$R *.dfm}

procedure TForm_Contatos.Button1Click(Sender: TObject);
begin
  Form_Contatos.Close;
end;

procedure TForm_Contatos.DBGrid1DblClick(Sender: TObject);
begin
  showmessage('Não é possivel alterar pelo grid');
end;

procedure TForm_Contatos.FormCreate(Sender: TObject);
var
  CriarBanco: Boolean;
begin
  CriarBanco := not FileExists(FDConnection1.Params.Database);
  if CriarBanco then
  begin
    FDMSAccessService1.Database := FDConnection1.Params.Database;
    FDMSAccessService1.DBVersion := avDefault;
    FDMSAccessService1.CreateDB;
  end;
  if not FDConnection1.Connected then
  begin
    FDConnection1.Connected := True;
  end;
  try
    FDQueryContatos.Execute;
  except end;
  if not FDTableContatos.Active then
  begin
    FDTableContatos.Active := True;
  end;
end;

end.
