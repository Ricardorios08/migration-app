VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarConcepto
  Caption = "Buscar Concepto por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarConcepto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10656
  ClientHeight = 6072
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo3Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 1200
    Width = 1095
    Height = 360
    TabIndex = 2
    Tag = "0"
    MaxLength = 8
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
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 720
    Width = 6855
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
    Left = 2400
    Top = 240
    Width = 1095
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 8
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
    Top = 5400
    Width = 1335
    Height = 495
    TabIndex = 4
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
    Top = 1680
    Width = 8775
    Height = 3495
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "dlgBuscarConcepto.frx":08CA
  End
  Begin VB.Label Label1
    Caption = "Concepto Anterior:"
    Left = 360
    Top = 1200
    Width = 1995
    Height = 300
    TabIndex = 7
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
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 1560
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
    Left = 1560
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

Attribute VB_Name = "dlgBuscarConcepto"

Public iPeriInfo As Integer
Public ConceptoCLS As New Class


Private Sub Campo2Txt_Change() 'A96AE4
  'Data Table: 42E90C
  loc_A96A48: LitStr vbNullString
  loc_A96A4B: FLdPr Me
  loc_A96A4E: VCallAd Control_ID_Campo1Txt
  loc_A96A51: FStAdFunc var_88
  loc_A96A54: FLdPr var_88
  loc_A96A57: Me.Text = from_stack_1
  loc_A96A5C: FFree1Ad var_88
  loc_A96A5F: LitStr vbNullString
  loc_A96A62: FLdPr Me
  loc_A96A65: VCallAd Control_ID_Campo3Txt
  loc_A96A68: FStAdFunc var_88
  loc_A96A6B: FLdPr var_88
  loc_A96A6E: Me.Text = from_stack_1
  loc_A96A73: FFree1Ad var_88
  loc_A96A76: LitStr "SELECT CodiConc, DetaConc, ConcViej FROM concepto "
  loc_A96A79: LitStr " WHERE PeriInfo = "
  loc_A96A7C: ConcatStr
  loc_A96A7D: FStStrNoPop var_8C
  loc_A96A80: FLdPr Me
  loc_A96A83: MemLdI2 iPeriInfo
  loc_A96A86: CStrUI1
  loc_A96A88: FStStrNoPop var_90
  loc_A96A8B: ConcatStr
  loc_A96A8C: FStStrNoPop var_94
  loc_A96A8F: LitStr " AND VigeConc = '1' AND DevsConc = 'No' AND ActiConc <> '' "
  loc_A96A92: ConcatStr
  loc_A96A93: FStStrNoPop var_98
  loc_A96A96: LitStr " AND DetaConc like '" & Chr(37)
  loc_A96A99: ConcatStr
  loc_A96A9A: FStStrNoPop var_A0
  loc_A96A9D: FLdRfVar var_9C
  loc_A96AA0: FLdPr Me
  loc_A96AA3: VCallAd Control_ID_Campo2Txt
  loc_A96AA6: FStAdFunc var_88
  loc_A96AA9: FLdPr var_88
  loc_A96AAC:  = Me.Text
  loc_A96AB1: ILdRf var_9C
  loc_A96AB4: ConcatStr
  loc_A96AB5: FStStrNoPop var_A4
  loc_A96AB8: LitStr Chr(37) & "' ORDER BY PeriInfo, DetaConc"
  loc_A96ABB: ConcatStr
  loc_A96ABC: FStStrNoPop var_A8
  loc_A96ABF: FLdPr Me
  loc_A96AC2: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A96AC5: NewIfNullPr clsconcepto
  loc_A96AC8: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_A96ACD: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = "": var_9C = "": var_A4 = ""
  loc_A96AE0: FFree1Ad var_88
  loc_A96AE3: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A97174
  'Data Table: 42E90C
  loc_A970D8: LitStr vbNullString
  loc_A970DB: FLdPr Me
  loc_A970DE: VCallAd Control_ID_Campo2Txt
  loc_A970E1: FStAdFunc var_88
  loc_A970E4: FLdPr var_88
  loc_A970E7: Me.Text = from_stack_1
  loc_A970EC: FFree1Ad var_88
  loc_A970EF: LitStr vbNullString
  loc_A970F2: FLdPr Me
  loc_A970F5: VCallAd Control_ID_Campo3Txt
  loc_A970F8: FStAdFunc var_88
  loc_A970FB: FLdPr var_88
  loc_A970FE: Me.Text = from_stack_1
  loc_A97103: FFree1Ad var_88
  loc_A97106: LitStr "SELECT CodiConc, DetaConc, ConcViej FROM concepto "
  loc_A97109: LitStr " WHERE PeriInfo = "
  loc_A9710C: ConcatStr
  loc_A9710D: FStStrNoPop var_8C
  loc_A97110: FLdPr Me
  loc_A97113: MemLdI2 iPeriInfo
  loc_A97116: CStrUI1
  loc_A97118: FStStrNoPop var_90
  loc_A9711B: ConcatStr
  loc_A9711C: FStStrNoPop var_94
  loc_A9711F: LitStr " AND VigeConc = '1' AND DevsConc = 'No' AND ActiConc <> '' "
  loc_A97122: ConcatStr
  loc_A97123: FStStrNoPop var_98
  loc_A97126: LitStr " AND CodiConc like '"
  loc_A97129: ConcatStr
  loc_A9712A: FStStrNoPop var_A0
  loc_A9712D: FLdRfVar var_9C
  loc_A97130: FLdPr Me
  loc_A97133: VCallAd Control_ID_Campo1Txt
  loc_A97136: FStAdFunc var_88
  loc_A97139: FLdPr var_88
  loc_A9713C:  = Me.Text
  loc_A97141: ILdRf var_9C
  loc_A97144: ConcatStr
  loc_A97145: FStStrNoPop var_A4
  loc_A97148: LitStr Chr(37) & "' ORDER BY PeriInfo, CodiConc"
  loc_A9714B: ConcatStr
  loc_A9714C: FStStrNoPop var_A8
  loc_A9714F: FLdPr Me
  loc_A97152: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A97155: NewIfNullPr clsconcepto
  loc_A97158: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_A9715D: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = "": var_9C = "": var_A4 = ""
  loc_A97170: FFree1Ad var_88
  loc_A97173: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D32F8
  'Data Table: 42E90C
  loc_9D32E0: LitStr "0123456789"
  loc_9D32E3: FStStrCopy var_88
  loc_9D32E6: FLdRfVar var_88
  loc_9D32E9: ILdRf KeyAscii
  loc_9D32EC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D32F1: IStI2 KeyAscii
  loc_9D32F4: FFree1Str var_88
  loc_9D32F7: ExitProcHresult
