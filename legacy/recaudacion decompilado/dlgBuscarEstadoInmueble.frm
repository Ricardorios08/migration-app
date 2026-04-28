VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarEstadoInmueble
  Caption = "Buscar Estado de inmueble ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarEstadoInmueble.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9060
  ClientHeight = 5436
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 720
    Width = 7215
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 40
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 240
    Width = 1575
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "3"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "2"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1320
    Width = 7935
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarEstadoInmueble.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
    Width = 810
    Height = 300
    TabIndex = 6
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Codigo:"
    Left = 840
    Top = 240
    Width = 810
    Height = 300
    TabIndex = 5
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "dlgBuscarEstadoInmueble"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A5C298
  'Data Table: 41F118
  loc_A5C240: LitStr vbNullString
  loc_A5C243: FLdPr Me
  loc_A5C246: VCallAd Control_ID_Campo2Txt
  loc_A5C249: FStAdFunc var_88
  loc_A5C24C: FLdPr var_88
  loc_A5C24F: Me.Text = from_stack_1
  loc_A5C254: FFree1Ad var_88
  loc_A5C257: LitStr "SELECT * FROM estainmu WHERE CodiEsin like '"
  loc_A5C25A: FLdRfVar var_8C
  loc_A5C25D: FLdPr Me
  loc_A5C260: VCallAd Control_ID_Campo1Txt
  loc_A5C263: FStAdFunc var_88
  loc_A5C266: FLdPr var_88
  loc_A5C269:  = Me.Text
  loc_A5C26E: ILdRf var_8C
  loc_A5C271: ConcatStr
  loc_A5C272: FStStrNoPop var_90
  loc_A5C275: LitStr Chr(37) & "' ORDER BY CodiEsin"
  loc_A5C278: ConcatStr
  loc_A5C279: FStStrNoPop var_94
  loc_A5C27C: FLdPr Me
  loc_A5C27F: MemLdRfVar from_stack_1.global_64
  loc_A5C282: NewIfNullPr clsestainmu
  loc_A5C285: Call clsestainmu.RedefineRS(from_stack_1v)
  loc_A5C28A: FFreeStr var_8C = "": var_90 = ""
  loc_A5C293: FFree1Ad var_88
  loc_A5C296: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DB844
  'Data Table: 41F118
  loc_9DB82C: LitStr "0123456789"
  loc_9DB82F: FStStrCopy var_88
  loc_9DB832: FLdRfVar var_88
  loc_9DB835: ILdRf KeyAscii
  loc_9DB838: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB83D: IStI2 KeyAscii
  loc_9DB840: FFree1Str var_88
  loc_9DB843: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9B0074
  'Data Table: 41F118
  loc_9B006C: Call asignarestainmu()
  loc_9B0071: ExitProcHresult
  loc_9B0072: FLdFPR4 var_5F01
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9BA6E4
  'Data Table: 41F118
  loc_9BA6D0: ILdI2 KeyCode
  loc_9BA6D3: CI4UI1
  loc_9BA6D4: LitI4 &HD
  loc_9BA6D9: EqI4
  loc_9BA6DA: BranchF loc_9BA6E2
  loc_9BA6DD: Call asignarestainmu()
  loc_9BA6E2: ExitProcHresult
End Sub

