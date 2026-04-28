VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarPersonaUnificacion
  Caption = "Buscar Persona Por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarPersonaUnificacion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 15588
  ClientHeight = 6240
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton SalirCmd
    Caption = "Salir"
    Left = 2040
    Top = 5640
    Width = 1335
    Height = 495
    TabIndex = 10
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
  Begin VB.TextBox Campo4Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1560
    Width = 7095
    Height = 360
    TabIndex = 3
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
    Top = 1080
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
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 600
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
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 120
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
  Begin VB.CommandButton OKButton
    Caption = "Agregar"
    Left = 360
    Top = 5640
    Width = 1335
    Height = 495
    TabIndex = 5
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
    Top = 2040
    Width = 15135
    Height = 3495
    Tag = "1"
    TabIndex = 4
    OleObjectBlob = "dlgBuscarPersonaUnificacion.frx":08CA
  End
  Begin VB.Label Label4
    Caption = "Domicilio Real o Fiscal:"
    Left = 120
    Top = 1560
    Width = 2430
    Height = 300
    TabIndex = 9
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
    Left = 675
    Top = 120
    Width = 1845
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
  Begin VB.Label Label3
    Caption = "Apellido y Nombre:"
    Left = 555
    Top = 1080
    Width = 1965
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
  Begin VB.Label Label2
    Caption = "Cuenta:"
    Left = 1680
    Top = 600
    Width = 840
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

Attribute VB_Name = "dlgBuscarPersonaUnificacion"

Public RelacionCLS As New Class
Public RelacionTmpCLS As New Class


Private Sub OKButton_Click() 'B3FBD0
  'Data Table: 449E54
  loc_B3F90C: FLdRfVar var_86
  loc_B3F90F: Call Proc_47_20_B1E268()
  loc_B3F914: FLdI2 var_86
  loc_B3F917: LitI2_Byte &HFF
  loc_B3F919: EqI2
  loc_B3F91A: BranchF loc_B3FBCF
  loc_B3F91D: LitStr "Municipalidad de Guaymallén"
  loc_B3F920: LitStr "Municipalidad de Tunuyán"
  loc_B3F923: EqStr
  loc_B3F925: BranchF loc_B3F9B4
  loc_B3F928: LitStr "SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_B3F92B: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.BajaFeho END as FechBaja "
  loc_B3F92E: ConcatStr
  loc_B3F92F: FStStrNoPop var_8C
  loc_B3F932: LitStr " FROM infogov.persona "
  loc_B3F935: ConcatStr
  loc_B3F936: FStStrNoPop var_90
  loc_B3F939: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers "
  loc_B3F93C: ConcatStr
  loc_B3F93D: FStStrNoPop var_94
  loc_B3F940: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_B3F943: ConcatStr
  loc_B3F944: FStStrNoPop var_98
  loc_B3F947: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_B3F94A: ConcatStr
  loc_B3F94B: FStStrNoPop var_9C
  loc_B3F94E: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_B3F951: ConcatStr
  loc_B3F952: FStStrNoPop var_A0
  loc_B3F955: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_B3F958: ConcatStr
  loc_B3F959: FStStrNoPop var_A4
  loc_B3F95C: LitStr " WHERE persona.CucuPers = '"
  loc_B3F95F: ConcatStr
  loc_B3F960: FStStrNoPop var_B0
  loc_B3F963: FLdRfVar var_AC
  loc_B3F966: FLdRfVar var_A8
  loc_B3F969: FLdPr Me
  loc_B3F96C: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F971: FLdPr var_A8
  loc_B3F974: from_stack_1 = clsrelacion.CucuPers
  loc_B3F979: ILdRf var_AC
  loc_B3F97C: ConcatStr
  loc_B3F97D: FStStrNoPop var_B4
  loc_B3F980: LitStr "'"
  loc_B3F983: ConcatStr
  loc_B3F984: FStStrNoPop var_B8
  loc_B3F987: FLdPr Me
  loc_B3F98A: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3F98D: NewIfNullPr clsrelacion
  loc_B3F990: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_B3F995: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B3F9AE: FFree1Ad var_A8
  loc_B3F9B1: Branch loc_B3FA3D
  loc_B3F9B4: LitStr "SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_B3F9B7: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.FebaDifu END as FechBaja "
  loc_B3F9BA: ConcatStr
  loc_B3F9BB: FStStrNoPop var_8C
  loc_B3F9BE: LitStr " FROM infogov.persona "
  loc_B3F9C1: ConcatStr
  loc_B3F9C2: FStStrNoPop var_90
  loc_B3F9C5: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers "
  loc_B3F9C8: ConcatStr
  loc_B3F9C9: FStStrNoPop var_94
  loc_B3F9CC: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_B3F9CF: ConcatStr
  loc_B3F9D0: FStStrNoPop var_98
  loc_B3F9D3: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_B3F9D6: ConcatStr
  loc_B3F9D7: FStStrNoPop var_9C
  loc_B3F9DA: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_B3F9DD: ConcatStr
  loc_B3F9DE: FStStrNoPop var_A0
  loc_B3F9E1: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_B3F9E4: ConcatStr
  loc_B3F9E5: FStStrNoPop var_A4
  loc_B3F9E8: LitStr " WHERE persona.CucuPers = '"
  loc_B3F9EB: ConcatStr
  loc_B3F9EC: FStStrNoPop var_B0
  loc_B3F9EF: FLdRfVar var_AC
  loc_B3F9F2: FLdRfVar var_A8
  loc_B3F9F5: FLdPr Me
  loc_B3F9F8: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F9FD: FLdPr var_A8
  loc_B3FA00: from_stack_1 = clsrelacion.CucuPers
  loc_B3FA05: ILdRf var_AC
  loc_B3FA08: ConcatStr
  loc_B3FA09: FStStrNoPop var_B4
  loc_B3FA0C: LitStr "'"
  loc_B3FA0F: ConcatStr
  loc_B3FA10: FStStrNoPop var_B8
  loc_B3FA13: FLdPr Me
  loc_B3FA16: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3FA19: NewIfNullPr clsrelacion
  loc_B3FA1C: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_B3FA21: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B3FA3A: FFree1Ad var_A8
  loc_B3FA3D: FLdRfVar var_BC
  loc_B3FA40: FLdPr Me
  loc_B3FA43: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3FA46: NewIfNullPr clsrelacion
  loc_B3FA49: from_stack_1 = clsrelacion.RecordCount
  loc_B3FA4E: ILdRf var_BC
  loc_B3FA51: LitI4 0
  loc_B3FA56: GtI4
  loc_B3FA57: BranchF loc_B3FBCF
  loc_B3FA5A: FLdPr Me
  loc_B3FA5D: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3FA60: NewIfNullPr clsrelacion
  loc_B3FA63: Call clsrelacion.MoveFirst(from_stack_1v)
  loc_B3FA68: FLdRfVar var_86
  loc_B3FA6B: FLdPr Me
  loc_B3FA6E: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3FA71: NewIfNullPr clsrelacion
  loc_B3FA74: from_stack_1 = clsrelacion.EOF
  loc_B3FA79: FLdI2 var_86
  loc_B3FA7C: NotI4
  loc_B3FA7D: BranchF loc_B3FBCF
  loc_B3FA80: FLdRfVar var_8C
  loc_B3FA83: FLdRfVar var_A8
  loc_B3FA86: FLdPr Me
  loc_B3FA89: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3FA8E: FLdPr var_A8
  loc_B3FA91: from_stack_1 = clsrelacion.CucuPers
  loc_B3FA96: FLdZeroAd var_8C
  loc_B3FA99: CVarStr var_DC
  loc_B3FA9C: LitI4 9
  loc_B3FAA1: FLdRfVar var_CC
  loc_B3FAA4: ImpAdCallFPR4  = Chr()
  loc_B3FAA9: FLdRfVar var_CC
  loc_B3FAAC: ConcatVar var_EC
  loc_B3FAB0: FLdRfVar var_86
  loc_B3FAB3: FLdRfVar var_F0
  loc_B3FAB6: FLdPr Me
  loc_B3FAB9: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3FABE: FLdPr var_F0
  loc_B3FAC1: from_stack_1 = clsrelacion.CodiOfic
  loc_B3FAC6: FLdUI1
  loc_B3FACA: CVarUI1
  loc_B3FACE: ConcatVar var_110
  loc_B3FAD2: LitI4 9
  loc_B3FAD7: FLdRfVar var_120
  loc_B3FADA: ImpAdCallFPR4  = Chr()
  loc_B3FADF: FLdRfVar var_120
  loc_B3FAE2: ConcatVar var_130
  loc_B3FAE6: FLdRfVar var_90
  loc_B3FAE9: FLdRfVar var_134
  loc_B3FAEC: FLdPr Me
  loc_B3FAEF: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3FAF4: FLdPr var_134
  loc_B3FAF7: from_stack_1 = clsrelacion.CuenCtct
  loc_B3FAFC: FLdZeroAd var_90
  loc_B3FAFF: CVarStr var_144
  loc_B3FB02: ConcatVar var_154
  loc_B3FB06: LitI4 9
  loc_B3FB0B: FLdRfVar var_164
  loc_B3FB0E: ImpAdCallFPR4  = Chr()
  loc_B3FB13: FLdRfVar var_164
  loc_B3FB16: ConcatVar var_174
  loc_B3FB1A: FLdRfVar var_94
  loc_B3FB1D: FLdRfVar var_178
  loc_B3FB20: FLdPr Me
  loc_B3FB23: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3FB28: FLdPr var_178
  loc_B3FB2B: from_stack_1 = clsrelacion.DetaPers
  loc_B3FB30: FLdZeroAd var_94
  loc_B3FB33: CVarStr var_188
  loc_B3FB36: ConcatVar var_198
  loc_B3FB3A: LitI4 9
  loc_B3FB3F: FLdRfVar var_1A8
  loc_B3FB42: ImpAdCallFPR4  = Chr()
  loc_B3FB47: FLdRfVar var_1A8
  loc_B3FB4A: ConcatVar var_1B8
  loc_B3FB4E: FLdRfVar var_98
  loc_B3FB51: FLdRfVar var_1BC
  loc_B3FB54: FLdPr Me
  loc_B3FB57: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3FB5C: FLdPr var_1BC
  loc_B3FB5F: from_stack_1 = clsrelacion.TipoRela
  loc_B3FB64: FLdZeroAd var_98
  loc_B3FB67: CVarStr var_1CC
  loc_B3FB6A: ConcatVar var_1DC
  loc_B3FB6E: CStrVarTmp
  loc_B3FB6F: CVarStr var_1EC
  loc_B3FB72: PopAdLdVar
  loc_B3FB73: ImpAdLdRf MemVar_D93B94
  loc_B3FB76: NewIfNullPr frmUnificaciondePersonas
  loc_B3FB79: VCallAd Control_ID_PersonaFlex
  loc_B3FB7C: FStAdFunc var_200
  loc_B3FB7F: FLdPr var_200
  loc_B3FB82: LateIdCall
  loc_B3FB8A: FFreeAd var_A8 = "": var_F0 = "": var_134 = "": var_178 = "": var_1BC = ""
  loc_B3FB99: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_110 = "": var_120 = "": var_130 = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1CC = "": var_1DC = ""
  loc_B3FBBE: FLdPr Me
  loc_B3FBC1: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3FBC4: NewIfNullPr clsrelacion
  loc_B3FBC7: Call clsrelacion.MoveSiguiente()
  loc_B3FBCC: Branch loc_B3FA68
  loc_B3FBCF: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D9114
  'Data Table: 449E54
  loc_9D90FC: ILdRf Me
  loc_9D90FF: FStAdNoPop
  loc_9D9103: ImpAdLdRf MemVar_D9C5D8
  loc_9D9106: NewIfNullPr Global
  loc_9D9109: Global.Unload from_stack_1
  loc_9D910E: FFree1Ad var_88
  loc_9D9111: ExitProcHresult
  loc_9D9112: CVarStr var_2400
