VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarPersonadeDeudoresVariosReddeGas
  Caption = "Buscar Persona de Red de Gas ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "dlgBuscarPersonadeDeudoresVariosReddeGas.frx":0000
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarPersonadeDeudoresVariosReddeGas.frx":0342
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 15372
  ClientHeight = 7464
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo4Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1680
    Width = 7095
    Height = 360
    TabIndex = 7
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
  Begin VB.TextBox Campo3Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1200
    Width = 7095
    Height = 360
    TabIndex = 5
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
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 720
    Width = 1695
    Height = 360
    TabIndex = 3
    Tag = "0"
    MaxLength = 11
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
    Left = 2640
    Top = 240
    Width = 1695
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 11
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
    Left = 240
    Top = 6720
    Width = 1335
    Height = 495
    TabIndex = 9
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
    Top = 2160
    Width = 15015
    Height = 4335
    Tag = "1"
    TabIndex = 8
    OleObjectBlob = "dlgBuscarPersonadeDeudoresVariosReddeGas.frx":0C0C
  End
  Begin VB.Label Label4
    Caption = "Domicilio Postal:"
    Left = 840
    Top = 1680
    Width = 1725
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
  Begin VB.Label Label1
    Caption = "C.U.I.L. - C.U.I.T.:"
    Left = 720
    Top = 240
    Width = 1845
    Height = 300
    TabIndex = 0
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
    Caption = "Apellido y Nombre:"
    Left = 600
    Top = 1200
    Width = 1965
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
  Begin VB.Label Label2
    Caption = "Cuenta:"
    Left = 1725
    Top = 720
    Width = 840
    Height = 300
    TabIndex = 2
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

Attribute VB_Name = "dlgBuscarPersonadeDeudoresVariosReddeGas"

Public RelacionCLS As New Class


Private Sub Form_Load() 'A8F6F4
  'Data Table: 43EA48
  loc_A8F664: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_A8F667: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_A8F66A: ConcatStr
  loc_A8F66B: FStStrNoPop var_88
  loc_A8F66E: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_A8F671: ConcatStr
  loc_A8F672: FStStrNoPop var_8C
  loc_A8F675: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' ORDER BY infogov.persona.DetaPers"
  loc_A8F678: ConcatStr
  loc_A8F679: FStStrNoPop var_90
  loc_A8F67C: FLdPr Me
  loc_A8F67F: MemLdRfVar from_stack_1.RelacionCLS
  loc_A8F682: NewIfNullPr clsrelacion
  loc_A8F685: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_A8F68A: FFreeStr var_88 = "": var_8C = ""
  loc_A8F693: LitI4 0
  loc_A8F698: LitI4 1
  loc_A8F69D: FLdRfVar var_94
  loc_A8F6A0: Redim
  loc_A8F6AA: FLdPr Me
  loc_A8F6AD: MemLdRfVar from_stack_1.RelacionCLS
  loc_A8F6B0: NewIfNullAd
  loc_A8F6B3: FStAd var_98 
  loc_A8F6B7: FLdRfVar var_98
  loc_A8F6BA: CVarRef
  loc_A8F6BF: ParmAry1St
  loc_A8F6C5: FLdPr Me
  loc_A8F6C8: VCallAd Control_ID_dgdABMS
  loc_A8F6CB: CVarAd
  loc_A8F6CF: ParmAry1St
  loc_A8F6D5: FLdRfVar var_94
  loc_A8F6D8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8F6DD: ILdRf var_98
  loc_A8F6E0: CastAd
  loc_A8F6E3: FLdPr Me
  loc_A8F6E6: MemStAdFunc
  loc_A8F6EA: FLdRfVar var_94
  loc_A8F6ED: Erase
  loc_A8F6EE: FFree1Ad var_98
  loc_A8F6F1: ExitProcHresult
  loc_A8F6F2: EqCyR8
End Sub