Private Sub Form_Load() 'A88574
  'Data Table: 41F118
  loc_A884E8: FLdPr Me
  loc_A884EB: MemLdStr sPasaSelect
  loc_A884EE: LitStr vbNullString
  loc_A884F1: EqStr
  loc_A884F3: BranchF loc_A88500
  loc_A884F6: LitStr "SELECT CodiEsin, DetaEsin FROM estainmu ORDER BY DetaEsin"
  loc_A884F9: FLdPr Me
  loc_A884FC: MemStStrCopy
  loc_A88500: FLdPr Me
  loc_A88503: MemLdStr sPasaSelect
  loc_A88506: FLdPr Me
  loc_A88509: MemLdRfVar from_stack_1.global_64
  loc_A8850C: NewIfNullPr clsestainmu
  loc_A8850F: Call clsestainmu.RedefineRS(from_stack_1v)
  loc_A88514: LitI4 0
  loc_A88519: LitI4 1
  loc_A8851E: FLdRfVar var_88
  loc_A88521: Redim
  loc_A8852B: FLdPr Me
  loc_A8852E: MemLdRfVar from_stack_1.global_64
  loc_A88531: NewIfNullAd
  loc_A88534: FStAd var_8C 
  loc_A88538: FLdRfVar var_8C
  loc_A8853B: CVarRef
  loc_A88540: ParmAry1St
  loc_A88546: FLdPr Me
  loc_A88549: VCallAd Control_ID_dgdABMS
  loc_A8854C: CVarAd
  loc_A88550: ParmAry1St
  loc_A88556: FLdRfVar var_88
  loc_A88559: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8855E: ILdRf var_8C
  loc_A88561: CastAd
  loc_A88564: FLdPr Me
  loc_A88567: MemStAdFunc
  loc_A8856B: FLdRfVar var_88
  loc_A8856E: Erase
  loc_A8856F: FFree1Ad var_8C
  loc_A88572: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B1E84
  'Data Table: 41F118
  loc_9B1E78: LitStr vbNullString
  loc_9B1E7B: FLdPr Me
  loc_9B1E7E: MemStStrCopy
  loc_9B1E82: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D3F24
  'Data Table: 41F118
  loc_9D3F0C: FLdPr Me
  loc_9D3F0F: VCallAd Control_ID_Campo2Txt
  loc_9D3F12: FStAdFunc var_88
  loc_9D3F15: FLdPr var_88
  loc_9D3F18: Me.SetFocus
  loc_9D3F1D: FFree1Ad var_88
  loc_9D3F20: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11830
  'Data Table: 41F118
  loc_A117F4: ILdI2 KeyAscii
  loc_A117F7: LitI2_Byte &HD
  loc_A117F9: EqI2
  loc_A117FA: BranchF loc_A1180B
  loc_A117FD: LitVar_TRUE var_A4
  loc_A11800: LitStr "{Tab}"
  loc_A11803: ImpAdCallFPR4 SendKeys , 
  loc_A11808: FFree1Var var_A4 = ""
  loc_A1180B: ILdI2 KeyAscii
  loc_A1180E: LitI2_Byte &H1B
  loc_A11810: EqI2
  loc_A11811: BranchF loc_A1182E
  loc_A11814: ILdRf Me
  loc_A11817: FStAdNoPop
  loc_A1181B: ImpAdLdRf MemVar_D9C5D8
  loc_A1181E: NewIfNullPr Global
  loc_A11821: Global.Unload from_stack_1
  loc_A11826: FFree1Ad var_A8
  loc_A11829: LitI2_Byte 0
  loc_A1182B: IStI2 KeyAscii
  loc_A1182E: ExitProcHresult
  loc_A1182F: CStr2Ansi
End Sub

Private Sub OKButton_Click() '9AFD64
  'Data Table: 41F118
  loc_9AFD5C: Call asignarestainmu()
  loc_9AFD61: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9D551C
  'Data Table: 41F118
  loc_9D5504: ILdRf Me
  loc_9D5507: FStAdNoPop
  loc_9D550B: ImpAdLdRf MemVar_D9C5D8
  loc_9D550E: NewIfNullPr Global
  loc_9D5511: Global.Unload from_stack_1
  loc_9D5516: FFree1Ad var_88
  loc_9D5519: ExitProcHresult
  loc_9D551A: ILdRf var_6000
End Sub