End Sub

Private Sub Campo4Txt_Change() 'AA9D7C
  'Data Table: 449E54
  loc_AA9CB4: LitStr vbNullString
  loc_AA9CB7: FLdPr Me
  loc_AA9CBA: VCallAd Control_ID_Campo1Txt
  loc_AA9CBD: FStAdFunc var_88
  loc_AA9CC0: FLdPr var_88
  loc_AA9CC3: Me.Text = from_stack_1
  loc_AA9CC8: FFree1Ad var_88
  loc_AA9CCB: LitStr vbNullString
  loc_AA9CCE: FLdPr Me
  loc_AA9CD1: VCallAd Control_ID_Campo2Txt
  loc_AA9CD4: FStAdFunc var_88
  loc_AA9CD7: FLdPr var_88
  loc_AA9CDA: Me.Text = from_stack_1
  loc_AA9CDF: FFree1Ad var_88
  loc_AA9CE2: LitStr vbNullString
  loc_AA9CE5: FLdPr Me
  loc_AA9CE8: VCallAd Control_ID_Campo3Txt
  loc_AA9CEB: FStAdFunc var_88
  loc_AA9CEE: FLdPr var_88
  loc_AA9CF1: Me.Text = from_stack_1
  loc_AA9CF6: FFree1Ad var_88
  loc_AA9CF9: FLdRfVar var_8C
  loc_AA9CFC: FLdPr Me
  loc_AA9CFF: VCallAd Control_ID_Campo4Txt
  loc_AA9D02: FStAdFunc var_88
  loc_AA9D05: FLdPr var_88
  loc_AA9D08:  = Me.Text
  loc_AA9D0D: ILdRf var_8C
  loc_AA9D10: LitStr vbNullString
  loc_AA9D13: NeStr
  loc_AA9D15: FFree1Str var_8C
  loc_AA9D18: FFree1Ad var_88
  loc_AA9D1B: BranchF loc_AA9D78
  loc_AA9D1E: LitStr "DecrPers like '" & Chr(37)
  loc_AA9D21: FLdRfVar var_8C
  loc_AA9D24: FLdPr Me
  loc_AA9D27: VCallAd Control_ID_Campo4Txt
  loc_AA9D2A: FStAdFunc var_88
  loc_AA9D2D: FLdPr var_88
  loc_AA9D30:  = Me.Text
  loc_AA9D35: ILdRf var_8C
  loc_AA9D38: ConcatStr
  loc_AA9D39: FStStrNoPop var_90
  loc_AA9D3C: LitStr Chr(37) & "'"
  loc_AA9D3F: ConcatStr
  loc_AA9D40: PopTmpLdAdStr
  loc_AA9D44: FLdPr Me
  loc_AA9D47: MemLdRfVar from_stack_1.RelacionCLS
  loc_AA9D4A: NewIfNullPr clsrelacion
  loc_AA9D4D: Call clsrelacion.Filter(from_stack_1v)
  loc_AA9D52: FFreeStr var_8C = "": var_90 = ""
  loc_AA9D5B: FFree1Ad var_88
  loc_AA9D5E: LitStr "DecrPers, NurePers"
  loc_AA9D61: FStStrCopy var_8C
  loc_AA9D64: FLdRfVar var_8C
  loc_AA9D67: FLdPr Me
  loc_AA9D6A: MemLdRfVar from_stack_1.RelacionCLS
  loc_AA9D6D: NewIfNullPr clsrelacion
  loc_AA9D70: Call clsrelacion.Sort(from_stack_1v)
  loc_AA9D75: FFree1Str var_8C
  loc_AA9D78: ExitProcHresult
End Sub

