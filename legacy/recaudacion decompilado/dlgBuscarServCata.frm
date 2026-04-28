VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarServCata
  Caption = "Buscar Servicios de Catastro ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarServCata.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9180
  ClientHeight = 5424
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
    OleObjectBlob = "dlgBuscarServCata.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
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
  Begin VB.Label Label2
    Caption = "Codigo:"
    Left = 840
    Top = 240
    Width = 810
    Height = 300
    TabIndex = 4
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

Attribute VB_Name = "dlgBuscarServCata"

Public ServCataCLS As New Class


Private Sub dgdABMS_DblClick() '9CBB54
  'Data Table: 411F78
  loc_9CBB3C: ILdRf Me
  loc_9CBB3F: FStAdNoPop
  loc_9CBB43: ImpAdLdRf MemVar_D9C5D8
  loc_9CBB46: NewIfNullPr Global
  loc_9CBB49: Global.Unload from_stack_1
  loc_9CBB4E: FFree1Ad var_88
  loc_9CBB51: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EF878
  'Data Table: 411F78
  loc_9EF854: ILdI2 KeyCode
  loc_9EF857: CI4UI1
  loc_9EF858: LitI4 &HD
  loc_9EF85D: EqI4
  loc_9EF85E: BranchF loc_9EF876
  loc_9EF861: ILdRf Me
  loc_9EF864: FStAdNoPop
  loc_9EF868: ImpAdLdRf MemVar_D9C5D8
  loc_9EF86B: NewIfNullPr Global
  loc_9EF86E: Global.Unload from_stack_1
  loc_9EF873: FFree1Ad var_88
  loc_9EF876: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A7C500
  'Data Table: 411F78
  loc_A7C490: LitStr vbNullString
  loc_A7C493: FLdPr Me
  loc_A7C496: VCallAd Control_ID_Campo2Txt
  loc_A7C499: FStAdFunc var_88
  loc_A7C49C: FLdPr var_88
  loc_A7C49F: Me.Text = from_stack_1
  loc_A7C4A4: FFree1Ad var_88
  loc_A7C4A7: LitStr "SELECT * FROM servcata WHERE PeriOrde = "
  loc_A7C4AA: ImpAdLdI2 MemVar_D93036
  loc_A7C4AD: CStrUI1
  loc_A7C4AF: FStStrNoPop var_8C
  loc_A7C4B2: ConcatStr
  loc_A7C4B3: FStStrNoPop var_90
  loc_A7C4B6: LitStr " AND CodiSeca like '"
  loc_A7C4B9: ConcatStr
  loc_A7C4BA: FStStrNoPop var_98
  loc_A7C4BD: FLdRfVar var_94
  loc_A7C4C0: FLdPr Me
  loc_A7C4C3: VCallAd Control_ID_Campo1Txt
  loc_A7C4C6: FStAdFunc var_88
  loc_A7C4C9: FLdPr var_88
  loc_A7C4CC:  = Me.Text
  loc_A7C4D1: ILdRf var_94
  loc_A7C4D4: ConcatStr
  loc_A7C4D5: FStStrNoPop var_9C
  loc_A7C4D8: LitStr Chr(37) & "' ORDER BY CodiSeca"
  loc_A7C4DB: ConcatStr
  loc_A7C4DC: FStStrNoPop var_A0
  loc_A7C4DF: FLdPr Me
  loc_A7C4E2: MemLdRfVar from_stack_1.ServCataCLS
  loc_A7C4E5: NewIfNullPr clsservcata
  loc_A7C4E8: Call clsservcata.RedefineRS(from_stack_1v)
  loc_A7C4ED: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A7C4FC: FFree1Ad var_88
  loc_A7C4FF: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CBBEC
  'Data Table: 411F78
  loc_9CBBD4: LitStr "0123456789"
  loc_9CBBD7: FStStrCopy var_88
  loc_9CBBDA: FLdRfVar var_88
  loc_9CBBDD: ILdRf KeyAscii
  loc_9CBBE0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CBBE5: IStI2 KeyAscii
  loc_9CBBE8: FFree1Str var_88
  loc_9CBBEB: ExitProcHresult
End Sub

Private Sub Form_Load() 'AA2DF4
  'Data Table: 411F78
  loc_AA2D4C: FLdRfVar var_94
  loc_AA2D4F: LitVarStr var_A4, vbNullString
  loc_AA2D54: HardType
  loc_AA2D55: EqVarBool
  loc_AA2D57: BranchF loc_AA2D7B
  loc_AA2D5A: LitStr "SELECT * FROM servcata WHERE PeriOrde = "
  loc_AA2D5D: ImpAdLdI2 MemVar_D93036
  loc_AA2D60: CStrUI1
  loc_AA2D62: FStStrNoPop var_B8
  loc_AA2D65: ConcatStr
  loc_AA2D66: FStStrNoPop var_BC
  loc_AA2D69: LitStr " ORDER BY DetaSeca"
  loc_AA2D6C: ConcatStr
  loc_AA2D6D: CVarStr var_B4
  loc_AA2D70: FStVar var_94
  loc_AA2D74: FFreeStr var_B8 = ""
  loc_AA2D7B: FLdRfVar var_94
  loc_AA2D7E: CStrVarVal var_B8
  loc_AA2D82: FLdPr Me
  loc_AA2D85: MemLdRfVar from_stack_1.ServCataCLS
  loc_AA2D88: NewIfNullPr clsservcata
  loc_AA2D8B: Call clsservcata.RedefineRS(from_stack_1v)
  loc_AA2D90: FFree1Str var_B8
  loc_AA2D93: LitI4 0
  loc_AA2D98: LitI4 1
  loc_AA2D9D: FLdRfVar var_C0
  loc_AA2DA0: Redim
  loc_AA2DAA: FLdPr Me
  loc_AA2DAD: MemLdRfVar from_stack_1.ServCataCLS
  loc_AA2DB0: NewIfNullAd
  loc_AA2DB3: FStAd var_C4 
  loc_AA2DB7: FLdRfVar var_C4
  loc_AA2DBA: CVarRef
  loc_AA2DBF: ParmAry1St
  loc_AA2DC5: FLdPr Me
  loc_AA2DC8: VCallAd Control_ID_dgdABMS
  loc_AA2DCB: CVarAd
  loc_AA2DCF: ParmAry1St
  loc_AA2DD5: FLdRfVar var_C0
  loc_AA2DD8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AA2DDD: ILdRf var_C4
  loc_AA2DE0: CastAd
  loc_AA2DE3: FLdPr Me
  loc_AA2DE6: MemStAdFunc
  loc_AA2DEA: FLdRfVar var_C0
  loc_AA2DED: Erase
  loc_AA2DEE: FFree1Ad var_C4
  loc_AA2DF1: ExitProcHresult
  loc_AA2DF2: LeR8
