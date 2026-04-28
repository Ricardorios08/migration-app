VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarPersonaPorCucuPers
  Caption = "Buscar Persona Por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarPersonaPorCucuPers.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 14328
  ClientHeight = 7200
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo4Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1200
    Width = 7095
    Height = 360
    TabIndex = 2
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
    Top = 720
    Width = 7095
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
    Left = 2640
    Top = 240
    Width = 1695
    Height = 360
    TabIndex = 0
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 6480
    Width = 1335
    Height = 495
    TabIndex = 5
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
    Top = 6480
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
    Left = 240
    Top = 1800
    Width = 13935
    Height = 4335
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "dlgBuscarPersonaPorCucuPers.frx":08CA
  End
  Begin VB.Label Label4
    Caption = "Domicilio Postal:"
    Left = 720
    Top = 1200
    Width = 1725
    Height = 300
    TabIndex = 8
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
    Left = 600
    Top = 240
    Width = 1845
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
    Caption = "Apellido y Nombre:"
    Left = 480
    Top = 720
    Width = 1965
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
End

Attribute VB_Name = "dlgBuscarPersonaPorCucuPers"

Public sPasaDetalle As String
Public sPasaCodigo As String


Private Sub Campo3Txt_Change() 'AD2070
  'Data Table: 436870
  loc_AD1F44: LitStr vbNullString
  loc_AD1F47: FLdPr Me
  loc_AD1F4A: VCallAd Control_ID_Campo1Txt
  loc_AD1F4D: FStAdFunc var_88
  loc_AD1F50: FLdPr var_88
  loc_AD1F53: Me.Text = from_stack_1
  loc_AD1F58: FFree1Ad var_88
  loc_AD1F5B: LitStr vbNullString
  loc_AD1F5E: FLdPr Me
  loc_AD1F61: VCallAd Control_ID_Campo4Txt
  loc_AD1F64: FStAdFunc var_88
  loc_AD1F67: FLdPr var_88
  loc_AD1F6A: Me.Text = from_stack_1
  loc_AD1F6F: FFree1Ad var_88
  loc_AD1F72: FLdRfVar var_8C
  loc_AD1F75: FLdPr Me
  loc_AD1F78: VCallAd Control_ID_Campo3Txt
  loc_AD1F7B: FStAdFunc var_88
  loc_AD1F7E: FLdPr var_88
  loc_AD1F81:  = Me.Text
  loc_AD1F86: ILdRf var_8C
  loc_AD1F89: LitStr vbNullString
  loc_AD1F8C: NeStr
  loc_AD1F8E: FFree1Str var_8C
  loc_AD1F91: FFree1Ad var_88
  loc_AD1F94: BranchF loc_AD206E
  loc_AD1F97: LitStr "Municipalidad de Guaymallén"
  loc_AD1F9A: LitStr "Municipalidad de Tunuyán"
  loc_AD1F9D: EqStr
  loc_AD1F9F: BranchF loc_AD2014
  loc_AD1FA2: FLdRfVar var_8C
  loc_AD1FA5: FLdPr Me
  loc_AD1FA8: VCallAd Control_ID_Campo3Txt
  loc_AD1FAB: FStAdFunc var_88
  loc_AD1FAE: FLdPr var_88
  loc_AD1FB1:  = Me.Text
  loc_AD1FB6: ILdRf var_8C
  loc_AD1FB9: FnLenStr
  loc_AD1FBA: LitI4 2
  loc_AD1FBF: GtI4
  loc_AD1FC0: FFree1Str var_8C
  loc_AD1FC3: FFree1Ad var_88
  loc_AD1FC6: BranchF loc_AD2011
  loc_AD1FC9: LitStr "SELECT infogov.persona.CucuPers, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.UbrePers FROM infogov.persona"
  loc_AD1FCC: LitStr " WHERE infogov.persona.DetaPers like '" & Chr(37)
  loc_AD1FCF: ConcatStr
  loc_AD1FD0: FStStrNoPop var_90
  loc_AD1FD3: FLdRfVar var_8C
  loc_AD1FD6: FLdPr Me
  loc_AD1FD9: VCallAd Control_ID_Campo3Txt
  loc_AD1FDC: FStAdFunc var_88
  loc_AD1FDF: FLdPr var_88
  loc_AD1FE2:  = Me.Text
  loc_AD1FE7: ILdRf var_8C
  loc_AD1FEA: ConcatStr
  loc_AD1FEB: FStStrNoPop var_94
  loc_AD1FEE: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_AD1FF1: ConcatStr
  loc_AD1FF2: FStStrNoPop var_98
  loc_AD1FF5: FLdPr Me
  loc_AD1FF8: MemLdRfVar from_stack_1.global_60
  loc_AD1FFB: NewIfNullPr clspersonas
  loc_AD1FFE: Call clspersonas.RedefineRS(from_stack_1v)
  loc_AD2003: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_AD200E: FFree1Ad var_88
  loc_AD2011: Branch loc_AD206E
  loc_AD2014: LitStr "DetaPers like '" & Chr(37)
  loc_AD2017: FLdRfVar var_8C
  loc_AD201A: FLdPr Me
  loc_AD201D: VCallAd Control_ID_Campo3Txt
  loc_AD2020: FStAdFunc var_88
  loc_AD2023: FLdPr var_88
  loc_AD2026:  = Me.Text
  loc_AD202B: ILdRf var_8C
  loc_AD202E: ConcatStr
  loc_AD202F: FStStrNoPop var_90
  loc_AD2032: LitStr Chr(37) & "'"
  loc_AD2035: ConcatStr
  loc_AD2036: PopTmpLdAdStr
  loc_AD203A: FLdPr Me
  loc_AD203D: MemLdRfVar from_stack_1.global_60
  loc_AD2040: NewIfNullPr clspersonas
  loc_AD2043: Call clspersonas.Filter(from_stack_1v)
  loc_AD2048: FFreeStr var_8C = "": var_90 = ""
  loc_AD2051: FFree1Ad var_88
  loc_AD2054: LitStr "DetaPers"
  loc_AD2057: FStStrCopy var_8C
  loc_AD205A: FLdRfVar var_8C
  loc_AD205D: FLdPr Me
  loc_AD2060: MemLdRfVar from_stack_1.global_60
  loc_AD2063: NewIfNullPr clspersonas
  loc_AD2066: Call clspersonas.Sort(from_stack_1v)
  loc_AD206B: FFree1Str var_8C
  loc_AD206E: ExitProcHresult