Private Sub Campo4Txt_KeyPress(KeyAscii As Integer) '9FE1F8
  'Data Table: 449E54
  loc_9FE1C8: FLdRfVar var_88
  loc_9FE1CB: FLdPr Me
  loc_9FE1CE: MemLdRfVar from_stack_1.RelacionCLS
  loc_9FE1D1: NewIfNullPr clsrelacion
  loc_9FE1D4: from_stack_1 = clsrelacion.RecordCount
  loc_9FE1D9: ILdRf var_88
  loc_9FE1DC: LitI4 0
  loc_9FE1E1: EqI4
  loc_9FE1E2: ILdI2 KeyAscii
  loc_9FE1E5: CI4UI1
  loc_9FE1E6: LitI4 8
  loc_9FE1EB: NeI4
  loc_9FE1EC: AndI4
  loc_9FE1ED: BranchF loc_9FE1F5
  loc_9FE1F0: LitI2_Byte 0
  loc_9FE1F2: IStI2 KeyAscii
  loc_9FE1F5: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() 'B3F854
  'Data Table: 449E54
  loc_B3F590: FLdRfVar var_86
  loc_B3F593: Call Proc_47_20_B1E268()
  loc_B3F598: FLdI2 var_86
  loc_B3F59B: LitI2_Byte &HFF
  loc_B3F59D: EqI2
  loc_B3F59E: BranchF loc_B3F853
  loc_B3F5A1: LitStr "Municipalidad de Guaymallén"
  loc_B3F5A4: LitStr "Municipalidad de Tunuyán"
  loc_B3F5A7: EqStr
  loc_B3F5A9: BranchF loc_B3F638
  loc_B3F5AC: LitStr "SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_B3F5AF: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.BajaFeho END as FechBaja "
  loc_B3F5B2: ConcatStr
  loc_B3F5B3: FStStrNoPop var_8C
  loc_B3F5B6: LitStr " FROM infogov.persona "
  loc_B3F5B9: ConcatStr
  loc_B3F5BA: FStStrNoPop var_90
  loc_B3F5BD: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers"
  loc_B3F5C0: ConcatStr
  loc_B3F5C1: FStStrNoPop var_94
  loc_B3F5C4: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_B3F5C7: ConcatStr
  loc_B3F5C8: FStStrNoPop var_98
  loc_B3F5CB: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_B3F5CE: ConcatStr
  loc_B3F5CF: FStStrNoPop var_9C
  loc_B3F5D2: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_B3F5D5: ConcatStr
  loc_B3F5D6: FStStrNoPop var_A0
  loc_B3F5D9: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_B3F5DC: ConcatStr
  loc_B3F5DD: FStStrNoPop var_A4
  loc_B3F5E0: LitStr " WHERE persona.CucuPers = '"
  loc_B3F5E3: ConcatStr
  loc_B3F5E4: FStStrNoPop var_B0
  loc_B3F5E7: FLdRfVar var_AC
  loc_B3F5EA: FLdRfVar var_A8
  loc_B3F5ED: FLdPr Me
  loc_B3F5F0: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F5F5: FLdPr var_A8
  loc_B3F5F8: from_stack_1 = clsrelacion.CucuPers
  loc_B3F5FD: ILdRf var_AC
  loc_B3F600: ConcatStr
  loc_B3F601: FStStrNoPop var_B4
  loc_B3F604: LitStr "'"
  loc_B3F607: ConcatStr
  loc_B3F608: FStStrNoPop var_B8
  loc_B3F60B: FLdPr Me
  loc_B3F60E: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3F611: NewIfNullPr clsrelacion
  loc_B3F614: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_B3F619: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B3F632: FFree1Ad var_A8
  loc_B3F635: Branch loc_B3F6C1
  loc_B3F638: LitStr "SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_B3F63B: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.FebaDifu END as FechBaja "
  loc_B3F63E: ConcatStr
  loc_B3F63F: FStStrNoPop var_8C
  loc_B3F642: LitStr " FROM infogov.persona "
  loc_B3F645: ConcatStr
  loc_B3F646: FStStrNoPop var_90
  loc_B3F649: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers"
  loc_B3F64C: ConcatStr
  loc_B3F64D: FStStrNoPop var_94
  loc_B3F650: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_B3F653: ConcatStr
  loc_B3F654: FStStrNoPop var_98
  loc_B3F657: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_B3F65A: ConcatStr
  loc_B3F65B: FStStrNoPop var_9C
  loc_B3F65E: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_B3F661: ConcatStr
  loc_B3F662: FStStrNoPop var_A0
  loc_B3F665: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_B3F668: ConcatStr
  loc_B3F669: FStStrNoPop var_A4
  loc_B3F66C: LitStr " WHERE persona.CucuPers = '"
  loc_B3F66F: ConcatStr
  loc_B3F670: FStStrNoPop var_B0
  loc_B3F673: FLdRfVar var_AC
  loc_B3F676: FLdRfVar var_A8
  loc_B3F679: FLdPr Me
  loc_B3F67C: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F681: FLdPr var_A8
  loc_B3F684: from_stack_1 = clsrelacion.CucuPers
  loc_B3F689: ILdRf var_AC
  loc_B3F68C: ConcatStr
  loc_B3F68D: FStStrNoPop var_B4
  loc_B3F690: LitStr "'"
  loc_B3F693: ConcatStr
  loc_B3F694: FStStrNoPop var_B8
  loc_B3F697: FLdPr Me
  loc_B3F69A: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3F69D: NewIfNullPr clsrelacion
  loc_B3F6A0: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_B3F6A5: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B3F6BE: FFree1Ad var_A8
  loc_B3F6C1: FLdRfVar var_BC
  loc_B3F6C4: FLdPr Me
  loc_B3F6C7: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3F6CA: NewIfNullPr clsrelacion
  loc_B3F6CD: from_stack_1 = clsrelacion.RecordCount
  loc_B3F6D2: ILdRf var_BC
  loc_B3F6D5: LitI4 0
  loc_B3F6DA: GtI4
  loc_B3F6DB: BranchF loc_B3F853
  loc_B3F6DE: FLdPr Me
  loc_B3F6E1: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3F6E4: NewIfNullPr clsrelacion
  loc_B3F6E7: Call clsrelacion.MoveFirst(from_stack_1v)
  loc_B3F6EC: FLdRfVar var_86
  loc_B3F6EF: FLdPr Me
  loc_B3F6F2: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3F6F5: NewIfNullPr clsrelacion
  loc_B3F6F8: from_stack_1 = clsrelacion.EOF
  loc_B3F6FD: FLdI2 var_86
  loc_B3F700: NotI4
  loc_B3F701: BranchF loc_B3F853
  loc_B3F704: FLdRfVar var_8C
  loc_B3F707: FLdRfVar var_A8
  loc_B3F70A: FLdPr Me
  loc_B3F70D: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F712: FLdPr var_A8
  loc_B3F715: from_stack_1 = clsrelacion.CucuPers
  loc_B3F71A: FLdZeroAd var_8C
  loc_B3F71D: CVarStr var_DC
  loc_B3F720: LitI4 9
  loc_B3F725: FLdRfVar var_CC
  loc_B3F728: ImpAdCallFPR4  = Chr()
  loc_B3F72D: FLdRfVar var_CC
  loc_B3F730: ConcatVar var_EC
  loc_B3F734: FLdRfVar var_86
  loc_B3F737: FLdRfVar var_F0
  loc_B3F73A: FLdPr Me
  loc_B3F73D: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F742: FLdPr var_F0
  loc_B3F745: from_stack_1 = clsrelacion.CodiOfic
  loc_B3F74A: FLdUI1
  loc_B3F74E: CVarUI1
  loc_B3F752: ConcatVar var_110
  loc_B3F756: LitI4 9
  loc_B3F75B: FLdRfVar var_120
  loc_B3F75E: ImpAdCallFPR4  = Chr()
  loc_B3F763: FLdRfVar var_120
  loc_B3F766: ConcatVar var_130
  loc_B3F76A: FLdRfVar var_90
  loc_B3F76D: FLdRfVar var_134
  loc_B3F770: FLdPr Me
  loc_B3F773: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F778: FLdPr var_134
  loc_B3F77B: from_stack_1 = clsrelacion.CuenCtct
  loc_B3F780: FLdZeroAd var_90
  loc_B3F783: CVarStr var_144
  loc_B3F786: ConcatVar var_154
  loc_B3F78A: LitI4 9
  loc_B3F78F: FLdRfVar var_164
  loc_B3F792: ImpAdCallFPR4  = Chr()
  loc_B3F797: FLdRfVar var_164
  loc_B3F79A: ConcatVar var_174
  loc_B3F79E: FLdRfVar var_94
  loc_B3F7A1: FLdRfVar var_178
  loc_B3F7A4: FLdPr Me
  loc_B3F7A7: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F7AC: FLdPr var_178
  loc_B3F7AF: from_stack_1 = clsrelacion.DetaPers
  loc_B3F7B4: FLdZeroAd var_94
  loc_B3F7B7: CVarStr var_188
  loc_B3F7BA: ConcatVar var_198
  loc_B3F7BE: LitI4 9
  loc_B3F7C3: FLdRfVar var_1A8
  loc_B3F7C6: ImpAdCallFPR4  = Chr()
  loc_B3F7CB: FLdRfVar var_1A8
  loc_B3F7CE: ConcatVar var_1B8
  loc_B3F7D2: FLdRfVar var_98
  loc_B3F7D5: FLdRfVar var_1BC
  loc_B3F7D8: FLdPr Me
  loc_B3F7DB: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B3F7E0: FLdPr var_1BC
  loc_B3F7E3: from_stack_1 = clsrelacion.TipoRela
  loc_B3F7E8: FLdZeroAd var_98
  loc_B3F7EB: CVarStr var_1CC
  loc_B3F7EE: ConcatVar var_1DC
  loc_B3F7F2: CStrVarTmp
  loc_B3F7F3: CVarStr var_1EC
  loc_B3F7F6: PopAdLdVar
  loc_B3F7F7: ImpAdLdRf MemVar_D93B94
  loc_B3F7FA: NewIfNullPr frmUnificaciondePersonas
  loc_B3F7FD: VCallAd Control_ID_PersonaFlex
  loc_B3F800: FStAdFunc var_200
  loc_B3F803: FLdPr var_200
  loc_B3F806: LateIdCall
  loc_B3F80E: FFreeAd var_A8 = "": var_F0 = "": var_134 = "": var_178 = "": var_1BC = ""
  loc_B3F81D: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_110 = "": var_120 = "": var_130 = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1CC = "": var_1DC = ""
  loc_B3F842: FLdPr Me
  loc_B3F845: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B3F848: NewIfNullPr clsrelacion
  loc_B3F84B: Call clsrelacion.MoveSiguiente()
  loc_B3F850: Branch loc_B3F6EC
  loc_B3F853: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) 'B417EC
  'Data Table: 449E54
  loc_B41518: ILdI2 KeyCode
  loc_B4151B: CI4UI1
  loc_B4151C: LitI4 &HD
  loc_B41521: EqI4
  loc_B41522: BranchF loc_B417E8
  loc_B41525: FLdRfVar var_86
  loc_B41528: Call Proc_47_20_B1E268()
  loc_B4152D: FLdI2 var_86
  loc_B41530: LitI2_Byte &HFF
  loc_B41532: EqI2
  loc_B41533: BranchF loc_B417E8
  loc_B41536: LitStr "Municipalidad de Guaymallén"
  loc_B41539: LitStr "Municipalidad de Tunuyán"
  loc_B4153C: EqStr
  loc_B4153E: BranchF loc_B415CD
  loc_B41541: LitStr "SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_B41544: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.BajaFeho END as FechBaja "
  loc_B41547: ConcatStr
  loc_B41548: FStStrNoPop var_8C
  loc_B4154B: LitStr " FROM infogov.persona "
  loc_B4154E: ConcatStr
  loc_B4154F: FStStrNoPop var_90
  loc_B41552: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers "
  loc_B41555: ConcatStr
  loc_B41556: FStStrNoPop var_94
  loc_B41559: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_B4155C: ConcatStr
  loc_B4155D: FStStrNoPop var_98
  loc_B41560: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_B41563: ConcatStr
  loc_B41564: FStStrNoPop var_9C
  loc_B41567: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_B4156A: ConcatStr
  loc_B4156B: FStStrNoPop var_A0
  loc_B4156E: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_B41571: ConcatStr
  loc_B41572: FStStrNoPop var_A4
  loc_B41575: LitStr " WHERE persona.CucuPers = '"
  loc_B41578: ConcatStr
  loc_B41579: FStStrNoPop var_B0
  loc_B4157C: FLdRfVar var_AC
  loc_B4157F: FLdRfVar var_A8
  loc_B41582: FLdPr Me
  loc_B41585: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B4158A: FLdPr var_A8
  loc_B4158D: from_stack_1 = clsrelacion.CucuPers
  loc_B41592: ILdRf var_AC
  loc_B41595: ConcatStr
  loc_B41596: FStStrNoPop var_B4
  loc_B41599: LitStr "'"
  loc_B4159C: ConcatStr
  loc_B4159D: FStStrNoPop var_B8
  loc_B415A0: FLdPr Me
  loc_B415A3: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B415A6: NewIfNullPr clsrelacion
  loc_B415A9: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_B415AE: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B415C7: FFree1Ad var_A8
  loc_B415CA: Branch loc_B41656
  loc_B415CD: LitStr "SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_B415D0: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.FebaDifu END as FechBaja "
  loc_B415D3: ConcatStr
  loc_B415D4: FStStrNoPop var_8C
  loc_B415D7: LitStr " FROM infogov.persona "
  loc_B415DA: ConcatStr
  loc_B415DB: FStStrNoPop var_90
  loc_B415DE: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers "
  loc_B415E1: ConcatStr
  loc_B415E2: FStStrNoPop var_94
  loc_B415E5: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_B415E8: ConcatStr
  loc_B415E9: FStStrNoPop var_98
  loc_B415EC: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_B415EF: ConcatStr
  loc_B415F0: FStStrNoPop var_9C
  loc_B415F3: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_B415F6: ConcatStr
  loc_B415F7: FStStrNoPop var_A0
  loc_B415FA: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_B415FD: ConcatStr
  loc_B415FE: FStStrNoPop var_A4
  loc_B41601: LitStr " WHERE persona.CucuPers = '"
  loc_B41604: ConcatStr
  loc_B41605: FStStrNoPop var_B0
  loc_B41608: FLdRfVar var_AC
  loc_B4160B: FLdRfVar var_A8
  loc_B4160E: FLdPr Me
  loc_B41611: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B41616: FLdPr var_A8
  loc_B41619: from_stack_1 = clsrelacion.CucuPers
  loc_B4161E: ILdRf var_AC
  loc_B41621: ConcatStr
  loc_B41622: FStStrNoPop var_B4
  loc_B41625: LitStr "'"
  loc_B41628: ConcatStr
  loc_B41629: FStStrNoPop var_B8
  loc_B4162C: FLdPr Me
  loc_B4162F: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B41632: NewIfNullPr clsrelacion
  loc_B41635: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_B4163A: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B41653: FFree1Ad var_A8
  loc_B41656: FLdRfVar var_BC
  loc_B41659: FLdPr Me
  loc_B4165C: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B4165F: NewIfNullPr clsrelacion
  loc_B41662: from_stack_1 = clsrelacion.RecordCount
  loc_B41667: ILdRf var_BC
  loc_B4166A: LitI4 0
  loc_B4166F: GtI4
  loc_B41670: BranchF loc_B417E8
  loc_B41673: FLdPr Me
  loc_B41676: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B41679: NewIfNullPr clsrelacion
  loc_B4167C: Call clsrelacion.MoveFirst(from_stack_1v)
  loc_B41681: FLdRfVar var_86
  loc_B41684: FLdPr Me
  loc_B41687: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B4168A: NewIfNullPr clsrelacion
  loc_B4168D: from_stack_1 = clsrelacion.EOF
  loc_B41692: FLdI2 var_86
  loc_B41695: NotI4
  loc_B41696: BranchF loc_B417E8
  loc_B41699: FLdRfVar var_8C
  loc_B4169C: FLdRfVar var_A8
  loc_B4169F: FLdPr Me
  loc_B416A2: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B416A7: FLdPr var_A8
  loc_B416AA: from_stack_1 = clsrelacion.CucuPers
  loc_B416AF: FLdZeroAd var_8C
  loc_B416B2: CVarStr var_DC
  loc_B416B5: LitI4 9
  loc_B416BA: FLdRfVar var_CC
  loc_B416BD: ImpAdCallFPR4  = Chr()
  loc_B416C2: FLdRfVar var_CC
  loc_B416C5: ConcatVar var_EC
  loc_B416C9: FLdRfVar var_86
  loc_B416CC: FLdRfVar var_F0
  loc_B416CF: FLdPr Me
  loc_B416D2: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B416D7: FLdPr var_F0
  loc_B416DA: from_stack_1 = clsrelacion.CodiOfic
  loc_B416DF: FLdUI1
  loc_B416E3: CVarUI1
  loc_B416E7: ConcatVar var_110
  loc_B416EB: LitI4 9
  loc_B416F0: FLdRfVar var_120
  loc_B416F3: ImpAdCallFPR4  = Chr()
  loc_B416F8: FLdRfVar var_120
  loc_B416FB: ConcatVar var_130
  loc_B416FF: FLdRfVar var_90
  loc_B41702: FLdRfVar var_134
  loc_B41705: FLdPr Me
  loc_B41708: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B4170D: FLdPr var_134
  loc_B41710: from_stack_1 = clsrelacion.CuenCtct
  loc_B41715: FLdZeroAd var_90
  loc_B41718: CVarStr var_144
  loc_B4171B: ConcatVar var_154
  loc_B4171F: LitI4 9
  loc_B41724: FLdRfVar var_164
  loc_B41727: ImpAdCallFPR4  = Chr()
  loc_B4172C: FLdRfVar var_164
  loc_B4172F: ConcatVar var_174
  loc_B41733: FLdRfVar var_94
  loc_B41736: FLdRfVar var_178
  loc_B41739: FLdPr Me
  loc_B4173C: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B41741: FLdPr var_178
  loc_B41744: from_stack_1 = clsrelacion.DetaPers
  loc_B41749: FLdZeroAd var_94
  loc_B4174C: CVarStr var_188
  loc_B4174F: ConcatVar var_198
  loc_B41753: LitI4 9
  loc_B41758: FLdRfVar var_1A8
  loc_B4175B: ImpAdCallFPR4  = Chr()
  loc_B41760: FLdRfVar var_1A8
  loc_B41763: ConcatVar var_1B8
  loc_B41767: FLdRfVar var_98
  loc_B4176A: FLdRfVar var_1BC
  loc_B4176D: FLdPr Me
  loc_B41770: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B41775: FLdPr var_1BC
  loc_B41778: from_stack_1 = clsrelacion.TipoRela
  loc_B4177D: FLdZeroAd var_98
  loc_B41780: CVarStr var_1CC
  loc_B41783: ConcatVar var_1DC
  loc_B41787: CStrVarTmp
  loc_B41788: CVarStr var_1EC
  loc_B4178B: PopAdLdVar
  loc_B4178C: ImpAdLdRf MemVar_D93B94
  loc_B4178F: NewIfNullPr frmUnificaciondePersonas
  loc_B41792: VCallAd Control_ID_PersonaFlex
  loc_B41795: FStAdFunc var_200
  loc_B41798: FLdPr var_200
  loc_B4179B: LateIdCall
  loc_B417A3: FFreeAd var_A8 = "": var_F0 = "": var_134 = "": var_178 = "": var_1BC = ""
  loc_B417B2: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_110 = "": var_120 = "": var_130 = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1CC = "": var_1DC = ""
  loc_B417D7: FLdPr Me
  loc_B417DA: MemLdRfVar from_stack_1.RelacionTmpCLS
  loc_B417DD: NewIfNullPr clsrelacion
  loc_B417E0: Call clsrelacion.MoveSiguiente()
  loc_B417E5: Branch loc_B41681
  loc_B417E8: ExitProcHresult
