unit ConsCheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Masks, ShellAPI, ShlObj,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    NumberOfCons: TLabel;
    ConsCheckEdit1: TEdit;
    ConsCheckEdit2: TEdit;
    ConsCheckEdit3: TEdit;
    ConsCheckEdit4: TEdit;
    ConsCheckEdit5: TEdit;
    Cons1path: TBitBtn;
    Cons2path: TBitBtn;
    Cons3path: TBitBtn;
    Cons4path: TBitBtn;
    Cons5path: TBitBtn;
    ConsDel: TBitBtn;
    CheckBoxCons1: TCheckBox;
    CheckBoxCons2: TCheckBox;
    CheckBoxCons3: TCheckBox;
    CheckBoxCons4: TCheckBox;
    CheckBoxCons5: TCheckBox;
    Captcha: TLabel;
    CaptchaEdit: TEdit;
    ConsDelConfirm: TBitBtn;
    ClearCons1path: TBitBtn;
    ClearCons3path: TBitBtn;
    ClearCons4path: TBitBtn;
    ClearCons5path: TBitBtn;
    ClearCons2path: TBitBtn;
    ScanCons: TBitBtn;
    FixCons: TBitBtn;
    CurrentVR: TLabel;
    CurrentExeSize: TLabel;
    CurrentVRSize: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Border1: TPanel;
    Border2: TPanel;
    ComboBox1: TComboBox;
    procedure Cons1pathClick(Sender: TObject);
    procedure Cons2pathClick(Sender: TObject);
    procedure Cons3pathClick(Sender: TObject);
    procedure Cons4pathClick(Sender: TObject);
    procedure Cons5pathClick(Sender: TObject);
    procedure ConsDelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ConsDelConfirmClick(Sender: TObject);
    procedure ClearCons1pathClick(Sender: TObject);
    procedure ClearCons2pathClick(Sender: TObject);
    procedure ClearCons3pathClick(Sender: TObject);
    procedure ClearCons4pathClick(Sender: TObject);
    procedure ClearCons5pathClick(Sender: TObject);
    procedure ScanConsClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     Procedure GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
    Message wm_GetMinMaxInfo;
  end;

var
  Form6: TForm6;
RandomCaptcha : smallint;
implementation

uses
  unit1, unit4;

{$R *.dfm}

Procedure TForm6.GetMinMax(Var MinMaxMessage:TWMGetMinMaxInfo);
Begin
    with MinMaxMessage.MinMaxInfo^ Do
    begin
      ptMaxPosition.X := 0;
      ptMaxPosition.Y := 0;
      ptMinTrackSize.X := 1280;
      ptMinTrackSize.Y := 415;
      ptMaxTrackSize.X := 1280;
      ptMaxTrackSize.Y := 415;
    end;
End;