End Sub

Private Sub Campo4Txt_Change() 'AD1F00
  'Data Table: 436870
  loc_AD1DD4: LitStr vbNullString
  loc_AD1DD7: FLdPr Me
  loc_AD1DDA: VCallAd Control_ID_Campo1Txt
  loc_AD1DDD: FStAdFunc var_88
  loc_AD1DE0: FLdPr var_88
  loc_AD1DE3: Me.Text = from_stack_1
  loc_AD1DE8: FFree1Ad var_88
  loc_AD1DEB: LitStr vbNullString
  loc_AD1DEE: FLdPr Me
  loc_AD1DF1: VCallAd Control_ID_Campo3Txt
  loc_AD1DF4: FStAdFunc var_88
  loc_AD1DF7: FLdPr var_88
  loc_AD1DFA: Me.Text = from_stack_1
  loc_AD1DFF: FFree1Ad var_88
  loc_AD1E02: FLdRfVar var_8C
  loc_AD1E05: FLdPr Me
  loc_AD1E08: VCallAd Control_ID_Campo4Txt
  loc_AD1E0B: FStAdFunc var_88
  loc_AD1E0E: FLdPr var_88
  loc_AD1E11:  = Me.Text
  loc_AD1E16: ILdRf var_8C
  loc_AD1E19: LitStr vbNullString
  loc_AD1E1C: NeStr
  loc_AD1E1E: FFree1Str var_8C
  loc_AD1E21: FFree1Ad var_88
  loc_AD1E24: BranchF loc_AD1EFE
  loc_AD1E27: LitStr "Municipalidad de Guaymallén"
  loc_AD1E2A: LitStr "Municipalidad de Tunuyán"
  loc_AD1E2D: EqStr
  loc_AD1E2F: BranchF loc_AD1EA4
  loc_AD1E32: FLdRfVar var_8C
  loc_AD1E35: FLdPr Me
  loc_AD1E38: VCallAd Control_ID_Campo4Txt
  loc_AD1E3B: FStAdFunc var_88
  loc_AD1E3E: FLdPr var_88
  loc_AD1E41:  = Me.Text
  loc_AD1E46: ILdRf var_8C
  loc_AD1E49: FnLenStr
  loc_AD1E4A: LitI4 2
  loc_AD1E4F: GtI4
  loc_AD1E50: FFree1Str var_8C
  loc_AD1E53: FFree1Ad var_88
  loc_AD1E56: BranchF loc_AD1EA1
  loc_AD1E59: LitStr "SELECT infogov.persona.CucuPers, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.UbrePers"
  loc_AD1E5C: LitStr " FROM infogov.persona WHERE infogov.persona.DecrPers like '" & Chr(37)
  loc_AD1E5F: ConcatStr
  loc_AD1E60: FStStrNoPop var_90
  loc_AD1E63: FLdRfVar var_8C
  loc_AD1E66: FLdPr Me
  loc_AD1E69: VCallAd Control_ID_Campo4Txt
  loc_AD1E6C: FStAdFunc var_88
  loc_AD1E6F: FLdPr var_88
  loc_AD1E72:  = Me.Text
  loc_AD1E77: ILdRf var_8C
  loc_AD1E7A: ConcatStr
  loc_AD1E7B: FStStrNoPop var_94
  loc_AD1E7E: LitStr Chr(37) & "' ORDER BY infogov.persona.DecrPers"
  loc_AD1E81: ConcatStr
  loc_AD1E82: FStStrNoPop var_98
  loc_AD1E85: FLdPr Me
  loc_AD1E88: MemLdRfVar from_stack_1.global_60
  loc_AD1E8B: NewIfNullPr clspersonas
  loc_AD1E8E: Call clspersonas.RedefineRS(from_stack_1v)
  loc_AD1E93: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_AD1E9E: FFree1Ad var_88
  loc_AD1EA1: Branch loc_AD1EFE
  loc_AD1EA4: LitStr "DecrPers like '" & Chr(37)
  loc_AD1EA7: FLdRfVar var_8C
  loc_AD1EAA: FLdPr Me
  loc_AD1EAD: VCallAd Control_ID_Campo4Txt
  loc_AD1EB0: FStAdFunc var_88
  loc_AD1EB3: FLdPr var_88
  loc_AD1EB6:  = Me.Text
  loc_AD1EBB: ILdRf var_8C
  loc_AD1EBE: ConcatStr
  loc_AD1EBF: FStStrNoPop var_90
  loc_AD1EC2: LitStr Chr(37) & "'"
  loc_AD1EC5: ConcatStr
  loc_AD1EC6: PopTmpLdAdStr
  loc_AD1ECA: FLdPr Me
  loc_AD1ECD: MemLdRfVar from_stack_1.global_60
  loc_AD1ED0: NewIfNullPr clspersonas
  loc_AD1ED3: Call clspersonas.Filter(from_stack_1v)
  loc_AD1ED8: FFreeStr var_8C = "": var_90 = ""
  loc_AD1EE1: FFree1Ad var_88
  loc_AD1EE4: LitStr "DecrPers, NurePers"
  loc_AD1EE7: FStStrCopy var_8C
  loc_AD1EEA: FLdRfVar var_8C
  loc_AD1EED: FLdPr Me
  loc_AD1EF0: MemLdRfVar from_stack_1.global_60
  loc_AD1EF3: NewIfNullPr clspersonas
  loc_AD1EF6: Call clspersonas.Sort(from_stack_1v)
  loc_AD1EFB: FFree1Str var_8C
  loc_AD1EFE: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9B065C
  'Data Table: 436870
  loc_9B0654: Call asignarPersona()
  loc_9B0659: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B97C0
  'Data Table: 436870
  loc_9B97AC: ILdI2 KeyCode
  loc_9B97AF: CI4UI1
  loc_9B97B0: LitI4 &HD
  loc_9B97B5: EqI4
  loc_9B97B6: BranchF loc_9B97BE
  loc_9B97B9: Call asignarPersona()
  loc_9B97BE: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B0694
  'Data Table: 436870
  loc_9B068C: Call asignarPersona()
  loc_9B0691: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9D8664
  'Data Table: 436870
  loc_9D864C: ILdRf Me
  loc_9D864F: FStAdNoPop
  loc_9D8653: ImpAdLdRf MemVar_D9C5D8
  loc_9D8656: NewIfNullPr Global
  loc_9D8659: Global.Unload from_stack_1
  loc_9D865E: FFree1Ad var_88
  loc_9D8661: ExitProcHresult