End Sub

Private Sub Campo3Txt_Change() 'AA9A64
  'Data Table: 449E54
  loc_AA999C: LitStr vbNullString
  loc_AA999F: FLdPr Me
  loc_AA99A2: VCallAd Control_ID_Campo1Txt
  loc_AA99A5: FStAdFunc var_88
  loc_AA99A8: FLdPr var_88
  loc_AA99AB: Me.Text = from_stack_1
  loc_AA99B0: FFree1Ad var_88
  loc_AA99B3: LitStr vbNullString
  loc_AA99B6: FLdPr Me
  loc_AA99B9: VCallAd Control_ID_Campo2Txt
  loc_AA99BC: FStAdFunc var_88
  loc_AA99BF: FLdPr var_88
  loc_AA99C2: Me.Text = from_stack_1
  loc_AA99C7: FFree1Ad var_88
  loc_AA99CA: LitStr vbNullString
  loc_AA99CD: FLdPr Me
  loc_AA99D0: VCallAd Control_ID_Campo4Txt
  loc_AA99D3: FStAdFunc var_88
  loc_AA99D6: FLdPr var_88
  loc_AA99D9: Me.Text = from_stack_1
  loc_AA99DE: FFree1Ad var_88
  loc_AA99E1: FLdRfVar var_8C
  loc_AA99E4: FLdPr Me
  loc_AA99E7: VCallAd Control_ID_Campo3Txt
  loc_AA99EA: FStAdFunc var_88
  loc_AA99ED: FLdPr var_88
  loc_AA99F0:  = Me.Text
  loc_AA99F5: ILdRf var_8C
  loc_AA99F8: LitStr vbNullString
  loc_AA99FB: NeStr
  loc_AA99FD: FFree1Str var_8C
  loc_AA9A00: FFree1Ad var_88
  loc_AA9A03: BranchF loc_AA9A60
  loc_AA9A06: LitStr "DetaPers like '" & Chr(37)
  loc_AA9A09: FLdRfVar var_8C
  loc_AA9A0C: FLdPr Me
  loc_AA9A0F: VCallAd Control_ID_Campo3Txt
  loc_AA9A12: FStAdFunc var_88
  loc_AA9A15: FLdPr var_88
  loc_AA9A18:  = Me.Text
  loc_AA9A1D: ILdRf var_8C
  loc_AA9A20: ConcatStr
  loc_AA9A21: FStStrNoPop var_90
  loc_AA9A24: LitStr Chr(37) & "'"
  loc_AA9A27: ConcatStr
  loc_AA9A28: PopTmpLdAdStr
  loc_AA9A2C: FLdPr Me
  loc_AA9A2F: MemLdRfVar from_stack_1.RelacionCLS
  loc_AA9A32: NewIfNullPr clsrelacion
  loc_AA9A35: Call clsrelacion.Filter(from_stack_1v)
  loc_AA9A3A: FFreeStr var_8C = "": var_90 = ""
  loc_AA9A43: FFree1Ad var_88
  loc_AA9A46: LitStr "DetaPers"
  loc_AA9A49: FStStrCopy var_8C
  loc_AA9A4C: FLdRfVar var_8C
  loc_AA9A4F: FLdPr Me
  loc_AA9A52: MemLdRfVar from_stack_1.RelacionCLS
  loc_AA9A55: NewIfNullPr clsrelacion
  loc_AA9A58: Call clsrelacion.Sort(from_stack_1v)
  loc_AA9A5D: FFree1Str var_8C
  loc_AA9A60: ExitProcHresult