Private Sub Form_Activate() '9D02E0
  'Data Table: 43EA48
  loc_9D02C8: FLdPr Me
  loc_9D02CB: VCallAd Control_ID_Campo3Txt
  loc_9D02CE: FStAdFunc var_88
  loc_9D02D1: FLdPr var_88
  loc_9D02D4: Me.SetFocus
  loc_9D02D9: FFree1Ad var_88
  loc_9D02DC: ExitProcHresult
  loc_9D02DD: LitStr "??????????????????????"
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10F20
  'Data Table: 43EA48
  loc_A10EE4: ILdI2 KeyAscii
  loc_A10EE7: LitI2_Byte &HD
  loc_A10EE9: EqI2
  loc_A10EEA: BranchF loc_A10EFB
  loc_A10EED: LitVar_TRUE var_A4
  loc_A10EF0: LitStr "{Tab}"
  loc_A10EF3: ImpAdCallFPR4 SendKeys , 
  loc_A10EF8: FFree1Var var_A4 = ""
  loc_A10EFB: ILdI2 KeyAscii
  loc_A10EFE: LitI2_Byte &H1B
  loc_A10F00: EqI2
  loc_A10F01: BranchF loc_A10F1E
  loc_A10F04: ILdRf Me
  loc_A10F07: FStAdNoPop
  loc_A10F0B: ImpAdLdRf MemVar_D9C5D8
  loc_A10F0E: NewIfNullPr Global
  loc_A10F11: Global.Unload from_stack_1
  loc_A10F16: FFree1Ad var_A8
  loc_A10F19: LitI2_Byte 0
  loc_A10F1B: IStI2 KeyAscii
  loc_A10F1E: ExitProcHresult
End Sub

Private Sub Campo4Txt_Change() 'AB552C
  'Data Table: 43EA48
  loc_AB5450: FLdRfVar var_8C
  loc_AB5453: FLdPr Me
  loc_AB5456: VCallAd Control_ID_Campo4Txt
  loc_AB5459: FStAdFunc var_88
  loc_AB545C: FLdPr var_88
  loc_AB545F:  = Me.Text
  loc_AB5464: ILdRf var_8C
  loc_AB5467: LitStr vbNullString
  loc_AB546A: NeStr
  loc_AB546C: FFree1Str var_8C
  loc_AB546F: FFree1Ad var_88
  loc_AB5472: BranchF loc_AB552B
  loc_AB5475: LitStr vbNullString
  loc_AB5478: FLdPr Me
  loc_AB547B: VCallAd Control_ID_Campo1Txt
  loc_AB547E: FStAdFunc var_88
  loc_AB5481: FLdPr var_88
  loc_AB5484: Me.Text = from_stack_1
  loc_AB5489: FFree1Ad var_88
  loc_AB548C: LitStr vbNullString
  loc_AB548F: FLdPr Me
  loc_AB5492: VCallAd Control_ID_Campo2Txt
  loc_AB5495: FStAdFunc var_88
  loc_AB5498: FLdPr var_88
  loc_AB549B: Me.Text = from_stack_1
  loc_AB54A0: FFree1Ad var_88
  loc_AB54A3: LitStr vbNullString
  loc_AB54A6: FLdPr Me
  loc_AB54A9: VCallAd Control_ID_Campo2Txt
  loc_AB54AC: FStAdFunc var_88
  loc_AB54AF: FLdPr var_88
  loc_AB54B2: Me.Text = from_stack_1
  loc_AB54B7: FFree1Ad var_88
  loc_AB54BA: LitStr vbNullString
  loc_AB54BD: FLdPr Me
  loc_AB54C0: VCallAd Control_ID_Campo3Txt
  loc_AB54C3: FStAdFunc var_88
  loc_AB54C6: FLdPr var_88
  loc_AB54C9: Me.Text = from_stack_1
  loc_AB54CE: FFree1Ad var_88
  loc_AB54D1: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AB54D4: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AB54D7: ConcatStr
  loc_AB54D8: FStStrNoPop var_8C
  loc_AB54DB: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AB54DE: ConcatStr
  loc_AB54DF: FStStrNoPop var_90
  loc_AB54E2: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND infogov.persona.DecrPers like '" & Chr(37)
  loc_AB54E5: ConcatStr
  loc_AB54E6: FStStrNoPop var_98
  loc_AB54E9: FLdRfVar var_94
  loc_AB54EC: FLdPr Me
  loc_AB54EF: VCallAd Control_ID_Campo4Txt
  loc_AB54F2: FStAdFunc var_88
  loc_AB54F5: FLdPr var_88
  loc_AB54F8:  = Me.Text
  loc_AB54FD: ILdRf var_94
  loc_AB5500: ConcatStr
  loc_AB5501: FStStrNoPop var_9C
  loc_AB5504: LitStr Chr(37) & "' ORDER BY infogov.persona.DecrPers, infogov.persona.NurePers"
  loc_AB5507: ConcatStr
  loc_AB5508: FStStrNoPop var_A0
  loc_AB550B: FLdPr Me
  loc_AB550E: MemLdRfVar from_stack_1.RelacionCLS
  loc_AB5511: NewIfNullPr clsrelacion
  loc_AB5514: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AB5519: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AB5528: FFree1Ad var_88
  loc_AB552B: ExitProcHresult