End Sub

Private Sub Campo3Txt_Change() 'A97714
  'Data Table: 42E90C
  loc_A97678: LitStr vbNullString
  loc_A9767B: FLdPr Me
  loc_A9767E: VCallAd Control_ID_Campo1Txt
  loc_A97681: FStAdFunc var_88
  loc_A97684: FLdPr var_88
  loc_A97687: Me.Text = from_stack_1
  loc_A9768C: FFree1Ad var_88
  loc_A9768F: LitStr vbNullString
  loc_A97692: FLdPr Me
  loc_A97695: VCallAd Control_ID_Campo2Txt
  loc_A97698: FStAdFunc var_88
  loc_A9769B: FLdPr var_88
  loc_A9769E: Me.Text = from_stack_1
  loc_A976A3: FFree1Ad var_88
  loc_A976A6: LitStr "SELECT CodiConc, DetaConc, ConcViej FROM concepto "
  loc_A976A9: LitStr " WHERE PeriInfo = "
  loc_A976AC: ConcatStr
  loc_A976AD: FStStrNoPop var_8C
  loc_A976B0: FLdPr Me
  loc_A976B3: MemLdI2 iPeriInfo
  loc_A976B6: CStrUI1
  loc_A976B8: FStStrNoPop var_90
  loc_A976BB: ConcatStr
  loc_A976BC: FStStrNoPop var_94
  loc_A976BF: LitStr " AND VigeConc = '1' AND DevsConc = 'No' AND ActiConc <> '' "
  loc_A976C2: ConcatStr
  loc_A976C3: FStStrNoPop var_98
  loc_A976C6: LitStr " AND ConcViej like '"
  loc_A976C9: ConcatStr
  loc_A976CA: FStStrNoPop var_A0
  loc_A976CD: FLdRfVar var_9C
  loc_A976D0: FLdPr Me
  loc_A976D3: VCallAd Control_ID_Campo3Txt
  loc_A976D6: FStAdFunc var_88
  loc_A976D9: FLdPr var_88
  loc_A976DC:  = Me.Text
  loc_A976E1: ILdRf var_9C
  loc_A976E4: ConcatStr
  loc_A976E5: FStStrNoPop var_A4
  loc_A976E8: LitStr Chr(37) & "' ORDER BY PeriInfo, ConcViej"
  loc_A976EB: ConcatStr
  loc_A976EC: FStStrNoPop var_A8
  loc_A976EF: FLdPr Me
  loc_A976F2: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A976F5: NewIfNullPr clsconcepto
  loc_A976F8: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_A976FD: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = "": var_9C = "": var_A4 = ""
  loc_A97710: FFree1Ad var_88
  loc_A97713: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D2FB4
  'Data Table: 42E90C
  loc_9D2F9C: ILdRf Me
  loc_9D2F9F: FStAdNoPop
  loc_9D2FA3: ImpAdLdRf MemVar_D9C5D8
  loc_9D2FA6: NewIfNullPr Global
  loc_9D2FA9: Global.Unload from_stack_1
  loc_9D2FAE: FFree1Ad var_88
  loc_9D2FB1: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9D31C8
  'Data Table: 42E90C
  loc_9D31B0: ILdRf Me
  loc_9D31B3: FStAdNoPop
  loc_9D31B7: ImpAdLdRf MemVar_D9C5D8
  loc_9D31BA: NewIfNullPr Global
  loc_9D31BD: Global.Unload from_stack_1
  loc_9D31C2: FFree1Ad var_88
  loc_9D31C5: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EC7A8
  'Data Table: 42E90C
  loc_9EC784: ILdI2 KeyCode
  loc_9EC787: CI4UI1
  loc_9EC788: LitI4 &HD
  loc_9EC78D: EqI4
  loc_9EC78E: BranchF loc_9EC7A6
  loc_9EC791: ILdRf Me
  loc_9EC794: FStAdNoPop
  loc_9EC798: ImpAdLdRf MemVar_D9C5D8
  loc_9EC79B: NewIfNullPr Global
  loc_9EC79E: Global.Unload from_stack_1
  loc_9EC7A3: FFree1Ad var_88
  loc_9EC7A6: ExitProcHresult