End Sub

Private Sub Form_Load() 'A94240
  'Data Table: 436870
  loc_A9419C: LitStr "Municipalidad de Guaymallén"
  loc_A9419F: LitStr "Municipalidad de Tunuyán"
  loc_A941A2: EqStr
  loc_A941A4: BranchF loc_A941C5
  loc_A941A7: LitStr "SELECT infogov.persona.CucuPers, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.UbrePers "
  loc_A941AA: LitStr " FROM infogov.persona WHERE CucuPers = 0 ORDER BY infogov.persona.DetaPers"
  loc_A941AD: ConcatStr
  loc_A941AE: FStStrNoPop var_88
  loc_A941B1: FLdPr Me
  loc_A941B4: MemLdRfVar from_stack_1.global_60
  loc_A941B7: NewIfNullPr clspersonas
  loc_A941BA: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A941BF: FFree1Str var_88
  loc_A941C2: Branch loc_A941E0
  loc_A941C5: LitStr "SELECT infogov.persona.CucuPers, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.UbrePers "
  loc_A941C8: LitStr " FROM infogov.persona ORDER BY infogov.persona.DetaPers"
  loc_A941CB: ConcatStr
  loc_A941CC: FStStrNoPop var_88
  loc_A941CF: FLdPr Me
  loc_A941D2: MemLdRfVar from_stack_1.global_60
  loc_A941D5: NewIfNullPr clspersonas
  loc_A941D8: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A941DD: FFree1Str var_88
  loc_A941E0: LitI4 0
  loc_A941E5: LitI4 1
  loc_A941EA: FLdRfVar var_8C
  loc_A941ED: Redim
  loc_A941F7: FLdPr Me
  loc_A941FA: MemLdRfVar from_stack_1.global_60
  loc_A941FD: NewIfNullAd
  loc_A94200: FStAd var_90 
  loc_A94204: FLdRfVar var_90
  loc_A94207: CVarRef
  loc_A9420C: ParmAry1St
  loc_A94212: FLdPr Me
  loc_A94215: VCallAd Control_ID_dgdABMS
  loc_A94218: CVarAd
  loc_A9421C: ParmAry1St
  loc_A94222: FLdRfVar var_8C
  loc_A94225: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A9422A: ILdRf var_90
  loc_A9422D: CastAd
  loc_A94230: FLdPr Me
  loc_A94233: MemStAdFunc
  loc_A94237: FLdRfVar var_8C
  loc_A9423A: Erase
  loc_A9423B: FFree1Ad var_90
  loc_A9423E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B3FB4
  'Data Table: 436870
  loc_9B3FA8: LitVarStr var_A4, vbNullString
  loc_9B3FAD: FStVarCopy
  loc_9B3FB1: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D84E8
  'Data Table: 436870
  loc_9D84D0: FLdPr Me
  loc_9D84D3: VCallAd Control_ID_Campo3Txt
  loc_9D84D6: FStAdFunc var_88
  loc_9D84D9: FLdPr var_88
  loc_9D84DC: Me.SetFocus
  loc_9D84E1: FFree1Ad var_88
  loc_9D84E4: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11660
  'Data Table: 436870
  loc_A11624: ILdI2 KeyAscii
  loc_A11627: LitI2_Byte &HD
  loc_A11629: EqI2
  loc_A1162A: BranchF loc_A1163B
  loc_A1162D: LitVar_TRUE var_A4
  loc_A11630: LitStr "{Tab}"
  loc_A11633: ImpAdCallFPR4 SendKeys , 
  loc_A11638: FFree1Var var_A4 = ""
  loc_A1163B: ILdI2 KeyAscii
  loc_A1163E: LitI2_Byte &H1B
  loc_A11640: EqI2
  loc_A11641: BranchF loc_A1165E
  loc_A11644: ILdRf Me
  loc_A11647: FStAdNoPop
  loc_A1164B: ImpAdLdRf MemVar_D9C5D8
  loc_A1164E: NewIfNullPr Global
  loc_A11651: Global.Unload from_stack_1
  loc_A11656: FFree1Ad var_A8
  loc_A11659: LitI2_Byte 0
  loc_A1165B: IStI2 KeyAscii
  loc_A1165E: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'AFD99C
  'Data Table: 436870
  loc_AFD7D0: LitStr vbNullString
  loc_AFD7D3: FLdPr Me
  loc_AFD7D6: VCallAd Control_ID_Campo3Txt
  loc_AFD7D9: FStAdFunc var_88
  loc_AFD7DC: FLdPr var_88
  loc_AFD7DF: Me.Text = from_stack_1
  loc_AFD7E4: FFree1Ad var_88
  loc_AFD7E7: LitStr vbNullString
  loc_AFD7EA: FLdPr Me
  loc_AFD7ED: VCallAd Control_ID_Campo4Txt
  loc_AFD7F0: FStAdFunc var_88
  loc_AFD7F3: FLdPr var_88
  loc_AFD7F6: Me.Text = from_stack_1
  loc_AFD7FB: FFree1Ad var_88
  loc_AFD7FE: FLdRfVar var_8C
  loc_AFD801: FLdPr Me
  loc_AFD804: VCallAd Control_ID_Campo1Txt
  loc_AFD807: FStAdFunc var_88
  loc_AFD80A: FLdPr var_88
  loc_AFD80D:  = Me.Text
  loc_AFD812: ILdRf var_8C
  loc_AFD815: LitStr vbNullString
  loc_AFD818: NeStr
  loc_AFD81A: FFree1Str var_8C
  loc_AFD81D: FFree1Ad var_88
  loc_AFD820: BranchF loc_AFD998
  loc_AFD823: LitStr "Municipalidad de Guaymallén"
  loc_AFD826: LitStr "Municipalidad de Tunuyán"
  loc_AFD829: EqStr
  loc_AFD82B: BranchF loc_AFD8EF
  loc_AFD82E: FLdRfVar var_8C
  loc_AFD831: FLdPr Me
  loc_AFD834: VCallAd Control_ID_Campo1Txt
  loc_AFD837: FStAdFunc var_88
  loc_AFD83A: FLdPr var_88
  loc_AFD83D:  = Me.Text
  loc_AFD842: ILdRf var_8C
  loc_AFD845: FnLenStr
  loc_AFD846: LitI4 2
  loc_AFD84B: GtI4
  loc_AFD84C: FFree1Str var_8C
  loc_AFD84F: FFree1Ad var_88
  loc_AFD852: BranchF loc_AFD8EC
  loc_AFD855: FLdRfVar var_98
  loc_AFD858: FLdPr Me
  loc_AFD85B: VCallAd Control_ID_Campo1Txt
  loc_AFD85E: FStAdFunc var_94
  loc_AFD861: FLdPr var_94
  loc_AFD864:  = Me.Text
  loc_AFD869: LitStr "SELECT infogov.persona.CucuPers, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.UbrePers "
  loc_AFD86C: LitStr " FROM infogov.persona WHERE CucuPers >= '"
  loc_AFD86F: ConcatStr
  loc_AFD870: FStStrNoPop var_90
  loc_AFD873: FLdRfVar var_8C
  loc_AFD876: FLdPr Me
  loc_AFD879: VCallAd Control_ID_Campo1Txt
  loc_AFD87C: FStAdFunc var_88
  loc_AFD87F: FLdPr var_88
  loc_AFD882:  = Me.Text
  loc_AFD887: ILdRf var_8C
  loc_AFD88A: ConcatStr
  loc_AFD88B: CVarStr var_D8
  loc_AFD88E: LitVarStr var_A8, "0"
  loc_AFD893: FStVarCopyObj var_B8
  loc_AFD896: FLdRfVar var_B8
  loc_AFD899: LitI4 &HB
  loc_AFD89E: ILdRf var_98
  loc_AFD8A1: FnLenStr
  loc_AFD8A2: SubI4
  loc_AFD8A3: FLdRfVar var_C8
  loc_AFD8A6: ImpAdCallFPR4  = String(, )
  loc_AFD8AB: FLdRfVar var_C8
  loc_AFD8AE: ConcatVar var_E8
  loc_AFD8B2: LitVarStr var_F8, "'"
  loc_AFD8B7: ConcatVar var_108
  loc_AFD8BB: CStrVarVal var_10C
  loc_AFD8BF: FLdPr Me
  loc_AFD8C2: MemLdRfVar from_stack_1.global_60
  loc_AFD8C5: NewIfNullPr clspersonas
  loc_AFD8C8: Call clspersonas.RedefineRS(from_stack_1v)
  loc_AFD8CD: FFreeStr var_90 = "": var_8C = "": var_98 = ""
  loc_AFD8D8: FFreeAd var_88 = ""
  loc_AFD8DF: FFreeVar var_B8 = "": var_D8 = "": var_C8 = "": var_E8 = ""
  loc_AFD8EC: Branch loc_AFD998
  loc_AFD8EF: FLdRfVar var_90
  loc_AFD8F2: FLdPr Me
  loc_AFD8F5: VCallAd Control_ID_Campo1Txt
  loc_AFD8F8: FStAdFunc var_94
  loc_AFD8FB: FLdPr var_94
  loc_AFD8FE:  = Me.Text
  loc_AFD903: LitStr "CucuPers >= '"
  loc_AFD906: FLdRfVar var_8C
  loc_AFD909: FLdPr Me
  loc_AFD90C: VCallAd Control_ID_Campo1Txt
  loc_AFD90F: FStAdFunc var_88
  loc_AFD912: FLdPr var_88
  loc_AFD915:  = Me.Text
  loc_AFD91A: ILdRf var_8C
  loc_AFD91D: ConcatStr
  loc_AFD91E: CVarStr var_D8
  loc_AFD921: LitVarStr var_A8, "0"
  loc_AFD926: FStVarCopyObj var_B8
  loc_AFD929: FLdRfVar var_B8
  loc_AFD92C: LitI4 &HB
  loc_AFD931: ILdRf var_90
  loc_AFD934: FnLenStr
  loc_AFD935: SubI4
  loc_AFD936: FLdRfVar var_C8
  loc_AFD939: ImpAdCallFPR4  = String(, )
  loc_AFD93E: FLdRfVar var_C8
  loc_AFD941: ConcatVar var_E8
  loc_AFD945: LitVarStr var_F8, "'"
  loc_AFD94A: ConcatVar var_108
  loc_AFD94E: CStrVarTmp
  loc_AFD94F: PopTmpLdAdStr
  loc_AFD953: FLdPr Me
  loc_AFD956: MemLdRfVar from_stack_1.global_60
  loc_AFD959: NewIfNullPr clspersonas
  loc_AFD95C: Call clspersonas.Filter(from_stack_1v)
  loc_AFD961: FFreeStr var_8C = "": var_90 = ""
  loc_AFD96A: FFreeAd var_88 = ""
  loc_AFD971: FFreeVar var_B8 = "": var_D8 = "": var_C8 = "": var_E8 = ""
  loc_AFD97E: LitStr "CucuPers"
  loc_AFD981: FStStrCopy var_8C
  loc_AFD984: FLdRfVar var_8C
  loc_AFD987: FLdPr Me
  loc_AFD98A: MemLdRfVar from_stack_1.global_60
  loc_AFD98D: NewIfNullPr clspersonas
  loc_AFD990: Call clspersonas.Sort(from_stack_1v)
  loc_AFD995: FFree1Str var_8C
  loc_AFD998: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D8F00
  'Data Table: 436870
  loc_9D8EE8: LitStr "0123456789"
  loc_9D8EEB: FStStrCopy var_88
  loc_9D8EEE: FLdRfVar var_88
  loc_9D8EF1: ILdRf KeyAscii
  loc_9D8EF4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8EF9: IStI2 KeyAscii
  loc_9D8EFC: FFree1Str var_88
  loc_9D8EFF: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '436F94
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '436FA3
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '436FB2
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '436FC1
  sPasaCodigo = Value