End Sub

Private Sub Campo4Txt_KeyPress(KeyAscii As Integer) 'AAE51C
  'Data Table: 43EA48
  loc_AAE458: ILdI2 KeyAscii
  loc_AAE45B: CI4UI1
  loc_AAE45C: LitI4 &HD
  loc_AAE461: EqI4
  loc_AAE462: BranchF loc_AAE51A
  loc_AAE465: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AAE468: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AAE46B: ConcatStr
  loc_AAE46C: FStStrNoPop var_88
  loc_AAE46F: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AAE472: ConcatStr
  loc_AAE473: FStStrNoPop var_8C
  loc_AAE476: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND infogov.persona.DecrPers as DetaCall like '" & Chr(37)
  loc_AAE479: ConcatStr
  loc_AAE47A: FStStrNoPop var_98
  loc_AAE47D: FLdRfVar var_94
  loc_AAE480: FLdPr Me
  loc_AAE483: VCallAd Control_ID_Campo4Txt
  loc_AAE486: FStAdFunc var_90
  loc_AAE489: FLdPr var_90
  loc_AAE48C:  = Me.Text
  loc_AAE491: ILdRf var_94
  loc_AAE494: ConcatStr
  loc_AAE495: FStStrNoPop var_9C
  loc_AAE498: LitStr Chr(37) & "' ORDER BY infogov.persona.DecrPers, infogov.persona.NurePers"
  loc_AAE49B: ConcatStr
  loc_AAE49C: FStStrNoPop var_A0
  loc_AAE49F: FLdPr Me
  loc_AAE4A2: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAE4A5: NewIfNullPr clsrelacion
  loc_AAE4A8: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AAE4AD: FFreeStr var_88 = "": var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AAE4BC: FFree1Ad var_90
  loc_AAE4BF: FLdRfVar var_A4
  loc_AAE4C2: FLdPr Me
  loc_AAE4C5: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAE4C8: NewIfNullPr clsrelacion
  loc_AAE4CB: from_stack_1 = clsrelacion.RecordCount
  loc_AAE4D0: ILdRf var_A4
  loc_AAE4D3: LitI4 0
  loc_AAE4D8: EqI4
  loc_AAE4D9: ILdI2 KeyAscii
  loc_AAE4DC: CI4UI1
  loc_AAE4DD: LitI4 8
  loc_AAE4E2: NeI4
  loc_AAE4E3: AndI4
  loc_AAE4E4: BranchF loc_AAE503
  loc_AAE4E7: LitI2_Byte 0
  loc_AAE4E9: IStI2 KeyAscii
  loc_AAE4EC: FLdPr Me
  loc_AAE4EF: VCallAd Control_ID_Campo4Txt
  loc_AAE4F2: FStAdFunc var_90
  loc_AAE4F5: FLdPr var_90
  loc_AAE4F8: Me.SetFocus
  loc_AAE4FD: FFree1Ad var_90
  loc_AAE500: Branch loc_AAE51A
  loc_AAE503: FLdPr Me
  loc_AAE506: VCallAd Control_ID_dgdABMS
  loc_AAE509: FStAdFunc var_90
  loc_AAE50C: FLdPr var_90
  loc_AAE50F: LateIdCall
  loc_AAE517: FFree1Ad var_90
  loc_AAE51A: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9CFF04
  'Data Table: 43EA48
  loc_9CFEEC: ILdRf Me
  loc_9CFEEF: FStAdNoPop
  loc_9CFEF3: ImpAdLdRf MemVar_D9C5D8
  loc_9CFEF6: NewIfNullPr Global
  loc_9CFEF9: Global.Unload from_stack_1
  loc_9CFEFE: FFree1Ad var_88
  loc_9CFF01: ExitProcHresult
  loc_9CFF02: ConcatStr
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EDF60
  'Data Table: 43EA48
  loc_9EDF3C: ILdI2 KeyCode
  loc_9EDF3F: CI4UI1
  loc_9EDF40: LitI4 &HD
  loc_9EDF45: EqI4
  loc_9EDF46: BranchF loc_9EDF5E
  loc_9EDF49: ILdRf Me
  loc_9EDF4C: FStAdNoPop
  loc_9EDF50: ImpAdLdRf MemVar_D9C5D8
  loc_9EDF53: NewIfNullPr Global
  loc_9EDF56: Global.Unload from_stack_1
  loc_9EDF5B: FFree1Ad var_88
  loc_9EDF5E: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D0378
  'Data Table: 43EA48
  loc_9D0360: ILdRf Me
  loc_9D0363: FStAdNoPop
  loc_9D0367: ImpAdLdRf MemVar_D9C5D8
  loc_9D036A: NewIfNullPr Global
  loc_9D036D: Global.Unload from_stack_1
  loc_9D0372: FFree1Ad var_88
  loc_9D0375: ExitProcHresult
  loc_9D0376: FLdPrThis