End Sub

Private Sub Form_Load() 'AA9840
  'Data Table: 42E90C
  loc_AA978C: FLdRfVar var_94
  loc_AA978F: LitVarStr var_A4, vbNullString
  loc_AA9794: HardType
  loc_AA9795: EqVarBool
  loc_AA9797: BranchF loc_AA97C7
  loc_AA979A: LitStr "SELECT CodiConc, DetaConc, ConcViej FROM concepto WHERE PeriInfo = "
  loc_AA979D: FLdPr Me
  loc_AA97A0: MemLdI2 iPeriInfo
  loc_AA97A3: CStrUI1
  loc_AA97A5: FStStrNoPop var_B8
  loc_AA97A8: ConcatStr
  loc_AA97A9: FStStrNoPop var_BC
  loc_AA97AC: LitStr " AND VigeConc = '1' AND DevsConc = 'No' AND ActiConc <> ''"
  loc_AA97AF: ConcatStr
  loc_AA97B0: FStStrNoPop var_C0
  loc_AA97B3: LitStr " ORDER BY DetaConc"
  loc_AA97B6: ConcatStr
  loc_AA97B7: CVarStr var_B4
  loc_AA97BA: FStVar var_94
  loc_AA97BE: FFreeStr var_B8 = "": var_BC = ""
  loc_AA97C7: FLdRfVar var_94
  loc_AA97CA: CStrVarVal var_B8
  loc_AA97CE: FLdPr Me
  loc_AA97D1: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AA97D4: NewIfNullPr clsconcepto
  loc_AA97D7: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_AA97DC: FFree1Str var_B8
  loc_AA97DF: LitI4 0
  loc_AA97E4: LitI4 1
  loc_AA97E9: FLdRfVar var_C4
  loc_AA97EC: Redim
  loc_AA97F6: FLdPr Me
  loc_AA97F9: MemLdRfVar from_stack_1.ConceptoCLS
  loc_AA97FC: NewIfNullAd
  loc_AA97FF: FStAd var_C8 
  loc_AA9803: FLdRfVar var_C8
  loc_AA9806: CVarRef
  loc_AA980B: ParmAry1St
  loc_AA9811: FLdPr Me
  loc_AA9814: VCallAd Control_ID_dgdABMS
  loc_AA9817: CVarAd
  loc_AA981B: ParmAry1St
  loc_AA9821: FLdRfVar var_C4
  loc_AA9824: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AA9829: ILdRf var_C8
  loc_AA982C: CastAd
  loc_AA982F: FLdPr Me
  loc_AA9832: MemStAdFunc
  loc_AA9836: FLdRfVar var_C4
  loc_AA9839: Erase
  loc_AA983A: FFree1Ad var_C8
  loc_AA983D: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B3474
  'Data Table: 42E90C
  loc_9B3468: LitVarStr var_A4, vbNullString
  loc_9B346D: FStVarCopy
  loc_9B3471: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D30E4
  'Data Table: 42E90C
  loc_9D30CC: FLdPr Me
  loc_9D30CF: VCallAd Control_ID_Campo3Txt
  loc_9D30D2: FStAdFunc var_88
  loc_9D30D5: FLdPr var_88
  loc_9D30D8: Me.SetFocus
  loc_9D30DD: FFree1Ad var_88
  loc_9D30E0: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A101FC
  'Data Table: 42E90C
  loc_A101C0: ILdI2 KeyAscii
  loc_A101C3: LitI2_Byte &HD
  loc_A101C5: EqI2
  loc_A101C6: BranchF loc_A101D7
  loc_A101C9: LitVar_TRUE var_A4
  loc_A101CC: LitStr "{Tab}"
  loc_A101CF: ImpAdCallFPR4 SendKeys , 
  loc_A101D4: FFree1Var var_A4 = ""
  loc_A101D7: ILdI2 KeyAscii
  loc_A101DA: LitI2_Byte &H1B
  loc_A101DC: EqI2
  loc_A101DD: BranchF loc_A101FA
  loc_A101E0: ILdRf Me
  loc_A101E3: FStAdNoPop
  loc_A101E7: ImpAdLdRf MemVar_D9C5D8
  loc_A101EA: NewIfNullPr Global
  loc_A101ED: Global.Unload from_stack_1
  loc_A101F2: FFree1Ad var_A8
  loc_A101F5: LitI2_Byte 0
  loc_A101F7: IStI2 KeyAscii
  loc_A101FA: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '42EF7C
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '42EF8B
  iPeriInfo = Value
End Sub

Public Function global_4385036Get() '42EF9A
  global_4385036Get = global_4385036
End Function

Public Sub global_4385036Put(Value) '42EFB4
  global_4385036 = Value
End Sub

Public Sub global_4385036Set(Value) '42EFCE
  global_4385036 = Value
End Sub

Private Function Proc_283_16_9D3260() '9D3260
  'Data Table: 42E90C
  loc_9D3248: ILdRf Me
  loc_9D324B: FStAdNoPop
  loc_9D324F: ImpAdLdRf MemVar_D9C5D8
  loc_9D3252: NewIfNullPr Global
  loc_9D3255: Global.Unload from_stack_1
  loc_9D325A: FFree1Ad var_88
  loc_9D325D: ExitProcHresult
End Function
