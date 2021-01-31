unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Panel1: TPanel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Label35: TLabel;
    Panel2: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Button3: TButton;
    StringGrid4: TStringGrid;
    Shape11: TShape;
    Shape12: TShape;
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
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    StringGrid3: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid3Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure zapstr3(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ey1, sub1, k, gr1 : integer;
    st1 : string;
    d1 : tdatetime;
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit1DM;

{$R *.dfm}


procedure TForm3.FormCreate(Sender: TObject);
var i,j: integer;
begin
label2.Caption:='';
combobox1.Text:=''; combobox1.Items.Clear;
combobox2.Text:=''; combobox2.Items.Clear;
combobox3.Text:=''; combobox3.Items.Clear;
combobox4.Text:=''; combobox4.Items.Clear;
label7.Caption:=''; label8.Caption:='';
label9.Caption:=''; label10.Caption:='';
label12.Caption:=''; label14.Caption:='';
label16.Caption:=''; label19.Caption:='';
label21.Caption:=''; label22.Caption:='';
panel1.Caption:=''; panel2.Caption:='';
form3.Left:=0; form3.Top:=0;
form3.Width:=screen.Width; form3.Height:=screen.Height-28;
panel1.Width:=form3.Clientwidth-panel1.Left*2;
panel1.Height:=form3.ClientHeight-panel1.Top-1;
stringgrid3.DefaultRowHeight:=18;
stringgrid3.Height:=stringgrid3.DefaultRowHeight*5+25;
speedbutton1.Top:=panel1.Height-speedbutton1.Height-1;
speedbutton1.Left:=panel1.Width-speedbutton1.Width-1;
stringgrid3.Top:=panel1.Height-stringgrid3.Height-speedbutton1.Height-1;
stringgrid3.Width:=speedbutton1.Left+speedbutton1.Width-1;
label23.Top:=stringgrid3.Top-18;
stringgrid1.Height:=stringgrid3.Top-stringgrid1.Top-12;
stringgrid2.Height:=stringgrid1.Height;
stringgrid1.Width:=((panel1.Width) div 5)*3;
stringgrid2.Left:=stringgrid1.Left+stringgrid1.Width+2;
stringgrid2.Width:=panel1.Width-stringgrid2.Left-4;
stringgrid1.DefaultRowHeight:=18;
stringgrid2.DefaultRowHeight:=18;
for i:=0 to stringgrid1.ColCount-1 do
for j:=0 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
for i:=0 to stringgrid2.ColCount-1 do
for j:=0 to stringgrid2.RowCount-1 do stringgrid2.Cells[i,j]:='';
for i:=0 to stringgrid3.ColCount-1 do
for j:=0 to stringgrid3.RowCount-1 do stringgrid3.Cells[i,j]:='';
stringgrid1.RowCount:=3;
stringgrid2.RowCount:=2;
stringgrid3.RowCount:=2;
stringgrid1.RowHeights[1]:=0;

stringgrid1.ColCount:=3;
stringgrid1.Cells[0,0]:='�';
stringgrid1.Cells[1,0]:='������� ��� �������� ��������';
stringgrid1.Cells[2,0]:='� �������� ������';
stringgrid1.ColWidths[0]:=150;
stringgrid1.ColWidths[1]:=200;
stringgrid1.ColWidths[2]:=0;

stringgrid2.ColCount:=7;
stringgrid2.Cells[0,0]:='����';
stringgrid2.Cells[0,1]:='29.12.2020';
stringgrid2.Cells[1,0]:='������������ ���� (�������)';
stringgrid2.Cells[2,0]:='�������� ������';
stringgrid2.Cells[3,0]:='���������';
stringgrid2.Cells[4,0]:='�����������';
stringgrid2.Cells[5,0]:='�����';
stringgrid2.Cells[6,0]:='��� �������';
stringgrid2.ColWidths[0]:=58;
stringgrid2.ColWidths[1]:=182;
stringgrid2.ColWidths[2]:=97;
stringgrid2.ColWidths[3]:=62;
stringgrid2.ColWidths[4]:=72;
stringgrid2.ColWidths[5]:=35;
stringgrid2.ColWidths[6]:=0;

stringgrid3.ColCount:=12;
stringgrid3.Cells[0,0]:='�';
stringgrid3.Cells[1,0]:='������';
stringgrid3.Cells[2,0]:='������� ��� �������� ��������';
stringgrid3.Cells[3,0]:='����������';
stringgrid3.Cells[4,0]:='���';
stringgrid3.Cells[5,0]:='�������';
stringgrid3.Cells[6,0]:='������';
stringgrid3.Cells[7,0]:='������';
stringgrid3.Cells[8,0]:='���������';
stringgrid3.Cells[9,0]:='���������';
stringgrid3.Cells[10,0]:='���������';
stringgrid3.Cells[11,0]:='��� ���������';
stringgrid3.ColWidths[0]:=18;
stringgrid3.ColWidths[1]:=118;
stringgrid3.ColWidths[2]:=260;
stringgrid3.ColWidths[3]:=380;
stringgrid3.ColWidths[4]:=60;
stringgrid3.ColWidths[5]:=49;
stringgrid3.ColWidths[6]:=60;
stringgrid3.ColWidths[7]:=60;
stringgrid3.ColWidths[8]:=60;
stringgrid3.ColWidths[9]:=60;
stringgrid3.ColWidths[10]:=186;
stringgrid3.ColWidths[11]:=0;

panel2.Top:=panel1.Top;
panel2.Left:=panel1.Left;
panel2.Height:=panel1.Height;
panel2.Width:=panel1.Width;
speedbutton2.Top:=speedbutton1.Top;
stringgrid4.Left:=stringgrid1.Left;
stringgrid4.Width:=panel2.Width-stringgrid4.Left*2;
stringgrid4.Height:=speedbutton2.Top-stringgrid4.Top-1;
stringgrid4.ColCount:=11;
stringgrid4.ColWidths[0]:=19;
stringgrid4.ColWidths[1]:=260;
stringgrid4.ColWidths[2]:=48;
stringgrid4.ColWidths[3]:=40;
stringgrid4.ColWidths[4]:=40;
stringgrid4.Colwidths[5]:=54;
stringgrid4.ColWidths[6]:=54;
stringgrid4.Colwidths[7]:=54;
stringgrid4.ColWidths[8]:=54;
stringgrid4.ColWidths[9]:=220;

shape1.Left:=stringgrid4.Left;

shape1.Width:=22;
label23.Left:=shape1.Left;
label23.Width:=shape1.Width;

shape2.Left:=shape1.Left+shape1.Width-1;
shape2.Width:=262;
label24.Left:=shape2.Left;
label24.Width:=shape2.Width;
label24.Alignment:=taCenter;

shape3.Left:=shape2.Left+shape2.Width-1;
shape3.Width:=50;
label25.Left:=shape3.Left;
label25.Width:=shape3.Width;

shape4.Left:=shape3.Left+shape3.Width-1;
shape5.Left:=shape4.Left;
shape6.Left:=shape5.Left+shape5.Width-1;

label26.Left:=shape4.Left;
label26.Width:=shape4.Width;
label27.Left:=shape5.Left;
label27.Width:=shape5.Width;
label28.Left:=shape6.Left;
label28.Width:=shape6.Width;
label27.Alignment:=taCenter;
label28.Alignment:=taCenter;
label27.Transparent:=true;
label28.Transparent:=true;

shape7.Left:=shape6.Left+shape6.Width-1;
shape7.Width:=56;
label29.Left:=shape7.Left;
label29.Width:=shape7.Width;

shape8.Left:=shape7.Left+shape7.Width-1;
shape8.Width:=56;
label30.Left:=shape8.Left;
label30.Width:=shape8.Width;

shape9.Left:=shape8.Left+shape8.Width-1;
shape9.Width:=56;
label31.Left:=shape9.Left;
label31.Width:=shape9.Width;

shape10.Left:=shape9.Left+shape9.Width-1;
shape10.width:=56;
label32.Left:=shape10.Left;
label32.Width:=shape10.Width;
label32.Alignment:=taCenter;

shape11.Left:=shape10.Left+shape10.Width-1;
shape11.Width:=222;
label33.Left:=shape11.Left;
label33.Width:=shape11.Width;
label33.Alignment:=taCenter;

shape12.Left:=shape11.Left+shape11.Width-1;
shape12.Width:=66;
label34.Left:=shape12.Left;
label34.Width:=shape12.Width;

stringgrid4.Width:=shape12.Left+shape12.Width+16;
speedbutton2.Left:=stringgrid4.Width+stringgrid4.Left-speedbutton2.Width;

label26.Top:=label24.Top;
label30.Top:=label24.Top;
label31.Top:=label24.Top;
label32.Top:=label24.Top;
label34.Top:=label24.Top;

stringgrid4.FixedRows:=0;
stringgrid4.RowCount:=1;
end;

procedure TForm3.FormActivate(Sender: TObject);
var i, j, y1 : integer;
  t1, t2, t3  : word;
begin
label2.Caption:=form1.m1_st;
combobox1.Text:=''; combobox1.Items.Clear;
combobox2.Text:=''; combobox2.Items.Clear;
combobox3.Text:=''; combobox3.Items.Clear;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from Education_Years order by Name');
dm.Q1.Active:=true;
while dm.Q1.Eof=false do
  begin
  combobox1.Items.Add(dm.Q1.fieldbyname ('Name'). AsString);
  dm.Q1.Next;
  end;
dm.Q1.close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from Protocols where Date_Prot='+quotedstr(datetostr(date()))+' and ID_Coll='+
quotedstr(form1.c1));
dm.Q1.Active:=true;
if dm.Q1.Eof=true then
  begin
  zapstr3(sender);
  panel1.Visible:=true;
  panel2.Visible:=false;
  speedbutton1.Caption:='�������������';
  if stringgrid3.Cells[0,1]>'' then speedbutton1.Enabled:=true else speedbutton1.Enabled:=false;
  end else
  begin
  label7.Caption:=form1.o1_st;
  label8.Caption:=form1.d1_st;
  label9.Caption:=form1.sd1_st;
  label10.Caption:='����������� ���� ������������� � �������� ����������';
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from Groups where ID_Group='+dm.Q1.fieldbyname('ID_Group').AsString);
  dm.Q2.Active:=true;
  if dm.Q2.Eof=false then
    begin
    label12.Caption:=dm.Q2.fieldbyname('Name').AsString;
    label14.Caption:=dm.Q2.fieldbyname('Course').AsString;
    label16.Caption:=dm.Q1.fieldbyname('Semester').AsString;
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from Subjects where ID_Sub='+dm.Q1.fieldbyname('ID_Sub').AsString);
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then
      begin
      label18.Caption:=dm.Q2.fieldbyname('Name'). AsString;
      label20.Caption:=dm.Q1.fieldbyname('Date_Prot').AsString;

            case dm.Q1.FieldByName('id_ct').AsInteger of
            1: label22.Caption:='�������';
            2: label22.Caption:='�����';
            3: label22.Caption:='����� � �������';
            end;
          end;
        end;
      label7.AutoSize:=false;
      label7.Width:=stringgrid4.Width-label7.Left*1;
      label7.Alignment:=taCenter;

      label8.AutoSize:=false;
      label8.Width:=label7.Width;
      label8.Alignment:=taCenter;

      label9.AutoSize:=false;
      label9.Width:=label7.Width;
      label9.Alignment:=taCenter;

      label10.AutoSize:=false;
      label10.Width:=label7.Width;
      label10.Alignment:=taCenter;

  label11.Left:=label12.Left;
  label12.Left:=label11.Left+label11.Width+5;

  label13.Left:=label12.Left+label12.Width+10;
  label14.Left:=label13.Left+label13.Width+5;

  label15.Left:=label14.Left+label14.Width+10;
  label16.Left:=label15.Left+label15.Width+5;

  label17.Left:=label16.Left+label16.Width+10;
  label18.Left:=label17.Left+label17.Width+5;

  label19.Left:=label20.Left;
  label20.Left:=label19.Left+label19.Width+5;

  label21.Left:=label20.Left+label20.Width+10;
  label22.Left:=label21.Left+label21.Width+5;

  stringgrid4.DefaultRowHeight:=18;

  listbox1.Items.Clear;
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from Body_Protocols where ID_Prot='+dm.Q1.fieldbyname('ID_Prot').AsString);
  dm.Q2.Active:=true;
  while dm.Q2.Eof=false do
    begin
    dm.Q3.Close;
    dm.Q3.SQL.Clear;
    dm.Q3.SQL.Add('select * from Students where ID_Stud='+quotedstr(dm.Q2.fieldbyname('ID_Coll').AsString));
    dm.Q3.Active:=true;
    if dm.Q3.Eof=false then
      begin
      dm.Q4.Close;
      dm.Q4.SQL.Clear;
      dm.Q4.SQL.Add('select * from MANS where ID_Man='+dm.Q3.fieldbyname('ID_Man').AsString);
      dm.Q4.Active:=true;
      if dm.Q4.Eof=false then
        begin
        listbox1.Items.Add(dm.Q4.fieldbyname('LastName').AsString+' '+dm.Q4.fieldbyname('Names').AsString+' '+
        dm.Q4.fieldbyname('Patronimic').AsString+'#'+dm.Q2.fieldbyname('ID_Coll').AsString);
        end;
      end;
    dm.Q2.Next;
    end;
  listbox1.Sorted:=true;
  for i:=0 to listbox1.Items.Count-1 do
    begin
    st1:=listbox1.Items[i];
    stringgrid4.RowCount:=i+1;
    stringgrid4.Cells[0,i]:=inttostr(i+1);
    stringgrid4.cells[1,i]:=copy(st1,1,pos('#',st1)-1);
    delete(st1,1,pos('#',st1));
    stringgrid4.Cells[2,i]:=st1;
    end;
  speedbutton2.Caption:='�������������';
  panel1.Visible:=false;
  panel2.Visible:=true;
  end;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
