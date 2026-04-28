VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeUsuarios
  Caption = "Listado de Usuarios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeUsuarios.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6195
  ClientHeight = 1425
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 1170
    Width = 6195
    Height = 255
    TabIndex = 7
    OleObjectBlob = "rptListadodeUsuarios.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 240
    Width = 735
    Height = 615
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptListadodeUsuarios.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeUsuarios.frx":0B9C
    Left = 4560
    Top = -120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 0
    Width = 1815
    Height = 1095
    TabIndex = 3
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 0
    Width = 3015
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 480
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptListadodeUsuarios.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeUsuarios"

Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BD14
  'Data Table: 427DB0
  loc_98BCDC: FLdPr Me
  loc_98BCDF: VCallAd Control_ID_statusBar
  loc_98BCE2: FStAdFunc var_88
  loc_98BCE5: FLdPr var_88
  loc_98BCE8: LateIdLdVar var_98 DispID_1 0
  loc_98BCEF: CStrVarTmp
  loc_98BCF0: CVarStr var_A8
  loc_98BCF3: PopAdLdVar
  loc_98BCF4: FLdPr Me
  loc_98BCF7: VCallAd Control_ID_statusBar
  loc_98BCFA: FStAdFunc var_BC
  loc_98BCFD: FLdPr var_BC
  loc_98BD00: LateIdSt
  loc_98BD05: FFreeAd var_88 = ""
  loc_98BD0C: FFreeVar var_98 = ""
  loc_98BD13: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '957244
  'Data Table: 427DB0
  loc_95722C: ILdRf Me
  loc_95722F: CastAd
  loc_957232: FStAdFunc var_88
  loc_957235: FLdRfVar var_88
  loc_957238: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95723D: FFree1Ad var_88
  loc_957240: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97AB2C
  'Data Table: 427DB0
  loc_97AAFC: LitVarStr var_94, "Cerrando..."
  loc_97AB01: PopAdLdVar
  loc_97AB02: FLdPr Me
  loc_97AB05: VCallAd Control_ID_statusBar
  loc_97AB08: FStAdFunc var_A8
  loc_97AB0B: FLdPr var_A8
  loc_97AB0E: LateIdSt
  loc_97AB13: FFree1Ad var_A8
  loc_97AB16: ILdRf Me
  loc_97AB19: FStAdNoPop
  loc_97AB1D: ImpAdLdRf MemVar_C44F9C
  loc_97AB20: NewIfNullPr Me
  loc_97AB23: Me.Global.Unload from_stack_1
  loc_97AB28: FFree1Ad var_A8
  loc_97AB2B: ExitProcHresult
End Sub

Private Sub Form_Load() '96E650
  'Data Table: 427DB0
  loc_96E62C: LitI2_Byte &HFF
  loc_96E62E: ImpAdStI2 MemVar_C3D840
  loc_96E631: ILdRf Me
  loc_96E634: CastAd
  loc_96E637: FStAdFunc var_88
  loc_96E63A: FLdRfVar var_88
  loc_96E63D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96E642: FFree1Ad var_88
  loc_96E645: LitI2_Byte 0
  loc_96E647: FLdPr Me
  loc_96E64A: MemStI2 bGenerado
  loc_96E64D: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95FB6C
  'Data Table: 427DB0
  loc_95FB54: FLdPr Me
  loc_95FB57: VCallAd Control_ID_wbbReporte
  loc_95FB5A: FStAdFunc var_88
  loc_95FB5D: FLdRfVar var_88
  loc_95FB60: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95FB65: FFree1Ad var_88
  loc_95FB68: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95FC9C
  'Data Table: 427DB0
  loc_95FC84: ILdRf Me
  loc_95FC87: CastAd
  loc_95FC8A: FStAdFunc var_88
  loc_95FC8D: FLdRfVar var_88
  loc_95FC90: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95FC95: FFree1Ad var_88
  loc_95FC98: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95FC04
  'Data Table: 427DB0
  loc_95FBEC: LitI2_Byte 0
  loc_95FBEE: ILdRf Me
  loc_95FBF1: CastAd
  loc_95FBF4: FStAdFunc var_88
  loc_95FBF7: FLdRfVar var_88
  loc_95FBFA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95FBFF: FFree1Ad var_88
  loc_95FC02: ExitProcHresult
End Sub

