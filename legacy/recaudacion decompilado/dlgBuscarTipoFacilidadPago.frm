VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarTipoFacilidadPago
  Caption = "Buscar Tipo de Facilidad de Pago por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarTipoFacilidadPago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10140
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
    Width = 9855
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarTipoFacilidadPago.frx":08CA
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
    Caption = "Código:"
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

Attribute VB_Name = "dlgBuscarTipoFacilidadPago"

Public BuscarCLS As New Class


Private Sub Campo1Txt_Change() 'A76F88
  'Data Table: 40F88C
  loc_A76F1C: LitStr vbNullString
  loc_A76F1F: FLdPr Me
  loc_A76F22: VCallAd Control_ID_Campo2Txt
  loc_A76F25: FStAdFunc var_88
  loc_A76F28: FLdPr var_88
  loc_A76F2B: Me.Text = from_stack_1
  loc_A76F30: FFree1Ad var_88
  loc_A76F33: LitStr "SELECT tipofapa.CodiTifa, DetaTifa, MecaTifa, InteTifa FROM tipofapa INNER JOIN infogov.usuariofaci ON infogov.usuariofaci.CodiTifa = tipofapa.CodiTifa WHERE usuariofaci.CodiUsua = '"
  loc_A76F36: ImpAdLdI4 MemVar_D9302C
  loc_A76F39: ConcatStr
  loc_A76F3A: FStStrNoPop var_8C
  loc_A76F3D: LitStr "' AND tipofapa.CodiTifa like '"
  loc_A76F40: ConcatStr
  loc_A76F41: FStStrNoPop var_94
  loc_A76F44: FLdRfVar var_90
  loc_A76F47: FLdPr Me
  loc_A76F4A: VCallAd Control_ID_Campo1Txt
  loc_A76F4D: FStAdFunc var_88
  loc_A76F50: FLdPr var_88
  loc_A76F53:  = Me.Text
  loc_A76F58: ILdRf var_90
  loc_A76F5B: ConcatStr
  loc_A76F5C: FStStrNoPop var_98
  loc_A76F5F: LitStr Chr(37) & "' AND tipofapa.BajaFeho is null ORDER BY CodiTifa"
  loc_A76F62: ConcatStr
  loc_A76F63: FStStrNoPop var_9C
  loc_A76F66: FLdPr Me
  loc_A76F69: MemLdRfVar from_stack_1.BuscarCLS
  loc_A76F6C: NewIfNullPr clsbase
  loc_A76F6F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A76F74: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A76F81: FFree1Ad var_88
  loc_A76F84: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D103C
  'Data Table: 40F88C
  loc_9D1024: LitStr "0123456789"
  loc_9D1027: FStStrCopy var_88
  loc_9D102A: FLdRfVar var_88
  loc_9D102D: ILdRf KeyAscii
  loc_9D1030: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D1035: IStI2 KeyAscii
  loc_9D1038: FFree1Str var_88
  loc_9D103B: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAD74C
  'Data Table: 40F88C
  loc_AAD688: ImpAdLdRf MemVar_D93E08
  loc_AAD68B: NewIfNullPr frmPlanesdePago
  loc_AAD68E: VCallAd Control_ID_CodiConcMsk
  loc_AAD691: FStAdFunc var_88
  loc_AAD694: FLdPr var_88
  loc_AAD697: LateIdLdVar var_98 DispID_22 0
  loc_AAD69E: CStrVarTmp
  loc_AAD69F: FStStrNoPop var_9C
  loc_AAD6A2: LitStr "13022802"
  loc_AAD6A5: EqStr
  loc_AAD6A7: FFree1Str var_9C
  loc_AAD6AA: FFree1Ad var_88
  loc_AAD6AD: FFree1Var var_98 = ""
  loc_AAD6B0: BranchF loc_AAD6C7
  loc_AAD6B3: LitStr "SELECT CodiTifa, DetaTifa, MecaTifa, InteTifa FROM tipofapa WHERE BajaFeho is null ORDER BY DetaTifa"
  loc_AAD6B6: FLdPr Me
  loc_AAD6B9: MemLdRfVar from_stack_1.BuscarCLS
  loc_AAD6BC: NewIfNullPr clsbase
  loc_AAD6BF: Call clsbase.RedefineRS(from_stack_1v)
  loc_AAD6C4: Branch loc_AAD6ED
  loc_AAD6C7: LitStr "SELECT tipofapa.CodiTifa, DetaTifa, MecaTifa, InteTifa FROM tipofapa INNER JOIN infogov.usuariofaci ON infogov.usuariofaci.CodiTifa = tipofapa.CodiTifa  WHERE usuariofaci.CodiUsua = '"
  loc_AAD6CA: ImpAdLdI4 MemVar_D9302C
  loc_AAD6CD: ConcatStr
  loc_AAD6CE: FStStrNoPop var_9C
  loc_AAD6D1: LitStr "' AND tipofapa.BajaFeho is null ORDER BY DetaTifa"
  loc_AAD6D4: ConcatStr
  loc_AAD6D5: FStStrNoPop var_A0
  loc_AAD6D8: FLdPr Me
  loc_AAD6DB: MemLdRfVar from_stack_1.BuscarCLS
  loc_AAD6DE: NewIfNullPr clsbase
  loc_AAD6E1: Call clsbase.RedefineRS(from_stack_1v)
  loc_AAD6E6: FFreeStr var_9C = ""
  loc_AAD6ED: LitI4 0
  loc_AAD6F2: LitI4 1
  loc_AAD6F7: FLdRfVar var_A4
  loc_AAD6FA: Redim
  loc_AAD704: FLdPr Me
  loc_AAD707: MemLdRfVar from_stack_1.BuscarCLS
  loc_AAD70A: NewIfNullAd
  loc_AAD70D: FStAd var_88 
  loc_AAD711: FLdRfVar var_88
  loc_AAD714: CVarRef
  loc_AAD719: ParmAry1St
  loc_AAD71F: FLdPr Me
  loc_AAD722: VCallAd Control_ID_dgdABMS
  loc_AAD725: CVarAd
  loc_AAD729: ParmAry1St
  loc_AAD72F: FLdRfVar var_A4
  loc_AAD732: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AAD737: ILdRf var_88
  loc_AAD73A: CastAd
  loc_AAD73D: FLdPr Me
  loc_AAD740: MemStAdFunc
  loc_AAD744: FLdRfVar var_A4
  loc_AAD747: Erase
  loc_AAD748: FFree1Ad var_88
  loc_AAD74B: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D0E74
  'Data Table: 40F88C
  loc_9D0E5C: FLdPr Me
  loc_9D0E5F: VCallAd Control_ID_Campo2Txt
  loc_9D0E62: FStAdFunc var_88
  loc_9D0E65: FLdPr var_88
  loc_9D0E68: Me.SetFocus
  loc_9D0E6D: FFree1Ad var_88
  loc_9D0E70: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A126B0
  'Data Table: 40F88C
  loc_A12674: ILdI2 KeyAscii
  loc_A12677: LitI2_Byte &HD
  loc_A12679: EqI2
  loc_A1267A: BranchF loc_A1268B
  loc_A1267D: LitVar_TRUE var_A4
  loc_A12680: LitStr "{Tab}"
  loc_A12683: ImpAdCallFPR4 SendKeys , 
  loc_A12688: FFree1Var var_A4 = ""
  loc_A1268B: ILdI2 KeyAscii
  loc_A1268E: LitI2_Byte &H1B
  loc_A12690: EqI2
  loc_A12691: BranchF loc_A126AE
  loc_A12694: ILdRf Me
  loc_A12697: FStAdNoPop
  loc_A1269B: ImpAdLdRf MemVar_D9C5D8
  loc_A1269E: NewIfNullPr Global
  loc_A126A1: Global.Unload from_stack_1
  loc_A126A6: FFree1Ad var_A8
  loc_A126A9: LitI2_Byte 0
  loc_A126AB: IStI2 KeyAscii
  loc_A126AE: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D07A0
  'Data Table: 40F88C
  loc_9D0788: ILdRf Me
  loc_9D078B: FStAdNoPop
  loc_9D078F: ImpAdLdRf MemVar_D9C5D8
  loc_9D0792: NewIfNullPr Global
  loc_9D0795: Global.Unload from_stack_1
  loc_9D079A: FFree1Ad var_88
  loc_9D079D: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A78338
  'Data Table: 40F88C
  loc_A782CC: LitStr vbNullString
  loc_A782CF: FLdPr Me
  loc_A782D2: VCallAd Control_ID_Campo1Txt
  loc_A782D5: FStAdFunc var_88
  loc_A782D8: FLdPr var_88
  loc_A782DB: Me.Text = from_stack_1
  loc_A782E0: FFree1Ad var_88
  loc_A782E3: LitStr "SELECT tipofapa.CodiTifa, DetaTifa, MecaTifa, InteTifa FROM tipofapa INNER JOIN infogov.usuariofaci ON infogov.usuariofaci.CodiTifa = tipofapa.CodiTifa WHERE usuariofaci.CodiUsua = '"
  loc_A782E6: ImpAdLdI4 MemVar_D9302C
  loc_A782E9: ConcatStr
  loc_A782EA: FStStrNoPop var_8C
  loc_A782ED: LitStr "' AND DetaTifa like '" & Chr(37)
  loc_A782F0: ConcatStr
  loc_A782F1: FStStrNoPop var_94
  loc_A782F4: FLdRfVar var_90
  loc_A782F7: FLdPr Me
  loc_A782FA: VCallAd Control_ID_Campo2Txt
  loc_A782FD: FStAdFunc var_88
  loc_A78300: FLdPr var_88
  loc_A78303:  = Me.Text
  loc_A78308: ILdRf var_90
  loc_A7830B: ConcatStr
  loc_A7830C: FStStrNoPop var_98
  loc_A7830F: LitStr Chr(37) & "' AND tipofapa.BajaFeho is null ORDER BY DetaTifa"
  loc_A78312: ConcatStr
  loc_A78313: FStStrNoPop var_9C
  loc_A78316: FLdPr Me
  loc_A78319: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7831C: NewIfNullPr clsbase
  loc_A7831F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A78324: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A78331: FFree1Ad var_88
  loc_A78334: ExitProcHresult
End Sub

Public Function global_4257932Get() '40FDA4
  global_4257932Get = global_4257932
End Function

Public Sub global_4257932Put(Value) '40FDBE
  global_4257932 = Value
End Sub

Public Sub global_4257932Set(Value) '40FDD8
  global_4257932 = Value
End Sub