combobox2.Text:=''; combobox2.Items.Clear;
combobox3.Text:=''; combobox3.Items.Clear;

dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from Education_Years where Name='+quotedstr(combobox1.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof=false then
  begin
  ey1:=dm.Q1.fieldbyname ('ID_EY').AsInteger;
  combobox2.Items.Add('�������');
  combobox2.Items.Add('��������');
  end;
end;

procedure TForm3.ComboBox2Change(Sender: TObject);
var st1: string;
  t1, t2, t3  : word;
begin
combobox3.Text:=''; combobox3.Items.Clear;
decodedate(date(),t3,t2,t1);

if date()>=strtodate('01.09.'+inttostr(t3)) then d1:=strtodate('01.09.'+inttostr(t3)) else
d1:=strtodate('10.01.'+inttostr(t3));
if (panel1.Visible=true) and (combobox2.ItemIndex>-1) then
  begin
  st1:=copy (combobox1.Text, 1, 4);
  dm.Q1.close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from Groups where Year_S<='+st1);

  dm.Q1.Active:=true;
  while dm.Q1.Eof=false do
    begin
    combobox3.Items.Add(dm.Q1.fieldbyname('Name').AsString);
    dm.Q1.Next;
    end;
  end else
  begin
  //����� ����������� ������������ ����
  end;