Public Function bGeneradoGet() '428500
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '42850F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '93FE90
  'Data Table: 427DB0
  loc_93FE8C: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A93140
  'Data Table: 427DB0
  loc_A92CD8: OnErrorGoto loc_A930DB
  loc_A92CDB: FLdPr Me
  loc_A92CDE: MemLdI2 bGenerado
  loc_A92CE1: BranchF loc_A92CE5
  loc_A92CE4: ExitProcHresult
  loc_A92CE5: LitVarStr var_94, "Generando reporte..."
  loc_A92CEA: PopAdLdVar
  loc_A92CEB: FLdPr Me
  loc_A92CEE: VCallAd Control_ID_statusBar
  loc_A92CF1: FStAdFunc var_A8
  loc_A92CF4: FLdPr var_A8
  loc_A92CF7: LateIdSt
  loc_A92CFC: FFree1Ad var_A8
  loc_A92CFF: LitI4 &HB
  loc_A92D04: CI2I4
  loc_A92D05: FLdPr Me
  loc_A92D08: Me.MousePointer = from_stack_1
  loc_A92D0D: FLdPr Me
  loc_A92D10: MemLdRfVar from_stack_1.global_56
  loc_A92D13: NewIfNullAd
  loc_A92D16: FStAd var_AC 
  loc_A92D1A: LitStr "SELECT usuario.*, IFNULL(DetaPers,'') DetaPers"
  loc_A92D1D: LitStr " FROM infogov.usuario"
  loc_A92D20: ConcatStr
  loc_A92D21: FStStrNoPop var_B0
  loc_A92D24: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers"
  loc_A92D27: ConcatStr
  loc_A92D28: FStStrNoPop var_B4
  loc_A92D2B: LitStr " ORDER BY usuario.CodiUsua"
  loc_A92D2E: ConcatStr
  loc_A92D2F: FStStrNoPop var_B8
  loc_A92D32: FLdPr var_AC
  loc_A92D35: Call clsusuario.RedefineRS(from_stack_1v)
  loc_A92D3A: FFreeStr var_B0 = "": var_B4 = ""
  loc_A92D43: FLdRfVar var_BC
  loc_A92D46: FLdPr var_AC
  loc_A92D49: from_stack_1 = clsusuario.RecordCount
  loc_A92D4E: ILdRf var_BC
  loc_A92D51: LitI4 0
  loc_A92D56: EqI4
  loc_A92D57: BranchF loc_A92D6A
  loc_A92D5A: LitI4 0
  loc_A92D5F: LitStr "No existen registros"
  loc_A92D62: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A92D67: Branch loc_A930B2
  loc_A92D6A: LitI4 0
  loc_A92D6F: FLdRfVar var_BC
  loc_A92D72: FLdPr var_AC
  loc_A92D75: from_stack_1 = clsusuario.RecordCount
  loc_A92D7A: ILdRf var_BC
  loc_A92D7D: FLdPr Me
  loc_A92D80: MemLdRfVar from_stack_1.global_80
  loc_A92D83: Redim
  loc_A92D8D: FLdPr var_AC
  loc_A92D90: Call clsusuario.MoveFirst()
  loc_A92D95: LitI2_Byte 1
  loc_A92D97: FLdPr Me
  loc_A92D9A: MemLdRfVar from_stack_1.global_84
  loc_A92D9D: FLdPr Me
  loc_A92DA0: MemLdStr global_80
  loc_A92DA3: LitI2_Byte 1
  loc_A92DA5: FnUBound
  loc_A92DA7: CI2I4
  loc_A92DA8: ForI2 var_C0
  loc_A92DAE: FLdRfVar var_C8
  loc_A92DB1: LitVarStr var_94, "CodiUsua"
  loc_A92DB6: PopAdLdVar
  loc_A92DB7: FLdRfVar var_C4
  loc_A92DBA: FLdRfVar var_A8
  loc_A92DBD: FLdPr var_AC
  loc_A92DC0: from_stack_1v = clsusuario.RsFrmGet()
  loc_A92DC5: FLdPr var_A8
  loc_A92DC8:  = Me.Fields
  loc_A92DCD: FLdPr var_C4
  loc_A92DD0: from_stack_2 = Me.Item(from_stack_1)
  loc_A92DD5: LitI2_Byte 0
  loc_A92DD7: LitVar_Missing var_EC
  loc_A92DDA: LitI2_Byte 0
  loc_A92DDC: FLdZeroAd var_C8
  loc_A92DDF: CVarAd
  loc_A92DE3: PopAdLdVar
  loc_A92DE4: FLdPr Me
  loc_A92DE7: MemLdI2 global_84
  loc_A92DEA: CI4UI1
  loc_A92DEB: FLdPr Me
  loc_A92DEE: MemLdStr global_80
  loc_A92DF1: AryLock
  loc_A92DF4: Ary1LdPr
  loc_A92DF5: MemLdRfVar from_stack_1.global_0
  loc_A92DF8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A92DFD: AryUnlock
  loc_A92E00: FFreeAd var_A8 = ""
  loc_A92E07: FFreeVar var_DC = ""
  loc_A92E0E: FLdRfVar var_C8
  loc_A92E11: LitVarStr var_94, "CucuPers"
  loc_A92E16: PopAdLdVar
  loc_A92E17: FLdRfVar var_C4
  loc_A92E1A: FLdRfVar var_A8
  loc_A92E1D: FLdPr var_AC
  loc_A92E20: from_stack_1v = clsusuario.RsFrmGet()
  loc_A92E25: FLdPr var_A8
  loc_A92E28:  = Me.Fields
  loc_A92E2D: FLdPr var_C4
  loc_A92E30: from_stack_2 = Me.Item(from_stack_1)
  loc_A92E35: LitI2_Byte 0
  loc_A92E37: LitVar_Missing var_EC
  loc_A92E3A: LitI2_Byte 0
  loc_A92E3C: FLdZeroAd var_C8
  loc_A92E3F: CVarAd
  loc_A92E43: PopAdLdVar
  loc_A92E44: FLdPr Me
  loc_A92E47: MemLdI2 global_84
  loc_A92E4A: CI4UI1
  loc_A92E4B: FLdPr Me
  loc_A92E4E: MemLdStr global_80
  loc_A92E51: AryLock
  loc_A92E54: Ary1LdPr
  loc_A92E55: MemLdRfVar from_stack_1.global_8
  loc_A92E58: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A92E5D: AryUnlock
  loc_A92E60: FFreeAd var_A8 = ""
  loc_A92E67: FFreeVar var_DC = ""
  loc_A92E6E: FLdRfVar var_C8
  loc_A92E71: LitVarStr var_94, "DetaPers"
  loc_A92E76: PopAdLdVar
  loc_A92E77: FLdRfVar var_C4
  loc_A92E7A: FLdRfVar var_A8
  loc_A92E7D: FLdPr var_AC
  loc_A92E80: from_stack_1v = clsusuario.RsFrmGet()
  loc_A92E85: FLdPr var_A8
  loc_A92E88:  = Me.Fields
  loc_A92E8D: FLdPr var_C4
  loc_A92E90: from_stack_2 = Me.Item(from_stack_1)
  loc_A92E95: LitI2_Byte 0
  loc_A92E97: LitVar_Missing var_EC
  loc_A92E9A: LitI2_Byte 0
  loc_A92E9C: FLdZeroAd var_C8
  loc_A92E9F: CVarAd
  loc_A92EA3: PopAdLdVar
  loc_A92EA4: FLdPr Me
  loc_A92EA7: MemLdI2 global_84
  loc_A92EAA: CI4UI1
  loc_A92EAB: FLdPr Me
  loc_A92EAE: MemLdStr global_80
  loc_A92EB1: AryLock
  loc_A92EB4: Ary1LdPr
  loc_A92EB5: MemLdRfVar from_stack_1.global_4
  loc_A92EB8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A92EBD: AryUnlock
  loc_A92EC0: FFreeAd var_A8 = ""
  loc_A92EC7: FFreeVar var_DC = ""
  loc_A92ECE: FLdRfVar var_C8
  loc_A92ED1: LitVarStr var_94, "FeveUsua"
  loc_A92ED6: PopAdLdVar
  loc_A92ED7: FLdRfVar var_C4
  loc_A92EDA: FLdRfVar var_A8
  loc_A92EDD: FLdPr var_AC
  loc_A92EE0: from_stack_1v = clsusuario.RsFrmGet()
  loc_A92EE5: FLdPr var_A8
  loc_A92EE8:  = Me.Fields
  loc_A92EED: FLdPr var_C4
  loc_A92EF0: from_stack_2 = Me.Item(from_stack_1)
  loc_A92EF5: LitI2_Byte 0
  loc_A92EF7: LitVar_Missing var_EC
  loc_A92EFA: LitI2_Byte 0
  loc_A92EFC: FLdZeroAd var_C8
  loc_A92EFF: CVarAd
  loc_A92F03: PopAdLdVar
  loc_A92F04: FLdPr Me
  loc_A92F07: MemLdI2 global_84
  loc_A92F0A: CI4UI1
  loc_A92F0B: FLdPr Me
  loc_A92F0E: MemLdStr global_80
  loc_A92F11: AryLock
  loc_A92F14: Ary1LdPr
  loc_A92F15: MemLdRfVar from_stack_1.global_12
  loc_A92F18: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A92F1D: AryUnlock
  loc_A92F20: FFreeAd var_A8 = ""
  loc_A92F27: FFreeVar var_DC = ""
  loc_A92F2E: FLdRfVar var_C8
  loc_A92F31: LitVarStr var_94, "BajaFeho"
  loc_A92F36: PopAdLdVar
  loc_A92F37: FLdRfVar var_C4
  loc_A92F3A: FLdRfVar var_A8
  loc_A92F3D: FLdPr var_AC
  loc_A92F40: from_stack_1v = clsusuario.RsFrmGet()
  loc_A92F45: FLdPr var_A8
  loc_A92F48:  = Me.Fields
  loc_A92F4D: FLdPr var_C4
  loc_A92F50: from_stack_2 = Me.Item(from_stack_1)
  loc_A92F55: LitI2_Byte 0
  loc_A92F57: LitVar_Missing var_EC
  loc_A92F5A: LitI2_Byte 0
  loc_A92F5C: FLdZeroAd var_C8
  loc_A92F5F: CVarAd
  loc_A92F63: PopAdLdVar
  loc_A92F64: FLdPr Me
  loc_A92F67: MemLdI2 global_84
  loc_A92F6A: CI4UI1
  loc_A92F6B: FLdPr Me
  loc_A92F6E: MemLdStr global_80
  loc_A92F71: AryLock
  loc_A92F74: Ary1LdPr
  loc_A92F75: MemLdRfVar from_stack_1.global_24
  loc_A92F78: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A92F7D: AryUnlock
  loc_A92F80: FFreeAd var_A8 = ""
  loc_A92F87: FFreeVar var_DC = ""
  loc_A92F8E: FLdRfVar var_DC
  loc_A92F91: FLdRfVar var_C8
  loc_A92F94: LitVarStr var_94, "InhaUsua"
  loc_A92F99: PopAdLdVar
  loc_A92F9A: FLdRfVar var_C4
  loc_A92F9D: FLdRfVar var_A8
  loc_A92FA0: FLdPr var_AC
  loc_A92FA3: from_stack_1v = clsusuario.RsFrmGet()
  loc_A92FA8: FLdPr var_A8
  loc_A92FAB:  = Me.Fields
  loc_A92FB0: FLdPr var_C4
  loc_A92FB3: from_stack_2 = Me.Item(from_stack_1)
  loc_A92FB8: FLdPr var_C8
  loc_A92FBB:  = Me.Value
  loc_A92FC0: LitVarStr var_12C, "Si"
  loc_A92FC5: FStVarCopyObj var_13C
  loc_A92FC8: FLdRfVar var_13C
  loc_A92FCB: LitVarStr var_10C, "No"
  loc_A92FD0: FStVarCopyObj var_11C
  loc_A92FD3: FLdRfVar var_11C
  loc_A92FD6: FLdRfVar var_DC
  loc_A92FD9: LitVarI2 var_A4, 0
  loc_A92FDE: HardType
  loc_A92FDF: EqVar var_EC
  loc_A92FE3: FStVar var_FC
  loc_A92FE7: FLdRfVar var_FC
  loc_A92FEA: FLdRfVar var_14C
  loc_A92FED: ImpAdCallFPR4  = IIf(, , )
  loc_A92FF2: LitI2_Byte 0
  loc_A92FF4: LitVar_Missing var_16C
  loc_A92FF7: LitI2_Byte 0
  loc_A92FF9: FLdVar var_14C
  loc_A92FFD: FLdPr Me
  loc_A93000: MemLdI2 global_84
  loc_A93003: CI4UI1
  loc_A93004: FLdPr Me
  loc_A93007: MemLdStr global_80
  loc_A9300A: AryLock
  loc_A9300D: Ary1LdPr
  loc_A9300E: MemLdRfVar from_stack_1.global_16
  loc_A93011: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A93016: AryUnlock
  loc_A93019: FFreeAd var_A8 = "": var_C4 = ""
  loc_A93022: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_13C = "": var_14C = ""
  loc_A93031: FLdRfVar var_C8
  loc_A93034: LitVarStr var_94, "BajaMoti"
  loc_A93039: PopAdLdVar
  loc_A9303A: FLdRfVar var_C4
  loc_A9303D: FLdRfVar var_A8
  loc_A93040: FLdPr var_AC
  loc_A93043: from_stack_1v = clsusuario.RsFrmGet()
  loc_A93048: FLdPr var_A8
  loc_A9304B:  = Me.Fields
  loc_A93050: FLdPr var_C4
  loc_A93053: from_stack_2 = Me.Item(from_stack_1)
  loc_A93058: LitI2_Byte 0
  loc_A9305A: LitVar_Missing var_EC
  loc_A9305D: LitI2_Byte 0
  loc_A9305F: FLdZeroAd var_C8
  loc_A93062: CVarAd
  loc_A93066: PopAdLdVar
  loc_A93067: FLdPr Me
  loc_A9306A: MemLdI2 global_84
  loc_A9306D: CI4UI1
  loc_A9306E: FLdPr Me
  loc_A93071: MemLdStr global_80
  loc_A93074: AryLock
  loc_A93077: Ary1LdPr
  loc_A93078: MemLdRfVar from_stack_1.global_20
  loc_A9307B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A93080: AryUnlock
  loc_A93083: FFreeAd var_A8 = ""
  loc_A9308A: FFreeVar var_DC = ""
  loc_A93091: FLdPr var_AC
  loc_A93094: Call clsusuario.MoveSiguiente()
  loc_A93099: FLdPr Me
  loc_A9309C: MemLdRfVar from_stack_1.global_84
  loc_A9309F: NextI2 var_C0, loc_A92DAE
  loc_A930A4: LitNothing
  loc_A930A6: FStAd var_AC 
  loc_A930AA: LitI2_Byte &HFF
  loc_A930AC: FLdPr Me
  loc_A930AF: MemStI2 bGenerado
  loc_A930B2: LitI4 0
  loc_A930B7: CI2I4
  loc_A930B8: FLdPr Me
  loc_A930BB: Me.MousePointer = from_stack_1
  loc_A930C0: LitVarStr var_94, vbNullString
  loc_A930C5: PopAdLdVar
  loc_A930C6: FLdPr Me
  loc_A930C9: VCallAd Control_ID_statusBar
  loc_A930CC: FStAdFunc var_A8
  loc_A930CF: FLdPr var_A8
  loc_A930D2: LateIdSt
  loc_A930D7: FFree1Ad var_A8
  loc_A930DA: ExitProcHresult
  loc_A930DB: LitI4 0
  loc_A930E0: LitStr "Error "
  loc_A930E3: FLdRfVar var_BC
  loc_A930E6: ImpAdCallI2 Err 'rtcErrObj
  loc_A930EB: FStAdFunc var_A8
  loc_A930EE: FLdPr var_A8
  loc_A930F1:  = Err.Number
  loc_A930F6: ILdRf var_BC
  loc_A930F9: CStrI4
  loc_A930FB: FStStrNoPop var_B0
  loc_A930FE: ConcatStr
  loc_A930FF: FStStrNoPop var_B4
  loc_A93102: LitStr ": "
  loc_A93105: ConcatStr
  loc_A93106: FStStrNoPop var_170
  loc_A93109: FLdRfVar var_B8
  loc_A9310C: ImpAdCallI2 Err 'rtcErrObj
  loc_A93111: FStAdFunc var_C4
  loc_A93114: FLdPr var_C4
  loc_A93117:  = Err.Description
  loc_A9311C: ILdRf var_B8
  loc_A9311F: ConcatStr
  loc_A93120: FStStrNoPop var_174
  loc_A93123: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A93128: FFreeStr var_B0 = "": var_B4 = "": var_170 = "": var_B8 = ""
  loc_A93135: FFreeAd var_A8 = ""
  loc_A9313C: ExitProcHresult
  loc_A9313D: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A2BEC4
  'Data Table: 427DB0
  loc_A2BCD4: FLdRfVar var_88
  loc_A2BCD7: LitI2_Byte 0
  loc_A2BCD9: LitI2_Byte &HFF
  loc_A2BCDB: ImpAdLdI4 MemVar_C3D83C
  loc_A2BCDE: FLdPr Me
  loc_A2BCE1: MemLdRfVar from_stack_1.global_60
  loc_A2BCE4: NewIfNullPr IFileSystem3
  loc_A2BCE7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A2BCEC: ILdRf var_88
  loc_A2BCEF: FLdPr Me
  loc_A2BCF2: MemStVarAd
  loc_A2BCF6: FFree1Ad var_88
  loc_A2BCF9: Call Proc_208_12_AAD008()
  loc_A2BCFE: LitI2_Byte 1
  loc_A2BD00: FLdPr Me
  loc_A2BD03: MemLdRfVar from_stack_1.global_84
  loc_A2BD06: FLdPr Me
  loc_A2BD09: MemLdStr global_80
  loc_A2BD0C: LitI2_Byte 1
  loc_A2BD0E: FnUBound
  loc_A2BD10: CI2I4
  loc_A2BD11: ForI2 var_8C
  loc_A2BD17: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A2BD1C: PopAdLdVar
  loc_A2BD1D: FLdPr Me
  loc_A2BD20: MemLdRfVar from_stack_1.global_64
  loc_A2BD23: LdPrVar
  loc_A2BD25: LateMemCall
  loc_A2BD2B: FLdPr Me
  loc_A2BD2E: MemLdI2 global_84
  loc_A2BD31: CI4UI1
  loc_A2BD32: FLdPr Me
  loc_A2BD35: MemLdStr global_80
  loc_A2BD38: AryLock
  loc_A2BD3B: Ary1LdRf
  loc_A2BD3C: FStR4 var_B4
  loc_A2BD3F: LitI4 0
  loc_A2BD44: LitI4 0
  loc_A2BD49: LitI2_Byte 0
  loc_A2BD4B: LitStr "left"
  loc_A2BD4E: FMemLdR4 var_B4(0)
  loc_A2BD53: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2BD58: CVarStr var_C4
  loc_A2BD5B: PopAdLdVar
  loc_A2BD5C: FLdPr Me
  loc_A2BD5F: MemLdRfVar from_stack_1.global_64
  loc_A2BD62: LdPrVar
  loc_A2BD64: LateMemCall
  loc_A2BD6A: FFree1Var var_C4 = ""
  loc_A2BD6D: LitI4 0
  loc_A2BD72: LitI4 0
  loc_A2BD77: LitI2_Byte 0
  loc_A2BD79: LitStr "center"
  loc_A2BD7C: FMemLdR4 var_B4(8)
  loc_A2BD81: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2BD86: CVarStr var_C4
  loc_A2BD89: PopAdLdVar
  loc_A2BD8A: FLdPr Me
  loc_A2BD8D: MemLdRfVar from_stack_1.global_64
  loc_A2BD90: LdPrVar
  loc_A2BD92: LateMemCall
  loc_A2BD98: FFree1Var var_C4 = ""
  loc_A2BD9B: LitI4 0
  loc_A2BDA0: LitI4 0
  loc_A2BDA5: LitI2_Byte 0
  loc_A2BDA7: LitStr "left"
  loc_A2BDAA: FMemLdR4 var_B4(4)
  loc_A2BDAF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2BDB4: CVarStr var_C4
  loc_A2BDB7: PopAdLdVar
  loc_A2BDB8: FLdPr Me
  loc_A2BDBB: MemLdRfVar from_stack_1.global_64
  loc_A2BDBE: LdPrVar
  loc_A2BDC0: LateMemCall
  loc_A2BDC6: FFree1Var var_C4 = ""
  loc_A2BDC9: LitI4 0
  loc_A2BDCE: LitI4 0
  loc_A2BDD3: LitI2_Byte 0
  loc_A2BDD5: LitStr "center"
  loc_A2BDD8: FMemLdR4 var_B4(12)
  loc_A2BDDD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2BDE2: CVarStr var_C4
  loc_A2BDE5: PopAdLdVar
  loc_A2BDE6: FLdPr Me
  loc_A2BDE9: MemLdRfVar from_stack_1.global_64
  loc_A2BDEC: LdPrVar
  loc_A2BDEE: LateMemCall
  loc_A2BDF4: FFree1Var var_C4 = ""
  loc_A2BDF7: LitI4 0
  loc_A2BDFC: LitI4 0
  loc_A2BE01: LitI2_Byte 0
  loc_A2BE03: LitStr "center"
  loc_A2BE06: FMemLdR4 var_B4(24)
  loc_A2BE0B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2BE10: CVarStr var_C4
  loc_A2BE13: PopAdLdVar
  loc_A2BE14: FLdPr Me
  loc_A2BE17: MemLdRfVar from_stack_1.global_64
  loc_A2BE1A: LdPrVar
  loc_A2BE1C: LateMemCall
  loc_A2BE22: FFree1Var var_C4 = ""
  loc_A2BE25: LitI4 0
  loc_A2BE2A: LitI4 0
  loc_A2BE2F: LitI2_Byte 0
  loc_A2BE31: LitStr "center"
  loc_A2BE34: FMemLdR4 var_B4(16)
  loc_A2BE39: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2BE3E: CVarStr var_C4
  loc_A2BE41: PopAdLdVar
  loc_A2BE42: FLdPr Me
  loc_A2BE45: MemLdRfVar from_stack_1.global_64
  loc_A2BE48: LdPrVar
  loc_A2BE4A: LateMemCall
  loc_A2BE50: FFree1Var var_C4 = ""
  loc_A2BE53: LitI4 0
  loc_A2BE58: LitI4 0
  loc_A2BE5D: LitI2_Byte 0
  loc_A2BE5F: LitStr "left"
  loc_A2BE62: FMemLdR4 var_B4(20)
  loc_A2BE67: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2BE6C: CVarStr var_C4
  loc_A2BE6F: PopAdLdVar
  loc_A2BE70: FLdPr Me
  loc_A2BE73: MemLdRfVar from_stack_1.global_64
  loc_A2BE76: LdPrVar
  loc_A2BE78: LateMemCall
  loc_A2BE7E: FFree1Var var_C4 = ""
  loc_A2BE81: LitI4 0
  loc_A2BE86: FStR4 var_B4
  loc_A2BE89: AryUnlock
  loc_A2BE8C: LitVarStr var_9C, "     </tr>"
  loc_A2BE91: PopAdLdVar
  loc_A2BE92: FLdPr Me
  loc_A2BE95: MemLdRfVar from_stack_1.global_64
  loc_A2BE98: LdPrVar
  loc_A2BE9A: LateMemCall
  loc_A2BEA0: FLdPr Me
  loc_A2BEA3: MemLdRfVar from_stack_1.global_84
  loc_A2BEA6: NextI2 var_8C, loc_A2BD17
  loc_A2BEAB: Call Proc_208_13_981BA0()
  loc_A2BEB0: FLdPr Me
  loc_A2BEB3: MemLdRfVar from_stack_1.global_64
  loc_A2BEB6: LdPrVar
  loc_A2BEB8: LateMemCall
  loc_A2BEBE: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A2BEC3: ExitProcHresult