Private Sub Campo2Txt_Change() 'A5C3C8
  'Data Table: 41F118
  loc_A5C370: LitStr vbNullString
  loc_A5C373: FLdPr Me
  loc_A5C376: VCallAd Control_ID_Campo1Txt
  loc_A5C379: FStAdFunc var_88
  loc_A5C37C: FLdPr var_88
  loc_A5C37F: Me.Text = from_stack_1
  loc_A5C384: FFree1Ad var_88
  loc_A5C387: LitStr "SELECT * FROM estainmu WHERE DetaEsin like '" & Chr(37)
  loc_A5C38A: FLdRfVar var_8C
  loc_A5C38D: FLdPr Me
  loc_A5C390: VCallAd Control_ID_Campo2Txt
  loc_A5C393: FStAdFunc var_88
  loc_A5C396: FLdPr var_88
  loc_A5C399:  = Me.Text
  loc_A5C39E: ILdRf var_8C
  loc_A5C3A1: ConcatStr
  loc_A5C3A2: FStStrNoPop var_90
  loc_A5C3A5: LitStr Chr(37) & "' ORDER BY DetaEsin"
  loc_A5C3A8: ConcatStr
  loc_A5C3A9: FStStrNoPop var_94
  loc_A5C3AC: FLdPr Me
  loc_A5C3AF: MemLdRfVar from_stack_1.global_64
  loc_A5C3B2: NewIfNullPr clsestainmu
  loc_A5C3B5: Call clsestainmu.RedefineRS(from_stack_1v)
  loc_A5C3BA: FFreeStr var_8C = "": var_90 = ""
  loc_A5C3C3: FFree1Ad var_88
  loc_A5C3C6: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '41F6D4
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '41F6E3
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '41F6F2
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '41F701
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '41F710
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '41F71F
  sPasaSelect = Value
End Sub

Public Sub asignarestainmu() 'A8007C
  'Data Table: 41F118
  loc_A7FFF0: FLdRfVar var_88
  loc_A7FFF3: FLdPr Me
  loc_A7FFF6: MemLdRfVar from_stack_1.global_64
  loc_A7FFF9: NewIfNullPr clsestainmu
  loc_A7FFFC: from_stack_1 = clsestainmu.RecordCount
  loc_A80001: ILdRf var_88
  loc_A80004: LitI4 0
  loc_A80009: GtI4
  loc_A8000A: BranchF loc_A80051
  loc_A8000D: FLdRfVar var_8A
  loc_A80010: FLdPr Me
  loc_A80013: MemLdRfVar from_stack_1.global_64
  loc_A80016: NewIfNullPr clsestainmu
  loc_A80019: from_stack_1 = clsestainmu.CodiEsin
  loc_A8001E: FLdI2 var_8A
  loc_A80021: CStrUI1
  loc_A80023: FStStrNoPop var_90
  loc_A80026: FLdPr Me
  loc_A80029: MemStStrCopy
  loc_A8002D: FFree1Str var_90
  loc_A80030: FLdRfVar var_90
  loc_A80033: FLdPr Me
  loc_A80036: MemLdRfVar from_stack_1.global_64
  loc_A80039: NewIfNullPr clsestainmu
  loc_A8003C: from_stack_1 = clsestainmu.DetaEsin
  loc_A80041: ILdRf var_90
  loc_A80044: FLdPr Me
  loc_A80047: MemStStrCopy
  loc_A8004B: FFree1Str var_90
  loc_A8004E: Branch loc_A80065
  loc_A80051: LitStr "0"
  loc_A80054: FLdPr Me
  loc_A80057: MemStStrCopy
  loc_A8005B: LitStr vbNullString
  loc_A8005E: FLdPr Me
  loc_A80061: MemStStrCopy
  loc_A80065: ILdRf Me
  loc_A80068: FStAdNoPop
  loc_A8006C: ImpAdLdRf MemVar_D9C5D8
  loc_A8006F: NewIfNullPr Global
  loc_A80072: Global.Unload from_stack_1
  loc_A80077: FFree1Ad var_94
  loc_A8007A: ExitProcHresult
End Sub