end;

procedure TForm3.ComboBox3Change(Sender: TObject);
var i, j : integer;
    st1, st2 : string;
begin
combobox4.Text:=''; combobox4.Items.Clear;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from Groups where Name='+quotedstr(combobox3.Text));
dm.Q1.Active:=true;
if dm.Q1.Eof=false then
  begin
  gr1:=dm.Q1.fieldbyname('ID_Group').AsInteger;
  for i:=0 to stringgrid1.ColCount-1 do
  for j:=0 to stringgrid1.Rowcount-1 do stringgrid1.Cells[i,j]:='';
  for i:=0 to stringgrid2.ColCount-1 do
  for j:=1 to stringgrid2.Rowcount-1 do stringgrid2.Cells[i,j]:='';
  stringgrid1.Cells[0,0]:='�';
  stringgrid1.Cells[1,0]:='������� ��� �������� ��������';
  stringgrid1.Cells[2,0]:='� �������� ������';
  dm.Q1.close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from Students where ID_Group='+inttostr(gr1));
  dm.Q1.Active:=true;
  listbox1.Items.Clear;
  while dm.Q1.Eof=false do
    begin
    dm.Q2.Close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from MANS where iD_Man='+dm.Q1.fieldbyname('ID_Man').AsString);
    dm.Q2. Active:=true;
    if dm.Q2.Eof=false then listbox1.Items.Add(dm.Q2.fieldbyname('LastName').AsString+' '+
    dm.Q2.fieldbyname('Names').AsString+''+dm.Q2.FieldByName('patronimic').AsString+'#'+
    dm.Q1.fieldbyname('ID_Stud').AsString);
    dm.Q1.Next;
    end;
  listbox1.Sorted:=true;
  for i:=0 to listbox1.Items.Count-1 do
    begin
    st1:=listbox1.Items[i];
    stringgrid1.RowCount:=i+3;
    stringgrid1.Cells[0,i+2]:=inttostr(i+1);
    stringgrid1.Cells[1,i+2]:=copy(st1,1,pos('#',st1)-1);
    delete(st1,1,pos('#',st1));
    stringgrid1.Cells[1,i+3]:=st1;
    end;
  st1:=datetostr(d1);
  st2:=datetostr(date());
  //messagedlg(inttostr(gr1) ,mtinformation, [mbok], 0);
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select distinct ID_Sub from Timetable_Occupation where ID_Group='+inttostr(gr1)+' and Date_Less>='+
  quotedstr(st1)+' and Date_Less<='+quotedstr(st2));
  dm.Q1.Active:=true;

  while dm.Q1.Eof=false do
    begin
    dm.Q2.close;
    dm.Q2.SQL.Clear;
    dm.Q2.SQL.Add('select * from Subjects where ID_Sub='+dm.Q1.fieldbyname('ID_Sub').AsString);
    dm.Q2.Active:=true;
    if dm.Q2.Eof=false then combobox3.Items.Add(dm.Q2.fieldbyname('Name').AsString);
    dm.Q1.Next;
    end;
  end;