End Sub

Private Function Proc_208_12_AAD008() 'AAD008
  'Data Table: 427DB0
  loc_AACACC: LitVarStr var_94, "<html>"
  loc_AACAD1: PopAdLdVar
  loc_AACAD2: FLdPr Me
  loc_AACAD5: MemLdRfVar from_stack_1.global_64
  loc_AACAD8: LdPrVar
  loc_AACADA: LateMemCall
  loc_AACAE0: LitVarStr var_94, "<head>"
  loc_AACAE5: PopAdLdVar
  loc_AACAE6: FLdPr Me
  loc_AACAE9: MemLdRfVar from_stack_1.global_64
  loc_AACAEC: LdPrVar
  loc_AACAEE: LateMemCall
  loc_AACAF4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AACAF9: PopAdLdVar
  loc_AACAFA: FLdPr Me
  loc_AACAFD: MemLdRfVar from_stack_1.global_64
  loc_AACB00: LdPrVar
  loc_AACB02: LateMemCall
  loc_AACB08: LitStr "<title>"
  loc_AACB0B: FLdRfVar var_A8
  loc_AACB0E: FLdPr Me
  loc_AACB11:  = Me.Caption
  loc_AACB16: ILdRf var_A8
  loc_AACB19: ConcatStr
  loc_AACB1A: FStStrNoPop var_AC
  loc_AACB1D: LitStr "</title>"
  loc_AACB20: ConcatStr
  loc_AACB21: CVarStr var_BC
  loc_AACB24: PopAdLdVar
  loc_AACB25: FLdPr Me
  loc_AACB28: MemLdRfVar from_stack_1.global_64
  loc_AACB2B: LdPrVar
  loc_AACB2D: LateMemCall
  loc_AACB33: FFreeStr var_A8 = ""
  loc_AACB3A: FFree1Var var_BC = ""
  loc_AACB3D: LitVarStr var_94, "<style type=""text/css"">"
  loc_AACB42: PopAdLdVar
  loc_AACB43: FLdPr Me
  loc_AACB46: MemLdRfVar from_stack_1.global_64
  loc_AACB49: LdPrVar
  loc_AACB4B: LateMemCall
  loc_AACB51: LitVarStr var_94, ".Titulo1 {"
  loc_AACB56: PopAdLdVar
  loc_AACB57: FLdPr Me
  loc_AACB5A: MemLdRfVar from_stack_1.global_64
  loc_AACB5D: LdPrVar
  loc_AACB5F: LateMemCall
  loc_AACB65: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AACB6A: PopAdLdVar
  loc_AACB6B: FLdPr Me
  loc_AACB6E: MemLdRfVar from_stack_1.global_64
  loc_AACB71: LdPrVar
  loc_AACB73: LateMemCall
  loc_AACB79: LitVarStr var_94, " font-size: 18px;"
  loc_AACB7E: PopAdLdVar
  loc_AACB7F: FLdPr Me
  loc_AACB82: MemLdRfVar from_stack_1.global_64
  loc_AACB85: LdPrVar
  loc_AACB87: LateMemCall
  loc_AACB8D: LitVarStr var_94, " font-weight: bold;"
  loc_AACB92: PopAdLdVar
  loc_AACB93: FLdPr Me
  loc_AACB96: MemLdRfVar from_stack_1.global_64
  loc_AACB99: LdPrVar
  loc_AACB9B: LateMemCall
  loc_AACBA1: LitVarStr var_94, "}"
  loc_AACBA6: PopAdLdVar
  loc_AACBA7: FLdPr Me
  loc_AACBAA: MemLdRfVar from_stack_1.global_64
  loc_AACBAD: LdPrVar
  loc_AACBAF: LateMemCall
  loc_AACBB5: LitVarStr var_94, ".Titulo2 {"
  loc_AACBBA: PopAdLdVar
  loc_AACBBB: FLdPr Me
  loc_AACBBE: MemLdRfVar from_stack_1.global_64
  loc_AACBC1: LdPrVar
  loc_AACBC3: LateMemCall
  loc_AACBC9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AACBCE: PopAdLdVar
  loc_AACBCF: FLdPr Me
  loc_AACBD2: MemLdRfVar from_stack_1.global_64
  loc_AACBD5: LdPrVar
  loc_AACBD7: LateMemCall
  loc_AACBDD: LitVarStr var_94, " font-size: 14px;"
  loc_AACBE2: PopAdLdVar
  loc_AACBE3: FLdPr Me
  loc_AACBE6: MemLdRfVar from_stack_1.global_64
  loc_AACBE9: LdPrVar
  loc_AACBEB: LateMemCall
  loc_AACBF1: LitVarStr var_94, " font-weight: bold;"
  loc_AACBF6: PopAdLdVar
  loc_AACBF7: FLdPr Me
  loc_AACBFA: MemLdRfVar from_stack_1.global_64
  loc_AACBFD: LdPrVar
  loc_AACBFF: LateMemCall
  loc_AACC05: LitVarStr var_94, "}"
  loc_AACC0A: PopAdLdVar
  loc_AACC0B: FLdPr Me
  loc_AACC0E: MemLdRfVar from_stack_1.global_64
  loc_AACC11: LdPrVar
  loc_AACC13: LateMemCall
  loc_AACC19: LitVarStr var_94, ".Normal {"
  loc_AACC1E: PopAdLdVar
  loc_AACC1F: FLdPr Me
  loc_AACC22: MemLdRfVar from_stack_1.global_64
  loc_AACC25: LdPrVar
  loc_AACC27: LateMemCall
  loc_AACC2D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AACC32: PopAdLdVar
  loc_AACC33: FLdPr Me
  loc_AACC36: MemLdRfVar from_stack_1.global_64
  loc_AACC39: LdPrVar
  loc_AACC3B: LateMemCall
  loc_AACC41: LitVarStr var_94, " font-size: 14px;"
  loc_AACC46: PopAdLdVar
  loc_AACC47: FLdPr Me
  loc_AACC4A: MemLdRfVar from_stack_1.global_64
  loc_AACC4D: LdPrVar
  loc_AACC4F: LateMemCall
  loc_AACC55: LitVarStr var_94, " font-style: normal;"
  loc_AACC5A: PopAdLdVar
  loc_AACC5B: FLdPr Me
  loc_AACC5E: MemLdRfVar from_stack_1.global_64
  loc_AACC61: LdPrVar
  loc_AACC63: LateMemCall
  loc_AACC69: LitVarStr var_94, " font-weight: normal;"
  loc_AACC6E: PopAdLdVar
  loc_AACC6F: FLdPr Me
  loc_AACC72: MemLdRfVar from_stack_1.global_64
  loc_AACC75: LdPrVar
  loc_AACC77: LateMemCall
  loc_AACC7D: LitVarStr var_94, " font-variant: normal;"
  loc_AACC82: PopAdLdVar
  loc_AACC83: FLdPr Me
  loc_AACC86: MemLdRfVar from_stack_1.global_64
  loc_AACC89: LdPrVar
  loc_AACC8B: LateMemCall
  loc_AACC91: LitVarStr var_94, "}"
  loc_AACC96: PopAdLdVar
  loc_AACC97: FLdPr Me
  loc_AACC9A: MemLdRfVar from_stack_1.global_64
  loc_AACC9D: LdPrVar
  loc_AACC9F: LateMemCall
  loc_AACCA5: LitVarStr var_94, ".Encabezado {"
  loc_AACCAA: PopAdLdVar
  loc_AACCAB: FLdPr Me
  loc_AACCAE: MemLdRfVar from_stack_1.global_64
  loc_AACCB1: LdPrVar
  loc_AACCB3: LateMemCall
  loc_AACCB9: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AACCBE: PopAdLdVar
  loc_AACCBF: FLdPr Me
  loc_AACCC2: MemLdRfVar from_stack_1.global_64
  loc_AACCC5: LdPrVar
  loc_AACCC7: LateMemCall
  loc_AACCCD: LitVarStr var_94, " font-size: 13px;"
  loc_AACCD2: PopAdLdVar
  loc_AACCD3: FLdPr Me
  loc_AACCD6: MemLdRfVar from_stack_1.global_64
  loc_AACCD9: LdPrVar
  loc_AACCDB: LateMemCall
  loc_AACCE1: LitVarStr var_94, " font-weight: bold;"
  loc_AACCE6: PopAdLdVar
  loc_AACCE7: FLdPr Me
  loc_AACCEA: MemLdRfVar from_stack_1.global_64
  loc_AACCED: LdPrVar
  loc_AACCEF: LateMemCall
  loc_AACCF5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AACCFA: PopAdLdVar
  loc_AACCFB: FLdPr Me
  loc_AACCFE: MemLdRfVar from_stack_1.global_64
  loc_AACD01: LdPrVar
  loc_AACD03: LateMemCall
  loc_AACD09: LitVarStr var_94, "}"
  loc_AACD0E: PopAdLdVar
  loc_AACD0F: FLdPr Me
  loc_AACD12: MemLdRfVar from_stack_1.global_64
  loc_AACD15: LdPrVar
  loc_AACD17: LateMemCall
  loc_AACD1D: LitVarStr var_94, ".LineaDato {"
  loc_AACD22: PopAdLdVar
  loc_AACD23: FLdPr Me
  loc_AACD26: MemLdRfVar from_stack_1.global_64
  loc_AACD29: LdPrVar
  loc_AACD2B: LateMemCall
  loc_AACD31: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AACD36: PopAdLdVar
  loc_AACD37: FLdPr Me
  loc_AACD3A: MemLdRfVar from_stack_1.global_64
  loc_AACD3D: LdPrVar
  loc_AACD3F: LateMemCall
  loc_AACD45: LitVarStr var_94, " font-size: 10px;"
  loc_AACD4A: PopAdLdVar
  loc_AACD4B: FLdPr Me
  loc_AACD4E: MemLdRfVar from_stack_1.global_64
  loc_AACD51: LdPrVar
  loc_AACD53: LateMemCall
  loc_AACD59: LitVarStr var_94, "}"
  loc_AACD5E: PopAdLdVar
  loc_AACD5F: FLdPr Me
  loc_AACD62: MemLdRfVar from_stack_1.global_64
  loc_AACD65: LdPrVar
  loc_AACD67: LateMemCall
  loc_AACD6D: LitVarStr var_94, ".Totales {"
  loc_AACD72: PopAdLdVar
  loc_AACD73: FLdPr Me
  loc_AACD76: MemLdRfVar from_stack_1.global_64
  loc_AACD79: LdPrVar
  loc_AACD7B: LateMemCall
  loc_AACD81: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AACD86: PopAdLdVar
  loc_AACD87: FLdPr Me
  loc_AACD8A: MemLdRfVar from_stack_1.global_64
  loc_AACD8D: LdPrVar
  loc_AACD8F: LateMemCall
  loc_AACD95: LitVarStr var_94, " font-size: 12px;"
  loc_AACD9A: PopAdLdVar
  loc_AACD9B: FLdPr Me
  loc_AACD9E: MemLdRfVar from_stack_1.global_64
  loc_AACDA1: LdPrVar
  loc_AACDA3: LateMemCall
  loc_AACDA9: LitVarStr var_94, " font-weight: bold;"
  loc_AACDAE: PopAdLdVar
  loc_AACDAF: FLdPr Me
  loc_AACDB2: MemLdRfVar from_stack_1.global_64
  loc_AACDB5: LdPrVar
  loc_AACDB7: LateMemCall
  loc_AACDBD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AACDC2: PopAdLdVar
  loc_AACDC3: FLdPr Me
  loc_AACDC6: MemLdRfVar from_stack_1.global_64
  loc_AACDC9: LdPrVar
  loc_AACDCB: LateMemCall
  loc_AACDD1: LitVarStr var_94, "}"
  loc_AACDD6: PopAdLdVar
  loc_AACDD7: FLdPr Me
  loc_AACDDA: MemLdRfVar from_stack_1.global_64
  loc_AACDDD: LdPrVar
  loc_AACDDF: LateMemCall
  loc_AACDE5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_AACDEA: PopAdLdVar
  loc_AACDEB: FLdPr Me
  loc_AACDEE: MemLdRfVar from_stack_1.global_64
  loc_AACDF1: LdPrVar
  loc_AACDF3: LateMemCall
  loc_AACDF9: LitVarStr var_94, "</style>"
  loc_AACDFE: PopAdLdVar
  loc_AACDFF: FLdPr Me
  loc_AACE02: MemLdRfVar from_stack_1.global_64
  loc_AACE05: LdPrVar
  loc_AACE07: LateMemCall
  loc_AACE0D: LitI4 0
  loc_AACE12: FStStrCopy var_AC
  loc_AACE15: FLdRfVar var_AC
  loc_AACE18: LitI4 0
  loc_AACE1D: FStStrCopy var_A8
  loc_AACE20: FLdRfVar var_A8
  loc_AACE23: LitI2_Byte 0
  loc_AACE25: PopTmpLdAd2 var_BE
  loc_AACE28: FLdPr Me
  loc_AACE2B: MemLdRfVar from_stack_1.global_64
  loc_AACE2E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AACE33: FFreeStr var_A8 = ""
  loc_AACE3A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AACE3F: PopAdLdVar
  loc_AACE40: FLdPr Me
  loc_AACE43: MemLdRfVar from_stack_1.global_64
  loc_AACE46: LdPrVar
  loc_AACE48: LateMemCall
  loc_AACE4E: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AACE53: PopAdLdVar
  loc_AACE54: FLdPr Me
  loc_AACE57: MemLdRfVar from_stack_1.global_64
  loc_AACE5A: LdPrVar
  loc_AACE5C: LateMemCall
  loc_AACE62: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AACE67: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AACE6C: FStVarCopyObj var_BC
  loc_AACE6F: FLdRfVar var_BC
  loc_AACE72: FLdRfVar var_D0
  loc_AACE75: ImpAdCallFPR4  = Ucase()
  loc_AACE7A: FLdRfVar var_D0
  loc_AACE7D: ConcatVar var_E0
  loc_AACE81: LitVarStr var_F0, "</p>"
  loc_AACE86: ConcatVar var_100
  loc_AACE8A: PopAdLdVar
  loc_AACE8B: FLdPr Me
  loc_AACE8E: MemLdRfVar from_stack_1.global_64
  loc_AACE91: LdPrVar
  loc_AACE93: LateMemCall
  loc_AACE99: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AACEA4: LitStr "    <p>"
  loc_AACEA7: FLdRfVar var_A8
  loc_AACEAA: FLdPr Me
  loc_AACEAD:  = Me.Caption
  loc_AACEB2: ILdRf var_A8
  loc_AACEB5: ConcatStr
  loc_AACEB6: FStStrNoPop var_AC
  loc_AACEB9: LitStr "</p></th>"
  loc_AACEBC: ConcatStr
  loc_AACEBD: CVarStr var_BC
  loc_AACEC0: PopAdLdVar
  loc_AACEC1: FLdPr Me
  loc_AACEC4: MemLdRfVar from_stack_1.global_64
  loc_AACEC7: LdPrVar
  loc_AACEC9: LateMemCall
  loc_AACECF: FFreeStr var_A8 = ""
  loc_AACED6: FFree1Var var_BC = ""
  loc_AACED9: LitVarStr var_94, "  </tr>"
  loc_AACEDE: PopAdLdVar
  loc_AACEDF: FLdPr Me
  loc_AACEE2: MemLdRfVar from_stack_1.global_64
  loc_AACEE5: LdPrVar
  loc_AACEE7: LateMemCall
  loc_AACEED: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AACEF2: PopAdLdVar
  loc_AACEF3: FLdPr Me
  loc_AACEF6: MemLdRfVar from_stack_1.global_64
  loc_AACEF9: LdPrVar
  loc_AACEFB: LateMemCall
  loc_AACF01: LitVarStr var_94, "</table>"
  loc_AACF06: PopAdLdVar
  loc_AACF07: FLdPr Me
  loc_AACF0A: MemLdRfVar from_stack_1.global_64
  loc_AACF0D: LdPrVar
  loc_AACF0F: LateMemCall
  loc_AACF15: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AACF1A: PopAdLdVar
  loc_AACF1B: FLdPr Me
  loc_AACF1E: MemLdRfVar from_stack_1.global_64
  loc_AACF21: LdPrVar
  loc_AACF23: LateMemCall
  loc_AACF29: LitVarStr var_94, "  <THEAD>"
  loc_AACF2E: PopAdLdVar
  loc_AACF2F: FLdPr Me
  loc_AACF32: MemLdRfVar from_stack_1.global_64
  loc_AACF35: LdPrVar
  loc_AACF37: LateMemCall
  loc_AACF3D: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AACF42: PopAdLdVar
  loc_AACF43: FLdPr Me
  loc_AACF46: MemLdRfVar from_stack_1.global_64
  loc_AACF49: LdPrVar
  loc_AACF4B: LateMemCall
  loc_AACF51: LitVarStr var_94, "    <th>Código</th>"
  loc_AACF56: PopAdLdVar
  loc_AACF57: FLdPr Me
  loc_AACF5A: MemLdRfVar from_stack_1.global_64
  loc_AACF5D: LdPrVar
  loc_AACF5F: LateMemCall
  loc_AACF65: LitVarStr var_94, "    <th>CUIT/CUIL</th>"
  loc_AACF6A: PopAdLdVar
  loc_AACF6B: FLdPr Me
  loc_AACF6E: MemLdRfVar from_stack_1.global_64
  loc_AACF71: LdPrVar
  loc_AACF73: LateMemCall
  loc_AACF79: LitVarStr var_94, "    <th>Detalle</th>"
  loc_AACF7E: PopAdLdVar
  loc_AACF7F: FLdPr Me
  loc_AACF82: MemLdRfVar from_stack_1.global_64
  loc_AACF85: LdPrVar
  loc_AACF87: LateMemCall
  loc_AACF8D: LitVarStr var_94, "    <th>Fecha de vencimiento<br>de la clave</th>"
  loc_AACF92: PopAdLdVar
  loc_AACF93: FLdPr Me
  loc_AACF96: MemLdRfVar from_stack_1.global_64
  loc_AACF99: LdPrVar
  loc_AACF9B: LateMemCall
  loc_AACFA1: LitVarStr var_94, "    <th>Fecha de baja</th>"
  loc_AACFA6: PopAdLdVar
  loc_AACFA7: FLdPr Me
  loc_AACFAA: MemLdRfVar from_stack_1.global_64
  loc_AACFAD: LdPrVar
  loc_AACFAF: LateMemCall
  loc_AACFB5: LitVarStr var_94, "    <th>Inhabilitado</th>"
  loc_AACFBA: PopAdLdVar
  loc_AACFBB: FLdPr Me
  loc_AACFBE: MemLdRfVar from_stack_1.global_64
  loc_AACFC1: LdPrVar
  loc_AACFC3: LateMemCall
  loc_AACFC9: LitVarStr var_94, "    <th>Observaciones</th>"
  loc_AACFCE: PopAdLdVar
  loc_AACFCF: FLdPr Me
  loc_AACFD2: MemLdRfVar from_stack_1.global_64
  loc_AACFD5: LdPrVar
  loc_AACFD7: LateMemCall
  loc_AACFDD: LitVarStr var_94, "  </tr>"
  loc_AACFE2: PopAdLdVar
  loc_AACFE3: FLdPr Me
  loc_AACFE6: MemLdRfVar from_stack_1.global_64
  loc_AACFE9: LdPrVar
  loc_AACFEB: LateMemCall
  loc_AACFF1: LitVarStr var_94, "  </THEAD>"
  loc_AACFF6: PopAdLdVar
  loc_AACFF7: FLdPr Me
  loc_AACFFA: MemLdRfVar from_stack_1.global_64
  loc_AACFFD: LdPrVar
  loc_AACFFF: LateMemCall
  loc_AAD005: ExitProcHresult
  loc_AAD006: CStrVarTmp
End Function

Private Function Proc_208_13_981BA0() '981BA0
  'Data Table: 427DB0
  loc_981B60: LitVarStr var_94, "</table>"
  loc_981B65: PopAdLdVar
  loc_981B66: FLdPr Me
  loc_981B69: MemLdRfVar from_stack_1.global_64
  loc_981B6C: LdPrVar
  loc_981B6E: LateMemCall
  loc_981B74: LitVarStr var_94, "</body>"
  loc_981B79: PopAdLdVar
  loc_981B7A: FLdPr Me
  loc_981B7D: MemLdRfVar from_stack_1.global_64
  loc_981B80: LdPrVar
  loc_981B82: LateMemCall
  loc_981B88: LitVarStr var_94, "</html>"
  loc_981B8D: PopAdLdVar
  loc_981B8E: FLdPr Me
  loc_981B91: MemLdRfVar from_stack_1.global_64
  loc_981B94: LdPrVar
  loc_981B96: LateMemCall
  loc_981B9C: ExitProcHresult
End Function