End Sub

Private Sub Campo3Txt_Change() 'AB5AF4
  'Data Table: 43EA48
  loc_AB5A18: FLdRfVar var_8C
  loc_AB5A1B: FLdPr Me
  loc_AB5A1E: VCallAd Control_ID_Campo3Txt
  loc_AB5A21: FStAdFunc var_88
  loc_AB5A24: FLdPr var_88
  loc_AB5A27:  = Me.Text
  loc_AB5A2C: ILdRf var_8C
  loc_AB5A2F: LitStr vbNullString
  loc_AB5A32: NeStr
  loc_AB5A34: FFree1Str var_8C
  loc_AB5A37: FFree1Ad var_88
  loc_AB5A3A: BranchF loc_AB5AF3
  loc_AB5A3D: LitStr vbNullString
  loc_AB5A40: FLdPr Me
  loc_AB5A43: VCallAd Control_ID_Campo1Txt
  loc_AB5A46: FStAdFunc var_88
  loc_AB5A49: FLdPr var_88
  loc_AB5A4C: Me.Text = from_stack_1
  loc_AB5A51: FFree1Ad var_88
  loc_AB5A54: LitStr vbNullString
  loc_AB5A57: FLdPr Me
  loc_AB5A5A: VCallAd Control_ID_Campo2Txt
  loc_AB5A5D: FStAdFunc var_88
  loc_AB5A60: FLdPr var_88
  loc_AB5A63: Me.Text = from_stack_1
  loc_AB5A68: FFree1Ad var_88
  loc_AB5A6B: LitStr vbNullString
  loc_AB5A6E: FLdPr Me
  loc_AB5A71: VCallAd Control_ID_Campo2Txt
  loc_AB5A74: FStAdFunc var_88
  loc_AB5A77: FLdPr var_88
  loc_AB5A7A: Me.Text = from_stack_1
  loc_AB5A7F: FFree1Ad var_88
  loc_AB5A82: LitStr vbNullString
  loc_AB5A85: FLdPr Me
  loc_AB5A88: VCallAd Control_ID_Campo4Txt
  loc_AB5A8B: FStAdFunc var_88
  loc_AB5A8E: FLdPr var_88
  loc_AB5A91: Me.Text = from_stack_1
  loc_AB5A96: FFree1Ad var_88
  loc_AB5A99: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AB5A9C: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AB5A9F: ConcatStr
  loc_AB5AA0: FStStrNoPop var_8C
  loc_AB5AA3: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AB5AA6: ConcatStr
  loc_AB5AA7: FStStrNoPop var_90
  loc_AB5AAA: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND infogov.persona.DetaPers like '" & Chr(37)
  loc_AB5AAD: ConcatStr
  loc_AB5AAE: FStStrNoPop var_98
  loc_AB5AB1: FLdRfVar var_94
  loc_AB5AB4: FLdPr Me
  loc_AB5AB7: VCallAd Control_ID_Campo3Txt
  loc_AB5ABA: FStAdFunc var_88
  loc_AB5ABD: FLdPr var_88
  loc_AB5AC0:  = Me.Text
  loc_AB5AC5: ILdRf var_94
  loc_AB5AC8: ConcatStr
  loc_AB5AC9: FStStrNoPop var_9C
  loc_AB5ACC: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_AB5ACF: ConcatStr
  loc_AB5AD0: FStStrNoPop var_A0
  loc_AB5AD3: FLdPr Me
  loc_AB5AD6: MemLdRfVar from_stack_1.RelacionCLS
  loc_AB5AD9: NewIfNullPr clsrelacion
  loc_AB5ADC: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AB5AE1: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AB5AF0: FFree1Ad var_88
  loc_AB5AF3: ExitProcHresult