end;

procedure TForm3.zapstr3(Sender: Tobject);
var i, j : integer;
begin
for i:=0 to stringgrid3.ColCount-1 do
for j:=1 to stringgrid3.RowCount-1 do stringgrid1.Cells[i,j]:='';
stringgrid3.RowCount:=2;
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from IND_Protocols');
dm.Q1.Active:=true;
j:=0;
while dm.Q1.Eof=false do
  begin
  dm.Q2.Close;
  dm.Q2.SQL.Clear;
  dm.Q2.SQL.Add('select * from Protocols where ID_Prot='+dm.Q1.FieldByName('ID_Prot').AsString);
  dm.Q2.Active:=true;
  if (dm.Q2.Eof=false) and (dm.Q2.FieldByName('ID_Coll').AsString = form1.c1) and
  (dm.Q1.FieldByName('Date_S').AsString>' ') and (date()<dm.Q1.fieldbyname('Date_F').AsDateTime) then
    begin
    inc(j);
    stringgrid3.RowCount:=j+1;
    stringgrid3.Cells[0,j]:=inttostr(j);
    dm.Q3.Close;
    dm.Q3.SQL.Clear;
    dm.Q3.SQL.Add('select * from Groups where ID_Group='+dm.Q2.fieldbyname('ID_Group').AsString);
    dm.Q3.Active:=true;
    if dm.Q3.Eof=false then
      begin
      stringgrid3.Cells[1,j]:=dm.Q3.fieldbyname('Name').AsString;
      dm.Q3.Close;
      dm.Q3.SQL.Clear;
      dm.Q3.SQL.Add('select * from Students where ID_Stud='+quotedstr(dm.Q1.fieldbyname('ID_Stud').AsString));
      dm.Q3.Active:=true;
      if dm.Q3.Eof=false then
        begin
        dm.Q4.Close;
        dm.Q4.SQL.Clear;
        dm.Q4.SQL.Add('select * from MANS where ID_Man='+dm.Q3.fieldbyname('ID_Man').AsString);
        dm.Q4.Active:=true;
        if dm.Q4.Eof=false then
          begin
          stringgrid3.Cells[2,j]:=dm.Q4.fieldbyname('LastName').AsString+' '+dm.Q4.fieldbyname('Names').AsString+
          ' '+dm.Q4.fieldbyname('patronymic').AsString;
          stringgrid3.Cells[3,j]:=dm.Q1.fieldbyname('id_stud').AsString;
          dm.Q3.Close;
          dm.Q3.SQL.Clear;
          dm.Q3.SQL.Add('select * from Subjects where ID_Sub='+dm.Q2.fieldbyname('ID_Sub').AsString);
          dm.Q3.Active:=true;
          if dm.Q3.Eof=false then
            begin
            stringgrid3.Cells[4,j]:=dm.Q3.fieldbyname('Names').AsString;
              case dm.Q2.fieldbyname('ID_CT').AsInteger of
              1: stringgrid3.Cells[5,j]:='�������';
              2: stringgrid3.Cells[5,j]:='�����';
              3: stringgrid3.Cells[5,j]:='����� � �������';
              end;
            stringgrid3.Cells[6,j]:=dm.Q1.fieldbyname('Num_Att').AsString;
            stringgrid3.Cells[7,j]:=dm.Q1.fieldbyname('Date_B').AsString;
            stringgrid3.Cells[8,j]:=dm.Q1.fieldbyname('Date_S'). AsString;
            stringgrid3.Cells[9,j]:=dm.Q1.fieldbyname('Date_F').AsString;
            stringgrid3.Cells[10,j]:=dm.Q1.fieldbyname('Date_R').AsString;
            stringgrid3.Cells[12,j]:=dm.Q2.fieldbyname('ID_Prot').AsString;
            end;
          end;
        end;
      end;
    end;
  dm.Q1.Next;
  end;