End Sub

Public Sub asignarPersona() 'A7D9C0
  'Data Table: 436870
  loc_A7D938: FLdRfVar var_88
  loc_A7D93B: FLdPr Me
  loc_A7D93E: MemLdRfVar from_stack_1.global_60
  loc_A7D941: NewIfNullPr clspersonas
  loc_A7D944: from_stack_1 = clspersonas.RecordCount
  loc_A7D949: ILdRf var_88
  loc_A7D94C: LitI4 0
  loc_A7D951: GtI4
  loc_A7D952: BranchF loc_A7D994
  loc_A7D955: FLdRfVar var_8C
  loc_A7D958: FLdPr Me
  loc_A7D95B: MemLdRfVar from_stack_1.global_60
  loc_A7D95E: NewIfNullPr clspersonas
  loc_A7D961: from_stack_1 = clspersonas.CucuPers
  loc_A7D966: ILdRf var_8C
  loc_A7D969: FLdPr Me
  loc_A7D96C: MemStStrCopy
  loc_A7D970: FFree1Str var_8C
  loc_A7D973: FLdRfVar var_8C
  loc_A7D976: FLdPr Me
  loc_A7D979: MemLdRfVar from_stack_1.global_60
  loc_A7D97C: NewIfNullPr clspersonas
  loc_A7D97F: from_stack_1 = clspersonas.DetaPers
  loc_A7D984: ILdRf var_8C
  loc_A7D987: FLdPr Me
  loc_A7D98A: MemStStrCopy
  loc_A7D98E: FFree1Str var_8C
  loc_A7D991: Branch loc_A7D9A8
  loc_A7D994: LitStr vbNullString
  loc_A7D997: FLdPr Me
  loc_A7D99A: MemStStrCopy
  loc_A7D99E: LitStr vbNullString
  loc_A7D9A1: FLdPr Me
  loc_A7D9A4: MemStStrCopy
  loc_A7D9A8: ILdRf Me
  loc_A7D9AB: FStAdNoPop
  loc_A7D9AF: ImpAdLdRf MemVar_D9C5D8
  loc_A7D9B2: NewIfNullPr Global
  loc_A7D9B5: Global.Unload from_stack_1
  loc_A7D9BA: FFree1Ad var_90
  loc_A7D9BD: ExitProcHresult
End Sub
