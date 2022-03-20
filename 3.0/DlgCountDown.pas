// *************** ���������� ������� �� ������ �������� *************** \\

unit DlgCountdown;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes;

type
  // ��� ������ ������:
  //   cdsByClass - �� ������ � �������.
  //     BtnID - ������, BtnStr - �����.
  //     ����������� ������� �������� ���� � Z-������� � ������ BtnID-�� (������� � 1) ���� � ������� BtnStr.
  //     ��� VCL ���� ��� �������� ������ ������� ('TButton' etc), ��� WinApi -
  //     �������� ������ *����* (������ 'Button').
  //     !! ������� ����������� �� Z-order, � �� � ������� ��������� ��� �������� !!
  //   cdsByDlgID - �� dialog ID (������ ��� ��������, ����������� �� ��������).
  //     BtnID - dialog ID, BtnStr - �� ������������.
  //   cdsByText - �� ������ (WindowText). ������������ ������ ��������� ���� � ����� �������
  //     BtnID - �� ������������, BtnStr - ����� ����
  //   cdsHwnd - �� ������ (��� �������������� ��������� ��������, ����)
  //     BtnID - �����, BtnStr - �� ������������.
  TCountdownDlgSearchType = (cdsByClass, cdsByDlgID, cdsByText, cdsHwnd);

// ��������� ����, ������� ������� �������� ������ �� ��������� ������.
//    ParentWnd - ����� ����, ����������� ������ (������ ��� ����������� �������
//      ��������� �������; �������� ����� ��������� ��������� ����, ������� �����
//      ����� ParentWnd ��� owner
//    Secs - �������� ��������� �������
//    SearchType - ��� ������ ��������
//    BtnID - ��. TCountdownDlgSearchType
//    BtnStr - ��. TCountdownDlgSearchType
//    BtnCaption [opt] - ������� ����� �������, ������� ����� ��������� ������
//      ����� �����, ���� ���������� �� ������ ��� ������� ������
procedure LaunchCountdown(ParentWnd: HWND; Secs: Integer;
                          SearchType: TCountdownDlgSearchType;
                          BtnID: NativeInt;
                          const BtnStr: string;
                          const BtnCaption: string = '');

implementation

// ��������� ������� �� ������.
procedure PushButton(ParentWnd, ButtonWnd: HWND);
begin
  // ���� ���� �� ������ - GetDlgCtrlID ������ ButtonWnd, ��� ��� �������� ��� �� Word;
  //  � ���� ������ �������� � �� ����� ��������������
  SendMessage(ParentWnd, WM_COMMAND, MakeWParam(Word(GetDlgCtrlID(ButtonWnd)), BN_CLICKED), ButtonWnd);
end;

// ����� ������ �� ��������� ������
//    ParentWnd - ������������ ����
//    SearchType - ��� ������ ��������
//    BtnID - ��. TCountdownDlgSearchType
//    BtnStr - ��. TCountdownDlgSearchType
function FindButton(ParentWnd: HWND;
                    SearchType: TCountdownDlgSearchType;
                    BtnID: NativeInt;
                    const BtnStr: string): HWND;
var
  Counter: Integer;
begin
  case SearchType of
    // BtnID = item index
    // BtnStr = item window class
    cdsByClass:
      begin
        Result := FindWindowEx(ParentWnd, 0, PChar(BtnStr), nil);
        Counter := 0;
        while Result <> 0 do
        begin
          Inc(Counter);
          if Counter = BtnID then
            Break;
          Result := FindWindowEx(ParentWnd, Result, PChar(BtnStr), nil);
        end;
      end;
    // BtnID = Dlg item ID
    cdsByDlgID:
      Result := GetDlgItem(ParentWnd, BtnID);
    // BtnStr = button text
    cdsByText:
      Result := FindWindowEx(ParentWnd, 0, nil, PChar(BtnStr));
    // BtnID = button HWND
    cdsHwnd:
      Result := BtnID;
  end;
end;

type
  TEnumThreadWndData = record
    OwnerWnd: HWND;
    ModalWnd: HWND;
  end;
  PEnumThreadWndData = ^TEnumThreadWndData;

// ������� ��� EnumThreadWindows
// �������� enabled ����, � ������� owner disabled � ��������� � ���������� � lParam
// ���� ���� �������, ���������� ��� � lParam
function EnumThreadWndProc(Wnd: HWND; lPar: LPARAM): BOOL; stdcall;
var
  Owner: HWND;