End Sub

Private Sub Campo3Txt_KeyPress(KeyAscii As Integer) '9FE078
  'Data Table: 449E54
  loc_9FE048: FLdRfVar var_88
  loc_9FE04B: FLdPr Me
  loc_9FE04E: MemLdRfVar from_stack_1.RelacionCLS
  loc_9FE051: NewIfNullPr clsrelacion
  loc_9FE054: from_stack_1 = clsrelacion.RecordCount
  loc_9FE059: ILdRf var_88
  loc_9FE05C: LitI4 0
  loc_9FE061: EqI4
  loc_9FE062: ILdI2 KeyAscii
  loc_9FE065: CI4UI1
  loc_9FE066: LitI4 8
  loc_9FE06B: NeI4
  loc_9FE06C: AndI4
  loc_9FE06D: BranchF loc_9FE075
  loc_9FE070: LitI2_Byte 0
  loc_9FE072: IStI2 KeyAscii
  loc_9FE075: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'AA87D4
  'Data Table: 449E54
  loc_AA870C: LitStr vbNullString
  loc_AA870F: FLdPr Me
  loc_AA8712: VCallAd Control_ID_Campo1Txt
  loc_AA8715: FStAdFunc var_88
  loc_AA8718: FLdPr var_88
  loc_AA871B: Me.Text = from_stack_1
  loc_AA8720: FFree1Ad var_88
  loc_AA8723: LitStr vbNullString
  loc_AA8726: FLdPr Me
  loc_AA8729: VCallAd Control_ID_Campo3Txt
  loc_AA872C: FStAdFunc var_88
  loc_AA872F: FLdPr var_88
  loc_AA8732: Me.Text = from_stack_1
  loc_AA8737: FFree1Ad var_88
  loc_AA873A: LitStr vbNullString
  loc_AA873D: FLdPr Me
  loc_AA8740: VCallAd Control_ID_Campo4Txt
  loc_AA8743: FStAdFunc var_88
  loc_AA8746: FLdPr var_88
  loc_AA8749: Me.Text = from_stack_1
  loc_AA874E: FFree1Ad var_88
  loc_AA8751: FLdRfVar var_8C
  loc_AA8754: FLdPr Me
  loc_AA8757: VCallAd Control_ID_Campo2Txt
  loc_AA875A: FStAdFunc var_88
  loc_AA875D: FLdPr var_88
  loc_AA8760:  = Me.Text
  loc_AA8765: ILdRf var_8C
  loc_AA8768: LitStr vbNullString
  loc_AA876B: NeStr
  loc_AA876D: FFree1Str var_8C
  loc_AA8770: FFree1Ad var_88
  loc_AA8773: BranchF loc_AA87D0
  loc_AA8776: LitStr "CuenCtct like '"
  loc_AA8779: FLdRfVar var_8C
  loc_AA877C: FLdPr Me
  loc_AA877F: VCallAd Control_ID_Campo2Txt
  loc_AA8782: FStAdFunc var_88
  loc_AA8785: FLdPr var_88
  loc_AA8788:  = Me.Text
  loc_AA878D: ILdRf var_8C
  loc_AA8790: ConcatStr
  loc_AA8791: FStStrNoPop var_90
  loc_AA8794: LitStr Chr(37) & "'"
  loc_AA8797: ConcatStr
  loc_AA8798: PopTmpLdAdStr
  loc_AA879C: FLdPr Me
  loc_AA879F: MemLdRfVar from_stack_1.RelacionCLS
  loc_AA87A2: NewIfNullPr clsrelacion
  loc_AA87A5: Call clsrelacion.Filter(from_stack_1v)
  loc_AA87AA: FFreeStr var_8C = "": var_90 = ""
  loc_AA87B3: FFree1Ad var_88
  loc_AA87B6: LitStr "CuenCtct"
  loc_AA87B9: FStStrCopy var_8C
  loc_AA87BC: FLdRfVar var_8C
  loc_AA87BF: FLdPr Me
  loc_AA87C2: MemLdRfVar from_stack_1.RelacionCLS
  loc_AA87C5: NewIfNullPr clsrelacion
  loc_AA87C8: Call clsrelacion.Sort(from_stack_1v)
  loc_AA87CD: FFree1Str var_8C
  loc_AA87D0: ExitProcHresult