End Sub

Private Sub Campo3Txt_KeyPress(KeyAscii As Integer) 'AAE2FC
  'Data Table: 43EA48
  loc_AAE238: ILdI2 KeyAscii
  loc_AAE23B: CI4UI1
  loc_AAE23C: LitI4 &HD
  loc_AAE241: EqI4
  loc_AAE242: BranchF loc_AAE2FA
  loc_AAE245: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AAE248: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AAE24B: ConcatStr
  loc_AAE24C: FStStrNoPop var_88
  loc_AAE24F: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AAE252: ConcatStr
  loc_AAE253: FStStrNoPop var_8C
  loc_AAE256: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND infogov.persona.DetaPers like '" & Chr(37)
  loc_AAE259: ConcatStr
  loc_AAE25A: FStStrNoPop var_98
  loc_AAE25D: FLdRfVar var_94
  loc_AAE260: FLdPr Me
  loc_AAE263: VCallAd Control_ID_Campo3Txt
  loc_AAE266: FStAdFunc var_90
  loc_AAE269: FLdPr var_90
  loc_AAE26C:  = Me.Text
  loc_AAE271: ILdRf var_94
  loc_AAE274: ConcatStr
  loc_AAE275: FStStrNoPop var_9C
  loc_AAE278: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_AAE27B: ConcatStr
  loc_AAE27C: FStStrNoPop var_A0
  loc_AAE27F: FLdPr Me
  loc_AAE282: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAE285: NewIfNullPr clsrelacion
  loc_AAE288: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AAE28D: FFreeStr var_88 = "": var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AAE29C: FFree1Ad var_90
  loc_AAE29F: FLdRfVar var_A4
  loc_AAE2A2: FLdPr Me
  loc_AAE2A5: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAE2A8: NewIfNullPr clsrelacion
  loc_AAE2AB: from_stack_1 = clsrelacion.RecordCount
  loc_AAE2B0: ILdRf var_A4
  loc_AAE2B3: LitI4 0
  loc_AAE2B8: EqI4
  loc_AAE2B9: ILdI2 KeyAscii
  loc_AAE2BC: CI4UI1
  loc_AAE2BD: LitI4 8
  loc_AAE2C2: NeI4
  loc_AAE2C3: AndI4
  loc_AAE2C4: BranchF loc_AAE2E3
  loc_AAE2C7: LitI2_Byte 0
  loc_AAE2C9: IStI2 KeyAscii
  loc_AAE2CC: FLdPr Me
  loc_AAE2CF: VCallAd Control_ID_Campo3Txt
  loc_AAE2D2: FStAdFunc var_90
  loc_AAE2D5: FLdPr var_90
  loc_AAE2D8: Me.SetFocus
  loc_AAE2DD: FFree1Ad var_90
  loc_AAE2E0: Branch loc_AAE2FA
  loc_AAE2E3: FLdPr Me
  loc_AAE2E6: VCallAd Control_ID_dgdABMS
  loc_AAE2E9: FStAdFunc var_90
  loc_AAE2EC: FLdPr var_90
  loc_AAE2EF: LateIdCall
  loc_AAE2F7: FFree1Ad var_90
  loc_AAE2FA: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'AAF548
  'Data Table: 43EA48
  loc_AAF480: FLdRfVar var_8C
  loc_AAF483: FLdPr Me
  loc_AAF486: VCallAd Control_ID_Campo2Txt
  loc_AAF489: FStAdFunc var_88
  loc_AAF48C: FLdPr var_88
  loc_AAF48F:  = Me.Text
  loc_AAF494: ILdRf var_8C
  loc_AAF497: LitStr vbNullString
  loc_AAF49A: NeStr
  loc_AAF49C: FFree1Str var_8C
  loc_AAF49F: FFree1Ad var_88
  loc_AAF4A2: BranchF loc_AAF544
  loc_AAF4A5: LitStr vbNullString
  loc_AAF4A8: FLdPr Me
  loc_AAF4AB: VCallAd Control_ID_Campo1Txt
  loc_AAF4AE: FStAdFunc var_88
  loc_AAF4B1: FLdPr var_88
  loc_AAF4B4: Me.Text = from_stack_1
  loc_AAF4B9: FFree1Ad var_88
  loc_AAF4BC: LitStr vbNullString
  loc_AAF4BF: FLdPr Me
  loc_AAF4C2: VCallAd Control_ID_Campo3Txt
  loc_AAF4C5: FStAdFunc var_88
  loc_AAF4C8: FLdPr var_88
  loc_AAF4CB: Me.Text = from_stack_1
  loc_AAF4D0: FFree1Ad var_88
  loc_AAF4D3: LitStr vbNullString
  loc_AAF4D6: FLdPr Me
  loc_AAF4D9: VCallAd Control_ID_Campo4Txt
  loc_AAF4DC: FStAdFunc var_88
  loc_AAF4DF: FLdPr var_88
  loc_AAF4E2: Me.Text = from_stack_1
  loc_AAF4E7: FFree1Ad var_88
  loc_AAF4EA: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AAF4ED: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AAF4F0: ConcatStr
  loc_AAF4F1: FStStrNoPop var_8C
  loc_AAF4F4: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AAF4F7: ConcatStr
  loc_AAF4F8: FStStrNoPop var_90
  loc_AAF4FB: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND relacion.CuenCtct like '"
  loc_AAF4FE: ConcatStr
  loc_AAF4FF: FStStrNoPop var_98
  loc_AAF502: FLdRfVar var_94
  loc_AAF505: FLdPr Me
  loc_AAF508: VCallAd Control_ID_Campo2Txt
  loc_AAF50B: FStAdFunc var_88
  loc_AAF50E: FLdPr var_88
  loc_AAF511:  = Me.Text
  loc_AAF516: ILdRf var_94
  loc_AAF519: ConcatStr
  loc_AAF51A: FStStrNoPop var_9C
  loc_AAF51D: LitStr Chr(37) & "' ORDER BY  relacion.CuenCtct"
  loc_AAF520: ConcatStr
  loc_AAF521: FStStrNoPop var_A0
  loc_AAF524: FLdPr Me
  loc_AAF527: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAF52A: NewIfNullPr clsrelacion
  loc_AAF52D: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AAF532: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AAF541: FFree1Ad var_88
  loc_AAF544: ExitProcHresult