begin
  if IsWindowEnabled(Wnd) then
  begin
    Owner := GetWindow(Wnd, GW_OWNER);
    if ( (lPar <> 0) and (Owner = PEnumThreadWndData(lPar).OwnerWnd) ) or
       ( (Owner <> 0) and not IsWindowEnabled(Owner) ) then
    begin
      PEnumThreadWndData(lPar).ModalWnd := Wnd;
      Exit(BOOL(0)); // �������� �������
    end;
  end;
  Result := BOOL(1); // ���������� �������
end;

function GetModalWindow(OwnerWnd: HWND; ThreadID: DWORD): HWND;
var
  etwdata: TEnumThreadWndData;
begin
  etwdata.OwnerWnd := OwnerWnd;
  etwdata.ModalWnd := 0;
  EnumThreadWindows(ThreadID, @EnumThreadWndProc, LPARAM(@etwdata));
  Result := etwdata.ModalWnd;
end;

// ��������� ����, ������� ������� �������� ������ �� ��������� ������.
//    ParentWnd - ����� ����, ����������� ������ (������ ��� ����������� �������
//      ��������� �������; �������� ����� ��������� ��������� ����, ������� �����
//      ����� ParentWnd ��� owner, � ��� ���� ParentWnd ����� disabled)
//    Secs - �������� ��������� �������
//    SearchType - ��� ������ ��������
//    BtnID - ��. TCountdownDlgSearchType
//    BtnStr - ��. TCountdownDlgSearchType
//    BtnCaption [opt] - ������� ����� �������, ������� ����� ��������� ������
//      ����� �����, ���� ���������� �� ������ ��� ������� ������
procedure LaunchCountdown(ParentWnd: HWND; Secs: Integer;
                          SearchType: TCountdownDlgSearchType;
                          BtnID: NativeInt;
                          const BtnStr: string;
                          const BtnCaption: string);
var
  CurrThreadID: DWORD;
begin
  CurrThreadID := GetCurrentThreadId;

  TThread.CreateAnonymousThread(
    procedure
    var
      Counter: Integer;
      DlgWnd, BtnWnd: HWND;
      Buf: array of Char;
      BtnLabelFmt: string;
      Len: Integer;
      CurrProcID, WndProcID: DWORD;
    const
      CounterFmt = '(%d)';
    begin
      // ����, ���� ������ �� ��������. �������� ������� ����� ����, �������� ��
      // ParentWnd, ������� �������� � ������ ����� ������ ���������.
      repeat
        DlgWnd := GetModalWindow(ParentWnd, CurrThreadID);
        if (DlgWnd <> 0) and (DlgWnd <> ParentWnd) then
          Break;
        Sleep(100);
      until False;

      // ������� ������ ������
      BtnWnd := FindButton(DlgWnd, SearchType, BtnID, BtnStr);
      if not IsWindow(BtnWnd) then
        Exit;

      // ���������� ������� �� ������: �� ���������, �� ���������� ��� ������ ������, ���� ��� �����
      BtnLabelFmt := ''; Len := 0;
      if BtnCaption <> '' then
        BtnLabelFmt := BtnCaption + ' ' + CounterFmt
      else
      begin
        Len := GetWindowTextLength(BtnWnd);
        if Len > 0 then
        begin
          SetLength(Buf, Len + 1); // + ����������� �������
          if GetWindowText(BtnWnd, PChar(Buf), Length(Buf)) > 0 then
            BtnLabelFmt := StrPas(PChar(Buf)) + ' ' + CounterFmt;
        end;
      end;
      if BtnLabelFmt = '' then
        BtnLabelFmt := CounterFmt; // ������ ��� ��� ������ ���������

      Counter := Secs;

      SetWindowText(BtnWnd, Format(BtnLabelFmt, [Counter]));
      while Counter > 0 do
      begin
        // ��������� �������
        Sleep(1*MSecsPerSec);
        Dec(Counter);
        // ���� ������ ��� �������
        if not IsWindow(DlgWnd) then
          Exit;
        SetWindowText(BtnWnd, Format(BtnLabelFmt, [Counter]));
      end;
      // ������� ����� �� ����� - ������� ������� (�� ������ ������) � ������ ������
      if Len > 0
        then SetWindowText(BtnWnd, PChar(Buf))
        else SetWindowText(BtnWnd, nil);
      PushButton(DlgWnd, BtnWnd);
    end
  ).Start;
end;

end.