End Sub

Private Sub Campo2Txt_KeyPress(KeyAscii As Integer) '9FE378
  'Data Table: 449E54
  loc_9FE348: FLdRfVar var_88
  loc_9FE34B: FLdPr Me
  loc_9FE34E: MemLdRfVar from_stack_1.RelacionCLS
  loc_9FE351: NewIfNullPr clsrelacion
  loc_9FE354: from_stack_1 = clsrelacion.RecordCount
  loc_9FE359: ILdRf var_88
  loc_9FE35C: LitI4 0
  loc_9FE361: EqI4
  loc_9FE362: ILdI2 KeyAscii
  loc_9FE365: CI4UI1
  loc_9FE366: LitI4 8
  loc_9FE36B: NeI4
  loc_9FE36C: AndI4
  loc_9FE36D: BranchF loc_9FE375
  loc_9FE370: LitI2_Byte 0
  loc_9FE372: IStI2 KeyAscii
  loc_9FE375: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'AD0540
  'Data Table: 449E54
  loc_AD042C: LitStr vbNullString
  loc_AD042F: FLdPr Me
  loc_AD0432: VCallAd Control_ID_Campo2Txt
  loc_AD0435: FStAdFunc var_88
  loc_AD0438: FLdPr var_88
  loc_AD043B: Me.Text = from_stack_1
  loc_AD0440: FFree1Ad var_88
  loc_AD0443: LitStr vbNullString
  loc_AD0446: FLdPr Me
  loc_AD0449: VCallAd Control_ID_Campo3Txt
  loc_AD044C: FStAdFunc var_88
  loc_AD044F: FLdPr var_88
  loc_AD0452: Me.Text = from_stack_1
  loc_AD0457: FFree1Ad var_88
  loc_AD045A: LitStr vbNullString
  loc_AD045D: FLdPr Me
  loc_AD0460: VCallAd Control_ID_Campo4Txt
  loc_AD0463: FStAdFunc var_88
  loc_AD0466: FLdPr var_88
  loc_AD0469: Me.Text = from_stack_1
  loc_AD046E: FFree1Ad var_88
  loc_AD0471: FLdRfVar var_8C
  loc_AD0474: FLdPr Me
  loc_AD0477: VCallAd Control_ID_Campo1Txt
  loc_AD047A: FStAdFunc var_88
  loc_AD047D: FLdPr var_88
  loc_AD0480:  = Me.Text
  loc_AD0485: ILdRf var_8C
  loc_AD0488: LitStr vbNullString
  loc_AD048B: NeStr
  loc_AD048D: FFree1Str var_8C
  loc_AD0490: FFree1Ad var_88
  loc_AD0493: BranchF loc_AD053F
  loc_AD0496: FLdRfVar var_94
  loc_AD0499: FLdPr Me
  loc_AD049C: VCallAd Control_ID_Campo1Txt
  loc_AD049F: FStAdFunc var_90
  loc_AD04A2: FLdPr var_90
  loc_AD04A5:  = Me.Text
  loc_AD04AA: LitStr "CucuPers >= '"
  loc_AD04AD: FLdRfVar var_8C
  loc_AD04B0: FLdPr Me
  loc_AD04B3: VCallAd Control_ID_Campo1Txt
  loc_AD04B6: FStAdFunc var_88
  loc_AD04B9: FLdPr var_88
  loc_AD04BC:  = Me.Text
  loc_AD04C1: ILdRf var_8C
  loc_AD04C4: ConcatStr
  loc_AD04C5: CVarStr var_D4
  loc_AD04C8: LitVarStr var_A4, "0"
  loc_AD04CD: FStVarCopyObj var_B4
  loc_AD04D0: FLdRfVar var_B4
  loc_AD04D3: LitI4 &HB
  loc_AD04D8: ILdRf var_94
  loc_AD04DB: FnLenStr
  loc_AD04DC: SubI4
  loc_AD04DD: FLdRfVar var_C4
  loc_AD04E0: ImpAdCallFPR4  = String(, )
  loc_AD04E5: FLdRfVar var_C4
  loc_AD04E8: ConcatVar var_E4
  loc_AD04EC: LitVarStr var_F4, "'"
  loc_AD04F1: ConcatVar var_104
  loc_AD04F5: CStrVarTmp
  loc_AD04F6: PopTmpLdAdStr
  loc_AD04FA: FLdPr Me
  loc_AD04FD: MemLdRfVar from_stack_1.RelacionCLS
  loc_AD0500: NewIfNullPr clsrelacion
  loc_AD0503: Call clsrelacion.Filter(from_stack_1v)
  loc_AD0508: FFreeStr var_8C = "": var_94 = ""
  loc_AD0511: FFreeAd var_88 = ""
  loc_AD0518: FFreeVar var_B4 = "": var_D4 = "": var_C4 = "": var_E4 = ""
  loc_AD0525: LitStr "CucuPers"
  loc_AD0528: FStStrCopy var_8C
  loc_AD052B: FLdRfVar var_8C
  loc_AD052E: FLdPr Me
  loc_AD0531: MemLdRfVar from_stack_1.RelacionCLS
  loc_AD0534: NewIfNullPr clsrelacion
  loc_AD0537: Call clsrelacion.Sort(from_stack_1v)
  loc_AD053C: FFree1Str var_8C
  loc_AD053F: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) 'A23868
  'Data Table: 449E54
  loc_A23820: LitStr "0123456789"
  loc_A23823: FStStrCopy var_88
  loc_A23826: FLdRfVar var_88
  loc_A23829: ILdRf KeyAscii
  loc_A2382C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A23831: IStI2 KeyAscii
  loc_A23834: FFree1Str var_88
  loc_A23837: FLdRfVar var_8C
  loc_A2383A: FLdPr Me
  loc_A2383D: MemLdRfVar from_stack_1.RelacionCLS
  loc_A23840: NewIfNullPr clsrelacion
  loc_A23843: from_stack_1 = clsrelacion.RecordCount
  loc_A23848: ILdRf var_8C
  loc_A2384B: LitI4 0
  loc_A23850: EqI4
  loc_A23851: ILdI2 KeyAscii
  loc_A23854: CI4UI1
  loc_A23855: LitI4 8
  loc_A2385A: NeI4
  loc_A2385B: AndI4
  loc_A2385C: BranchF loc_A23864
  loc_A2385F: LitI2_Byte 0
  loc_A23861: IStI2 KeyAscii
  loc_A23864: ExitProcHresult