End Sub

Private Sub Form_Activate() '9CBABC
  'Data Table: 411F78
  loc_9CBAA4: FLdPr Me
  loc_9CBAA7: VCallAd Control_ID_Campo2Txt
  loc_9CBAAA: FStAdFunc var_88
  loc_9CBAAD: FLdPr var_88
  loc_9CBAB0: Me.SetFocus
  loc_9CBAB5: FFree1Ad var_88
  loc_9CBAB8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A123F8
  'Data Table: 411F78
  loc_A123BC: ILdI2 KeyAscii
  loc_A123BF: LitI2_Byte &HD
  loc_A123C1: EqI2
  loc_A123C2: BranchF loc_A123D3
  loc_A123C5: LitVar_TRUE var_A4
  loc_A123C8: LitStr "{Tab}"
  loc_A123CB: ImpAdCallFPR4 SendKeys , 
  loc_A123D0: FFree1Var var_A4 = ""
  loc_A123D3: ILdI2 KeyAscii
  loc_A123D6: LitI2_Byte &H1B
  loc_A123D8: EqI2
  loc_A123D9: BranchF loc_A123F6
  loc_A123DC: ILdRf Me
  loc_A123DF: FStAdNoPop
  loc_A123E3: ImpAdLdRf MemVar_D9C5D8
  loc_A123E6: NewIfNullPr Global
  loc_A123E9: Global.Unload from_stack_1
  loc_A123EE: FFree1Ad var_A8
  loc_A123F1: LitI2_Byte 0
  loc_A123F3: IStI2 KeyAscii
  loc_A123F6: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CB9D8
  'Data Table: 411F78
  loc_9CB9C0: ILdRf Me
  loc_9CB9C3: FStAdNoPop
  loc_9CB9C7: ImpAdLdRf MemVar_D9C5D8
  loc_9CB9CA: NewIfNullPr Global
  loc_9CB9CD: Global.Unload from_stack_1
  loc_9CB9D2: FFree1Ad var_88
  loc_9CB9D5: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A7C734
  'Data Table: 411F78
  loc_A7C6C4: LitStr vbNullString
  loc_A7C6C7: FLdPr Me
  loc_A7C6CA: VCallAd Control_ID_Campo1Txt
  loc_A7C6CD: FStAdFunc var_88
  loc_A7C6D0: FLdPr var_88
  loc_A7C6D3: Me.Text = from_stack_1
  loc_A7C6D8: FFree1Ad var_88
  loc_A7C6DB: LitStr "SELECT * FROM servcata WHERE PeriOrde = "
  loc_A7C6DE: ImpAdLdI2 MemVar_D93036
  loc_A7C6E1: CStrUI1
  loc_A7C6E3: FStStrNoPop var_8C
  loc_A7C6E6: ConcatStr
  loc_A7C6E7: FStStrNoPop var_90
  loc_A7C6EA: LitStr " AND DetaSeca like '" & Chr(37)
  loc_A7C6ED: ConcatStr
  loc_A7C6EE: FStStrNoPop var_98
  loc_A7C6F1: FLdRfVar var_94
  loc_A7C6F4: FLdPr Me
  loc_A7C6F7: VCallAd Control_ID_Campo2Txt
  loc_A7C6FA: FStAdFunc var_88
  loc_A7C6FD: FLdPr var_88
  loc_A7C700:  = Me.Text
  loc_A7C705: ILdRf var_94
  loc_A7C708: ConcatStr
  loc_A7C709: FStStrNoPop var_9C
  loc_A7C70C: LitStr Chr(37) & "' ORDER BY DetaSeca"
  loc_A7C70F: ConcatStr
  loc_A7C710: FStStrNoPop var_A0
  loc_A7C713: FLdPr Me
  loc_A7C716: MemLdRfVar from_stack_1.ServCataCLS
  loc_A7C719: NewIfNullPr clsservcata
  loc_A7C71C: Call clsservcata.RedefineRS(from_stack_1v)
  loc_A7C721: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A7C730: FFree1Ad var_88
  loc_A7C733: ExitProcHresult
End Sub

Public Function global_4267896Get() '41248C
  global_4267896Get = global_4267896
End Function

Public Sub global_4267896Put(Value) '4124A6
  global_4267896 = Value
End Sub

Public Sub global_4267896Set(Value) '4124C0
  global_4267896 = Value
End Sub
