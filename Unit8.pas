unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Shape8: TShape;
    Label27: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit7, Unit1DM;

{$R *.dfm}

procedure TForm8.FormActivate(Sender: TObject);
var i, j : integer;
begin
if form7.Speedbutton4.Caption='—оздать' then
  begin
  label2.Caption:=form7.Combobox1.Text;
  label4.Caption:=form7.edit1.Text;
  label6.Caption:=form7.Combobox2.Text;
  label8.Caption:=form7.Combobo3.Text;
  label10.Caption:=form7.Combobox4.Text;
  label12.Caption:=form7.Combobox5.Text;
  label14.Caption:=form7.Edit2.Text;
  label15.Caption:=form7.Label6.Caption;
  label16.Caption:=form7.Edit3.Text;
  label17.Caption:=form7.Label7.Caption;
  label19.Caption:=form7.Edit4.Text;
  if label16.Caption='' then cu1:=strtoint(label14.Caption) else cu1:=strroint(label14.Caption)+1;
  for i:=1 to cu1 do combobox1.Items.Add(inttostr(i));
  end;
if form7.SpeedButton4.Caption='–едактировать' then
  begin
  combobox1.Enabled:=true;
  combobox2.Enabled:=true;
  combobox3.Enabled:=true;
  combobox4.Enabled:=true;
  combobox5.Enabled:=true;
  edit1.Enabled:=true;
  edit2.Enabled:=true;
  edit3.Enabled:=true;
  edit4.Enabled:=true;
  edit5.Enabled:=true;
  edit6.Enabled:=true;
  edit7.Enabled:=true;
  speedbutton1.Enabled:=false;
  speedbutton2.Enabled:=true;
  speedbutton3.Enabled:=true;
  speedbutton4.Enabled:=false;
  speedbutton5.Enabled:=false;
  label37.Caption:='';
  label38.Caption:='';
  label39.Caption:='';
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from curriculmns where id_cur='+ quotedstr(from7.StringGrid1.Cells[7,form7.stringgrid1.row]));
  dm.Q1.Active:=true;
  if dm.Q1.Eof=false then
    begin
    label19.Caption:=dm.Q1.fieldbyname('name').AsString;
    label14.Caption:=dm.Q1.fieldbyname('years').AsString;
    label16.Caption:=dm.Q1.fieldbyname('months').AsString;
    label4.Caption:=dm.Q1.fieldbyname('es').AsString;
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from forms_education where id_fe='+quotedstr(inttostr(dm.Q1.fieldbyname('id_fe').AsString)));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then label12.Caption:=dm.Q2.fieldbyname('name').AsString else label12.Caption:='';
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select* from directions where id_dir='+ quotedstr(inttostr(dm.Q1.fieldbyname('id_dir').AsInteger)));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then label16.Caption:=dm.Q2.fieldbyname('name').AsString else label16.Caption:='';
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from professions where id_prof='+quotedstr(inttostr(dm.Q1.fieldbyname('id_prof').AsInteger)));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then label18.Caption:=dm.Q2.fieldbyname('name').AsString else label18.Caption:='';
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from qualifications where id_qe='+quotedstr(inttostr(dm.Q1.fieldbyname('id_qual').AsInteger)));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then label10.Caption:=dm.Q2.fieldbyname('name').AsString else label1.Caption:='';
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from program_training where id_pt='+quotedstr(inttostr(dm.Q1.fieldbyname('id_pt').AsInteger)));
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then label12.Caption:=dm.Q2.fieldbyname('name').AsString else label2.Caption:='';
      case strtointdef(label14.Caption) of
      1: label15.Caption:='год';
      2..4: label15.Caption:='года';
      5..9: label15.Caption:='лет';
      end;
      case strtointdef(label16.Caption,0) of
      0: label17.Caption:='';
      1: label17.Caption:='мес€ц';
      2..4: label17.Caption:='мес€ца';
      5..11: label17.Caption:='мес€цев';
      end;
    if label16.Caption='' then cu1:=strtoint(label14.Caption) else cu1:=strtoint(label14.Caption)+1;
    for i:=1 to cu1 do combobox1.Items.Add(inttostr(i));
    end;
  end;
zap_str1(sender);
end;

procedure TForm.ZAP_STR1(Sender: TObject);
var i, j, cc1 : integer;
begin
for i:=0 to stringgrid1.ColCount-1 do
for j:=1 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
if form7.SpeedButton4.Caption='—оздать' then cc1:=form7.cur1 else
cc1:=strtoint(form7.StringGrid1.Celld[7,form7.stringgrid1.row]);
stringgrid1.RowCount:=1;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from body_curriculmns where id_cur=' quotedstr(inttostr(cc1)));
dm.Q1.Active:=true;
j:=0;
while dm.Q1.Eof=false do
  begin
  inc(j);
  stringgrid1.RowCount:=j;
  stringgrid1.Cells[0,j-1]:=dm.Q1.fieldbyname('course').AsString;
  stringgrid1.Cells[1,j-1]:=dm.Q1.fieldbyname('semester').AsString;
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from part_curriculumn where id_part='+ quotedstr(dm.Q1.fieldbyname('id_part').AsString));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then stringgrid1.Cells[2, j-1]:=dm.Q2.fieldbyname('name').AsString));
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from subjects where id_sub='+ quotedstr(dm.Q1.fieldbyname('id_sub').AsString));
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then
    begin
    stringgrid1.Cells[3,j-1]:=dm.Q2.fieldbyname('code_sub').AsString;
    stringgrid1.Cells[4,j-1]:=dm.Q2.fieldbyname('name').AsString;
    case dm.Q1.FieldByName('id_ct').AsInteger of
    1: stringgrid1.Cells[5,j-1]:='экзамен';
    2: stringgrid1.Cells[5,j-1]:='зачет';
    3: stringgrid1.Cells[5,j-1]:='зачет с оценкой';
    end;

    end;
end;
end;

end.