End Sub

Private Sub Campo2Txt_KeyPress(KeyAscii As Integer) 'AAE1EC
  'Data Table: 43EA48
  loc_AAE128: ILdI2 KeyAscii
  loc_AAE12B: CI4UI1
  loc_AAE12C: LitI4 &HD
  loc_AAE131: EqI4
  loc_AAE132: BranchF loc_AAE1EA
  loc_AAE135: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AAE138: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AAE13B: ConcatStr
  loc_AAE13C: FStStrNoPop var_88
  loc_AAE13F: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AAE142: ConcatStr
  loc_AAE143: FStStrNoPop var_8C
  loc_AAE146: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND relacion.CuenCtct = '"
  loc_AAE149: ConcatStr
  loc_AAE14A: FStStrNoPop var_98
  loc_AAE14D: FLdRfVar var_94
  loc_AAE150: FLdPr Me
  loc_AAE153: VCallAd Control_ID_Campo2Txt
  loc_AAE156: FStAdFunc var_90
  loc_AAE159: FLdPr var_90
  loc_AAE15C:  = Me.Text
  loc_AAE161: ILdRf var_94
  loc_AAE164: ConcatStr
  loc_AAE165: FStStrNoPop var_9C
  loc_AAE168: LitStr "' ORDER BY  relacion.CuenCtct"
  loc_AAE16B: ConcatStr
  loc_AAE16C: FStStrNoPop var_A0
  loc_AAE16F: FLdPr Me
  loc_AAE172: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAE175: NewIfNullPr clsrelacion
  loc_AAE178: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AAE17D: FFreeStr var_88 = "": var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AAE18C: FFree1Ad var_90
  loc_AAE18F: FLdRfVar var_A4
  loc_AAE192: FLdPr Me
  loc_AAE195: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAE198: NewIfNullPr clsrelacion
  loc_AAE19B: from_stack_1 = clsrelacion.RecordCount
  loc_AAE1A0: ILdRf var_A4
  loc_AAE1A3: LitI4 0
  loc_AAE1A8: EqI4
  loc_AAE1A9: ILdI2 KeyAscii
  loc_AAE1AC: CI4UI1
  loc_AAE1AD: LitI4 8
  loc_AAE1B2: NeI4
  loc_AAE1B3: AndI4
  loc_AAE1B4: BranchF loc_AAE1D3
  loc_AAE1B7: LitI2_Byte 0
  loc_AAE1B9: IStI2 KeyAscii
  loc_AAE1BC: FLdPr Me
  loc_AAE1BF: VCallAd Control_ID_Campo2Txt
  loc_AAE1C2: FStAdFunc var_90
  loc_AAE1C5: FLdPr var_90
  loc_AAE1C8: Me.SetFocus
  loc_AAE1CD: FFree1Ad var_90
  loc_AAE1D0: Branch loc_AAE1EA
  loc_AAE1D3: FLdPr Me
  loc_AAE1D6: VCallAd Control_ID_dgdABMS
  loc_AAE1D9: FStAdFunc var_90
  loc_AAE1DC: FLdPr var_90
  loc_AAE1DF: LateIdCall
  loc_AAE1E7: FFree1Ad var_90
  loc_AAE1EA: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'AAF434
  'Data Table: 43EA48
  loc_AAF36C: FLdRfVar var_8C
  loc_AAF36F: FLdPr Me
  loc_AAF372: VCallAd Control_ID_Campo1Txt
  loc_AAF375: FStAdFunc var_88
  loc_AAF378: FLdPr var_88
  loc_AAF37B:  = Me.Text
  loc_AAF380: ILdRf var_8C
  loc_AAF383: LitStr vbNullString
  loc_AAF386: NeStr
  loc_AAF388: FFree1Str var_8C
  loc_AAF38B: FFree1Ad var_88
  loc_AAF38E: BranchF loc_AAF430
  loc_AAF391: LitStr vbNullString
  loc_AAF394: FLdPr Me
  loc_AAF397: VCallAd Control_ID_Campo2Txt
  loc_AAF39A: FStAdFunc var_88
  loc_AAF39D: FLdPr var_88
  loc_AAF3A0: Me.Text = from_stack_1
  loc_AAF3A5: FFree1Ad var_88
  loc_AAF3A8: LitStr vbNullString
  loc_AAF3AB: FLdPr Me
  loc_AAF3AE: VCallAd Control_ID_Campo3Txt
  loc_AAF3B1: FStAdFunc var_88
  loc_AAF3B4: FLdPr var_88
  loc_AAF3B7: Me.Text = from_stack_1
  loc_AAF3BC: FFree1Ad var_88
  loc_AAF3BF: LitStr vbNullString
  loc_AAF3C2: FLdPr Me
  loc_AAF3C5: VCallAd Control_ID_Campo4Txt
  loc_AAF3C8: FStAdFunc var_88
  loc_AAF3CB: FLdPr var_88
  loc_AAF3CE: Me.Text = from_stack_1
  loc_AAF3D3: FFree1Ad var_88
  loc_AAF3D6: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AAF3D9: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AAF3DC: ConcatStr
  loc_AAF3DD: FStStrNoPop var_8C
  loc_AAF3E0: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AAF3E3: ConcatStr
  loc_AAF3E4: FStStrNoPop var_90
  loc_AAF3E7: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND infogov.persona.CucuPers like '"
  loc_AAF3EA: ConcatStr
  loc_AAF3EB: FStStrNoPop var_98
  loc_AAF3EE: FLdRfVar var_94
  loc_AAF3F1: FLdPr Me
  loc_AAF3F4: VCallAd Control_ID_Campo1Txt
  loc_AAF3F7: FStAdFunc var_88
  loc_AAF3FA: FLdPr var_88
  loc_AAF3FD:  = Me.Text
  loc_AAF402: ILdRf var_94
  loc_AAF405: ConcatStr
  loc_AAF406: FStStrNoPop var_9C
  loc_AAF409: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_AAF40C: ConcatStr
  loc_AAF40D: FStStrNoPop var_A0
  loc_AAF410: FLdPr Me
  loc_AAF413: MemLdRfVar from_stack_1.RelacionCLS
  loc_AAF416: NewIfNullPr clsrelacion
  loc_AAF419: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AAF41E: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AAF42D: FFree1Ad var_88
  loc_AAF430: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) 'AB7214
  'Data Table: 43EA48
  loc_AB7138: LitStr "0123456789"
  loc_AB713B: FStStrCopy var_88
  loc_AB713E: FLdRfVar var_88
  loc_AB7141: ILdRf KeyAscii
  loc_AB7144: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB7149: IStI2 KeyAscii
  loc_AB714C: FFree1Str var_88
  loc_AB714F: ILdI2 KeyAscii
  loc_AB7152: CI4UI1
  loc_AB7153: LitI4 &HD
  loc_AB7158: EqI4
  loc_AB7159: BranchF loc_AB7211
  loc_AB715C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer FROM relacion"
  loc_AB715F: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_AB7162: ConcatStr
  loc_AB7163: FStStrNoPop var_88
  loc_AB7166: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AB7169: ConcatStr
  loc_AB716A: FStStrNoPop var_8C
  loc_AB716D: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.FebaRela IS NULL AND deudvari.TipoDeva = 'RED DE GAS' AND infogov.persona.CucuPers like '"
  loc_AB7170: ConcatStr
  loc_AB7171: FStStrNoPop var_98
  loc_AB7174: FLdRfVar var_94
  loc_AB7177: FLdPr Me
  loc_AB717A: VCallAd Control_ID_Campo1Txt
  loc_AB717D: FStAdFunc var_90
  loc_AB7180: FLdPr var_90
  loc_AB7183:  = Me.Text
  loc_AB7188: ILdRf var_94
  loc_AB718B: ConcatStr
  loc_AB718C: FStStrNoPop var_9C
  loc_AB718F: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_AB7192: ConcatStr
  loc_AB7193: FStStrNoPop var_A0
  loc_AB7196: FLdPr Me
  loc_AB7199: MemLdRfVar from_stack_1.RelacionCLS
  loc_AB719C: NewIfNullPr clsrelacion
  loc_AB719F: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AB71A4: FFreeStr var_88 = "": var_8C = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AB71B3: FFree1Ad var_90
  loc_AB71B6: FLdRfVar var_A4
  loc_AB71B9: FLdPr Me
  loc_AB71BC: MemLdRfVar from_stack_1.RelacionCLS
  loc_AB71BF: NewIfNullPr clsrelacion
  loc_AB71C2: from_stack_1 = clsrelacion.RecordCount
  loc_AB71C7: ILdRf var_A4
  loc_AB71CA: LitI4 0
  loc_AB71CF: EqI4
  loc_AB71D0: ILdI2 KeyAscii
  loc_AB71D3: CI4UI1
  loc_AB71D4: LitI4 8
  loc_AB71D9: NeI4
  loc_AB71DA: AndI4
  loc_AB71DB: BranchF loc_AB71FA
  loc_AB71DE: LitI2_Byte 0
  loc_AB71E0: IStI2 KeyAscii
  loc_AB71E3: FLdPr Me
  loc_AB71E6: VCallAd Control_ID_Campo1Txt
  loc_AB71E9: FStAdFunc var_90
  loc_AB71EC: FLdPr var_90
  loc_AB71EF: Me.SetFocus
  loc_AB71F4: FFree1Ad var_90
  loc_AB71F7: Branch loc_AB7211
  loc_AB71FA: FLdPr Me
  loc_AB71FD: VCallAd Control_ID_dgdABMS
  loc_AB7200: FStAdFunc var_90
  loc_AB7203: FLdPr var_90
  loc_AB7206: LateIdCall
  loc_AB720E: FFree1Ad var_90
  loc_AB7211: ExitProcHresult
  loc_AB7212: FStStrCopy var_3000
End Sub

Public Function global_4450888Get() '43F1F4
  global_4450888Get = global_4450888
End Function

Public Sub global_4450888Put(Value) '43F20E
  global_4450888 = Value
End Sub

Public Sub global_4450888Set(Value) '43F228
  global_4450888 = Value
End Sub