End Sub

Private Sub Form_Load() 'AD45D4
  'Data Table: 449E54
  loc_AD44C0: LitStr "Municipalidad de Guaymallén"
  loc_AD44C3: LitStr "Municipalidad de Tunuyán"
  loc_AD44C6: EqStr
  loc_AD44C8: BranchF loc_AD4521
  loc_AD44CB: LitStr " SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_AD44CE: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.BajaFeho END as FechBaja "
  loc_AD44D1: ConcatStr
  loc_AD44D2: FStStrNoPop var_88
  loc_AD44D5: LitStr " FROM infogov.persona"
  loc_AD44D8: ConcatStr
  loc_AD44D9: FStStrNoPop var_8C
  loc_AD44DC: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers"
  loc_AD44DF: ConcatStr
  loc_AD44E0: FStStrNoPop var_90
  loc_AD44E3: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_AD44E6: ConcatStr
  loc_AD44E7: FStStrNoPop var_94
  loc_AD44EA: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_AD44ED: ConcatStr
  loc_AD44EE: FStStrNoPop var_98
  loc_AD44F1: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_AD44F4: ConcatStr
  loc_AD44F5: FStStrNoPop var_9C
  loc_AD44F8: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AD44FB: ConcatStr
  loc_AD44FC: FStStrNoPop var_A0
  loc_AD44FF: FLdPr Me
  loc_AD4502: MemLdRfVar from_stack_1.RelacionCLS
  loc_AD4505: NewIfNullPr clsrelacion
  loc_AD4508: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AD450D: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AD451E: Branch loc_AD4574
  loc_AD4521: LitStr " SELECT persona.CucuPers, IFNULL(relacion.CodiOfic,0) as CodiOfic, IFNULL(relacion.CuenCtct,'') as CuenCtct, DetaPers, DecrPers, NurePers, IFNULL(TipoRela,'') as TipoRela, "
  loc_AD4524: LitStr " CASE relacion.CodiOfic WHEN '1' THEN inmueble.BajaFeho WHEN '2' THEN comercio.FebaCome WHEN '3' THEN deudvari.BajaFeho WHEN '4' THEN difunto.FebaDifu END as FechBaja "
  loc_AD4527: ConcatStr
  loc_AD4528: FStStrNoPop var_88
  loc_AD452B: LitStr " FROM infogov.persona"
  loc_AD452E: ConcatStr
  loc_AD452F: FStStrNoPop var_8C
  loc_AD4532: LitStr " LEFT JOIN relacion ON relacion.CucuPers = persona.CucuPers"
  loc_AD4535: ConcatStr
  loc_AD4536: FStStrNoPop var_90
  loc_AD4539: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = relacion.CuenCtct"
  loc_AD453C: ConcatStr
  loc_AD453D: FStStrNoPop var_94
  loc_AD4540: LitStr " LEFT JOIN comercio ON comercio.Codicome = relacion.CuenCtct"
  loc_AD4543: ConcatStr
  loc_AD4544: FStStrNoPop var_98
  loc_AD4547: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = relacion.CuenCtct"
  loc_AD454A: ConcatStr
  loc_AD454B: FStStrNoPop var_9C
  loc_AD454E: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = relacion.CuenCtct"
  loc_AD4551: ConcatStr
  loc_AD4552: FStStrNoPop var_A0
  loc_AD4555: FLdPr Me
  loc_AD4558: MemLdRfVar from_stack_1.RelacionCLS
  loc_AD455B: NewIfNullPr clsrelacion
  loc_AD455E: Call clsrelacion.RedefineRS(from_stack_1v)
  loc_AD4563: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AD4574: LitI4 0
  loc_AD4579: LitI4 1
  loc_AD457E: FLdRfVar var_A4
  loc_AD4581: Redim
  loc_AD458B: FLdPr Me
  loc_AD458E: MemLdRfVar from_stack_1.RelacionCLS
  loc_AD4591: NewIfNullAd
  loc_AD4594: FStAd var_A8 
  loc_AD4598: FLdRfVar var_A8
  loc_AD459B: CVarRef
  loc_AD45A0: ParmAry1St
  loc_AD45A6: FLdPr Me
  loc_AD45A9: VCallAd Control_ID_dgdABMS
  loc_AD45AC: CVarAd
  loc_AD45B0: ParmAry1St
  loc_AD45B6: FLdRfVar var_A4
  loc_AD45B9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AD45BE: ILdRf var_A8
  loc_AD45C1: CastAd
  loc_AD45C4: FLdPr Me
  loc_AD45C7: MemStAdFunc
  loc_AD45CB: FLdRfVar var_A4
  loc_AD45CE: Erase
  loc_AD45CF: FFree1Ad var_A8
  loc_AD45D2: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D92DC
  'Data Table: 449E54
  loc_9D92C4: FLdPr Me
  loc_9D92C7: VCallAd Control_ID_Campo3Txt
  loc_9D92CA: FStAdFunc var_88
  loc_9D92CD: FLdPr var_88
  loc_9D92D0: Me.SetFocus
  loc_9D92D5: FFree1Ad var_88
  loc_9D92D8: ExitProcHresult
  loc_9D92DB: SetLastSystemError
End Sub

Public Function global_4496980Get() '44A6E8
  global_4496980Get = global_4496980
End Function

Public Sub global_4496980Put(Value) '44A702
  global_4496980 = Value
End Sub

Public Sub global_4496980Set(Value) '44A71C
  global_4496980 = Value
End Sub

Public Function global_4496980Get() '44A736
  global_4496980Get = global_4496980
End Function

Public Sub global_4496980Put(Value) '44A750
  global_4496980 = Value
End Sub

Public Sub global_4496980Set(Value) '44A76A
  global_4496980 = Value
End Sub