//функция очистки папки назначения
function DelDirNoSilent(dir: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_DELETE;
//    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
    pFrom  := PChar(dir + #0);
  end;
  Result := (0 = ShFileOperation(fos));
end;

// Поиск файлов по маске по всему дереву каталогов, начиная с указанного
procedure FindFiles(StartFolder, Mask: string; List: TStrings; ScanSubFolders: Boolean);
var
  SearchRec: TSearchRec;
  FindResult: Integer;
begin
  List.BeginUpdate;
  try
    StartFolder := IncludeTrailingBackslash(StartFolder);
    FindResult := FindFirst(StartFolder + '*.*', faAnyFile, SearchRec);
    try
      while FindResult = 0 do
        with SearchRec do
        begin
          if (Attr and faDirectory) <> 0 then
          begin
            if ScanSubFolders and (Name <> '.') and (Name <> '..') then
              FindFiles(StartFolder + Name, Mask, List, ScanSubFolders);
          end
          else
          begin
            if MatchesMask(Name, Mask) then
              List.Add(StartFolder + Name);
          end;
          FindResult := FindNext(SearchRec);
        end;
    finally
      FindClose(SearchRec);
    end;
  finally
    List.EndUpdate;
  end;
end;

//Дублирование кнопок выбора пути для страховки. По умолчанию только Edit1 виден пользователю
procedure TForm6.Cons1pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберите папку для копирования:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit1.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons2pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберите папку для копирования:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit2.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons3pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберите папку для копирования:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit3.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons4pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберите папку для копирования:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit4.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

procedure TForm6.Cons5pathClick(Sender: TObject);

var
  TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := Form6.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберите папку для копирования:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  BrowseInfo.ulFlags:= BIF_NEWDIALOGSTYLE;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    ConsCheckEdit5.Text:=TempPath;
    GlobalFreePtr(lpItemID)
  end;
end;

//Кнопки очистки выбора пути
procedure TForm6.BitBtn1Click(Sender: TObject);
begin
ShowMessage(ComboBox1.Text);
end;

procedure TForm6.ClearCons1pathClick(Sender: TObject);
begin
ConsCheckEdit1.Text := 'Комплект №1';
end;

procedure TForm6.ClearCons2pathClick(Sender: TObject);
begin
ConsCheckEdit2.Text := 'Комплект №2';
end;

procedure TForm6.ClearCons3pathClick(Sender: TObject);
begin
ConsCheckEdit3.Text := 'Комплект №3';
end;

procedure TForm6.ClearCons4pathClick(Sender: TObject);
begin
ConsCheckEdit4.Text := 'Комплект №4';
end;

procedure TForm6.ClearCons5pathClick(Sender: TObject);
begin
ConsCheckEdit5.Text := 'Комплект №5';
end;

//Кнопка сканирования К+ на наличие проблем
procedure TForm6.ScanConsClick(Sender: TObject);
var
F : File of byte;
Size : Integer;
i, j, PositionSharp, PositionType : shortint;
Checksize, distrdata, SQLquery, ComplectName : string;
distrlist, baselist, StandartBaselist, Base4Compare : TStringList;
distr : TextFile;
SR : TSearchRec;
Abracadabra : Boolean;

begin

//Подключаемся к таблице TechInfo для загрузки данных по модулю и ехе-файлу
DataModule5.ClientDataSet1.Active := False;
DataModule5.SQLQuery1.Close;
DataModule5.SQLQuery1.SQL.Clear;
DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM TechInfo';
DataModule5.SQLQuery1.Open;
DataModule5.ClientDataSet1.Active := True;

(*
Шоб не запутаться:
Версия модуля - DataModule5.SQLQuery1.Fields[0].AsString;
Размер модуля - DataModule5.SQLQuery1.Fields[1].AsString;
Размер ехе - DataModule5.SQLQuery1.Fields[2].AsString;
Дата ехе - DataModule5.SQLQuery1.Fields[3].AsString;
*)

//Проверяем что выбрал юзер
 if (CheckBoxCons1.Checked = False) and
(CheckBoxCons2.Checked = False) and
(CheckBoxCons3.Checked = False) and
(CheckBoxCons4.Checked = False) and
(CheckBoxCons5.Checked = False) then
ShowMessage('Вы ничего не выбрали')
else begin
//Все комментарии даны только для комплекта №1, т.к. выполняемый код идентичен, за исключением номера ConsCheckEdit
    if CheckBoxCons1.Checked = True then         //Обработка комплекта №1
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('** Поиск установленных модулей **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ComboBox1.Text, 'vr*.res', Memo1.Lines, true);     //Ищем все файлы по маске и пишем их в мемо
       i := 2;                       //стартуем с 2, т.к. 0-ая и 1-ая это служебные записи
        while i <> Memo1.Lines.Count do         //пускаем цикл по всем найденым модулям
         begin
          AssignFile(F, Memo1.Lines[i]);       //читаем модуль и смотрим его размер
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := 'Да' else Checksize := 'Нет';   //сверяем с эталоном
          Memo1.Lines.Insert(i+1, 'Размер файла:' + IntToStr(Size));      //добавляем записи между строками с найденными модулями
          Memo1.Lines.Insert(i+2, 'Совпадение с эталоном:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);   //Код перевода строки
          i := i + 4;           //Переход на +4 из-за трёх дополнительных записей
          CloseFile(F);
         end;

       memo1.Lines.Add('** Поиск exe-файла **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ComboBox1.Text, 'cons.exe', Memo1.Lines, true);      //ищем cons.exe и дописываем его в мемо
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);     //сразу обращаемся к последней записи в мемо, без цикла, т.к. ехе-файл только один
       Reset(F);
       Size:=Filesize(F);         //смотрим размер
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := 'Да' else Checksize := 'Нет';      //сверяем с эталоном
       Memo1.Lines.Add('Размер файла:' + IntToStr(Size));      //т.к. ехе-файл только один, нет нужды "вклинивать" записи между строками, поэтому просто добавляем в конец
       Memo1.Lines.Add('Совпадение с эталоном:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** Поиск дистрибутивов **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;                //создаем стринг-лист, потому что дистрибутивов много, а делать невидимый мемо мне не позволила совесть

       if FindFirst(ComboBox1.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then //ищем все дистрибутивы в папке папке назначения + \Distr\Din\. Возможно чувствительная к регистру, надо проверить.
          begin
            repeat
            AssignFile(distr, ComboBox1.Text + '\Distr\Din\' + SR.Name);     //Открываем первый дистрибутив
            Reset(distr);
            Abracadabra := false;        //переменная-маркер, ставим на False по умолчанию
            while Abracadabra = false do        //Пока маркер False проверяем построчно содержимое дистрибутива
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              //Если в строке встретились английские буквы (код дистрибутива) ставим маркер в True, иначе - гоняем по кругу
              //Раньше просто использовал ReadLn несколько раз, пока не вспомнил, что текст дистрибутива может меняться. Спасибо за подсказку! :)
              end;
            distrlist.Add(distrdata); //Пишем код дистрибутива в стринг-лист
            Abracadabra := false;   //переменная-маркер, ставим на False по умолчанию
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='Т') and (distrdata[2]='и') and (distrdata[3]='п') then Abracadabra := true else Abracadabra := false;
              //В содержимом дистрибутива нас интересует строчка с сетевитостью системы. Гоняем построчно, пока не найдем символы "Тип".
              end;
            distrlist.Add(distrdata); //Пишем тип системы в стринг-лист
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);     //Выходим из поиска
          end;

       //По умолчанию дистрибутив содержит английское наименование и номер. Отделим название.
       i:=0;
       repeat
        distrdata := distrlist[i]; //Передадим первую строку стринг-листа в переменную-строку
        PositionSharp := AnsiPos('#', distrdata);  //В некоторых дистрибутивах (RAPS, RLAW) название отделено от номера символом #. Ищем его.
        if PositionSharp <> 0 then  //Если символ найден - легкий путь.
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1); //Отделяем все от начала, до позиции символа # и добавляем в переменную-запрос.
           end else  //Если символ не найден (как например в LAW12345.DIN) идем трудным путём
           begin
            for j := 1 to Length(distrdata) do //посимвольно читаем строку
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
            //Отделяем символы, пока они входят в английский алфавит, иначе - выходим из цикла, чтобы не зацепить символы от расширения файла.
            end;

        i:=i+1; //переходим на 1, т.к. в стринглисте чередуются название дистрибутивов и их сетевитость
        distrdata := distrlist[i]; //Передадим первую строку стринг-листа в переменную-строку
          PositionType := AnsiPos('ОВК-Ф', distrdata);
           if PositionType <> 0 then
             SQLquery := SQLquery + '_OVKF' //Проверяем на вид ОВК-Ф
             else
               PositionType := AnsiPos('несетевая', distrdata); //проверяем на виды "Локальный", "Флеш" т.к. они содержат слово (несетевая) в описании
                  if PositionType <> 0 then  //Если найден - добавляем к запросу _loc
                  SQLquery := SQLquery + '_loc'
                  else //Проверяем на ОВМ-Ф
                    PositionType := AnsiPos('ОВМ-Ф', distrdata);
                    if PositionType <> 0 then
                    SQLquery := SQLquery + '_OVM-F' else  //Добавляем к запросу _OVM-F
                    SQLquery := SQLquery + '_set';    //Добавляем к запросу _set

       SQLquery := SQLquery + '|'; //Отбиваем найденный дистрибутив разделителем.
       i:=i+1; //переходим на 1, т.к. в стринглисте чередуются название дистрибутивов и их сетевитость

       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do //Для наглядности выводим все найденные дистрибутивы в Мемо
          Memo1.Lines.Add(distrlist[i]);

       distrlist.Delimiter := '|';       //Разделяем запрос по символу |
       distrlist.DelimitedText := SQLquery;
       distrlist.Delete(distrlist.Count-1);  //Удаляем последнюю строчку, т.к. она пустая

       //Тут начинается колдунство

       baselist := TStringList.Create;                    //Создаем стринг-листы
       StandartBaselist := TStringList.Create;
       Base4Compare := TStringList.Create;

                                                     (* -------------- *)
       StandartBaselist.Clear;
       baselist.Clear;
       DataModule5.ClientDataSet1.Active := False;         //Подключаем таблицу основных комплектов (ЖК, онлайн части смартов, локальные смарты)
       DataModule5.SQLQuery1.Close;
       DataModule5.SQLQuery1.SQL.Clear;
       DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM Complect';
       DataModule5.SQLQuery1.Open;
       DataModule5.ClientDataSet1.Active := True;

       for i := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do           //Загоняем в эталонный стринг-лист названия всех ситем
           begin
             StandartBaselist.Add(DataModule5.SQLQuery1.Fields[1].AsString);
             DataModule5.SQLQuery1.Next;
           end;

       for i := 0 to distrlist.Count -1 do
         begin
           j := StandartBaselist.IndexOf(distrlist[i]);          //Находим в эталонном списке каждое название дистрибутива по циклу
           if j > -1 then
            begin
             ComplectName := distrlist[i];
             DataModule5.ClientDataSet1.Active := False;         //Подключаtм таблицу состава комплектов
             DataModule5.SQLQuery2.Close;
             DataModule5.SQLQuery2.SQL.Clear;
             DataModule5.SQLQuery2.SQL.Text := 'SELECT Base_id FROM Complect WHERE ComplectName=''' + ComplectName + '''';   //сопоставляем текущему запросу строку в БД
             DataModule5.SQLQuery2.Open;
             DataModule5.ClientDataSet1.Active := True;

             ComplectName:=DataModule5.SQLQuery2.Fields[0].AsString;  //Получаем список id банков для нашего запроса

             DataModule5.ClientDataSet1.Active := False;
             DataModule5.SQLQuery1.Close;
             DataModule5.SQLQuery1.SQL.Clear;
             DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectName + ') ORDER BY id ASC;';  //Переводим id в названия банков
             DataModule5.SQLQuery1.Open;
             DataModule5.ClientDataSet1.Active := True;

              for j := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do   //Загоняем в рабочий стринг-лист названия всех ситем
                 begin
                   baselist.Add(DataModule5.SQLQuery1.Fields[3].AsString);
                   DataModule5.SQLQuery1.Next;
                 end;
            end;
         end;

             for i := 0 to baselist.Count-1 do Base4Compare.Add(baselist[i]);
                                                     (* -------------- *)
       StandartBaselist.Clear;
       baselist.Clear;
       DataModule5.ClientDataSet1.Active := False;         //Подключаем таблицу офлайн частей (ОВК-ф, ОВМ-Ф и т.д.)
       DataModule5.SQLQuery1.Close;
       DataModule5.SQLQuery1.SQL.Clear;
       DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM ComplectOff';
       DataModule5.SQLQuery1.Open;
       DataModule5.ClientDataSet1.Active := True;

       for i := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do           //Загоняем в эталонный стринг-лист названия всех ситем
           begin
             StandartBaselist.Add(DataModule5.SQLQuery1.Fields[1].AsString);
             DataModule5.SQLQuery1.Next;
           end;

       for i := 0 to distrlist.Count -1 do
         begin
           j := StandartBaselist.IndexOf(distrlist[i]);        //Находим в эталонном списке каждое название дистрибутива по циклу
           if j > -1 then
            begin
             ComplectName := distrlist[i];
             DataModule5.ClientDataSet1.Active := False;         //Подключам таблицу состава комплектов
             DataModule5.SQLQuery2.Close;
             DataModule5.SQLQuery2.SQL.Clear;
             DataModule5.SQLQuery2.SQL.Text := 'SELECT Base_id FROM ComplectOff WHERE ComplectName=''' + ComplectName + '''';    //сопоставляем текущему запросу строку в БД
             DataModule5.SQLQuery2.Open;
             DataModule5.ClientDataSet1.Active := True;

             ComplectName:=DataModule5.SQLQuery2.Fields[0].AsString;    //Получаем список id банков для нашего запроса

             DataModule5.ClientDataSet1.Active := False;
             DataModule5.SQLQuery1.Close;
             DataModule5.SQLQuery1.SQL.Clear;
             DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectName + ') ORDER BY id ASC;';    //Переводим id в названия банков
             DataModule5.SQLQuery1.Open;
             DataModule5.ClientDataSet1.Active := True;

              for j := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do             //Загоняем в рабочий стринг-лист названия всех ситем
                 begin
                   baselist.Add(DataModule5.SQLQuery1.Fields[3].AsString);
                   DataModule5.SQLQuery1.Next;
                 end;
            end;
         end;

             for i := 0 to baselist.Count-1 do Base4Compare.Add(baselist[i]);

                                                     (* -------------- *)
       StandartBaselist.Clear;
       baselist.Clear;
       DataModule5.ClientDataSet1.Active := False;         //Подключаем таблицу доп. систем
       DataModule5.SQLQuery1.Close;
       DataModule5.SQLQuery1.SQL.Clear;
       DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM AddSystem';
       DataModule5.SQLQuery1.Open;
       DataModule5.ClientDataSet1.Active := True;

       for i := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do           //Загоняем в эталонный стринг-лист названия всех ситем
           begin
             StandartBaselist.Add(DataModule5.SQLQuery1.Fields[1].AsString);
             DataModule5.SQLQuery1.Next;
           end;

       for i := 0 to distrlist.Count -1 do             //Т.к. в БД доп системы не имеют приписки _loc, _set и т.д. - удаляем их
         begin
           PositionSharp := AnsiPos ('_', distrlist[i]);   //Находим символ _
           distrlist[i] := copy(distrlist[i], 1, PositionSharp -1);    //Удаляем все после этого символа
         end;

       for i := 0 to distrlist.Count -1 do
         begin
           j := StandartBaselist.IndexOf(distrlist[i]);     //Находим в эталонном списке каждое название дистрибутива по циклу
           if j > -1 then
            begin
             ComplectName := distrlist[i];
             DataModule5.ClientDataSet1.Active := False;         //Подключам таблицу состава комплектов
             DataModule5.SQLQuery2.Close;
             DataModule5.SQLQuery2.SQL.Clear;
             DataModule5.SQLQuery2.SQL.Text := 'SELECT Base_id FROM AddSystem WHERE ComplectName=''' + ComplectName + '''';   //сопоставляем текущему запросу строку в БД
             DataModule5.SQLQuery2.Open;
             DataModule5.ClientDataSet1.Active := True;

             ComplectName:=DataModule5.SQLQuery2.Fields[0].AsString;   //Получаем список id банков для нашего запроса

             DataModule5.ClientDataSet1.Active := False;
             DataModule5.SQLQuery1.Close;
             DataModule5.SQLQuery1.SQL.Clear;
             DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM System WHERE id IN (' + ComplectName + ') ORDER BY id ASC;';  //Переводим id в названия банков
             DataModule5.SQLQuery1.Open;
             DataModule5.ClientDataSet1.Active := True;

              for j := 0 to DataModule5.ClientDataSet1.RecordCount - 1 do        //Загоняем в рабочий стринг-лист названия всех ситем
                 begin
                   baselist.Add(DataModule5.SQLQuery1.Fields[3].AsString);
                   DataModule5.SQLQuery1.Next;
                 end;
            end;
         end;

             for i := 0 to baselist.Count-1 do Base4Compare.Add(baselist[i]);     // Собираем все необходимые базы

      StandartBaselist.Text := Base4Compare.Text;  //Отныне эталоном будет то, что найдено в соответсвии с дистрибутивами клиента

        //Ищем все папки в \BASE у клиента и заносим их в baselist
        //Экономь ресурсы, используй переменные дважды :)
         baselist.Clear;
        if FindFirst(ComboBox1.Text + '\BASE\*.*', faDirectory, SR) = 0 then
           begin
             repeat
               baselist.Add(SR.Name);
             until FindNext(SR) <> 0;
             FindClose(SR);
           end;

      //Эталон загружаемый из базы не учитывает возможное пересечение баз при сопровождении ДС, а так же включает в себя важный технологический костыль.
      //Исправим это.
      StandartBaselist.Duplicates := dupIgnore;  //Убираем дубликаты баз
      if  StandartBaselist.IndexOf('-') > -1 then StandartBaselist.Delete(StandartBaselist.IndexOf('-')); //Ищем и убираем великолепный технический костыль

      //Загруженый перечень баз клиента содержит системные записи.
      //Исправим это
      baselist.Delete(0);         //Удаляем лишнее в списке - перехеод на уровень вверх и текущая директория  ( '.' и '..')
      baselist.Delete(0);         //Удаляем 0-ой элемент дважды, т.к. список смещается

      if baselist.IndexOf('COMMON') > -1 then baselist.Delete(baselist.IndexOf('COMMON'));  //удаляем из списка сравнения папку Common
      // Можно было обойтись безусловным удалением, т.к. эта папка есть всегда, но для наших тестов это необходимо, ведь на наших подопытных К+ её нет.

      Base4Compare.Clear;         //Очищаем стринг лист, в дальнейшем будем использовать его для сравнения требуемых баз и текущих баз

      //Для определения избыточных и отсутствующих баз нам необходимо сравнить 2 стринг листа между собой

      //Сравним эталонный список, полученный из дистрибутивов, с фактически установленными базами
      for i := 0 to baselist.Count-1 do
        if StandartBaselist.IndexOf(baselist[i]) <0 then Base4Compare.Add(baselist[i]);

      if Base4Compare.Count > 0 then
                                  begin
                                  Base4Compare.Insert(0,'** Найдены избыточные базы **' + #13);  //Если список не пуст - добавляем в 0-ую строку отчет
                                  Base4Compare.Insert(1,'---------------------------');
                                  end
                                else  Base4Compare.Add('** Избыточные базы  не найден**');   //Если список пуст - добавляем отчёт по базам в начало

        Base4Compare.Add(#13);
        j := Base4Compare.Count;   // Т.к. в дальнейшем кол-во элементов в итоговом списке может измениться, а нам необходимо вставить отчет - зафиксируем текущее кол-во элементов

      //Сравним список фактически установленнымх база со списком, полученным баз из дистрибутивов
      for i := 0 to StandartBaselist.Count-1 do
        if baselist.IndexOf(StandartBaselist[i]) <0 then Base4Compare.Add(StandartBaselist[i]);

       if Base4Compare.Count > j then
                                  begin
                                  Base4Compare.Insert(j,'** Найдены недостающие базы **');  //Если величина списка изменилась - в ней появились недостающие базы. Добавим отчет в начало списка недостающих баз.
                                  Base4Compare.Insert(j+1,'---------------------------');
                                  end
                                 else Base4Compare.Add('** Отсутствующие базы не найдены **'); //Если не изменилась - рапортуем в конце, что всё хорошо

      if Base4Compare.Count = 2 then //Добавим финальную проверку. Если записей 2 - это записи, что всё в порядке. Заменим их лаконичной и красивой надписью.
          begin
            Base4Compare.Clear;
            Base4Compare.Add('** Комплект соответствует эталону **');
          end;
      Memo2.Text := Base4Compare.Text;
      end;

    if CheckBoxCons2.Checked = True then           //Обработка комплекта №2
      begin

       memo1.Lines.Clear;
       memo1.Lines.Add('** Поиск установленных модулей **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit2.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := 'Да' else Checksize := 'Нет';
          Memo1.Lines.Insert(i+1, 'Размер файла:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, 'Совпадение с эталоном:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('** Поиск exe-файла **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit2.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := 'Да' else Checksize := 'Нет';
       Memo1.Lines.Add('Размер файла:' + IntToStr(Size));
       Memo1.Lines.Add('Совпадение с эталоном:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** Поиск дистрибутивов **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit2.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit2.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='Т') and (distrdata[2]='и') and (distrdata[3]='п') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('несетевая', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;

    if CheckBoxCons3.Checked = True then              //Обработка комплекта №3
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('** Поиск установленных модулей **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit3.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := 'Да' else Checksize := 'Нет';
          Memo1.Lines.Insert(i+1, 'Размер файла:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, 'Совпадение с эталоном:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('** Поиск exe-файла **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit3.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := 'Да' else Checksize := 'Нет';
       Memo1.Lines.Add('Размер файла:' + IntToStr(Size));
       Memo1.Lines.Add('Совпадение с эталоном:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** Поиск дистрибутивов **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit3.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit3.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='Т') and (distrdata[2]='и') and (distrdata[3]='п') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('несетевая', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;

    if CheckBoxCons4.Checked = True then                  //Обработка комплекта №4
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('** Поиск установленных модулей **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit4.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := 'Да' else Checksize := 'Нет';
          Memo1.Lines.Insert(i+1, 'Размер файла:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, 'Совпадение с эталоном:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('** Поиск exe-файла **');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit4.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := 'Да' else Checksize := 'Нет';
       Memo1.Lines.Add('Размер файла:' + IntToStr(Size));
       Memo1.Lines.Add('Совпадение с эталоном:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** Поиск дистрибутивов **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit4.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit4.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='Т') and (distrdata[2]='и') and (distrdata[3]='п') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('несетевая', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);


       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;


    if CheckBoxCons5.Checked = True then                //Обработка комплекта №5
      begin
       memo1.Lines.Clear;
       memo1.Lines.Add('Поиск установленных модулей');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit5.Text, 'vr*.res', Memo1.Lines, true);
       i := 2;
        while i <> Memo1.Lines.Count do
         begin
          AssignFile(F, Memo1.Lines[i]);
          Reset(F);
          Size:=Filesize(F);
          if IntToStr(Size) = DataModule5.SQLQuery1.Fields[1].AsString then Checksize := 'Да' else Checksize := 'Нет';
          Memo1.Lines.Insert(i+1, 'Размер файла:' + IntToStr(Size));
          Memo1.Lines.Insert(i+2, 'Совпадение с эталоном:' + Checksize);
          Memo1.Lines.Insert(i+3, #13);
          i := i + 4;
          CloseFile(F);
         end;

       memo1.Lines.Add('Поиск exe-файла');
       memo1.Lines.Add('---------------------------');
       FindFiles(ConsCheckEdit5.Text, 'cons.exe', Memo1.Lines, true);
       AssignFile(F, Memo1.Lines[Memo1.Lines.Count-1]);
       Reset(F);
       Size:=Filesize(F);
       if IntToStr(Size) = DataModule5.SQLQuery1.Fields[2].AsString then Checksize := 'Да' else Checksize := 'Нет';
       Memo1.Lines.Add('Размер файла:' + IntToStr(Size));
       Memo1.Lines.Add('Совпадение с эталоном:' + Checksize);
       Memo1.Lines.Add(#13);
       CloseFile(F);

       memo1.Lines.Add('** Поиск дистрибутивов **');
       memo1.Lines.Add('---------------------------');
       distrlist := TStringList.Create;

       if FindFirst(ConsCheckEdit5.Text + '\Distr\Din\*.din', faAnyFile, SR) = 0 then
          begin
            repeat
            AssignFile(distr, ConsCheckEdit5.Text + '\Distr\Din\' + SR.Name);
            Reset(distr);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1] in ['A'..'Z', 'a'..'z']) and (distrdata[2] in ['A'..'Z', 'a'..'z']) and (distrdata[3] in ['A'..'Z', 'a'..'z']) then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            Abracadabra := false;
            while Abracadabra = false do
              begin
               ReadLn(distr, distrdata);
               if (distrdata[1]='Т') and (distrdata[2]='и') and (distrdata[3]='п') then Abracadabra := true else Abracadabra := false;
              end;
            distrlist.Add(distrdata);
            CloseFile(distr);
            until FindNext(SR) <> 0;
           FindClose(SR);
          end;

       i:=0;
       repeat
        distrdata := distrlist[i];
        PositionSharp := AnsiPos('#', distrdata);
        if PositionSharp <> 0 then
           begin
           SQLquery := SQLquery + copy(distrdata, 1, PositionSharp-1);
           end else
           begin
            for j := 1 to Length(distrdata) do
              if distrdata[j] in ['A'..'Z', 'a'..'z'] then SQLquery := SQLquery + distrdata[j] else break;
           end;

        i:=i+1;
        distrdata := distrlist[i];
        PositionType := AnsiPos('несетевая', distrdata);
        if PositionType <> 0 then
           SQLquery := SQLquery + '_loc'
           else
           SQLquery := SQLquery + '_set';

       SQLquery := SQLquery + '|';
        i:=i+1;
       until (i = distrlist.Count);

       for i := 0 to distrlist.Count-1 do
          Memo1.Lines.Add(distrlist[i]);
      end;
  end;
end;

//Кнопка предварительного удаления
procedure TForm6.ConsDelClick(Sender: TObject);
begin
if (CheckBoxCons1.Checked = False) and
   (CheckBoxCons2.Checked = False) and
   (CheckBoxCons3.Checked = False) and
   (CheckBoxCons4.Checked = False) and
   (CheckBoxCons5.Checked = False) then
ShowMessage('Вы ничего не выбрали')
else
  begin
    ShowMessage('Вы пытаетесь удалить выбранные комплекты КонсультантПлюс' + #13
      + 'Вероятно, вы осознаете, что делаете.' + #13
      + 'Для того, чтобы убедиться, что ваши намерения серьезны - введите капчу.' + #13
      + 'Если вы нажали на эту кнопку случайно - игнорируйте это сообщение, людей за вашей спиной и общественное мнение.'+ #13
      + 'P.S. Мы предупредили!');

    Randomize;           //Создаем случайно число в пределах 10 000
    RandomCaptcha := 1 + Random(10000);  //Да, глобальные переменные зло, но мне надо передать её в другую процедуру
    Captcha.Caption := 'Введите число: ' + #13 + inttostr(RandomCaptcha);

    Captcha.Visible := True;
    CaptchaEdit.Visible := True;
    ConsDelConfirm.Visible := True;
  end;
end;

//Кнопка окончательного удаления
procedure TForm6.ConsDelConfirmClick(Sender: TObject);
var
pass : string;

begin
If CaptchaEdit.Text = 'Ответ' then ShowMessage('Капчу всё таки надо ввести') //Ругаемся, если пользователь не ввёл капчу
  else begin
   try
     pass := CaptchaEdit.Text;
       if StrToInt(pass) = RandomCaptcha then      //Сверяемся с капчей
        begin
          if (CheckBoxCons1.Checked = False) and
             (CheckBoxCons2.Checked = False) and
             (CheckBoxCons3.Checked = False) and
             (CheckBoxCons4.Checked = False) and
             (CheckBoxCons5.Checked = False) then
             ShowMessage('Вы ничего не выбрали') else
             begin
             //Тут удаляют К+
             ShowMessage('Скидыщь!');
              if (CheckBoxCons1.Checked = True) and (ConsCheckEdit1.Text <> 'Комплект №1') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit1.Text+'\*.*');
                                                                                           CheckBoxCons1.Checked := False;
                                                                                        end;
              if (CheckBoxCons2.Checked = True) and (ConsCheckEdit2.Text <> 'Комплект №2') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit2.Text+'\*.*');
                                                                                           CheckBoxCons2.Checked := False;
                                                                                        end;
              if (CheckBoxCons3.Checked = True) and (ConsCheckEdit3.Text <> 'Комплект №3') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit3.Text+'\*.*');
                                                                                           CheckBoxCons3.Checked := False;
                                                                                        end;
              if (CheckBoxCons4.Checked = True) and (ConsCheckEdit4.Text <> 'Комплект №4') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit4.Text+'\*.*');
                                                                                           CheckBoxCons4.Checked := False;
                                                                                        end;
              if (CheckBoxCons5.Checked = True) and (ConsCheckEdit5.Text <> 'Комплект №5') then
                                                                                        begin
                                                                                           DelDirNoSilent(ConsCheckEdit5.Text+'\*.*');
                                                                                           CheckBoxCons5.Checked := False;
                                                                                        end;
             end;

        end else
        begin
         ShowMessage('Капча введена неверно');  //Ругаемся, если ввели не то число
        end;

   except
     begin
      ShowMessage('Ответом должно быть число!');  //Ругаемся на слово, вместо числа
     end;
   end;
end;
end;

//Выводим текущие тех.данные по К+ на экран
procedure TForm6.FormActivate(Sender: TObject);

begin

DataModule5.ClientDataSet1.Active := False;
DataModule5.SQLQuery1.Close;
DataModule5.SQLQuery1.SQL.Clear;
DataModule5.SQLQuery1.SQL.Text := 'SELECT * FROM TechInfo';
DataModule5.SQLQuery1.Open;
DataModule5.ClientDataSet1.Active := True;

CurrentVR.Caption := CurrentVR.Caption + DataModule5.SQLQuery1.FieldByName('vrVersion').AsString;
CurrentVRSize.Caption := CurrentVRSize.Caption + DataModule5.SQLQuery1.FieldByName('vrSize').AsString;
CurrentExeSize.Caption := CurrentExeSize.Caption + DataModule5.SQLQuery1.FieldByName('exeSize').AsString;
end;



end.