end;

procedure TForm3.ComboBox4Change(Sender: TObject);
var i, j : integer;
    st1, st2 : string;
begin
for i:=3 to stringgrid1.ColCount-1 do
for j:=2 to stringgrid1.RowCount-1 do stringgrid1.Cells[i,j]:='';
dm.Q1.Close;
dm.Q1.SQL.Clear;
dm.Q1.SQL.Add('select * from Subjects where Name='+quotedstr(combobox4.Text));
dm.Q1.Active:=true;
i:=3;
if dm.Q1.Eof=false then
  begin
  sub1:=dm.Q1.fieldbyname('ID_Sub').AsInteger;
  //st1:=DateToStr(d1);
  st2:=datetostr(date());
  dm.Q1.Close;
  dm.Q1.SQL.Clear;
  dm.Q1.SQL.Add('select * from Timetable_Occupation where ID_Group='+inttostr(gr1)+' and ID_Sub='+
  inttostr(sub1)+' and Date_Less>='+quotedstr(st1)+' and Date_Less<='+quotedstr(st2));
  dm.Q1.Active:=true;
  while dm.Q1.Eof=false do
    begin
    inc(i);
    stringgrid1.ColCount:=i;
    stringgrid1.Cells[i-1,0]:=copy(dm.Q1.fieldbyname('Date_Less').AsString,1,5);
    stringgrid1.Cells[i-1,1]:=dm.Q1.fieldbyname('Date_Less').AsString;
    stringgrid1.ColWidths[i-1]:=34;
    stringgrid2.RowCount:=i-2;
    stringgrid2.Cells[0,i-3]:=dm.Q1.fieldbyname('Date_Less').AsString;
    stringgrid2.Cells[6,1-3]:=dm.Q1.fieldbyname('ID_Less').AsString;
    dm.Q1.Next;
    end;
  end;