Private Function Proc_47_20_B1E268() 'B1E268
  'Data Table: 449E54
  loc_B1DFF8: LitI2_Byte &HFF
  loc_B1DFFA: FStI2 var_86
  loc_B1DFFD: LitI2_Byte 1
  loc_B1DFFF: FLdPr Me
  loc_B1E002: MemLdRfVar from_stack_1.global_60
  loc_B1E005: ImpAdLdRf MemVar_D93B94
  loc_B1E008: NewIfNullPr frmUnificaciondePersonas
  loc_B1E00B: VCallAd Control_ID_PersonaFlex
  loc_B1E00E: FStAdFunc var_8C
  loc_B1E011: FLdPr var_8C
  loc_B1E014: LateIdLdVar var_9C DispID_4 0
  loc_B1E01B: CI4Var
  loc_B1E01D: LitI4 1
  loc_B1E022: SubI4
  loc_B1E023: CI2I4
  loc_B1E024: FFree1Ad var_8C
  loc_B1E027: FFree1Var var_9C = ""
  loc_B1E02A: ForI2 var_A0
  loc_B1E030: FLdRfVar var_146
  loc_B1E033: FLdRfVar var_144
  loc_B1E036: FLdPr Me
  loc_B1E039: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B1E03E: FLdPr var_144
  loc_B1E041: from_stack_1 = clsrelacion.CodiOfic
  loc_B1E046: FLdPr Me
  loc_B1E049: MemLdI2 global_60
  loc_B1E04C: CI4UI1
  loc_B1E04D: CVarI4
  loc_B1E051: PopAdLdVar
  loc_B1E052: LitVarI4
  loc_B1E05A: PopAdLdVar
  loc_B1E05B: ImpAdLdRf MemVar_D93B94
  loc_B1E05E: NewIfNullPr frmUnificaciondePersonas
  loc_B1E061: VCallAd Control_ID_PersonaFlex
  loc_B1E064: FStAdFunc var_8C
  loc_B1E067: FLdPr var_8C
  loc_B1E06A: LateIdCallLdVar
  loc_B1E074: CStrVarTmp
  loc_B1E075: FStStrNoPop var_EC
  loc_B1E078: FLdRfVar var_E8
  loc_B1E07B: FLdRfVar var_E4
  loc_B1E07E: FLdPr Me
  loc_B1E081: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B1E086: FLdPr var_E4
  loc_B1E089: from_stack_1 = clsrelacion.CucuPers
  loc_B1E08E: ILdRf var_E8
  loc_B1E091: EqStr
  loc_B1E093: FLdPr Me
  loc_B1E096: MemLdI2 global_60
  loc_B1E099: CI4UI1
  loc_B1E09A: CVarI4
  loc_B1E09E: PopAdLdVar
  loc_B1E09F: LitVarI4
  loc_B1E0A7: PopAdLdVar
  loc_B1E0A8: ImpAdLdRf MemVar_D93B94
  loc_B1E0AB: NewIfNullPr frmUnificaciondePersonas
  loc_B1E0AE: VCallAd Control_ID_PersonaFlex
  loc_B1E0B1: FStAdFunc var_130
  loc_B1E0B4: FLdPr var_130
  loc_B1E0B7: LateIdCallLdVar
  loc_B1E0C1: CStrVarTmp
  loc_B1E0C2: FStStrNoPop var_14C
  loc_B1E0C5: CR8Str
  loc_B1E0C7: FLdUI1
  loc_B1E0CB: CR8I2
  loc_B1E0CC: EqR4
  loc_B1E0CD: AndI4
  loc_B1E0CE: FLdPr Me
  loc_B1E0D1: MemLdI2 global_60
  loc_B1E0D4: CI4UI1
  loc_B1E0D5: CVarI4
  loc_B1E0D9: PopAdLdVar
  loc_B1E0DA: LitVarI4
  loc_B1E0E2: PopAdLdVar
  loc_B1E0E3: ImpAdLdRf MemVar_D93B94
  loc_B1E0E6: NewIfNullPr frmUnificaciondePersonas
  loc_B1E0E9: VCallAd Control_ID_PersonaFlex
  loc_B1E0EC: FStAdFunc var_190
  loc_B1E0EF: FLdPr var_190
  loc_B1E0F2: LateIdCallLdVar
  loc_B1E0FC: CStrVarTmp
  loc_B1E0FD: FStStrNoPop var_1AC
  loc_B1E100: FLdRfVar var_1A8
  loc_B1E103: FLdRfVar var_1A4
  loc_B1E106: FLdPr Me
  loc_B1E109: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B1E10E: FLdPr var_1A4
  loc_B1E111: from_stack_1 = clsrelacion.CuenCtct
  loc_B1E116: ILdRf var_1A8
  loc_B1E119: EqStr
  loc_B1E11B: AndI4
  loc_B1E11C: FFreeStr var_EC = "": var_E8 = "": var_14C = "": var_1AC = ""
  loc_B1E129: FFreeAd var_8C = "": var_E4 = "": var_130 = "": var_144 = "": var_190 = ""
  loc_B1E138: FFreeVar var_9C = "": var_140 = ""
  loc_B1E141: BranchF loc_B1E1B2
  loc_B1E144: LitStr "La persona ya fue ingresada : "
  loc_B1E147: FLdRfVar var_E8
  loc_B1E14A: FLdRfVar var_8C
  loc_B1E14D: FLdPr Me
  loc_B1E150: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B1E155: FLdPr var_8C
  loc_B1E158: from_stack_1 = clsrelacion.CucuPers
  loc_B1E15D: ILdRf var_E8
  loc_B1E160: ConcatStr
  loc_B1E161: FStStrNoPop var_EC
  loc_B1E164: LitStr " "
  loc_B1E167: ConcatStr
  loc_B1E168: FStStrNoPop var_1A8
  loc_B1E16B: FLdRfVar var_14C
  loc_B1E16E: FLdRfVar var_E4
  loc_B1E171: FLdPr Me
  loc_B1E174: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B1E179: FLdPr var_E4
  loc_B1E17C: from_stack_1 = clsrelacion.DetaPers
  loc_B1E181: ILdRf var_14C
  loc_B1E184: ConcatStr
  loc_B1E185: CVarStr var_9C
  loc_B1E188: FStVar var_1BC
  loc_B1E18C: FFreeStr var_E8 = "": var_EC = "": var_1A8 = ""
  loc_B1E197: FFreeAd var_8C = ""
  loc_B1E19E: FLdRfVar var_1BC
  loc_B1E1A1: CStrVarVal var_E8
  loc_B1E1A5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1E1AA: FFree1Str var_E8
  loc_B1E1AD: LitI2_Byte 0
  loc_B1E1AF: FStI2 var_86
  loc_B1E1B2: FLdPr Me
  loc_B1E1B5: MemLdRfVar from_stack_1.global_60
  loc_B1E1B8: NextI2 var_A0, loc_B1E030
  loc_B1E1BD: FLdRfVar var_E8
  loc_B1E1C0: FLdRfVar var_8C
  loc_B1E1C3: FLdPr Me
  loc_B1E1C6: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B1E1CB: FLdPr var_8C
  loc_B1E1CE: from_stack_1 = clsrelacion.CucuPers
  loc_B1E1D3: ILdRf var_E8
  loc_B1E1D6: ImpAdCallI2 Proc_18_133_A102E0()
  loc_B1E1DB: CVarStr var_9C
  loc_B1E1DE: FStVar var_1BC
  loc_B1E1E2: FFree1Str var_E8
  loc_B1E1E5: FFree1Ad var_8C
  loc_B1E1E8: FLdRfVar var_1BC
  loc_B1E1EB: LitVarStr var_B0, vbNullString
  loc_B1E1F0: HardType
  loc_B1E1F1: NeVarBool
  loc_B1E1F3: BranchF loc_B1E20A
  loc_B1E1F6: FLdRfVar var_1BC
  loc_B1E1F9: CStrVarVal var_E8
  loc_B1E1FD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1E202: FFree1Str var_E8
  loc_B1E205: LitI2_Byte 0
  loc_B1E207: FStI2 var_86
  loc_B1E20A: LitStr "Municipalidad de Guaymallén"
  loc_B1E20D: LitStr "Municipalidad de Tupungato"
  loc_B1E210: NeStr
  loc_B1E212: BranchF loc_B1E262
  loc_B1E215: FLdRfVar var_E8
  loc_B1E218: FLdRfVar var_8C
  loc_B1E21B: FLdPr Me
  loc_B1E21E: from_stack_1v = dlgBuscarPersonaUnificacion.global_4496980Get()
  loc_B1E223: FLdPr var_8C
  loc_B1E226: from_stack_1 = clsrelacion.CucuPers
  loc_B1E22B: ILdRf var_E8
  loc_B1E22E: ImpAdCallI2 Proc_18_134_A6E1C4()
  loc_B1E233: CVarStr var_9C
  loc_B1E236: FStVar var_1BC
  loc_B1E23A: FFree1Str var_E8
  loc_B1E23D: FFree1Ad var_8C
  loc_B1E240: FLdRfVar var_1BC
  loc_B1E243: LitVarStr var_B0, vbNullString
  loc_B1E248: HardType
  loc_B1E249: NeVarBool
  loc_B1E24B: BranchF loc_B1E262
  loc_B1E24E: FLdRfVar var_1BC
  loc_B1E251: CStrVarVal var_E8
  loc_B1E255: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B1E25A: FFree1Str var_E8
  loc_B1E25D: LitI2_Byte 0
  loc_B1E25F: FStI2 var_86
  loc_B1E262: ExitProcCbHresult
End Function