end;

procedure TForm3.StringGrid3Click(Sender: TObject);
begin
if stringgrid3.Cells[10,stringgrid3.Row]='' then stringgrid3.Col:=10 else stringgrid3.Col:=11;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
var j, tc1 : integer;
    st1, st2, st3, st4 : string;
begin
if speedbutton1.Caption='�������������' then
  begin
  speedbutton1.Caption:='���������';
  stringgrid3.Options:=stringgrid3.Options+[goEditing];
  end else
  begin
  speedbutton1.Caption:='�������������';
  stringgrid3.Options:=stringgrid3.Options-[goEditing];
  for j:=1 to stringgrid3.RowCount-1 do
    begin
    if stringgrid3.Cells[11, j]='' then
      begin
      st1:=stringgrid3.Cells[10,j];
      st2:=stringgrid3.Cells[11,j];
      dm.Q1.Close;
      dm.Q1.SQL.Clear;
      dm.Q1.SQL.Add('update IND_Protocols set Date_R='+quotedstr(st1)+' where ID_Stud='+
      quotedstr(stringgrid3.Cells[3,j])+' and Date_S='+quotedstr(st2));
      dm.Q1.ExecSQL;
      end else
      begin
      if stringgrid3.Cells[5,j]='�������'         then tc1:=1;
      if stringgrid3.Cells[5,j]='�����'           then tc1:=2;
      if stringgrid3.Cells[5,j]='����� � �������' then tc1:=3;
      st1:=stringgrid3.Cells[10,j];
      st2:=stringgrid3.Cells[3,j];
        case tc1 of
        1: begin
           if strtofloatdef(stringgrid3.Cells[11,j],0)<0 then stringgrid3.Cells[11,j]:='' else
             begin
             st3:=stringgrid3.Cells[11,j];
             if strtofloat(st3)>=95 then st4:='A' else
               if strtofloat(st3)>=85 then st4:='B' else
                 if strtofloat(st3)>=75 then st4:='C' else
                   if strtofloat(st3)>=65 then st4:='E' else
                     if strtofloat(st3)>=55 then st4:='X' else st4:='F';
             end;
           end;
        2: begin
           if strtofloatdef(stringgrid3.Cells[11,j],0)<0 then stringgrid3.Cells[11,j]:='' else
             begin
             st3:=stringgrid3.Cells[11,j];
             if strtofloat(st3)>=60 then st4:='l' else st4:='0';
             end;
           end;
        3: begin
           if (strtointdef(stringgrid3.Cells[11,j],0)<0) or (strtointdef(stringgrid3.Cells[11,j],0)>5) then
           stringgrid3.Cells[11,j]:='';
           end;
        end;
      dm.Q1.Close;
      dm.Q1.SQL.Clear;
        case tc1 of
        1: begin
           messagedlg(st1,mterror,[mbok],0);
           dm.Q1.SQL.Add('update IND_Protocols set Balls='+quotedstr(st3)+', Litera='+quotedstr(st4)+
           ' where Date_R='+quotedstr(st1)+' and ID_Stud='+quotedstr(st2));
           end;
        2: begin
           dm.Q1.SQL.Add('update IND_Protocols set Balls='+quotedstr(st3)+', result='+quotedstr(st4)+
           ' where ID_Stud='+quotedstr(stringgrid3.Cells[3,j])+' and Date_S='+quotedstr(st2));
           end;
        3: begin
           dm.Q1.SQL.Add('update IND_Protocols set Result='+quotedstr(stringgrid3.Cells[11,j])+' where ID_Stud='+
           quotedstr(stringgrid3.Cells[3,j])+' and Date_S='+quotedstr(st2));
           end;
        end;
      dm.Q1.ExecSQL;
      end;
    end;
  end;
end;






end.
