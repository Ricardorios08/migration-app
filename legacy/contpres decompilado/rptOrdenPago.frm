VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptOrdenPago
  Caption = "Orden de pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptOrdenPago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6990
  ClientHeight = 5865
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5610
    Width = 6990
    Height = 255
    TabIndex = 20
    OleObjectBlob = "rptOrdenPago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5640
    Top = 4680
    Width = 735
    Height = 615
    TabIndex = 18
    Cancel = -1  'True
    Picture = "rptOrdenPago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptOrdenPago.frx":0B9C
    Left = 5760
    Top = 4680
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4440
    Width = 1815
    Height = 1095
    TabIndex = 16
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4440
    Width = 3015
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6735
    Height = 4335
    TabIndex = 0
    Begin VB.CheckBox chkSintetico
      Caption = "Devengados/Débitos Sintéticos"
      Left = 600
      Top = 3840
      Width = 2655
      Height = 255
      TabIndex = 21
    End
    Begin VB.Frame Frame5
      Left = 600
      Top = 840
      Width = 5535
      Height = 1335
      TabIndex = 4
      Begin VB.ComboBox cboExpeImpu
        Left = 2040
        Top = 360
        Width = 2415
        Height = 315
        TabIndex = 6
      End
      Begin MSMask.MaskEdBox NumeLiquMsk
        Left = 2040
        Top = 840
        Width = 495
        Height = 285
        TabIndex = 8
        OleObjectBlob = "rptOrdenPago.frx":0C00
      End
      Begin VB.Label Label5
        Caption = "Expediente:"
        Left = 1080
        Top = 360
        Width = 840
        Height = 195
        TabIndex = 5
        AutoSize = -1  'True
      End
      Begin VB.Label Label4
        Caption = "Número de Liquidación:"
        Left = 240
        Top = 840
        Width = 1680
        Height = 195
        TabIndex = 7
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame Frame4
      Caption = "Orden de Pago Nº"
      Left = 600
      Top = 2280
      Width = 5535
      Height = 1335
      TabIndex = 9
      Begin VB.TextBox NumeOrpaTxt
        Left = 1680
        Top = 360
        Width = 3615
        Height = 315
        TabIndex = 10
        MaxLength = 400
      End
      Begin VB.Label Label3
        Caption = "(intercalar distintas órdenes con coma; ejemplo: 18,21,25)"
        Left = 240
        Top = 960
        Width = 4065
        Height = 195
        TabIndex = 12
        AutoSize = -1  'True
      End
      Begin VB.Label Label2
        Caption = "(desde-hasta separar con guión; ejemplo: 18-21)"
        Left = 240
        Top = 720
        Width = 3405
        Height = 195
        TabIndex = 11
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1320
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3960
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 600
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5760
    Top = 4800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptOrdenPago.frx":0C66
  End
End

Attribute VB_Name = "rptOrdenPago"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_2_00589EDC
  bStruc(52) As Byte ' String fields: 13
End Type

Private Type UDT_3_0058997C
  bStruc(56) As Byte ' String fields: 14
End Type

Private Type UDT_4_00583FA0
  bStruc(40) As Byte ' String fields: 10
End Type

Private Type UDT_5_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_6_0058A0E4
  bStruc(92) As Byte ' String fields: 22
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '987FAC
  'Data Table: 4A8D80
  loc_987F74: FLdPr Me
  loc_987F77: VCallAd Control_ID_statusBar
  loc_987F7A: FStAdFunc var_88
  loc_987F7D: FLdPr var_88
  loc_987F80: LateIdLdVar var_98 DispID_1 0
  loc_987F87: CStrVarTmp
  loc_987F88: CVarStr var_A8
  loc_987F8B: PopAdLdVar
  loc_987F8C: FLdPr Me
  loc_987F8F: VCallAd Control_ID_statusBar
  loc_987F92: FStAdFunc var_BC
  loc_987F95: FLdPr var_BC
  loc_987F98: LateIdSt
  loc_987F9D: FFreeAd var_88 = ""
  loc_987FA4: FFreeVar var_98 = ""
  loc_987FAB: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'A37FA8
  'Data Table: 4A8D80
  loc_A37DA0: FLdPr Me
  loc_A37DA3: MemLdRfVar from_stack_1.global_80
  loc_A37DA6: NewIfNullAd
  loc_A37DA9: FStAd var_88 
  loc_A37DAD: LitStr "SELECT IFNULL(Max(NumeOrpa),0) AS NumeOrpa FROM ordenpago WHERE PeriInfo = "
  loc_A37DB0: FLdRfVar var_90
  loc_A37DB3: FLdPr Me
  loc_A37DB6: VCallAd Control_ID_cboPeriodo
  loc_A37DB9: FStAdFunc var_8C
  loc_A37DBC: FLdPr var_8C
  loc_A37DBF:  = Me.Text
  loc_A37DC4: ILdRf var_90
  loc_A37DC7: ConcatStr
  loc_A37DC8: FStStrNoPop var_94
  loc_A37DCB: FLdPr var_88
  loc_A37DCE: Call clsbase.RedefineRS(from_stack_1v)
  loc_A37DD3: FFreeStr var_90 = ""
  loc_A37DDA: FFree1Ad var_8C
  loc_A37DDD: FLdRfVar var_98
  loc_A37DE0: FLdPr var_88
  loc_A37DE3: from_stack_1 = clsbase.RecordCount
  loc_A37DE8: ILdRf var_98
  loc_A37DEB: LitI4 0
  loc_A37DF0: GtI4
  loc_A37DF1: BranchF loc_A37E52
  loc_A37DF4: FLdRfVar var_C0
  loc_A37DF7: FLdRfVar var_B0
  loc_A37DFA: LitVarStr var_AC, "NumeOrpa"
  loc_A37DFF: PopAdLdVar
  loc_A37E00: FLdRfVar var_9C
  loc_A37E03: FLdRfVar var_8C
  loc_A37E06: FLdPr var_88
  loc_A37E09: from_stack_1v = clsbase.RsFrmGet()
  loc_A37E0E: FLdPr var_8C
  loc_A37E11:  = Me.Fields
  loc_A37E16: FLdPr var_9C
  loc_A37E19: from_stack_2 = Me.Item(from_stack_1)
  loc_A37E1E: FLdPr var_B0
  loc_A37E21:  = Me.Value
  loc_A37E26: FLdRfVar var_C0
  loc_A37E29: CStrVarTmp
  loc_A37E2A: FStStrNoPop var_90
  loc_A37E2D: FLdPr Me
  loc_A37E30: VCallAd Control_ID_NumeOrpaTxt
  loc_A37E33: FStAdFunc var_C4
  loc_A37E36: FLdPr var_C4
  loc_A37E39: Me.Text = from_stack_1
  loc_A37E3E: FFree1Str var_90
  loc_A37E41: FFreeAd var_8C = "": var_9C = "": var_B0 = ""
  loc_A37E4C: FFree1Var var_C0 = ""
  loc_A37E4F: Branch loc_A37E70
  loc_A37E52: LitI2_Byte 0
  loc_A37E54: CStrUI1
  loc_A37E56: FStStrNoPop var_90
  loc_A37E59: FLdPr Me
  loc_A37E5C: VCallAd Control_ID_NumeOrpaTxt
  loc_A37E5F: FStAdFunc var_8C
  loc_A37E62: FLdPr var_8C
  loc_A37E65: Me.Text = from_stack_1
  loc_A37E6A: FFree1Str var_90
  loc_A37E6D: FFree1Ad var_8C
  loc_A37E70: LitNothing
  loc_A37E72: FStAd var_88 
  loc_A37E76: LitI4 &HB
  loc_A37E7B: CI2I4
  loc_A37E7C: FLdRfVar var_8C
  loc_A37E7F: ImpAdLdRf MemVar_C44F9C
  loc_A37E82: NewIfNullPr Me
  loc_A37E85:  = Me.Global.Screen
  loc_A37E8A: FLdPr var_8C
  loc_A37E8D: Screen.MousePointer = from_stack_1
  loc_A37E92: FFree1Ad var_8C
  loc_A37E95: FLdPr Me
  loc_A37E98: VCallAd Control_ID_cboExpeImpu
  loc_A37E9B: FStAdFunc var_8C
  loc_A37E9E: FLdPr var_8C
  loc_A37EA1: Me.Clear
  loc_A37EA6: FFree1Ad var_8C
  loc_A37EA9: LitStr "SELECT DISTINCT ExpeImpu"
  loc_A37EAC: LitStr " FROM ordenpago"
  loc_A37EAF: ConcatStr
  loc_A37EB0: FStStrNoPop var_90
  loc_A37EB3: LitStr " WHERE PeriInfo = "
  loc_A37EB6: ConcatStr
  loc_A37EB7: FStStrNoPop var_C8
  loc_A37EBA: FLdRfVar var_94
  loc_A37EBD: FLdPr Me
  loc_A37EC0: VCallAd Control_ID_cboPeriodo
  loc_A37EC3: FStAdFunc var_8C
  loc_A37EC6: FLdPr var_8C
  loc_A37EC9:  = Me.Text
  loc_A37ECE: ILdRf var_94
  loc_A37ED1: ConcatStr
  loc_A37ED2: FStStrNoPop var_CC
  loc_A37ED5: LitStr " ORDER BY ExpeImpu"
  loc_A37ED8: ConcatStr
  loc_A37ED9: FStStrNoPop var_D0
  loc_A37EDC: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A37EE1: FFreeStr var_90 = "": var_C8 = "": var_94 = "": var_CC = ""
  loc_A37EEE: FFree1Ad var_8C
  loc_A37EF1: FLdRfVar var_98
  loc_A37EF4: ImpAdLdPr unk_4A8DAC
  loc_A37EF7: MemLdPr global_0
  loc_A37EFA:  = Me.RecordCount
  loc_A37EFF: ILdRf var_98
  loc_A37F02: LitI4 0
  loc_A37F07: GtI4
  loc_A37F08: BranchF loc_A37F88
  loc_A37F0B: ImpAdLdPr unk_4A8DAC
  loc_A37F0E: MemLdPr global_0
  loc_A37F11: Me.MoveFirst
  loc_A37F16: FLdRfVar var_D2
  loc_A37F19: ImpAdLdPr unk_4A8DAC
  loc_A37F1C: MemLdPr global_0
  loc_A37F1F:  = Me.EOF
  loc_A37F24: FLdI2 var_D2
  loc_A37F27: NotI4
  loc_A37F28: BranchF loc_A37F88
  loc_A37F2B: LitVar_Missing var_E4
  loc_A37F2E: PopAdLdVar
  loc_A37F2F: FLdRfVar var_C0
  loc_A37F32: FLdRfVar var_9C
  loc_A37F35: LitVarStr var_AC, "ExpeImpu"
  loc_A37F3A: PopAdLdVar
  loc_A37F3B: FLdRfVar var_8C
  loc_A37F3E: ImpAdLdPr unk_4A8DAC
  loc_A37F41: MemLdPr global_0
  loc_A37F44:  = Me.Fields
  loc_A37F49: FLdPr var_8C
  loc_A37F4C: from_stack_2 = Me.Item(from_stack_1)
  loc_A37F51: FLdPr var_9C
  loc_A37F54:  = Me.Value
  loc_A37F59: FLdRfVar var_C0
  loc_A37F5C: CStrVarTmp
  loc_A37F5D: FStStrNoPop var_90
  loc_A37F60: FLdPr Me
  loc_A37F63: VCallAd Control_ID_cboExpeImpu
  loc_A37F66: FStAdFunc var_B0
  loc_A37F69: FLdPr var_B0
  loc_A37F6C: Me.AddItem from_stack_1, from_stack_2
  loc_A37F71: FFree1Str var_90
  loc_A37F74: FFreeAd var_8C = "": var_9C = ""
  loc_A37F7D: FFree1Var var_C0 = ""
  loc_A37F80: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_A37F85: Branch loc_A37F16
  loc_A37F88: LitI4 0
  loc_A37F8D: CI2I4
  loc_A37F8E: FLdRfVar var_8C
  loc_A37F91: ImpAdLdRf MemVar_C44F9C
  loc_A37F94: NewIfNullPr Me
  loc_A37F97:  = Me.Global.Screen
  loc_A37F9C: FLdPr var_8C
  loc_A37F9F: Screen.MousePointer = from_stack_1
  loc_A37FA4: FFree1Ad var_8C
  loc_A37FA7: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95F498
  'Data Table: 4A8D80
  loc_95F480: ILdRf Me
  loc_95F483: CastAd
  loc_95F486: FStAdFunc var_88
  loc_95F489: FLdRfVar var_88
  loc_95F48C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95F491: FFree1Ad var_88
  loc_95F494: ExitProcHresult
End Sub

Private Sub NumeLiquMsk_UnknownEvent_0 '94ECC0
  'Data Table: 4A8D80
  loc_94ECAC: FLdPr Me
  loc_94ECAF: VCallAd Control_ID_NumeLiquMsk
  loc_94ECB2: CVarAd
  loc_94ECB6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94ECBB: FFree1Var var_94 = ""
  loc_94ECBE: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'A8133C
  'Data Table: 4A8D80
  loc_A80F94: LitStr "Municipalidad de Guaymallén"
  loc_A80F97: LitStr "Municipalidad de General Alvear"
  loc_A80F9A: EqStr
  loc_A80F9C: BranchF loc_A812FD
  loc_A80F9F: LitStr vbNullString
  loc_A80FA2: FLdPr Me
  loc_A80FA5: MemStStrCopy
  loc_A80FA9: LitI2_Byte 0
  loc_A80FAB: PopTmpLdAd2 var_8E
  loc_A80FAE: Call cboExpeImpu_Validate(from_stack_1v)
  loc_A80FB3: FLdPr Me
  loc_A80FB6: MemLdStr global_104
  loc_A80FB9: LitStr vbNullString
  loc_A80FBC: NeStr
  loc_A80FBE: BranchF loc_A80FC4
  loc_A80FC1: Branch loc_A81313
  loc_A80FC4: LitI2_Byte 0
  loc_A80FC6: PopTmpLdAd2 var_8E
  loc_A80FC9: Call NumeOrpaTxt_Validate(from_stack_1v)
  loc_A80FCE: FLdPr Me
  loc_A80FD1: MemLdStr global_104
  loc_A80FD4: LitStr vbNullString
  loc_A80FD7: NeStr
  loc_A80FD9: BranchF loc_A80FDF
  loc_A80FDC: Branch loc_A81313
  loc_A80FDF: FLdRfVar var_98
  loc_A80FE2: FLdPr Me
  loc_A80FE5: VCallAd Control_ID_cboExpeImpu
  loc_A80FE8: FStAdFunc var_94
  loc_A80FEB: FLdPr var_94
  loc_A80FEE:  = Me.Text
  loc_A80FF3: ILdRf var_98
  loc_A80FF6: LitStr vbNullString
  loc_A80FF9: NeStr
  loc_A80FFB: FFree1Str var_98
  loc_A80FFE: FFree1Ad var_94
  loc_A81001: BranchF loc_A81040
  loc_A81004: LitStr " AND ordenpago.ExpeImpu = '"
  loc_A81007: FLdRfVar var_98
  loc_A8100A: FLdPr Me
  loc_A8100D: VCallAd Control_ID_cboExpeImpu
  loc_A81010: FStAdFunc var_94
  loc_A81013: FLdPr var_94
  loc_A81016:  = Me.Text
  loc_A8101B: ILdRf var_98
  loc_A8101E: ConcatStr
  loc_A8101F: FStStrNoPop var_9C
  loc_A81022: LitStr "'"
  loc_A81025: ConcatStr
  loc_A81026: FStStr var_88
  loc_A81029: FFreeStr var_98 = ""
  loc_A81030: FFree1Ad var_94
  loc_A81033: LitStr vbNullString
  loc_A81036: FLdPr Me
  loc_A81039: MemStStrCopy
  loc_A8103D: Branch loc_A81046
  loc_A81040: LitStr vbNullString
  loc_A81043: FStStrCopy var_88
  loc_A81046: FLdPr Me
  loc_A81049: VCallAd Control_ID_NumeLiquMsk
  loc_A8104C: FStAdFunc var_94
  loc_A8104F: FLdPr var_94
  loc_A81052: LateIdLdVar var_AC DispID_22 0
  loc_A81059: PopAd
  loc_A8105B: FLdPr Me
  loc_A8105E: VCallAd Control_ID_NumeLiquMsk
  loc_A81061: FStAdFunc var_B0
  loc_A81064: FLdPr var_B0
  loc_A81067: LateIdLdVar var_C0 DispID_22 0
  loc_A8106E: PopAd
  loc_A81070: LitVarStr var_F0, vbNullString
  loc_A81075: FStVarCopyObj var_100
  loc_A81078: FLdRfVar var_100
  loc_A8107B: LitStr " AND ordenpago.NumeLiqu = "
  loc_A8107E: FLdRfVar var_C0
  loc_A81081: CStrVarTmp
  loc_A81082: FStStrNoPop var_9C
  loc_A81085: ConcatStr
  loc_A81086: CVarStr var_E0
  loc_A81089: FLdRfVar var_AC
  loc_A8108C: CStrVarTmp
  loc_A8108D: FStStrNoPop var_98
  loc_A81090: LitStr vbNullString
  loc_A81093: NeStr
  loc_A81095: CVarBoolI2 var_D0
  loc_A81099: FLdRfVar var_110
  loc_A8109C: ImpAdCallFPR4  = IIf(, , )
  loc_A810A1: FLdRfVar var_110
  loc_A810A4: CStrVarTmp
  loc_A810A5: FStStr var_8C
  loc_A810A8: FFreeStr var_98 = ""
  loc_A810AF: FFreeAd var_94 = ""
  loc_A810B6: FFreeVar var_AC = "": var_C0 = "": var_D0 = "": var_E0 = "": var_100 = ""
  loc_A810C5: LitStr "SELECT NumeOrpa, TipoOrpa, ExpeImpu"
  loc_A810C8: LitStr " FROM ordenpago"
  loc_A810CB: ConcatStr
  loc_A810CC: FStStrNoPop var_98
  loc_A810CF: LitStr " WHERE PeriInfo = "
  loc_A810D2: ConcatStr
  loc_A810D3: FStStrNoPop var_114
  loc_A810D6: FLdRfVar var_9C
  loc_A810D9: FLdPr Me
  loc_A810DC: VCallAd Control_ID_cboPeriodo
  loc_A810DF: FStAdFunc var_94
  loc_A810E2: FLdPr var_94
  loc_A810E5:  = Me.Text
  loc_A810EA: ILdRf var_9C
  loc_A810ED: ConcatStr
  loc_A810EE: FStStrNoPop var_118
  loc_A810F1: FLdPr Me
  loc_A810F4: MemLdStr global_108
  loc_A810F7: ConcatStr
  loc_A810F8: FStStrNoPop var_11C
  loc_A810FB: ILdRf var_88
  loc_A810FE: ConcatStr
  loc_A810FF: FStStrNoPop var_120
  loc_A81102: ILdRf var_8C
  loc_A81105: ConcatStr
  loc_A81106: FStStrNoPop var_124
  loc_A81109: LitStr " ORDER BY NumeOrpa;"
  loc_A8110C: ConcatStr
  loc_A8110D: FStStrNoPop var_128
  loc_A81110: FLdPr Me
  loc_A81113: MemLdRfVar from_stack_1.global_76
  loc_A81116: NewIfNullPr clsbase
  loc_A81119: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8111E: FFreeStr var_98 = "": var_114 = "": var_9C = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A81131: FFree1Ad var_94
  loc_A81134: FLdRfVar var_12C
  loc_A81137: FLdPr Me
  loc_A8113A: MemLdRfVar from_stack_1.global_76
  loc_A8113D: NewIfNullPr clsbase
  loc_A81140: from_stack_1 = clsbase.RecordCount
  loc_A81145: ILdRf var_12C
  loc_A81148: LitI4 0
  loc_A8114D: EqI4
  loc_A8114E: BranchF loc_A81164
  loc_A81151: LitI4 0
  loc_A81156: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A81159: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8115E: Branch loc_A81313
  loc_A81161: Branch loc_A812E4
  loc_A81164: FLdPr Me
  loc_A81167: MemLdRfVar from_stack_1.global_76
  loc_A8116A: NewIfNullPr clsbase
  loc_A8116D: Call clsbase.MoveFirst()
  loc_A81172: FLdRfVar var_8E
  loc_A81175: FLdPr Me
  loc_A81178: MemLdRfVar from_stack_1.global_76
  loc_A8117B: NewIfNullPr clsbase
  loc_A8117E: from_stack_1 = clsbase.EOF
  loc_A81183: FLdI2 var_8E
  loc_A81186: NotI4
  loc_A81187: BranchF loc_A812E4
  loc_A8118A: FLdRfVar var_9C
  loc_A8118D: FLdPr Me
  loc_A81190:  = Me.Tag
  loc_A81195: FLdRfVar var_98
  loc_A81198: FLdPr Me
  loc_A8119B:  = Me.Tag
  loc_A811A0: FLdZeroAd var_98
  loc_A811A3: CVarStr var_100
  loc_A811A6: LitVarStr var_13C, " - "
  loc_A811AB: FStVarCopyObj var_C0
  loc_A811AE: FLdRfVar var_C0
  loc_A811B1: LitVarStr var_F0, vbNullString
  loc_A811B6: FStVarCopyObj var_AC
  loc_A811B9: FLdRfVar var_AC
  loc_A811BC: ILdRf var_9C
  loc_A811BF: LitStr vbNullString
  loc_A811C2: EqStr
  loc_A811C4: CVarBoolI2 var_D0
  loc_A811C8: FLdRfVar var_E0
  loc_A811CB: ImpAdCallFPR4  = IIf(, , )
  loc_A811D0: FLdRfVar var_E0
  loc_A811D3: ConcatVar var_110
  loc_A811D7: LitVarStr var_14C, "Expte "
  loc_A811DC: ConcatVar var_15C
  loc_A811E0: FLdRfVar var_114
  loc_A811E3: FLdPr Me
  loc_A811E6: VCallAd Control_ID_cboPeriodo
  loc_A811E9: FStAdFunc var_94
  loc_A811EC: FLdPr var_94
  loc_A811EF:  = Me.Text
  loc_A811F4: FLdZeroAd var_114
  loc_A811F7: CVarStr var_16C
  loc_A811FA: ConcatVar var_17C
  loc_A811FE: LitVarStr var_18C, "-"
  loc_A81203: ConcatVar var_19C
  loc_A81207: FLdRfVar var_1C4
  loc_A8120A: FLdRfVar var_1B4
  loc_A8120D: LitVarStr var_1B0, "ExpeImpu"
  loc_A81212: PopAdLdVar
  loc_A81213: FLdRfVar var_1A0
  loc_A81216: FLdRfVar var_B0
  loc_A81219: FLdPr Me
  loc_A8121C: MemLdRfVar from_stack_1.global_76
  loc_A8121F: NewIfNullPr clsbase
  loc_A81222: from_stack_1v = clsbase.RsFrmGet()
  loc_A81227: FLdPr var_B0
  loc_A8122A:  = Me.Fields
  loc_A8122F: FLdPr var_1A0
  loc_A81232: from_stack_2 = Me.Item(from_stack_1)
  loc_A81237: FLdPr var_1B4
  loc_A8123A:  = Me.Value
  loc_A8123F: FLdRfVar var_1C4
  loc_A81242: ConcatVar var_1D4
  loc_A81246: LitVarStr var_1E4, " - Orden de Pago Nro "
  loc_A8124B: ConcatVar var_1F4
  loc_A8124F: FLdRfVar var_220
  loc_A81252: FLdRfVar var_210
  loc_A81255: LitVarStr var_20C, "NumeOrpa"
  loc_A8125A: PopAdLdVar
  loc_A8125B: FLdRfVar var_1FC
  loc_A8125E: FLdRfVar var_1F8
  loc_A81261: FLdPr Me
  loc_A81264: MemLdRfVar from_stack_1.global_76
  loc_A81267: NewIfNullPr clsbase
  loc_A8126A: from_stack_1v = clsbase.RsFrmGet()
  loc_A8126F: FLdPr var_1F8
  loc_A81272:  = Me.Fields
  loc_A81277: FLdPr var_1FC
  loc_A8127A: from_stack_2 = Me.Item(from_stack_1)
  loc_A8127F: FLdPr var_210
  loc_A81282:  = Me.Value
  loc_A81287: FLdRfVar var_220
  loc_A8128A: ConcatVar var_230
  loc_A8128E: CStrVarVal var_118
  loc_A81292: FLdPr Me
  loc_A81295: Me.Tag = from_stack_1
  loc_A8129A: FFreeStr var_9C = ""
  loc_A812A1: FFreeAd var_94 = "": var_B0 = "": var_1A0 = "": var_1B4 = "": var_1F8 = "": var_1FC = ""
  loc_A812B2: FFreeVar var_D0 = "": var_AC = "": var_C0 = "": var_100 = "": var_E0 = "": var_110 = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1C4 = "": var_1D4 = "": var_1F4 = "": var_220 = ""
  loc_A812D3: FLdPr Me
  loc_A812D6: MemLdRfVar from_stack_1.global_76
  loc_A812D9: NewIfNullPr clsbase
  loc_A812DC: Call clsbase.MoveSiguiente()
  loc_A812E1: Branch loc_A81172
  loc_A812E4: LitI2_Byte 0
  loc_A812E6: ILdRf Me
  loc_A812E9: CastAd
  loc_A812EC: FStAdFunc var_94
  loc_A812EF: FLdRfVar var_94
  loc_A812F2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_A812F7: FFree1Ad var_94
  loc_A812FA: Branch loc_A81313
  loc_A812FD: LitI2_Byte 0
  loc_A812FF: ILdRf Me
  loc_A81302: CastAd
  loc_A81305: FStAdFunc var_94
  loc_A81308: FLdRfVar var_94
  loc_A8130B: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_A81310: FFree1Ad var_94
  loc_A81313: LitI4 0
  loc_A81318: CI2I4
  loc_A81319: FLdPr Me
  loc_A8131C: Me.MousePointer = from_stack_1
  loc_A81321: LitVarStr var_D0, vbNullString
  loc_A81326: PopAdLdVar
  loc_A81327: FLdPr Me
  loc_A8132A: VCallAd Control_ID_statusBar
  loc_A8132D: FStAdFunc var_94
  loc_A81330: FLdPr var_94
  loc_A81333: LateIdSt
  loc_A81338: FFree1Ad var_94
  loc_A8133B: ExitProcHresult
End Sub

Private Sub NumeOrpaTxt_GotFocus() '94EC78
  'Data Table: 4A8D80
  loc_94EC64: FLdPr Me
  loc_94EC67: VCallAd Control_ID_NumeOrpaTxt
  loc_94EC6A: CVarAd
  loc_94EC6E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EC73: FFree1Var var_94 = ""
  loc_94EC76: ExitProcHresult
End Sub

Private Sub NumeOrpaTxt_KeyPress(KeyAscii As Integer) '97DE28
  'Data Table: 4A8D80
  loc_97DDF4: LitStr "1234567890-,."
  loc_97DDF7: FStStrCopy var_88
  loc_97DDFA: FLdRfVar var_88
  loc_97DDFD: ILdRf KeyAscii
  loc_97DE00: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97DE05: IStI2 KeyAscii
  loc_97DE08: FFree1Str var_88
  loc_97DE0B: ILdI2 KeyAscii
  loc_97DE0E: LitStr "."
  loc_97DE11: ImpAdCallI2 Asc()
  loc_97DE16: EqI2
  loc_97DE17: BranchF loc_97DE25
  loc_97DE1A: LitStr ","
  loc_97DE1D: ImpAdCallI2 Asc()
  loc_97DE22: IStI2 KeyAscii
  loc_97DE25: ExitProcHresult
End Sub

Private Sub NumeOrpaTxt_Validate(Cancel As Boolean) 'A7E444
  'Data Table: 4A8D80
  loc_A7E070: LitStr vbNullString
  loc_A7E073: FLdPr Me
  loc_A7E076: MemStStrCopy
  loc_A7E07A: FLdRfVar var_8C
  loc_A7E07D: FLdPr Me
  loc_A7E080: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E083: FStAdFunc var_88
  loc_A7E086: FLdPr var_88
  loc_A7E089:  = Me.Text
  loc_A7E08E: LitI2_Byte 0
  loc_A7E090: PopTmpLdAd2 var_92
  loc_A7E093: LitI2_Byte 0
  loc_A7E095: PopTmpLdAd2 var_90
  loc_A7E098: LitI2_Byte 0
  loc_A7E09A: PopTmpLdAd2 var_8E
  loc_A7E09D: ILdRf var_8C
  loc_A7E0A0: LitStr "Orden de pago"
  loc_A7E0A3: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A7E0A8: FStStrNoPop var_98
  loc_A7E0AB: FLdPr Me
  loc_A7E0AE: MemStStrCopy
  loc_A7E0B2: FFreeStr var_8C = ""
  loc_A7E0B9: FFree1Ad var_88
  loc_A7E0BC: FLdPr Me
  loc_A7E0BF: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E0C2: FStAdFunc var_A4
  loc_A7E0C5: LitNothing
  loc_A7E0C7: CastAd
  loc_A7E0CA: FStAdFunc var_A0
  loc_A7E0CD: FLdRfVar var_A0
  loc_A7E0D0: FLdZeroAd var_A4
  loc_A7E0D3: FStAdFuncNoPop
  loc_A7E0D6: CastAd
  loc_A7E0D9: FStAdFunc var_9C
  loc_A7E0DC: FLdRfVar var_9C
  loc_A7E0DF: FLdPr Me
  loc_A7E0E2: MemLdRfVar from_stack_1.global_104
  loc_A7E0E5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7E0EA: IStI2 Cancel
  loc_A7E0ED: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7E0F8: ILdI2 Cancel
  loc_A7E0FB: NotI4
  loc_A7E0FC: BranchF loc_A7E440
  loc_A7E0FF: LitI4 1
  loc_A7E104: FLdRfVar var_8C
  loc_A7E107: FLdPr Me
  loc_A7E10A: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E10D: FStAdFunc var_88
  loc_A7E110: FLdPr var_88
  loc_A7E113:  = Me.Text
  loc_A7E118: ILdRf var_8C
  loc_A7E11B: LitStr "-"
  loc_A7E11E: LitI4 0
  loc_A7E123: FnInStr4
  loc_A7E125: LitI4 0
  loc_A7E12A: GtI4
  loc_A7E12B: FFree1Str var_8C
  loc_A7E12E: FFree1Ad var_88
  loc_A7E131: BranchF loc_A7E2C5
  loc_A7E134: LitI4 1
  loc_A7E139: FLdRfVar var_8C
  loc_A7E13C: FLdPr Me
  loc_A7E13F: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E142: FStAdFunc var_88
  loc_A7E145: FLdPr var_88
  loc_A7E148:  = Me.Text
  loc_A7E14D: ILdRf var_8C
  loc_A7E150: LitStr ","
  loc_A7E153: LitI4 0
  loc_A7E158: FnInStr4
  loc_A7E15A: LitI4 0
  loc_A7E15F: GtI4
  loc_A7E160: FFree1Str var_8C
  loc_A7E163: FFree1Ad var_88
  loc_A7E166: BranchF loc_A7E176
  loc_A7E169: LitStr "primero un guión, y luego una coma..."
  loc_A7E16C: FLdPr Me
  loc_A7E16F: MemStStrCopy
  loc_A7E173: Branch loc_A7E2C2
  loc_A7E176: FLdRfVar var_98
  loc_A7E179: FLdPr Me
  loc_A7E17C: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E17F: FStAdFunc var_9C
  loc_A7E182: FLdPr var_9C
  loc_A7E185:  = Me.Text
  loc_A7E18A: LitI4 1
  loc_A7E18F: FLdRfVar var_8C
  loc_A7E192: FLdPr Me
  loc_A7E195: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E198: FStAdFunc var_88
  loc_A7E19B: FLdPr var_88
  loc_A7E19E:  = Me.Text
  loc_A7E1A3: ILdRf var_8C
  loc_A7E1A6: LitStr "-"
  loc_A7E1A9: LitI4 0
  loc_A7E1AE: FnInStr4
  loc_A7E1B0: LitI4 0
  loc_A7E1B5: LitI4 -1
  loc_A7E1BA: LitStr "-"
  loc_A7E1BD: ILdRf var_98
  loc_A7E1C0: ImpAdCallI2 InStrRev(, , , )
  loc_A7E1C5: NeI4
  loc_A7E1C6: FFreeStr var_8C = ""
  loc_A7E1CD: FFreeAd var_88 = ""
  loc_A7E1D4: BranchF loc_A7E1E4
  loc_A7E1D7: LitStr "tiene más de un guión..."
  loc_A7E1DA: FLdPr Me
  loc_A7E1DD: MemStStrCopy
  loc_A7E1E1: Branch loc_A7E2C2
  loc_A7E1E4: FLdRfVar var_8C
  loc_A7E1E7: FLdPr Me
  loc_A7E1EA: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E1ED: FStAdFunc var_88
  loc_A7E1F0: FLdPr var_88
  loc_A7E1F3:  = Me.Text
  loc_A7E1F8: FLdRfVar var_B0
  loc_A7E1FB: FLdPr Me
  loc_A7E1FE: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E201: FStAdFunc var_A0
  loc_A7E204: FLdPr var_A0
  loc_A7E207:  = Me.Text
  loc_A7E20C: FLdRfVar var_B4
  loc_A7E20F: FLdPr Me
  loc_A7E212: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E215: FStAdFunc var_A4
  loc_A7E218: FLdPr var_A4
  loc_A7E21B:  = Me.Text
  loc_A7E220: LitStr " AND NumeOrpa >= '"
  loc_A7E223: LitI4 1
  loc_A7E228: FLdRfVar var_98
  loc_A7E22B: FLdPr Me
  loc_A7E22E: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E231: FStAdFunc var_9C
  loc_A7E234: FLdPr var_9C
  loc_A7E237:  = Me.Text
  loc_A7E23C: ILdRf var_98
  loc_A7E23F: LitStr "-"
  loc_A7E242: LitI4 0
  loc_A7E247: FnInStr4
  loc_A7E249: LitI4 1
  loc_A7E24E: SubI4
  loc_A7E24F: ILdRf var_8C
  loc_A7E252: ImpAdCallI2 Left$(, )
  loc_A7E257: FStStrNoPop var_A8
  loc_A7E25A: ConcatStr
  loc_A7E25B: FStStrNoPop var_AC
  loc_A7E25E: LitStr "' AND NumeOrpa <= '"
  loc_A7E261: ConcatStr
  loc_A7E262: FStStrNoPop var_D8
  loc_A7E265: LitVar_Missing var_D4
  loc_A7E268: LitI4 1
  loc_A7E26D: ILdRf var_B4
  loc_A7E270: LitStr "-"
  loc_A7E273: LitI4 0
  loc_A7E278: FnInStr4
  loc_A7E27A: LitI4 1
  loc_A7E27F: AddI4
  loc_A7E280: ILdRf var_B0
  loc_A7E283: ImpAdCallI2 Mid$(, , )
  loc_A7E288: FStStrNoPop var_DC
  loc_A7E28B: ConcatStr
  loc_A7E28C: FStStrNoPop var_E0
  loc_A7E28F: LitStr "'"
  loc_A7E292: ConcatStr
  loc_A7E293: FStStrNoPop var_E4
  loc_A7E296: FLdPr Me
  loc_A7E299: MemStStrCopy
  loc_A7E29D: FFreeStr var_98 = "": var_8C = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A7E2B4: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7E2BF: FFree1Var var_D4 = ""
  loc_A7E2C2: Branch loc_A7E404
  loc_A7E2C5: LitI4 1
  loc_A7E2CA: FLdRfVar var_8C
  loc_A7E2CD: FLdPr Me
  loc_A7E2D0: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E2D3: FStAdFunc var_88
  loc_A7E2D6: FLdPr var_88
  loc_A7E2D9:  = Me.Text
  loc_A7E2DE: ILdRf var_8C
  loc_A7E2E1: LitStr ","
  loc_A7E2E4: LitI4 0
  loc_A7E2E9: FnInStr4
  loc_A7E2EB: LitI4 0
  loc_A7E2F0: GtI4
  loc_A7E2F1: FFree1Str var_8C
  loc_A7E2F4: FFree1Ad var_88
  loc_A7E2F7: BranchF loc_A7E396
  loc_A7E2FA: LitI4 1
  loc_A7E2FF: FLdRfVar var_8C
  loc_A7E302: FLdPr Me
  loc_A7E305: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E308: FStAdFunc var_88
  loc_A7E30B: FLdPr var_88
  loc_A7E30E:  = Me.Text
  loc_A7E313: ILdRf var_8C
  loc_A7E316: LitStr "-"
  loc_A7E319: LitI4 0
  loc_A7E31E: FnInStr4
  loc_A7E320: LitI4 0
  loc_A7E325: GtI4
  loc_A7E326: FFree1Str var_8C
  loc_A7E329: FFree1Ad var_88
  loc_A7E32C: BranchF loc_A7E33C
  loc_A7E32F: LitStr "primero una coma, y luego un guión..."
  loc_A7E332: FLdPr Me
  loc_A7E335: MemStStrCopy
  loc_A7E339: Branch loc_A7E393
  loc_A7E33C: FLdRfVar var_8C
  loc_A7E33F: FLdPr Me
  loc_A7E342: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E345: FStAdFunc var_88
  loc_A7E348: FLdPr var_88
  loc_A7E34B:  = Me.Text
  loc_A7E350: LitStr " AND NumeOrpa IN ('"
  loc_A7E353: LitI4 0
  loc_A7E358: LitI4 -1
  loc_A7E35D: LitI4 1
  loc_A7E362: LitStr "','"
  loc_A7E365: LitStr ","
  loc_A7E368: ILdRf var_8C
  loc_A7E36B: ImpAdCallI2 Replace(, , , , , )
  loc_A7E370: FStStrNoPop var_98
  loc_A7E373: ConcatStr
  loc_A7E374: FStStrNoPop var_A8
  loc_A7E377: LitStr "')"
  loc_A7E37A: ConcatStr
  loc_A7E37B: FStStrNoPop var_AC
  loc_A7E37E: FLdPr Me
  loc_A7E381: MemStStrCopy
  loc_A7E385: FFreeStr var_8C = "": var_98 = "": var_A8 = ""
  loc_A7E390: FFree1Ad var_88
  loc_A7E393: Branch loc_A7E404
  loc_A7E396: FLdRfVar var_8C
  loc_A7E399: FLdPr Me
  loc_A7E39C: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E39F: FStAdFunc var_88
  loc_A7E3A2: FLdPr var_88
  loc_A7E3A5:  = Me.Text
  loc_A7E3AA: FLdZeroAd var_8C
  loc_A7E3AD: CVarStr var_D4
  loc_A7E3B0: ImpAdCallI2 IsNumeric()
  loc_A7E3B5: NotI4
  loc_A7E3B6: FFree1Ad var_88
  loc_A7E3B9: FFree1Var var_D4 = ""
  loc_A7E3BC: BranchF loc_A7E3CC
  loc_A7E3BF: LitStr "no es un número..."
  loc_A7E3C2: FLdPr Me
  loc_A7E3C5: MemStStrCopy
  loc_A7E3C9: Branch loc_A7E404
  loc_A7E3CC: LitStr " AND NumeOrpa = '"
  loc_A7E3CF: FLdRfVar var_8C
  loc_A7E3D2: FLdPr Me
  loc_A7E3D5: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E3D8: FStAdFunc var_88
  loc_A7E3DB: FLdPr var_88
  loc_A7E3DE:  = Me.Text
  loc_A7E3E3: ILdRf var_8C
  loc_A7E3E6: ConcatStr
  loc_A7E3E7: FStStrNoPop var_98
  loc_A7E3EA: LitStr "'"
  loc_A7E3ED: ConcatStr
  loc_A7E3EE: FStStrNoPop var_A8
  loc_A7E3F1: FLdPr Me
  loc_A7E3F4: MemStStrCopy
  loc_A7E3F8: FFreeStr var_8C = "": var_98 = ""
  loc_A7E401: FFree1Ad var_88
  loc_A7E404: FLdPr Me
  loc_A7E407: VCallAd Control_ID_NumeOrpaTxt
  loc_A7E40A: FStAdFunc var_A4
  loc_A7E40D: LitNothing
  loc_A7E40F: CastAd
  loc_A7E412: FStAdFunc var_A0
  loc_A7E415: FLdRfVar var_A0
  loc_A7E418: FLdZeroAd var_A4
  loc_A7E41B: FStAdFuncNoPop
  loc_A7E41E: CastAd
  loc_A7E421: FStAdFunc var_9C
  loc_A7E424: FLdRfVar var_9C
  loc_A7E427: FLdPr Me
  loc_A7E42A: MemLdRfVar from_stack_1.global_104
  loc_A7E42D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7E432: IStI2 Cancel
  loc_A7E435: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7E440: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '956FE4
  'Data Table: 4A8D80
  loc_956FCC: ILdRf Me
  loc_956FCF: CastAd
  loc_956FD2: FStAdFunc var_88
  loc_956FD5: FLdRfVar var_88
  loc_956FD8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_956FDD: FFree1Ad var_88
  loc_956FE0: ExitProcHresult
End Sub

Private Sub Form_Load() '9D7290
  'Data Table: 4A8D80
  loc_9D71A0: LitI2_Byte 0
  loc_9D71A2: ImpAdStI2 MemVar_C3D840
  loc_9D71A5: LitI2_Byte &HFF
  loc_9D71A7: ImpAdStI2 MemVar_C3D842
  loc_9D71AA: ILdRf Me
  loc_9D71AD: CastAd
  loc_9D71B0: FStAdFunc var_88
  loc_9D71B3: FLdRfVar var_88
  loc_9D71B6: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D71BB: FFree1Ad var_88
  loc_9D71BE: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D71C1: FLdPr Me
  loc_9D71C4: MemLdRfVar from_stack_1.global_72
  loc_9D71C7: NewIfNullPr clsbase
  loc_9D71CA: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D71CF: FLdRfVar var_8C
  loc_9D71D2: FLdPr Me
  loc_9D71D5: MemLdRfVar from_stack_1.global_72
  loc_9D71D8: NewIfNullPr clsbase
  loc_9D71DB: from_stack_1 = clsbase.RecordCount
  loc_9D71E0: ILdRf var_8C
  loc_9D71E3: LitI4 0
  loc_9D71E8: GtI4
  loc_9D71E9: BranchF loc_9D7288
  loc_9D71EC: FLdPr Me
  loc_9D71EF: MemLdRfVar from_stack_1.global_72
  loc_9D71F2: NewIfNullPr clsbase
  loc_9D71F5: Call clsbase.MoveFirst()
  loc_9D71FA: FLdRfVar var_8E
  loc_9D71FD: FLdPr Me
  loc_9D7200: MemLdRfVar from_stack_1.global_72
  loc_9D7203: NewIfNullPr clsbase
  loc_9D7206: from_stack_1 = clsbase.EOF
  loc_9D720B: FLdI2 var_8E
  loc_9D720E: NotI4
  loc_9D720F: BranchF loc_9D7288
  loc_9D7212: LitVar_Missing var_CC
  loc_9D7215: PopAdLdVar
  loc_9D7216: FLdRfVar var_B8
  loc_9D7219: FLdRfVar var_A8
  loc_9D721C: LitVarStr var_A4, "PeriInfo"
  loc_9D7221: PopAdLdVar
  loc_9D7222: FLdRfVar var_94
  loc_9D7225: FLdRfVar var_88
  loc_9D7228: FLdPr Me
  loc_9D722B: MemLdRfVar from_stack_1.global_72
  loc_9D722E: NewIfNullPr clsbase
  loc_9D7231: from_stack_1v = clsbase.RsFrmGet()
  loc_9D7236: FLdPr var_88
  loc_9D7239:  = Me.Fields
  loc_9D723E: FLdPr var_94
  loc_9D7241: from_stack_2 = Me.Item(from_stack_1)
  loc_9D7246: FLdPr var_A8
  loc_9D7249:  = Me.Value
  loc_9D724E: FLdRfVar var_B8
  loc_9D7251: CStrVarTmp
  loc_9D7252: FStStrNoPop var_BC
  loc_9D7255: FLdPr Me
  loc_9D7258: VCallAd Control_ID_cboPeriodo
  loc_9D725B: FStAdFunc var_D0
  loc_9D725E: FLdPr var_D0
  loc_9D7261: Me.AddItem from_stack_1, from_stack_2
  loc_9D7266: FFree1Str var_BC
  loc_9D7269: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D7274: FFree1Var var_B8 = ""
  loc_9D7277: FLdPr Me
  loc_9D727A: MemLdRfVar from_stack_1.global_72
  loc_9D727D: NewIfNullPr clsbase
  loc_9D7280: Call clsbase.MoveSiguiente()
  loc_9D7285: Branch loc_9D71FA
  loc_9D7288: Call cmdNueva_Click()
  loc_9D728D: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D7DB4
  'Data Table: 4A8D80
  loc_9D7CB8: LitStr "Municipalidad de Guaymallén"
  loc_9D7CBB: LitStr "Municipalidad de Lavalle"
  loc_9D7CBE: EqStr
  loc_9D7CC0: LitStr "Municipalidad de Guaymallén"
  loc_9D7CC3: LitStr "Municipalidad de Guaymallén"
  loc_9D7CC6: EqStr
  loc_9D7CC8: OrI4
  loc_9D7CC9: FLdPr Me
  loc_9D7CCC: MemLdI2 bGenerado
  loc_9D7CCF: AndI4
  loc_9D7CD0: BranchF loc_9D7D97
  loc_9D7CD3: LitI2_Byte 1
  loc_9D7CD5: FLdPr Me
  loc_9D7CD8: MemLdRfVar from_stack_1.global_92
  loc_9D7CDB: FLdPr Me
  loc_9D7CDE: MemLdStr global_88
  loc_9D7CE1: LitI2_Byte 1
  loc_9D7CE3: FnUBound
  loc_9D7CE5: CI2I4
  loc_9D7CE6: ForI2 var_88
  loc_9D7CEC: FLdPr Me
  loc_9D7CEF: MemLdI2 global_92
  loc_9D7CF2: CI4UI1
  loc_9D7CF3: FLdPr Me
  loc_9D7CF6: MemLdStr global_88
  loc_9D7CF9: Ary1LdPr
  loc_9D7CFA: MemLdI2 global_56
  loc_9D7CFD: BranchF loc_9D7D8C
  loc_9D7D00: LitI2_Byte &HFF
  loc_9D7D02: PopTmpLdAd2 var_94
  loc_9D7D05: LitI2_Byte 0
  loc_9D7D07: PopTmpLdAd2 var_92
  loc_9D7D0A: LitStr "¿Imprime las retenciones de la O.P.: "
  loc_9D7D0D: FLdPr Me
  loc_9D7D10: MemLdI2 global_92
  loc_9D7D13: CI4UI1
  loc_9D7D14: FLdPr Me
  loc_9D7D17: MemLdStr global_88
  loc_9D7D1A: Ary1LdPr
  loc_9D7D1B: MemLdStr global_8
  loc_9D7D1E: ConcatStr
  loc_9D7D1F: FStStrNoPop var_8C
  loc_9D7D22: LitStr "?"
  loc_9D7D25: ConcatStr
  loc_9D7D26: FStStrNoPop var_90
  loc_9D7D29: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_9D7D2E: CI4UI1
  loc_9D7D2F: LitI4 6
  loc_9D7D34: EqI4
  loc_9D7D35: FFreeStr var_8C = ""
  loc_9D7D3C: BranchF loc_9D7D8C
  loc_9D7D3F: FLdRfVar var_8C
  loc_9D7D42: FLdPr Me
  loc_9D7D45: VCallAd Control_ID_NumeOrpaTxt
  loc_9D7D48: FStAdFunc var_98
  loc_9D7D4B: FLdPr var_98
  loc_9D7D4E:  = Me.Text
  loc_9D7D53: ILdRf var_8C
  loc_9D7D56: ImpAdLdRf MemVar_C3D85C
  loc_9D7D59: NewIfNullPr rptCertificadoderetencion
  loc_9D7D5C: VCallAd Control_ID_NumeOrpaTxt
  loc_9D7D5F: FStAdFunc var_9C
  loc_9D7D62: FLdPr var_9C
  loc_9D7D65: rptCertificadoderetencion.TextBox.Text = from_stack_1
  loc_9D7D6A: FFree1Str var_8C
  loc_9D7D6D: FFreeAd var_98 = ""
  loc_9D7D74: LitVar_Missing var_BC
  loc_9D7D77: PopAdLdVar
  loc_9D7D78: LitVarI4
  loc_9D7D80: PopAdLdVar
  loc_9D7D81: ImpAdLdRf MemVar_C3D85C
  loc_9D7D84: NewIfNullPr rptCertificadoderetencion
  loc_9D7D87: rptCertificadoderetencion.Show from_stack_1, from_stack_2
  loc_9D7D8C: FLdPr Me
  loc_9D7D8F: MemLdRfVar from_stack_1.global_92
  loc_9D7D92: NextI2 var_88, loc_9D7CEC
  loc_9D7D97: FLdPr Me
  loc_9D7D9A: VCallAd Control_ID_wbbReporte
  loc_9D7D9D: FStAdFunc var_98
  loc_9D7DA0: FLdRfVar var_98
  loc_9D7DA3: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9D7DA8: FFree1Ad var_98
  loc_9D7DAB: LitI2_Byte 0
  loc_9D7DAD: ImpAdStI2 MemVar_C3D842
  loc_9D7DB0: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '978868
  'Data Table: 4A8D80
  loc_978838: LitVarStr var_94, "Cerrando..."
  loc_97883D: PopAdLdVar
  loc_97883E: FLdPr Me
  loc_978841: VCallAd Control_ID_statusBar
  loc_978844: FStAdFunc var_A8
  loc_978847: FLdPr var_A8
  loc_97884A: LateIdSt
  loc_97884F: FFree1Ad var_A8
  loc_978852: ILdRf Me
  loc_978855: FStAdNoPop
  loc_978859: ImpAdLdRf MemVar_C44F9C
  loc_97885C: NewIfNullPr Me
  loc_97885F: Me.Global.Unload from_stack_1
  loc_978864: FFree1Ad var_A8
  loc_978867: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C184C
  'Data Table: 4A8D80
  loc_9C1780: LitI2_Byte 0
  loc_9C1782: FLdPr Me
  loc_9C1785: MemStI2 bGenerado
  loc_9C1788: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C178D: ImpAdLdI2 MemVar_C3D064
  loc_9C1790: CStrUI1
  loc_9C1792: FStStrNoPop var_88
  loc_9C1795: FLdPr Me
  loc_9C1798: VCallAd Control_ID_cboPeriodo
  loc_9C179B: FStAdFunc var_8C
  loc_9C179E: FLdPr var_8C
  loc_9C17A1: Me.Text = from_stack_1
  loc_9C17A6: FFree1Str var_88
  loc_9C17A9: FFree1Ad var_8C
  loc_9C17AC: LitStr vbNullString
  loc_9C17AF: FLdPr Me
  loc_9C17B2: VCallAd Control_ID_cboExpeImpu
  loc_9C17B5: FStAdFunc var_8C
  loc_9C17B8: FLdPr var_8C
  loc_9C17BB: Me.Text = from_stack_1
  loc_9C17C0: FFree1Ad var_8C
  loc_9C17C3: LitVarStr var_9C, vbNullString
  loc_9C17C8: PopAdLdVar
  loc_9C17C9: FLdPr Me
  loc_9C17CC: VCallAd Control_ID_NumeLiquMsk
  loc_9C17CF: FStAdFunc var_8C
  loc_9C17D2: FLdPr var_8C
  loc_9C17D5: LateIdSt
  loc_9C17DA: FFree1Ad var_8C
  loc_9C17DD: LitStr "Municipalidad de Guaymallén"
  loc_9C17E0: FStStrCopy var_B0
  loc_9C17E3: ILdRf var_B0
  loc_9C17E6: LitStr "Municipalidad de Guaymallén"
  loc_9C17E9: EqStr
  loc_9C17EB: BranchT loc_9C17F9
  loc_9C17EE: ILdRf var_B0
  loc_9C17F1: LitStr "Municipalidad de La Paz"
  loc_9C17F4: EqStr
  loc_9C17F6: BranchF loc_9C1816
  loc_9C17F9: LitI4 1
  loc_9C17FE: CI2I4
  loc_9C17FF: FLdPr Me
  loc_9C1802: VCallAd Control_ID_chkSintetico
  loc_9C1805: FStAdFunc var_8C
  loc_9C1808: FLdPr var_8C
  loc_9C180B: Me.Value = from_stack_1
  loc_9C1810: FFree1Ad var_8C
  loc_9C1813: Branch loc_9C1830
  loc_9C1816: LitI4 0
  loc_9C181B: CI2I4
  loc_9C181C: FLdPr Me
  loc_9C181F: VCallAd Control_ID_chkSintetico
  loc_9C1822: FStAdFunc var_8C
  loc_9C1825: FLdPr var_8C
  loc_9C1828: Me.Value = from_stack_1
  loc_9C182D: FFree1Ad var_8C
  loc_9C1830: Call HabilitarCriterio()
  loc_9C1835: ILdRf Me
  loc_9C1838: CastAd
  loc_9C183B: FStAdFunc var_8C
  loc_9C183E: FLdRfVar var_8C
  loc_9C1841: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C1846: FFree1Ad var_8C
  loc_9C1849: ExitProcHresult
  loc_9C184A: CRec2Ansi Me00
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '976414
  'Data Table: 4A8D80
  loc_9763EC: FLdPr Me
  loc_9763EF: VCallAd Control_ID_cboExpeImpu
  loc_9763F2: FStAdFunc var_8C
  loc_9763F5: ILdI2 KeyAscii
  loc_9763F8: FLdZeroAd var_8C
  loc_9763FB: FStAdFunc var_88
  loc_9763FE: FLdRfVar var_88
  loc_976401: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_976406: IStI2 KeyAscii
  loc_976409: FFreeAd var_88 = ""
  loc_976410: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Validate(Cancel As Boolean) '9C6780
  'Data Table: 4A8D80
  loc_9C66B4: FLdRfVar var_8C
  loc_9C66B7: FLdPr Me
  loc_9C66BA: VCallAd Control_ID_cboExpeImpu
  loc_9C66BD: FStAdFunc var_88
  loc_9C66C0: FLdPr var_88
  loc_9C66C3:  = Me.Text
  loc_9C66C8: ILdRf var_8C
  loc_9C66CB: LitStr vbNullString
  loc_9C66CE: NeStr
  loc_9C66D0: FFree1Str var_8C
  loc_9C66D3: FFree1Ad var_88
  loc_9C66D6: BranchF loc_9C677C
  loc_9C66D9: FLdRfVar var_8C
  loc_9C66DC: FLdPr Me
  loc_9C66DF: VCallAd Control_ID_cboExpeImpu
  loc_9C66E2: FStAdFunc var_88
  loc_9C66E5: FLdPr var_88
  loc_9C66E8:  = Me.Text
  loc_9C66ED: LitI2_Byte 0
  loc_9C66EF: PopTmpLdAd2 var_92
  loc_9C66F2: LitI2_Byte 0
  loc_9C66F4: PopTmpLdAd2 var_90
  loc_9C66F7: LitI2_Byte 0
  loc_9C66F9: PopTmpLdAd2 var_8E
  loc_9C66FC: ILdRf var_8C
  loc_9C66FF: LitStr "Expediente"
  loc_9C6702: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C6707: FStStrNoPop var_98
  loc_9C670A: FLdPr Me
  loc_9C670D: MemStStrCopy
  loc_9C6711: FFreeStr var_8C = ""
  loc_9C6718: FFree1Ad var_88
  loc_9C671B: FLdPr Me
  loc_9C671E: VCallAd Control_ID_cboExpeImpu
  loc_9C6721: FStAdFunc var_A4
  loc_9C6724: LitNothing
  loc_9C6726: CastAd
  loc_9C6729: FStAdFunc var_A0
  loc_9C672C: FLdRfVar var_A0
  loc_9C672F: FLdZeroAd var_A4
  loc_9C6732: FStAdFuncNoPop
  loc_9C6735: CastAd
  loc_9C6738: FStAdFunc var_9C
  loc_9C673B: FLdRfVar var_9C
  loc_9C673E: FLdPr Me
  loc_9C6741: MemLdRfVar from_stack_1.global_104
  loc_9C6744: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C6749: IStI2 Cancel
  loc_9C674C: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9C6757: ILdI2 Cancel
  loc_9C675A: NotI4
  loc_9C675B: BranchF loc_9C677C
  loc_9C675E: LitI2_Byte 1
  loc_9C6760: CStrUI1
  loc_9C6762: FStStrNoPop var_8C
  loc_9C6765: FLdPr Me
  loc_9C6768: VCallAd Control_ID_NumeOrpaTxt
  loc_9C676B: FStAdFunc var_88
  loc_9C676E: FLdPr var_88
  loc_9C6771: Me.Text = from_stack_1
  loc_9C6776: FFree1Str var_8C
  loc_9C6779: FFree1Ad var_88
  loc_9C677C: ExitProcHresult
End Sub

Public Function htmFileGet() '4AA0C8
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4AA0D7
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4AA0E6
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4AA0F5
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4AA104
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'C1ADC4
  'Data Table: 4A8D80
  loc_C17E98: FLdRfVar var_8C
  loc_C17E9B: LitI2_Byte 0
  loc_C17E9D: LitI2_Byte &HFF
  loc_C17E9F: ImpAdLdI4 MemVar_C3D83C
  loc_C17EA2: FLdPr Me
  loc_C17EA5: MemLdRfVar from_stack_1.global_84
  loc_C17EA8: NewIfNullPr IFileSystem3
  loc_C17EAB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C17EB0: ILdRf var_8C
  loc_C17EB3: FLdPr Me
  loc_C17EB6: MemStVarAd
  loc_C17EBA: FFree1Ad var_8C
  loc_C17EBD: Call Proc_211_25_A585CC()
  loc_C17EC2: LitI2_Byte 1
  loc_C17EC4: FLdPr Me
  loc_C17EC7: MemLdRfVar from_stack_1.global_92
  loc_C17ECA: FLdPr Me
  loc_C17ECD: MemLdStr global_88
  loc_C17ED0: LitI2_Byte 1
  loc_C17ED2: FnUBound
  loc_C17ED4: CI2I4
  loc_C17ED5: ForI2 var_90
  loc_C17EDB: FLdPr Me
  loc_C17EDE: MemLdI2 global_92
  loc_C17EE1: LitI2_Byte 1
  loc_C17EE3: NeI2
  loc_C17EE4: BranchF loc_C17EFE
  loc_C17EE7: LitVarStr var_A0, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_C17EEC: PopAdLdVar
  loc_C17EED: FLdPr Me
  loc_C17EF0: MemLdRfVar from_stack_1.htmFile
  loc_C17EF3: LdPrVar
  loc_C17EF5: LateMemCall
  loc_C17EFB: Branch loc_C17F12
  loc_C17EFE: LitVarStr var_A0, "<div>&nbsp;</div>"
  loc_C17F03: PopAdLdVar
  loc_C17F04: FLdPr Me
  loc_C17F07: MemLdRfVar from_stack_1.htmFile
  loc_C17F0A: LdPrVar
  loc_C17F0C: LateMemCall
  loc_C17F12: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C17F17: PopAdLdVar
  loc_C17F18: FLdPr Me
  loc_C17F1B: MemLdRfVar from_stack_1.htmFile
  loc_C17F1E: LdPrVar
  loc_C17F20: LateMemCall
  loc_C17F26: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_C17F2B: PopAdLdVar
  loc_C17F2C: FLdPr Me
  loc_C17F2F: MemLdRfVar from_stack_1.htmFile
  loc_C17F32: LdPrVar
  loc_C17F34: LateMemCall
  loc_C17F3A: LitVarStr var_B0, "    <th colspan=""2"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_C17F3F: LitVarStr var_A0, "Municipalidad de Guaymallén"
  loc_C17F44: FStVarCopyObj var_C0
  loc_C17F47: FLdRfVar var_C0
  loc_C17F4A: FLdRfVar var_D0
  loc_C17F4D: ImpAdCallFPR4  = Ucase()
  loc_C17F52: FLdRfVar var_D0
  loc_C17F55: ConcatVar var_E0
  loc_C17F59: LitVarStr var_F0, "</th>"
  loc_C17F5E: ConcatVar var_100
  loc_C17F62: PopAdLdVar
  loc_C17F63: FLdPr Me
  loc_C17F66: MemLdRfVar from_stack_1.htmFile
  loc_C17F69: LdPrVar
  loc_C17F6B: LateMemCall
  loc_C17F71: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_C17F7C: LitVarStr var_A0, "  </tr>"
  loc_C17F81: PopAdLdVar
  loc_C17F82: FLdPr Me
  loc_C17F85: MemLdRfVar from_stack_1.htmFile
  loc_C17F88: LdPrVar
  loc_C17F8A: LateMemCall
  loc_C17F90: FLdPr Me
  loc_C17F93: MemLdI2 global_92
  loc_C17F96: CI4UI1
  loc_C17F97: FLdPr Me
  loc_C17F9A: MemLdStr global_88
  loc_C17F9D: Ary1LdPr
  loc_C17F9E: MemLdStr global_64
  loc_C17FA1: LitStr vbNullString
  loc_C17FA4: EqStr
  loc_C17FA6: BranchF loc_C17FBE
  loc_C17FA9: LitStr "0"
  loc_C17FAC: FLdPr Me
  loc_C17FAF: MemLdI2 global_92
  loc_C17FB2: CI4UI1
  loc_C17FB3: FLdPr Me
  loc_C17FB6: MemLdStr global_88
  loc_C17FB9: Ary1LdPr
  loc_C17FBA: MemStStrCopy
  loc_C17FBE: FLdPr Me
  loc_C17FC1: MemLdI2 global_92
  loc_C17FC4: CI4UI1
  loc_C17FC5: FLdPr Me
  loc_C17FC8: MemLdStr global_88
  loc_C17FCB: Ary1LdPr
  loc_C17FCC: MemLdStr global_72
  loc_C17FCF: LitStr vbNullString
  loc_C17FD2: EqStr
  loc_C17FD4: BranchF loc_C17FEC
  loc_C17FD7: LitStr "0"
  loc_C17FDA: FLdPr Me
  loc_C17FDD: MemLdI2 global_92
  loc_C17FE0: CI4UI1
  loc_C17FE1: FLdPr Me
  loc_C17FE4: MemLdStr global_88
  loc_C17FE7: Ary1LdPr
  loc_C17FE8: MemStStrCopy
  loc_C17FEC: FLdPr Me
  loc_C17FEF: MemLdI2 global_92
  loc_C17FF2: CI4UI1
  loc_C17FF3: FLdPr Me
  loc_C17FF6: MemLdStr global_88
  loc_C17FF9: Ary1LdPr
  loc_C17FFA: MemLdStr global_76
  loc_C17FFD: LitStr vbNullString
  loc_C18000: EqStr
  loc_C18002: BranchF loc_C1801A
  loc_C18005: LitStr "0"
  loc_C18008: FLdPr Me
  loc_C1800B: MemLdI2 global_92
  loc_C1800E: CI4UI1
  loc_C1800F: FLdPr Me
  loc_C18012: MemLdStr global_88
  loc_C18015: Ary1LdPr
  loc_C18016: MemStStrCopy
  loc_C1801A: FLdPr Me
  loc_C1801D: MemLdI2 global_92
  loc_C18020: CI4UI1
  loc_C18021: FLdPr Me
  loc_C18024: MemLdStr global_88
  loc_C18027: Ary1LdPr
  loc_C18028: MemLdStr global_80
  loc_C1802B: LitStr vbNullString
  loc_C1802E: EqStr
  loc_C18030: BranchF loc_C18048
  loc_C18033: LitStr "0"
  loc_C18036: FLdPr Me
  loc_C18039: MemLdI2 global_92
  loc_C1803C: CI4UI1
  loc_C1803D: FLdPr Me
  loc_C18040: MemLdStr global_88
  loc_C18043: Ary1LdPr
  loc_C18044: MemStStrCopy
  loc_C18048: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_C1804D: PopAdLdVar
  loc_C1804E: FLdPr Me
  loc_C18051: MemLdRfVar from_stack_1.htmFile
  loc_C18054: LdPrVar
  loc_C18056: LateMemCall
  loc_C1805C: LitStr "    <th colspan=""2"" align=""center"" valign=""bottom"" class=""Titulo1""><br>ORDEN DE PAGO N&deg; "
  loc_C1805F: FLdPr Me
  loc_C18062: MemLdI2 global_92
  loc_C18065: CI4UI1
  loc_C18066: FLdPr Me
  loc_C18069: MemLdStr global_88
  loc_C1806C: Ary1LdPr
  loc_C1806D: MemLdStr global_8
  loc_C18070: ConcatStr
  loc_C18071: CVarStr var_C0
  loc_C18074: PopAdLdVar
  loc_C18075: FLdPr Me
  loc_C18078: MemLdRfVar from_stack_1.htmFile
  loc_C1807B: LdPrVar
  loc_C1807D: LateMemCall
  loc_C18083: FFree1Var var_C0 = ""
  loc_C18086: FLdPr Me
  loc_C18089: MemLdI2 global_92
  loc_C1808C: CI4UI1
  loc_C1808D: FLdPr Me
  loc_C18090: MemLdStr global_88
  loc_C18093: Ary1LdPr
  loc_C18094: MemLdStr global_44
  loc_C18097: LitStr vbNullString
  loc_C1809A: EqStr
  loc_C1809C: BranchF loc_C180B4
  loc_C1809F: LitStr "0"
  loc_C180A2: FLdPr Me
  loc_C180A5: MemLdI2 global_92
  loc_C180A8: CI4UI1
  loc_C180A9: FLdPr Me
  loc_C180AC: MemLdStr global_88
  loc_C180AF: Ary1LdPr
  loc_C180B0: MemStStrCopy
  loc_C180B4: FLdPr Me
  loc_C180B7: MemLdI2 global_92
  loc_C180BA: CI4UI1
  loc_C180BB: FLdPr Me
  loc_C180BE: MemLdStr global_88
  loc_C180C1: Ary1LdPr
  loc_C180C2: MemLdStr global_28
  loc_C180C5: LitStr vbNullString
  loc_C180C8: EqStr
  loc_C180CA: CVarBoolI2 var_F0
  loc_C180CE: LitI4 2
  loc_C180D3: FLdPr Me
  loc_C180D6: MemLdI2 global_92
  loc_C180D9: CI4UI1
  loc_C180DA: FLdPr Me
  loc_C180DD: MemLdStr global_88
  loc_C180E0: Ary1LdPr
  loc_C180E1: MemLdStr global_44
  loc_C180E4: CR8Str
  loc_C180E6: CVarR8
  loc_C180EA: FLdRfVar var_D0
  loc_C180ED: ImpAdCallFPR4  = Round(, )
  loc_C180F2: FLdRfVar var_D0
  loc_C180F5: LitI4 2
  loc_C180FA: FLdPr Me
  loc_C180FD: MemLdI2 global_92
  loc_C18100: CI4UI1
  loc_C18101: FLdPr Me
  loc_C18104: MemLdStr global_88
  loc_C18107: Ary1LdPr
  loc_C18108: MemLdStr global_64
  loc_C1810B: CR8Str
  loc_C1810D: FLdPr Me
  loc_C18110: MemLdI2 global_92
  loc_C18113: CI4UI1
  loc_C18114: FLdPr Me
  loc_C18117: MemLdStr global_88
  loc_C1811A: Ary1LdPr
  loc_C1811B: MemLdStr global_72
  loc_C1811E: CR8Str
  loc_C18120: AddR8
  loc_C18121: FLdPr Me
  loc_C18124: MemLdI2 global_92
  loc_C18127: CI4UI1
  loc_C18128: FLdPr Me
  loc_C1812B: MemLdStr global_88
  loc_C1812E: Ary1LdPr
  loc_C1812F: MemLdStr global_76
  loc_C18132: CR8Str
  loc_C18134: AddR8
  loc_C18135: FLdPr Me
  loc_C18138: MemLdI2 global_92
  loc_C1813B: CI4UI1
  loc_C1813C: FLdPr Me
  loc_C1813F: MemLdStr global_88
  loc_C18142: Ary1LdPr
  loc_C18143: MemLdStr global_80
  loc_C18146: CR8Str
  loc_C18148: AddR8
  loc_C18149: CVarR8
  loc_C1814D: FLdRfVar var_100
  loc_C18150: ImpAdCallFPR4  = Round(, )
  loc_C18155: FLdRfVar var_100
  loc_C18158: NeVar var_120
  loc_C1815C: AndVar var_130
  loc_C18160: CBoolVarNull
  loc_C18162: FFreeVar var_C0 = "": var_E0 = "": var_D0 = "": var_100 = ""
  loc_C1816F: BranchF loc_C18186
  loc_C18172: LitVarStr var_A0, " &nbsp;(PROVISORIA)"
  loc_C18177: PopAdLdVar
  loc_C18178: FLdPr Me
  loc_C1817B: MemLdRfVar from_stack_1.htmFile
  loc_C1817E: LdPrVar
  loc_C18180: LateMemCall
  loc_C18186: LitVarStr var_A0, "    </th>"
  loc_C1818B: PopAdLdVar
  loc_C1818C: FLdPr Me
  loc_C1818F: MemLdRfVar from_stack_1.htmFile
  loc_C18192: LdPrVar
  loc_C18194: LateMemCall
  loc_C1819A: LitVarStr var_A0, "  </tr>"
  loc_C1819F: PopAdLdVar
  loc_C181A0: FLdPr Me
  loc_C181A3: MemLdRfVar from_stack_1.htmFile
  loc_C181A6: LdPrVar
  loc_C181A8: LateMemCall
  loc_C181AE: LitVarStr var_A0, "  <tr valign=""baseline""><th colspan=""2"">"
  loc_C181B3: PopAdLdVar
  loc_C181B4: FLdPr Me
  loc_C181B7: MemLdRfVar from_stack_1.htmFile
  loc_C181BA: LdPrVar
  loc_C181BC: LateMemCall
  loc_C181C2: LitVarStr var_A0, "    <table width=""100" & Chr(37) & """ align=""center"" border=""0""><tr class=""Titulo2"">"
  loc_C181C7: PopAdLdVar
  loc_C181C8: FLdPr Me
  loc_C181CB: MemLdRfVar from_stack_1.htmFile
  loc_C181CE: LdPrVar
  loc_C181D0: LateMemCall
  loc_C181D6: LitStr "    <th width=""50" & Chr(37) & """ align=""center"">Fecha: "
  loc_C181D9: FLdPr Me
  loc_C181DC: MemLdI2 global_92
  loc_C181DF: CI4UI1
  loc_C181E0: FLdPr Me
  loc_C181E3: MemLdStr global_88
  loc_C181E6: Ary1LdPr
  loc_C181E7: MemLdStr global_16
  loc_C181EA: ConcatStr
  loc_C181EB: FStStrNoPop var_134
  loc_C181EE: LitStr "</th>"
  loc_C181F1: ConcatStr
  loc_C181F2: CVarStr var_C0
  loc_C181F5: PopAdLdVar
  loc_C181F6: FLdPr Me
  loc_C181F9: MemLdRfVar from_stack_1.htmFile
  loc_C181FC: LdPrVar
  loc_C181FE: LateMemCall
  loc_C18204: FFree1Str var_134
  loc_C18207: FFree1Var var_C0 = ""
  loc_C1820A: LitStr "    <th width=""50" & Chr(37) & """ align=""center"">Expediente: "
  loc_C1820D: FLdPr Me
  loc_C18210: MemLdI2 global_92
  loc_C18213: CI4UI1
  loc_C18214: FLdPr Me
  loc_C18217: MemLdStr global_88
  loc_C1821A: Ary1LdPr
  loc_C1821B: MemLdStr global_36
  loc_C1821E: ConcatStr
  loc_C1821F: FStStrNoPop var_134
  loc_C18222: LitStr " - Liq.:"
  loc_C18225: ConcatStr
  loc_C18226: FStStrNoPop var_138
  loc_C18229: FLdPr Me
  loc_C1822C: MemLdI2 global_92
  loc_C1822F: CI4UI1
  loc_C18230: FLdPr Me
  loc_C18233: MemLdStr global_88
  loc_C18236: Ary1LdPr
  loc_C18237: MemLdStr global_40
  loc_C1823A: ConcatStr
  loc_C1823B: FStStrNoPop var_13C
  loc_C1823E: LitStr "</th>"
  loc_C18241: ConcatStr
  loc_C18242: CVarStr var_C0
  loc_C18245: PopAdLdVar
  loc_C18246: FLdPr Me
  loc_C18249: MemLdRfVar from_stack_1.htmFile
  loc_C1824C: LdPrVar
  loc_C1824E: LateMemCall
  loc_C18254: FFreeStr var_134 = "": var_138 = ""
  loc_C1825D: FFree1Var var_C0 = ""
  loc_C18260: LitVarStr var_A0, "    </tr></table></th>"
  loc_C18265: PopAdLdVar
  loc_C18266: FLdPr Me
  loc_C18269: MemLdRfVar from_stack_1.htmFile
  loc_C1826C: LdPrVar
  loc_C1826E: LateMemCall
  loc_C18274: LitVarStr var_A0, "  </tr>"
  loc_C18279: PopAdLdVar
  loc_C1827A: FLdPr Me
  loc_C1827D: MemLdRfVar from_stack_1.htmFile
  loc_C18280: LdPrVar
  loc_C18282: LateMemCall
  loc_C18288: FLdPr Me
  loc_C1828B: MemLdI2 global_92
  loc_C1828E: CI4UI1
  loc_C1828F: FLdPr Me
  loc_C18292: MemLdStr global_88
  loc_C18295: Ary1LdPr
  loc_C18296: MemLdI2 global_2
  loc_C18299: BranchF loc_C182D8
  loc_C1829C: LitVarStr var_A0, "  <tr>"
  loc_C182A1: PopAdLdVar
  loc_C182A2: FLdPr Me
  loc_C182A5: MemLdRfVar from_stack_1.htmFile
  loc_C182A8: LdPrVar
  loc_C182AA: LateMemCall
  loc_C182B0: LitVarStr var_A0, "    <th colspan=""2"" align=""center"" valign=""bottom"">&nbsp;(RESERVADA)</th>"
  loc_C182B5: PopAdLdVar
  loc_C182B6: FLdPr Me
  loc_C182B9: MemLdRfVar from_stack_1.htmFile
  loc_C182BC: LdPrVar
  loc_C182BE: LateMemCall
  loc_C182C4: LitVarStr var_A0, "  </tr>"
  loc_C182C9: PopAdLdVar
  loc_C182CA: FLdPr Me
  loc_C182CD: MemLdRfVar from_stack_1.htmFile
  loc_C182D0: LdPrVar
  loc_C182D2: LateMemCall
  loc_C182D8: FLdPr Me
  loc_C182DB: MemLdI2 global_92
  loc_C182DE: CI4UI1
  loc_C182DF: FLdPr Me
  loc_C182E2: MemLdStr global_88
  loc_C182E5: Ary1LdPr
  loc_C182E6: MemLdStr global_24
  loc_C182E9: LitStr vbNullString
  loc_C182EC: NeStr
  loc_C182EE: BranchF loc_C1836F
  loc_C182F1: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_C182F6: PopAdLdVar
  loc_C182F7: FLdPr Me
  loc_C182FA: MemLdRfVar from_stack_1.htmFile
  loc_C182FD: LdPrVar
  loc_C182FF: LateMemCall
  loc_C18305: LitStr "    <th colspan=""2"" align=""center"" valign=""bottom"">&nbsp;(ANULADA EL "
  loc_C18308: FLdPr Me
  loc_C1830B: MemLdI2 global_92
  loc_C1830E: CI4UI1
  loc_C1830F: FLdPr Me
  loc_C18312: MemLdStr global_88
  loc_C18315: Ary1LdPr
  loc_C18316: MemLdStr global_24
  loc_C18319: ConcatStr
  loc_C1831A: FStStrNoPop var_134
  loc_C1831D: LitStr " - "
  loc_C18320: ConcatStr
  loc_C18321: FStStrNoPop var_138
  loc_C18324: FLdPr Me
  loc_C18327: MemLdI2 global_92
  loc_C1832A: CI4UI1
  loc_C1832B: FLdPr Me
  loc_C1832E: MemLdStr global_88
  loc_C18331: Ary1LdPr
  loc_C18332: MemLdStr global_28
  loc_C18335: ConcatStr
  loc_C18336: FStStrNoPop var_13C
  loc_C18339: LitStr ")</th>"
  loc_C1833C: ConcatStr
  loc_C1833D: CVarStr var_C0
  loc_C18340: PopAdLdVar
  loc_C18341: FLdPr Me
  loc_C18344: MemLdRfVar from_stack_1.htmFile
  loc_C18347: LdPrVar
  loc_C18349: LateMemCall
  loc_C1834F: FFreeStr var_134 = "": var_138 = ""
  loc_C18358: FFree1Var var_C0 = ""
  loc_C1835B: LitVarStr var_A0, "  </tr>"
  loc_C18360: PopAdLdVar
  loc_C18361: FLdPr Me
  loc_C18364: MemLdRfVar from_stack_1.htmFile
  loc_C18367: LdPrVar
  loc_C18369: LateMemCall
  loc_C1836F: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_C18374: PopAdLdVar
  loc_C18375: FLdPr Me
  loc_C18378: MemLdRfVar from_stack_1.htmFile
  loc_C1837B: LdPrVar
  loc_C1837D: LateMemCall
  loc_C18383: LitVarStr var_A0, "    <th colspan=""2""><hr></th>"
  loc_C18388: PopAdLdVar
  loc_C18389: FLdPr Me
  loc_C1838C: MemLdRfVar from_stack_1.htmFile
  loc_C1838F: LdPrVar
  loc_C18391: LateMemCall
  loc_C18397: LitVarStr var_A0, "  </tr>"
  loc_C1839C: PopAdLdVar
  loc_C1839D: FLdPr Me
  loc_C183A0: MemLdRfVar from_stack_1.htmFile
  loc_C183A3: LdPrVar
  loc_C183A5: LateMemCall
  loc_C183AB: LitVarStr var_A0, "  <tr>"
  loc_C183B0: PopAdLdVar
  loc_C183B1: FLdPr Me
  loc_C183B4: MemLdRfVar from_stack_1.htmFile
  loc_C183B7: LdPrVar
  loc_C183B9: LateMemCall
  loc_C183BF: LitVarStr var_A0, "    <td colspan=""2"" align=""left"">Páguese por Tesorería la cantidad expresada, en concepto de: </td>"
  loc_C183C4: PopAdLdVar
  loc_C183C5: FLdPr Me
  loc_C183C8: MemLdRfVar from_stack_1.htmFile
  loc_C183CB: LdPrVar
  loc_C183CD: LateMemCall
  loc_C183D3: LitVarStr var_A0, "  </tr>"
  loc_C183D8: PopAdLdVar
  loc_C183D9: FLdPr Me
  loc_C183DC: MemLdRfVar from_stack_1.htmFile
  loc_C183DF: LdPrVar
  loc_C183E1: LateMemCall
  loc_C183E7: LitVarStr var_A0, "  <tr>"
  loc_C183EC: PopAdLdVar
  loc_C183ED: FLdPr Me
  loc_C183F0: MemLdRfVar from_stack_1.htmFile
  loc_C183F3: LdPrVar
  loc_C183F5: LateMemCall
  loc_C183FB: LitStr "    <td colspan=""2"" align=""left"" class=""Normal"">"
  loc_C183FE: LitI4 0
  loc_C18403: LitI4 -1
  loc_C18408: LitI4 1
  loc_C1840D: LitStr "<br>"
  loc_C18410: LitStr vbCrLf
  loc_C18413: FLdPr Me
  loc_C18416: MemLdI2 global_92
  loc_C18419: CI4UI1
  loc_C1841A: FLdPr Me
  loc_C1841D: MemLdStr global_88
  loc_C18420: Ary1LdPr
  loc_C18421: MemLdStr global_12
  loc_C18424: ImpAdCallI2 Replace(, , , , , )
  loc_C18429: FStStrNoPop var_134
  loc_C1842C: ConcatStr
  loc_C1842D: FStStrNoPop var_138
  loc_C18430: LitStr "</td>"
  loc_C18433: ConcatStr
  loc_C18434: CVarStr var_C0
  loc_C18437: PopAdLdVar
  loc_C18438: FLdPr Me
  loc_C1843B: MemLdRfVar from_stack_1.htmFile
  loc_C1843E: LdPrVar
  loc_C18440: LateMemCall
  loc_C18446: FFreeStr var_134 = ""
  loc_C1844D: FFree1Var var_C0 = ""
  loc_C18450: LitVarStr var_A0, "  </tr>"
  loc_C18455: PopAdLdVar
  loc_C18456: FLdPr Me
  loc_C18459: MemLdRfVar from_stack_1.htmFile
  loc_C1845C: LdPrVar
  loc_C1845E: LateMemCall
  loc_C18464: FLdRfVar var_13E
  loc_C18467: FLdPr Me
  loc_C1846A: VCallAd Control_ID_chkSintetico
  loc_C1846D: FStAdFunc var_8C
  loc_C18470: FLdPr var_8C
  loc_C18473:  = Me.Value
  loc_C18478: FLdI2 var_13E
  loc_C1847B: CI4UI1
  loc_C1847C: LitI4 1
  loc_C18481: EqI4
  loc_C18482: FFree1Ad var_8C
  loc_C18485: BranchF loc_C18BB3
  loc_C18488: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_C1848D: PopAdLdVar
  loc_C1848E: FLdPr Me
  loc_C18491: MemLdRfVar from_stack_1.htmFile
  loc_C18494: LdPrVar
  loc_C18496: LateMemCall
  loc_C1849C: LitVarStr var_A0, "    <th width=""23" & Chr(37) & """ align=""left"" valign=""top""><br>"
  loc_C184A1: PopAdLdVar
  loc_C184A2: FLdPr Me
  loc_C184A5: MemLdRfVar from_stack_1.htmFile
  loc_C184A8: LdPrVar
  loc_C184AA: LateMemCall
  loc_C184B0: LitVarStr var_A0, "    Orden&nbsp;de&nbsp;pago&nbsp;a&nbsp;favor&nbsp;de:</th>"
  loc_C184B5: PopAdLdVar
  loc_C184B6: FLdPr Me
  loc_C184B9: MemLdRfVar from_stack_1.htmFile
  loc_C184BC: LdPrVar
  loc_C184BE: LateMemCall
  loc_C184C4: LitVarStr var_A0, "</table>"
  loc_C184C9: PopAdLdVar
  loc_C184CA: FLdPr Me
  loc_C184CD: MemLdRfVar from_stack_1.htmFile
  loc_C184D0: LdPrVar
  loc_C184D2: LateMemCall
  loc_C184D8: LitVarStr var_A0, "<br>"
  loc_C184DD: PopAdLdVar
  loc_C184DE: FLdPr Me
  loc_C184E1: MemLdRfVar from_stack_1.htmFile
  loc_C184E4: LdPrVar
  loc_C184E6: LateMemCall
  loc_C184EC: FLdPr Me
  loc_C184EF: MemLdI2 global_92
  loc_C184F2: CI4UI1
  loc_C184F3: FLdPr Me
  loc_C184F6: MemLdStr global_88
  loc_C184F9: Ary1LdPr
  loc_C184FA: MemLdI2 global_0
  loc_C184FD: BranchF loc_C18884
  loc_C18500: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_C18505: PopAdLdVar
  loc_C18506: FLdPr Me
  loc_C18509: MemLdRfVar from_stack_1.htmFile
  loc_C1850C: LdPrVar
  loc_C1850E: LateMemCall
  loc_C18514: LitVarStr var_A0, "  <tr valign=""middle"" align=""center"" class=""Encabezado"">"
  loc_C18519: PopAdLdVar
  loc_C1851A: FLdPr Me
  loc_C1851D: MemLdRfVar from_stack_1.htmFile
  loc_C18520: LdPrVar
  loc_C18522: LateMemCall
  loc_C18528: LitVarStr var_A0, "        <th colspan=""1"">Acreedor</th>"
  loc_C1852D: PopAdLdVar
  loc_C1852E: FLdPr Me
  loc_C18531: MemLdRfVar from_stack_1.htmFile
  loc_C18534: LdPrVar
  loc_C18536: LateMemCall
  loc_C1853C: LitVarStr var_A0, "        <th>Partida</th>"
  loc_C18541: PopAdLdVar
  loc_C18542: FLdPr Me
  loc_C18545: MemLdRfVar from_stack_1.htmFile
  loc_C18548: LdPrVar
  loc_C1854A: LateMemCall
  loc_C18550: LitVarStr var_A0, "        <th>Organigrama</th>"
  loc_C18555: PopAdLdVar
  loc_C18556: FLdPr Me
  loc_C18559: MemLdRfVar from_stack_1.htmFile
  loc_C1855C: LdPrVar
  loc_C1855E: LateMemCall
  loc_C18564: LitVarStr var_A0, "        <th>Exp. Original</th>"
  loc_C18569: PopAdLdVar
  loc_C1856A: FLdPr Me
  loc_C1856D: MemLdRfVar from_stack_1.htmFile
  loc_C18570: LdPrVar
  loc_C18572: LateMemCall
  loc_C18578: LitVarStr var_A0, "        <th>Factura</th>"
  loc_C1857D: PopAdLdVar
  loc_C1857E: FLdPr Me
  loc_C18581: MemLdRfVar from_stack_1.htmFile
  loc_C18584: LdPrVar
  loc_C18586: LateMemCall
  loc_C1858C: LitVarStr var_A0, "        <th>Importe</th>"
  loc_C18591: PopAdLdVar
  loc_C18592: FLdPr Me
  loc_C18595: MemLdRfVar from_stack_1.htmFile
  loc_C18598: LdPrVar
  loc_C1859A: LateMemCall
  loc_C185A0: LitVarStr var_A0, "  </tr>"
  loc_C185A5: PopAdLdVar
  loc_C185A6: FLdPr Me
  loc_C185A9: MemLdRfVar from_stack_1.htmFile
  loc_C185AC: LdPrVar
  loc_C185AE: LateMemCall
  loc_C185B4: LitStr vbNullString
  loc_C185B7: FStStrCopy var_88
  loc_C185BA: LitI2_Byte 1
  loc_C185BC: FLdPr Me
  loc_C185BF: MemLdRfVar from_stack_1.global_94
  loc_C185C2: FLdPr Me
  loc_C185C5: MemLdI2 global_92
  loc_C185C8: CI4UI1
  loc_C185C9: FLdPr Me
  loc_C185CC: MemLdStr global_88
  loc_C185CF: Ary1LdPr
  loc_C185D0: MemLdStr htmFile
  loc_C185D3: LitI2_Byte 1
  loc_C185D5: FnUBound
  loc_C185D7: CI2I4
  loc_C185D8: ForI2 var_142
  loc_C185DE: FLdPr Me
  loc_C185E1: MemLdI2 global_94
  loc_C185E4: CI4UI1
  loc_C185E5: FLdPr Me
  loc_C185E8: MemLdI2 global_92
  loc_C185EB: CI4UI1
  loc_C185EC: FLdPr Me
  loc_C185EF: MemLdStr global_88
  loc_C185F2: AryLock
  loc_C185F5: Ary1LdPr
  loc_C185F6: MemLdStr htmFile
  loc_C185F9: AryLock
  loc_C185FC: Ary1LdRf
  loc_C185FD: FStR4 var_150
  loc_C18600: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C18605: PopAdLdVar
  loc_C18606: FLdPr Me
  loc_C18609: MemLdRfVar from_stack_1.htmFile
  loc_C1860C: LdPrVar
  loc_C1860E: LateMemCall
  loc_C18614: FLdPr Me
  loc_C18617: MemLdI2 global_94
  loc_C1861A: LitI2_Byte 1
  loc_C1861C: EqI2
  loc_C1861D: FLdPr Me
  loc_C18620: MemLdI2 global_94
  loc_C18623: CI4UI1
  loc_C18624: FLdPr Me
  loc_C18627: MemLdI2 global_92
  loc_C1862A: CI4UI1
  loc_C1862B: FLdPr Me
  loc_C1862E: MemLdStr global_88
  loc_C18631: Ary1LdPr
  loc_C18632: MemLdStr htmFile
  loc_C18635: Ary1LdPr
  loc_C18636: MemLdStr global_0
  loc_C18639: ILdRf var_88
  loc_C1863C: NeStr
  loc_C1863E: OrI4
  loc_C1863F: BranchF loc_C18685
  loc_C18642: FMemLdR4 var_150(48)
  loc_C18647: LitStr "Titulo2"
  loc_C1864A: LitI2_Byte 0
  loc_C1864C: LitStr "left"
  loc_C1864F: FMemLdR4 var_150(4)
  loc_C18654: LitStr "<br>"
  loc_C18657: ConcatStr
  loc_C18658: FStStrNoPop var_134
  loc_C1865B: FMemLdR4 var_150(0)
  loc_C18660: ConcatStr
  loc_C18661: FStStrNoPop var_138
  loc_C18664: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18669: CVarStr var_C0
  loc_C1866C: PopAdLdVar
  loc_C1866D: FLdPr Me
  loc_C18670: MemLdRfVar from_stack_1.htmFile
  loc_C18673: LdPrVar
  loc_C18675: LateMemCall
  loc_C1867B: FFreeStr var_134 = ""
  loc_C18682: FFree1Var var_C0 = ""
  loc_C18685: LitI4 0
  loc_C1868A: LitI4 0
  loc_C1868F: LitI2_Byte 0
  loc_C18691: LitStr "left"
  loc_C18694: FMemLdR4 var_150(8)
  loc_C18699: LitStr " - "
  loc_C1869C: ConcatStr
  loc_C1869D: FStStrNoPop var_134
  loc_C186A0: FMemLdR4 var_150(12)
  loc_C186A5: ConcatStr
  loc_C186A6: FStStrNoPop var_138
  loc_C186A9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C186AE: CVarStr var_C0
  loc_C186B1: PopAdLdVar
  loc_C186B2: FLdPr Me
  loc_C186B5: MemLdRfVar from_stack_1.htmFile
  loc_C186B8: LdPrVar
  loc_C186BA: LateMemCall
  loc_C186C0: FFreeStr var_134 = ""
  loc_C186C7: FFree1Var var_C0 = ""
  loc_C186CA: LitI4 0
  loc_C186CF: LitI4 0
  loc_C186D4: LitI2_Byte 0
  loc_C186D6: LitStr "left"
  loc_C186D9: FMemLdR4 var_150(16)
  loc_C186DE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C186E3: CVarStr var_C0
  loc_C186E6: PopAdLdVar
  loc_C186E7: FLdPr Me
  loc_C186EA: MemLdRfVar from_stack_1.htmFile
  loc_C186ED: LdPrVar
  loc_C186EF: LateMemCall
  loc_C186F5: FFree1Var var_C0 = ""
  loc_C186F8: LitI4 0
  loc_C186FD: LitI4 0
  loc_C18702: LitI2_Byte 0
  loc_C18704: LitStr "left"
  loc_C18707: FMemLdR4 var_150(24)
  loc_C1870C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18711: CVarStr var_C0
  loc_C18714: PopAdLdVar
  loc_C18715: FLdPr Me
  loc_C18718: MemLdRfVar from_stack_1.htmFile
  loc_C1871B: LdPrVar
  loc_C1871D: LateMemCall
  loc_C18723: FFree1Var var_C0 = ""
  loc_C18726: LitI4 0
  loc_C1872B: LitI4 0
  loc_C18730: LitI2_Byte 0
  loc_C18732: LitStr "left"
  loc_C18735: FMemLdR4 var_150(40)
  loc_C1873A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1873F: CVarStr var_C0
  loc_C18742: PopAdLdVar
  loc_C18743: FLdPr Me
  loc_C18746: MemLdRfVar from_stack_1.htmFile
  loc_C18749: LdPrVar
  loc_C1874B: LateMemCall
  loc_C18751: FFree1Var var_C0 = ""
  loc_C18754: LitI4 0
  loc_C18759: LitI4 0
  loc_C1875E: LitI2_Byte 0
  loc_C18760: LitStr "right"
  loc_C18763: FMemLdR4 var_150(44)
  loc_C18768: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C1876D: CVarStr var_C0
  loc_C18770: PopAdLdVar
  loc_C18771: FLdPr Me
  loc_C18774: MemLdRfVar from_stack_1.htmFile
  loc_C18777: LdPrVar
  loc_C18779: LateMemCall
  loc_C1877F: FFree1Var var_C0 = ""
  loc_C18782: LitVarStr var_A0, "    </tr>"
  loc_C18787: PopAdLdVar
  loc_C18788: FLdPr Me
  loc_C1878B: MemLdRfVar from_stack_1.htmFile
  loc_C1878E: LdPrVar
  loc_C18790: LateMemCall
  loc_C18796: FLdPr Me
  loc_C18799: MemLdI2 global_94
  loc_C1879C: CI4UI1
  loc_C1879D: FLdPr Me
  loc_C187A0: MemLdI2 global_92
  loc_C187A3: CI4UI1
  loc_C187A4: FLdPr Me
  loc_C187A7: MemLdStr global_88
  loc_C187AA: Ary1LdPr
  loc_C187AB: MemLdStr htmFile
  loc_C187AE: Ary1LdPr
  loc_C187AF: MemLdStr global_0
  loc_C187B2: FStStrCopy var_88
  loc_C187B5: LitI4 0
  loc_C187BA: FStR4 var_150
  loc_C187BD: AryUnlock
  loc_C187C0: AryUnlock
  loc_C187C3: FLdPr Me
  loc_C187C6: MemLdRfVar from_stack_1.global_94
  loc_C187C9: NextI2 var_142, loc_C185DE
  loc_C187CE: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C187D3: PopAdLdVar
  loc_C187D4: FLdPr Me
  loc_C187D7: MemLdRfVar from_stack_1.htmFile
  loc_C187DA: LdPrVar
  loc_C187DC: LateMemCall
  loc_C187E2: LitStr "   <th colspan=""5"">Por la cantidad de pesos: "
  loc_C187E5: FLdPr Me
  loc_C187E8: MemLdI2 global_92
  loc_C187EB: CI4UI1
  loc_C187EC: FLdPr Me
  loc_C187EF: MemLdStr global_88
  loc_C187F2: Ary1LdPr
  loc_C187F3: MemLdStr global_44
  loc_C187F6: CR8Str
  loc_C187F8: PopFPR8
  loc_C187F9: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_C187FE: FStStrNoPop var_134
  loc_C18801: ConcatStr
  loc_C18802: FStStrNoPop var_138
  loc_C18805: LitStr ".-</th>"
  loc_C18808: ConcatStr
  loc_C18809: CVarStr var_C0
  loc_C1880C: PopAdLdVar
  loc_C1880D: FLdPr Me
  loc_C18810: MemLdRfVar from_stack_1.htmFile
  loc_C18813: LdPrVar
  loc_C18815: LateMemCall
  loc_C1881B: FFreeStr var_134 = ""
  loc_C18822: FFree1Var var_C0 = ""
  loc_C18825: LitStr "   <th>"
  loc_C18828: FLdPr Me
  loc_C1882B: MemLdI2 global_92
  loc_C1882E: CI4UI1
  loc_C1882F: FLdPr Me
  loc_C18832: MemLdStr global_88
  loc_C18835: Ary1LdPr
  loc_C18836: MemLdStr global_44
  loc_C18839: ConcatStr
  loc_C1883A: FStStrNoPop var_134
  loc_C1883D: LitStr "</th>"
  loc_C18840: ConcatStr
  loc_C18841: CVarStr var_C0
  loc_C18844: PopAdLdVar
  loc_C18845: FLdPr Me
  loc_C18848: MemLdRfVar from_stack_1.htmFile
  loc_C1884B: LdPrVar
  loc_C1884D: LateMemCall
  loc_C18853: FFree1Str var_134
  loc_C18856: FFree1Var var_C0 = ""
  loc_C18859: LitVarStr var_A0, "  </tr>"
  loc_C1885E: PopAdLdVar
  loc_C1885F: FLdPr Me
  loc_C18862: MemLdRfVar from_stack_1.htmFile
  loc_C18865: LdPrVar
  loc_C18867: LateMemCall
  loc_C1886D: LitVarStr var_A0, "</table>"
  loc_C18872: PopAdLdVar
  loc_C18873: FLdPr Me
  loc_C18876: MemLdRfVar from_stack_1.htmFile
  loc_C18879: LdPrVar
  loc_C1887B: LateMemCall
  loc_C18881: Branch loc_C18BB0
  loc_C18884: FLdPr Me
  loc_C18887: MemLdI2 global_92
  loc_C1888A: CI4UI1
  loc_C1888B: FLdPr Me
  loc_C1888E: MemLdStr global_88
  loc_C18891: Ary1LdPr
  loc_C18892: MemLdI2 global_4
  loc_C18895: BranchF loc_C18BB0
  loc_C18898: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_C1889D: PopAdLdVar
  loc_C1889E: FLdPr Me
  loc_C188A1: MemLdRfVar from_stack_1.htmFile
  loc_C188A4: LdPrVar
  loc_C188A6: LateMemCall
  loc_C188AC: LitVarStr var_A0, "  <tr valign=""top"" align=""center"" class=""Encabezado"">"
  loc_C188B1: PopAdLdVar
  loc_C188B2: FLdPr Me
  loc_C188B5: MemLdRfVar from_stack_1.htmFile
  loc_C188B8: LdPrVar
  loc_C188BA: LateMemCall
  loc_C188C0: LitVarStr var_A0, "        <th colspan=""2"">Acreedor</th>"
  loc_C188C5: PopAdLdVar
  loc_C188C6: FLdPr Me
  loc_C188C9: MemLdRfVar from_stack_1.htmFile
  loc_C188CC: LdPrVar
  loc_C188CE: LateMemCall
  loc_C188D4: LitVarStr var_A0, "        <th>Detalle</th>"
  loc_C188D9: PopAdLdVar
  loc_C188DA: FLdPr Me
  loc_C188DD: MemLdRfVar from_stack_1.htmFile
  loc_C188E0: LdPrVar
  loc_C188E2: LateMemCall
  loc_C188E8: LitVarStr var_A0, "        <th>Cuenta Contable</th>"
  loc_C188ED: PopAdLdVar
  loc_C188EE: FLdPr Me
  loc_C188F1: MemLdRfVar from_stack_1.htmFile
  loc_C188F4: LdPrVar
  loc_C188F6: LateMemCall
  loc_C188FC: LitVarStr var_A0, "        <th>Débito N&deg;</th>"
  loc_C18901: PopAdLdVar
  loc_C18902: FLdPr Me
  loc_C18905: MemLdRfVar from_stack_1.htmFile
  loc_C18908: LdPrVar
  loc_C1890A: LateMemCall
  loc_C18910: LitVarStr var_A0, "        <th>Factura</th>"
  loc_C18915: PopAdLdVar
  loc_C18916: FLdPr Me
  loc_C18919: MemLdRfVar from_stack_1.htmFile
  loc_C1891C: LdPrVar
  loc_C1891E: LateMemCall
  loc_C18924: LitVarStr var_A0, "        <th>Importe</th>"
  loc_C18929: PopAdLdVar
  loc_C1892A: FLdPr Me
  loc_C1892D: MemLdRfVar from_stack_1.htmFile
  loc_C18930: LdPrVar
  loc_C18932: LateMemCall
  loc_C18938: LitVarStr var_A0, "  </tr>"
  loc_C1893D: PopAdLdVar
  loc_C1893E: FLdPr Me
  loc_C18941: MemLdRfVar from_stack_1.htmFile
  loc_C18944: LdPrVar
  loc_C18946: LateMemCall
  loc_C1894C: LitI2_Byte 1
  loc_C1894E: FLdPr Me
  loc_C18951: MemLdRfVar from_stack_1.global_102
  loc_C18954: FLdPr Me
  loc_C18957: MemLdI2 global_92
  loc_C1895A: CI4UI1
  loc_C1895B: FLdPr Me
  loc_C1895E: MemLdStr global_88
  loc_C18961: Ary1LdPr
  loc_C18962: MemLdStr global_84
  loc_C18965: LitI2_Byte 1
  loc_C18967: FnUBound
  loc_C18969: CI2I4
  loc_C1896A: ForI2 var_154
  loc_C18970: FLdPr Me
  loc_C18973: MemLdI2 global_102
  loc_C18976: CI4UI1
  loc_C18977: FLdPr Me
  loc_C1897A: MemLdI2 global_92
  loc_C1897D: CI4UI1
  loc_C1897E: FLdPr Me
  loc_C18981: MemLdStr global_88
  loc_C18984: AryLock
  loc_C18987: Ary1LdPr
  loc_C18988: MemLdStr global_84
  loc_C1898B: AryLock
  loc_C1898E: Ary1LdRf
  loc_C1898F: FStR4 var_160
  loc_C18992: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C18997: PopAdLdVar
  loc_C18998: FLdPr Me
  loc_C1899B: MemLdRfVar from_stack_1.htmFile
  loc_C1899E: LdPrVar
  loc_C189A0: LateMemCall
  loc_C189A6: LitI4 0
  loc_C189AB: LitI4 0
  loc_C189B0: LitI2_Byte 0
  loc_C189B2: LitStr "right"
  loc_C189B5: FMemLdR4 var_160(0)
  loc_C189BA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C189BF: CVarStr var_C0
  loc_C189C2: PopAdLdVar
  loc_C189C3: FLdPr Me
  loc_C189C6: MemLdRfVar from_stack_1.htmFile
  loc_C189C9: LdPrVar
  loc_C189CB: LateMemCall
  loc_C189D1: FFree1Var var_C0 = ""
  loc_C189D4: LitI4 0
  loc_C189D9: LitI4 0
  loc_C189DE: LitI2_Byte 0
  loc_C189E0: LitStr "left"
  loc_C189E3: FMemLdR4 var_160(4)
  loc_C189E8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C189ED: CVarStr var_C0
  loc_C189F0: PopAdLdVar
  loc_C189F1: FLdPr Me
  loc_C189F4: MemLdRfVar from_stack_1.htmFile
  loc_C189F7: LdPrVar
  loc_C189F9: LateMemCall
  loc_C189FF: FFree1Var var_C0 = ""
  loc_C18A02: LitI4 0
  loc_C18A07: LitI4 0
  loc_C18A0C: LitI2_Byte 0
  loc_C18A0E: LitStr "left"
  loc_C18A11: FMemLdR4 var_160(8)
  loc_C18A16: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18A1B: CVarStr var_C0
  loc_C18A1E: PopAdLdVar
  loc_C18A1F: FLdPr Me
  loc_C18A22: MemLdRfVar from_stack_1.htmFile
  loc_C18A25: LdPrVar
  loc_C18A27: LateMemCall
  loc_C18A2D: FFree1Var var_C0 = ""
  loc_C18A30: LitI4 0
  loc_C18A35: LitI4 0
  loc_C18A3A: LitI2_Byte 0
  loc_C18A3C: LitStr "right"
  loc_C18A3F: FMemLdR4 var_160(12)
  loc_C18A44: LitStr "<br>"
  loc_C18A47: ConcatStr
  loc_C18A48: FStStrNoPop var_134
  loc_C18A4B: FMemLdR4 var_160(16)
  loc_C18A50: ConcatStr
  loc_C18A51: FStStrNoPop var_138
  loc_C18A54: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18A59: CVarStr var_C0
  loc_C18A5C: PopAdLdVar
  loc_C18A5D: FLdPr Me
  loc_C18A60: MemLdRfVar from_stack_1.htmFile
  loc_C18A63: LdPrVar
  loc_C18A65: LateMemCall
  loc_C18A6B: FFreeStr var_134 = ""
  loc_C18A72: FFree1Var var_C0 = ""
  loc_C18A75: LitI4 0
  loc_C18A7A: LitI4 0
  loc_C18A7F: LitI2_Byte 0
  loc_C18A81: LitStr "right"
  loc_C18A84: FMemLdR4 var_160(20)
  loc_C18A89: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18A8E: CVarStr var_C0
  loc_C18A91: PopAdLdVar
  loc_C18A92: FLdPr Me
  loc_C18A95: MemLdRfVar from_stack_1.htmFile
  loc_C18A98: LdPrVar
  loc_C18A9A: LateMemCall
  loc_C18AA0: FFree1Var var_C0 = ""
  loc_C18AA3: LitI4 0
  loc_C18AA8: LitI4 0
  loc_C18AAD: LitI2_Byte 0
  loc_C18AAF: LitStr "left"
  loc_C18AB2: FMemLdR4 var_160(24)
  loc_C18AB7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18ABC: CVarStr var_C0
  loc_C18ABF: PopAdLdVar
  loc_C18AC0: FLdPr Me
  loc_C18AC3: MemLdRfVar from_stack_1.htmFile
  loc_C18AC6: LdPrVar
  loc_C18AC8: LateMemCall
  loc_C18ACE: FFree1Var var_C0 = ""
  loc_C18AD1: LitI4 0
  loc_C18AD6: LitI4 0
  loc_C18ADB: LitI2_Byte 0
  loc_C18ADD: LitStr "right"
  loc_C18AE0: FMemLdR4 var_160(28)
  loc_C18AE5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18AEA: CVarStr var_C0
  loc_C18AED: PopAdLdVar
  loc_C18AEE: FLdPr Me
  loc_C18AF1: MemLdRfVar from_stack_1.htmFile
  loc_C18AF4: LdPrVar
  loc_C18AF6: LateMemCall
  loc_C18AFC: FFree1Var var_C0 = ""
  loc_C18AFF: LitVarStr var_A0, "    </tr>"
  loc_C18B04: PopAdLdVar
  loc_C18B05: FLdPr Me
  loc_C18B08: MemLdRfVar from_stack_1.htmFile
  loc_C18B0B: LdPrVar
  loc_C18B0D: LateMemCall
  loc_C18B13: LitI4 0
  loc_C18B18: FStR4 var_160
  loc_C18B1B: AryUnlock
  loc_C18B1E: AryUnlock
  loc_C18B21: FLdPr Me
  loc_C18B24: MemLdRfVar from_stack_1.global_102
  loc_C18B27: NextI2 var_154, loc_C18970
  loc_C18B2C: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C18B31: PopAdLdVar
  loc_C18B32: FLdPr Me
  loc_C18B35: MemLdRfVar from_stack_1.htmFile
  loc_C18B38: LdPrVar
  loc_C18B3A: LateMemCall
  loc_C18B40: LitVarStr var_A0, "   <th colspan=""6"">TOTAL DE DEBITOS</th>"
  loc_C18B45: PopAdLdVar
  loc_C18B46: FLdPr Me
  loc_C18B49: MemLdRfVar from_stack_1.htmFile
  loc_C18B4C: LdPrVar
  loc_C18B4E: LateMemCall
  loc_C18B54: LitStr "   <th>"
  loc_C18B57: FLdPr Me
  loc_C18B5A: MemLdI2 global_92
  loc_C18B5D: CI4UI1
  loc_C18B5E: FLdPr Me
  loc_C18B61: MemLdStr global_88
  loc_C18B64: Ary1LdPr
  loc_C18B65: MemLdStr global_44
  loc_C18B68: ConcatStr
  loc_C18B69: FStStrNoPop var_134
  loc_C18B6C: LitStr "</th>"
  loc_C18B6F: ConcatStr
  loc_C18B70: CVarStr var_C0
  loc_C18B73: PopAdLdVar
  loc_C18B74: FLdPr Me
  loc_C18B77: MemLdRfVar from_stack_1.htmFile
  loc_C18B7A: LdPrVar
  loc_C18B7C: LateMemCall
  loc_C18B82: FFree1Str var_134
  loc_C18B85: FFree1Var var_C0 = ""
  loc_C18B88: LitVarStr var_A0, "  </tr>"
  loc_C18B8D: PopAdLdVar
  loc_C18B8E: FLdPr Me
  loc_C18B91: MemLdRfVar from_stack_1.htmFile
  loc_C18B94: LdPrVar
  loc_C18B96: LateMemCall
  loc_C18B9C: LitVarStr var_A0, "</table>"
  loc_C18BA1: PopAdLdVar
  loc_C18BA2: FLdPr Me
  loc_C18BA5: MemLdRfVar from_stack_1.htmFile
  loc_C18BA8: LdPrVar
  loc_C18BAA: LateMemCall
  loc_C18BB0: Branch loc_C193F7
  loc_C18BB3: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_C18BB8: PopAdLdVar
  loc_C18BB9: FLdPr Me
  loc_C18BBC: MemLdRfVar from_stack_1.htmFile
  loc_C18BBF: LdPrVar
  loc_C18BC1: LateMemCall
  loc_C18BC7: LitVarStr var_A0, "    <th width=""23" & Chr(37) & """ align=""left"" valign=""top""><br>"
  loc_C18BCC: PopAdLdVar
  loc_C18BCD: FLdPr Me
  loc_C18BD0: MemLdRfVar from_stack_1.htmFile
  loc_C18BD3: LdPrVar
  loc_C18BD5: LateMemCall
  loc_C18BDB: LitVarStr var_A0, "    Orden&nbsp;de&nbsp;pago&nbsp;a&nbsp;favor&nbsp;de:</th>"
  loc_C18BE0: PopAdLdVar
  loc_C18BE1: FLdPr Me
  loc_C18BE4: MemLdRfVar from_stack_1.htmFile
  loc_C18BE7: LdPrVar
  loc_C18BE9: LateMemCall
  loc_C18BEF: LitVarStr var_A0, "    <th width=""77" & Chr(37) & """ align=""left"" valign=""bottom""></br>"
  loc_C18BF4: PopAdLdVar
  loc_C18BF5: FLdPr Me
  loc_C18BF8: MemLdRfVar from_stack_1.htmFile
  loc_C18BFB: LdPrVar
  loc_C18BFD: LateMemCall
  loc_C18C03: LitVarStr var_A0, "      <table border=""0"" cellspacing=""0"" align=""left"" class=""Normal"">"
  loc_C18C08: PopAdLdVar
  loc_C18C09: FLdPr Me
  loc_C18C0C: MemLdRfVar from_stack_1.htmFile
  loc_C18C0F: LdPrVar
  loc_C18C11: LateMemCall
  loc_C18C17: LitI2_Byte 1
  loc_C18C19: FLdPr Me
  loc_C18C1C: MemLdRfVar from_stack_1.global_100
  loc_C18C1F: FLdPr Me
  loc_C18C22: MemLdI2 global_92
  loc_C18C25: CI4UI1
  loc_C18C26: FLdPr Me
  loc_C18C29: MemLdStr global_88
  loc_C18C2C: Ary1LdPr
  loc_C18C2D: MemLdStr global_48
  loc_C18C30: LitI2_Byte 1
  loc_C18C32: FnUBound
  loc_C18C34: CI2I4
  loc_C18C35: ForI2 var_164
  loc_C18C3B: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C18C40: PopAdLdVar
  loc_C18C41: FLdPr Me
  loc_C18C44: MemLdRfVar from_stack_1.htmFile
  loc_C18C47: LdPrVar
  loc_C18C49: LateMemCall
  loc_C18C4F: LitI4 0
  loc_C18C54: LitI4 0
  loc_C18C59: LitI2_Byte 0
  loc_C18C5B: LitStr "right"
  loc_C18C5E: FLdPr Me
  loc_C18C61: MemLdI2 global_100
  loc_C18C64: CI4UI1
  loc_C18C65: FLdPr Me
  loc_C18C68: MemLdI2 global_92
  loc_C18C6B: CI4UI1
  loc_C18C6C: FLdPr Me
  loc_C18C6F: MemLdStr global_88
  loc_C18C72: Ary1LdPr
  loc_C18C73: MemLdStr global_48
  loc_C18C76: Ary1LdPr
  loc_C18C77: MemLdStr global_0
  loc_C18C7A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18C7F: CVarStr var_C0
  loc_C18C82: PopAdLdVar
  loc_C18C83: FLdPr Me
  loc_C18C86: MemLdRfVar from_stack_1.htmFile
  loc_C18C89: LdPrVar
  loc_C18C8B: LateMemCall
  loc_C18C91: FFree1Var var_C0 = ""
  loc_C18C94: LitI4 0
  loc_C18C99: LitI4 0
  loc_C18C9E: LitI2_Byte 0
  loc_C18CA0: LitStr "left"
  loc_C18CA3: FLdPr Me
  loc_C18CA6: MemLdI2 global_100
  loc_C18CA9: CI4UI1
  loc_C18CAA: FLdPr Me
  loc_C18CAD: MemLdI2 global_92
  loc_C18CB0: CI4UI1
  loc_C18CB1: FLdPr Me
  loc_C18CB4: MemLdStr global_88
  loc_C18CB7: Ary1LdPr
  loc_C18CB8: MemLdStr global_48
  loc_C18CBB: Ary1LdPr
  loc_C18CBC: MemLdStr global_4
  loc_C18CBF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18CC4: CVarStr var_C0
  loc_C18CC7: PopAdLdVar
  loc_C18CC8: FLdPr Me
  loc_C18CCB: MemLdRfVar from_stack_1.htmFile
  loc_C18CCE: LdPrVar
  loc_C18CD0: LateMemCall
  loc_C18CD6: FFree1Var var_C0 = ""
  loc_C18CD9: LitVarStr var_A0, "     </tr>"
  loc_C18CDE: PopAdLdVar
  loc_C18CDF: FLdPr Me
  loc_C18CE2: MemLdRfVar from_stack_1.htmFile
  loc_C18CE5: LdPrVar
  loc_C18CE7: LateMemCall
  loc_C18CED: FLdPr Me
  loc_C18CF0: MemLdRfVar from_stack_1.global_100
  loc_C18CF3: NextI2 var_164, loc_C18C3B
  loc_C18CF8: LitVarStr var_A0, "    </table></th>"
  loc_C18CFD: PopAdLdVar
  loc_C18CFE: FLdPr Me
  loc_C18D01: MemLdRfVar from_stack_1.htmFile
  loc_C18D04: LdPrVar
  loc_C18D06: LateMemCall
  loc_C18D0C: LitVarStr var_A0, "  </tr>"
  loc_C18D11: PopAdLdVar
  loc_C18D12: FLdPr Me
  loc_C18D15: MemLdRfVar from_stack_1.htmFile
  loc_C18D18: LdPrVar
  loc_C18D1A: LateMemCall
  loc_C18D20: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_C18D25: PopAdLdVar
  loc_C18D26: FLdPr Me
  loc_C18D29: MemLdRfVar from_stack_1.htmFile
  loc_C18D2C: LdPrVar
  loc_C18D2E: LateMemCall
  loc_C18D34: LitStr "    <th colspan=""2"" align=""left"" valign=""top""><br><p>Por la cantidad de pesos: "
  loc_C18D37: FLdPr Me
  loc_C18D3A: MemLdI2 global_92
  loc_C18D3D: CI4UI1
  loc_C18D3E: FLdPr Me
  loc_C18D41: MemLdStr global_88
  loc_C18D44: Ary1LdPr
  loc_C18D45: MemLdStr global_44
  loc_C18D48: CR8Str
  loc_C18D4A: PopFPR8
  loc_C18D4B: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_C18D50: FStStrNoPop var_134
  loc_C18D53: ConcatStr
  loc_C18D54: FStStrNoPop var_138
  loc_C18D57: LitStr ".-</p></th>"
  loc_C18D5A: ConcatStr
  loc_C18D5B: CVarStr var_C0
  loc_C18D5E: PopAdLdVar
  loc_C18D5F: FLdPr Me
  loc_C18D62: MemLdRfVar from_stack_1.htmFile
  loc_C18D65: LdPrVar
  loc_C18D67: LateMemCall
  loc_C18D6D: FFreeStr var_134 = ""
  loc_C18D74: FFree1Var var_C0 = ""
  loc_C18D77: LitVarStr var_A0, "  </tr>"
  loc_C18D7C: PopAdLdVar
  loc_C18D7D: FLdPr Me
  loc_C18D80: MemLdRfVar from_stack_1.htmFile
  loc_C18D83: LdPrVar
  loc_C18D85: LateMemCall
  loc_C18D8B: LitVarStr var_A0, "</table>"
  loc_C18D90: PopAdLdVar
  loc_C18D91: FLdPr Me
  loc_C18D94: MemLdRfVar from_stack_1.htmFile
  loc_C18D97: LdPrVar
  loc_C18D99: LateMemCall
  loc_C18D9F: LitVarStr var_A0, "<br>"
  loc_C18DA4: PopAdLdVar
  loc_C18DA5: FLdPr Me
  loc_C18DA8: MemLdRfVar from_stack_1.htmFile
  loc_C18DAB: LdPrVar
  loc_C18DAD: LateMemCall
  loc_C18DB3: FLdPr Me
  loc_C18DB6: MemLdI2 global_92
  loc_C18DB9: CI4UI1
  loc_C18DBA: FLdPr Me
  loc_C18DBD: MemLdStr global_88
  loc_C18DC0: Ary1LdPr
  loc_C18DC1: MemLdI2 global_0
  loc_C18DC4: BranchF loc_C190CB
  loc_C18DC7: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_C18DCC: PopAdLdVar
  loc_C18DCD: FLdPr Me
  loc_C18DD0: MemLdRfVar from_stack_1.htmFile
  loc_C18DD3: LdPrVar
  loc_C18DD5: LateMemCall
  loc_C18DDB: LitVarStr var_A0, "  <tr valign=""middle"" align=""center"" class=""Encabezado"">"
  loc_C18DE0: PopAdLdVar
  loc_C18DE1: FLdPr Me
  loc_C18DE4: MemLdRfVar from_stack_1.htmFile
  loc_C18DE7: LdPrVar
  loc_C18DE9: LateMemCall
  loc_C18DEF: LitVarStr var_A0, "        <th colspan=""1"">Acreedor</th>"
  loc_C18DF4: PopAdLdVar
  loc_C18DF5: FLdPr Me
  loc_C18DF8: MemLdRfVar from_stack_1.htmFile
  loc_C18DFB: LdPrVar
  loc_C18DFD: LateMemCall
  loc_C18E03: LitVarStr var_A0, "        <th>Partida</th>"
  loc_C18E08: PopAdLdVar
  loc_C18E09: FLdPr Me
  loc_C18E0C: MemLdRfVar from_stack_1.htmFile
  loc_C18E0F: LdPrVar
  loc_C18E11: LateMemCall
  loc_C18E17: LitVarStr var_A0, "        <th>Organigrama</th>"
  loc_C18E1C: PopAdLdVar
  loc_C18E1D: FLdPr Me
  loc_C18E20: MemLdRfVar from_stack_1.htmFile
  loc_C18E23: LdPrVar
  loc_C18E25: LateMemCall
  loc_C18E2B: LitVarStr var_A0, "        <th>Exp. Original</th>"
  loc_C18E30: PopAdLdVar
  loc_C18E31: FLdPr Me
  loc_C18E34: MemLdRfVar from_stack_1.htmFile
  loc_C18E37: LdPrVar
  loc_C18E39: LateMemCall
  loc_C18E3F: LitVarStr var_A0, "        <th>Factura</th>"
  loc_C18E44: PopAdLdVar
  loc_C18E45: FLdPr Me
  loc_C18E48: MemLdRfVar from_stack_1.htmFile
  loc_C18E4B: LdPrVar
  loc_C18E4D: LateMemCall
  loc_C18E53: LitVarStr var_A0, "        <th>Importe</th>"
  loc_C18E58: PopAdLdVar
  loc_C18E59: FLdPr Me
  loc_C18E5C: MemLdRfVar from_stack_1.htmFile
  loc_C18E5F: LdPrVar
  loc_C18E61: LateMemCall
  loc_C18E67: LitVarStr var_A0, "  </tr>"
  loc_C18E6C: PopAdLdVar
  loc_C18E6D: FLdPr Me
  loc_C18E70: MemLdRfVar from_stack_1.htmFile
  loc_C18E73: LdPrVar
  loc_C18E75: LateMemCall
  loc_C18E7B: LitI2_Byte 1
  loc_C18E7D: FLdPr Me
  loc_C18E80: MemLdRfVar from_stack_1.global_94
  loc_C18E83: FLdPr Me
  loc_C18E86: MemLdI2 global_92
  loc_C18E89: CI4UI1
  loc_C18E8A: FLdPr Me
  loc_C18E8D: MemLdStr global_88
  loc_C18E90: Ary1LdPr
  loc_C18E91: MemLdStr htmFile
  loc_C18E94: LitI2_Byte 1
  loc_C18E96: FnUBound
  loc_C18E98: CI2I4
  loc_C18E99: ForI2 var_168
  loc_C18E9F: FLdPr Me
  loc_C18EA2: MemLdI2 global_94
  loc_C18EA5: CI4UI1
  loc_C18EA6: FLdPr Me
  loc_C18EA9: MemLdI2 global_92
  loc_C18EAC: CI4UI1
  loc_C18EAD: FLdPr Me
  loc_C18EB0: MemLdStr global_88
  loc_C18EB3: AryLock
  loc_C18EB6: Ary1LdPr
  loc_C18EB7: MemLdStr htmFile
  loc_C18EBA: AryLock
  loc_C18EBD: Ary1LdRf
  loc_C18EBE: FStR4 var_174
  loc_C18EC1: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C18EC6: PopAdLdVar
  loc_C18EC7: FLdPr Me
  loc_C18ECA: MemLdRfVar from_stack_1.htmFile
  loc_C18ECD: LdPrVar
  loc_C18ECF: LateMemCall
  loc_C18ED5: LitI4 0
  loc_C18EDA: LitI4 0
  loc_C18EDF: LitI2_Byte 0
  loc_C18EE1: LitStr "left"
  loc_C18EE4: FMemLdR4 var_174(0)
  loc_C18EE9: LitStr "<br>"
  loc_C18EEC: ConcatStr
  loc_C18EED: FStStrNoPop var_134
  loc_C18EF0: FMemLdR4 var_174(4)
  loc_C18EF5: ConcatStr
  loc_C18EF6: FStStrNoPop var_138
  loc_C18EF9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18EFE: CVarStr var_C0
  loc_C18F01: PopAdLdVar
  loc_C18F02: FLdPr Me
  loc_C18F05: MemLdRfVar from_stack_1.htmFile
  loc_C18F08: LdPrVar
  loc_C18F0A: LateMemCall
  loc_C18F10: FFreeStr var_134 = ""
  loc_C18F17: FFree1Var var_C0 = ""
  loc_C18F1A: LitI4 0
  loc_C18F1F: LitI4 0
  loc_C18F24: LitI2_Byte 0
  loc_C18F26: LitStr "left"
  loc_C18F29: FMemLdR4 var_174(8)
  loc_C18F2E: LitStr " - "
  loc_C18F31: ConcatStr
  loc_C18F32: FStStrNoPop var_134
  loc_C18F35: FMemLdR4 var_174(12)
  loc_C18F3A: ConcatStr
  loc_C18F3B: FStStrNoPop var_138
  loc_C18F3E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18F43: CVarStr var_C0
  loc_C18F46: PopAdLdVar
  loc_C18F47: FLdPr Me
  loc_C18F4A: MemLdRfVar from_stack_1.htmFile
  loc_C18F4D: LdPrVar
  loc_C18F4F: LateMemCall
  loc_C18F55: FFreeStr var_134 = ""
  loc_C18F5C: FFree1Var var_C0 = ""
  loc_C18F5F: LitI4 0
  loc_C18F64: LitI4 0
  loc_C18F69: LitI2_Byte 0
  loc_C18F6B: LitStr "left"
  loc_C18F6E: FMemLdR4 var_174(16)
  loc_C18F73: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18F78: CVarStr var_C0
  loc_C18F7B: PopAdLdVar
  loc_C18F7C: FLdPr Me
  loc_C18F7F: MemLdRfVar from_stack_1.htmFile
  loc_C18F82: LdPrVar
  loc_C18F84: LateMemCall
  loc_C18F8A: FFree1Var var_C0 = ""
  loc_C18F8D: LitI4 0
  loc_C18F92: LitI4 0
  loc_C18F97: LitI2_Byte 0
  loc_C18F99: LitStr "left"
  loc_C18F9C: FMemLdR4 var_174(24)
  loc_C18FA1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18FA6: CVarStr var_C0
  loc_C18FA9: PopAdLdVar
  loc_C18FAA: FLdPr Me
  loc_C18FAD: MemLdRfVar from_stack_1.htmFile
  loc_C18FB0: LdPrVar
  loc_C18FB2: LateMemCall
  loc_C18FB8: FFree1Var var_C0 = ""
  loc_C18FBB: LitI4 0
  loc_C18FC0: LitI4 0
  loc_C18FC5: LitI2_Byte 0
  loc_C18FC7: LitStr "left"
  loc_C18FCA: FMemLdR4 var_174(40)
  loc_C18FCF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C18FD4: CVarStr var_C0
  loc_C18FD7: PopAdLdVar
  loc_C18FD8: FLdPr Me
  loc_C18FDB: MemLdRfVar from_stack_1.htmFile
  loc_C18FDE: LdPrVar
  loc_C18FE0: LateMemCall
  loc_C18FE6: FFree1Var var_C0 = ""
  loc_C18FE9: LitI4 0
  loc_C18FEE: LitI4 0
  loc_C18FF3: LitI2_Byte 0
  loc_C18FF5: LitStr "right"
  loc_C18FF8: FMemLdR4 var_174(44)
  loc_C18FFD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C19002: CVarStr var_C0
  loc_C19005: PopAdLdVar
  loc_C19006: FLdPr Me
  loc_C19009: MemLdRfVar from_stack_1.htmFile
  loc_C1900C: LdPrVar
  loc_C1900E: LateMemCall
  loc_C19014: FFree1Var var_C0 = ""
  loc_C19017: LitVarStr var_A0, "    </tr>"
  loc_C1901C: PopAdLdVar
  loc_C1901D: FLdPr Me
  loc_C19020: MemLdRfVar from_stack_1.htmFile
  loc_C19023: LdPrVar
  loc_C19025: LateMemCall
  loc_C1902B: LitI4 0
  loc_C19030: FStR4 var_174
  loc_C19033: AryUnlock
  loc_C19036: AryUnlock
  loc_C19039: FLdPr Me
  loc_C1903C: MemLdRfVar from_stack_1.global_94
  loc_C1903F: NextI2 var_168, loc_C18E9F
  loc_C19044: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C19049: PopAdLdVar
  loc_C1904A: FLdPr Me
  loc_C1904D: MemLdRfVar from_stack_1.htmFile
  loc_C19050: LdPrVar
  loc_C19052: LateMemCall
  loc_C19058: LitVarStr var_A0, "   <th colspan=""5"">TOTAL MANDADO A PAGAR</th>"
  loc_C1905D: PopAdLdVar
  loc_C1905E: FLdPr Me
  loc_C19061: MemLdRfVar from_stack_1.htmFile
  loc_C19064: LdPrVar
  loc_C19066: LateMemCall
  loc_C1906C: LitStr "   <th>"
  loc_C1906F: FLdPr Me
  loc_C19072: MemLdI2 global_92
  loc_C19075: CI4UI1
  loc_C19076: FLdPr Me
  loc_C19079: MemLdStr global_88
  loc_C1907C: Ary1LdPr
  loc_C1907D: MemLdStr global_44
  loc_C19080: ConcatStr
  loc_C19081: FStStrNoPop var_134
  loc_C19084: LitStr "</th>"
  loc_C19087: ConcatStr
  loc_C19088: CVarStr var_C0
  loc_C1908B: PopAdLdVar
  loc_C1908C: FLdPr Me
  loc_C1908F: MemLdRfVar from_stack_1.htmFile
  loc_C19092: LdPrVar
  loc_C19094: LateMemCall
  loc_C1909A: FFree1Str var_134
  loc_C1909D: FFree1Var var_C0 = ""
  loc_C190A0: LitVarStr var_A0, "  </tr>"
  loc_C190A5: PopAdLdVar
  loc_C190A6: FLdPr Me
  loc_C190A9: MemLdRfVar from_stack_1.htmFile
  loc_C190AC: LdPrVar
  loc_C190AE: LateMemCall
  loc_C190B4: LitVarStr var_A0, "</table>"
  loc_C190B9: PopAdLdVar
  loc_C190BA: FLdPr Me
  loc_C190BD: MemLdRfVar from_stack_1.htmFile
  loc_C190C0: LdPrVar
  loc_C190C2: LateMemCall
  loc_C190C8: Branch loc_C193F7
  loc_C190CB: FLdPr Me
  loc_C190CE: MemLdI2 global_92
  loc_C190D1: CI4UI1
  loc_C190D2: FLdPr Me
  loc_C190D5: MemLdStr global_88
  loc_C190D8: Ary1LdPr
  loc_C190D9: MemLdI2 global_4
  loc_C190DC: BranchF loc_C193F7
  loc_C190DF: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_C190E4: PopAdLdVar
  loc_C190E5: FLdPr Me
  loc_C190E8: MemLdRfVar from_stack_1.htmFile
  loc_C190EB: LdPrVar
  loc_C190ED: LateMemCall
  loc_C190F3: LitVarStr var_A0, "  <tr valign=""top"" align=""center"" class=""Encabezado"">"
  loc_C190F8: PopAdLdVar
  loc_C190F9: FLdPr Me
  loc_C190FC: MemLdRfVar from_stack_1.htmFile
  loc_C190FF: LdPrVar
  loc_C19101: LateMemCall
  loc_C19107: LitVarStr var_A0, "        <th colspan=""2"">Acreedor</th>"
  loc_C1910C: PopAdLdVar
  loc_C1910D: FLdPr Me
  loc_C19110: MemLdRfVar from_stack_1.htmFile
  loc_C19113: LdPrVar
  loc_C19115: LateMemCall
  loc_C1911B: LitVarStr var_A0, "        <th>Detalle</th>"
  loc_C19120: PopAdLdVar
  loc_C19121: FLdPr Me
  loc_C19124: MemLdRfVar from_stack_1.htmFile
  loc_C19127: LdPrVar
  loc_C19129: LateMemCall
  loc_C1912F: LitVarStr var_A0, "        <th>Cuenta Contable</th>"
  loc_C19134: PopAdLdVar
  loc_C19135: FLdPr Me
  loc_C19138: MemLdRfVar from_stack_1.htmFile
  loc_C1913B: LdPrVar
  loc_C1913D: LateMemCall
  loc_C19143: LitVarStr var_A0, "        <th>Débito N&deg;</th>"
  loc_C19148: PopAdLdVar
  loc_C19149: FLdPr Me
  loc_C1914C: MemLdRfVar from_stack_1.htmFile
  loc_C1914F: LdPrVar
  loc_C19151: LateMemCall
  loc_C19157: LitVarStr var_A0, "        <th>Factura</th>"
  loc_C1915C: PopAdLdVar
  loc_C1915D: FLdPr Me
  loc_C19160: MemLdRfVar from_stack_1.htmFile
  loc_C19163: LdPrVar
  loc_C19165: LateMemCall
  loc_C1916B: LitVarStr var_A0, "        <th>Importe</th>"
  loc_C19170: PopAdLdVar
  loc_C19171: FLdPr Me
  loc_C19174: MemLdRfVar from_stack_1.htmFile
  loc_C19177: LdPrVar
  loc_C19179: LateMemCall
  loc_C1917F: LitVarStr var_A0, "  </tr>"
  loc_C19184: PopAdLdVar
  loc_C19185: FLdPr Me
  loc_C19188: MemLdRfVar from_stack_1.htmFile
  loc_C1918B: LdPrVar
  loc_C1918D: LateMemCall
  loc_C19193: LitI2_Byte 1
  loc_C19195: FLdPr Me
  loc_C19198: MemLdRfVar from_stack_1.global_102
  loc_C1919B: FLdPr Me
  loc_C1919E: MemLdI2 global_92
  loc_C191A1: CI4UI1
  loc_C191A2: FLdPr Me
  loc_C191A5: MemLdStr global_88
  loc_C191A8: Ary1LdPr
  loc_C191A9: MemLdStr global_84
  loc_C191AC: LitI2_Byte 1
  loc_C191AE: FnUBound
  loc_C191B0: CI2I4
  loc_C191B1: ForI2 var_178
  loc_C191B7: FLdPr Me
  loc_C191BA: MemLdI2 global_102
  loc_C191BD: CI4UI1
  loc_C191BE: FLdPr Me
  loc_C191C1: MemLdI2 global_92
  loc_C191C4: CI4UI1
  loc_C191C5: FLdPr Me
  loc_C191C8: MemLdStr global_88
  loc_C191CB: AryLock
  loc_C191CE: Ary1LdPr
  loc_C191CF: MemLdStr global_84
  loc_C191D2: AryLock
  loc_C191D5: Ary1LdRf
  loc_C191D6: FStR4 var_184
  loc_C191D9: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C191DE: PopAdLdVar
  loc_C191DF: FLdPr Me
  loc_C191E2: MemLdRfVar from_stack_1.htmFile
  loc_C191E5: LdPrVar
  loc_C191E7: LateMemCall
  loc_C191ED: LitI4 0
  loc_C191F2: LitI4 0
  loc_C191F7: LitI2_Byte 0
  loc_C191F9: LitStr "right"
  loc_C191FC: FMemLdR4 var_184(0)
  loc_C19201: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C19206: CVarStr var_C0
  loc_C19209: PopAdLdVar
  loc_C1920A: FLdPr Me
  loc_C1920D: MemLdRfVar from_stack_1.htmFile
  loc_C19210: LdPrVar
  loc_C19212: LateMemCall
  loc_C19218: FFree1Var var_C0 = ""
  loc_C1921B: LitI4 0
  loc_C19220: LitI4 0
  loc_C19225: LitI2_Byte 0
  loc_C19227: LitStr "left"
  loc_C1922A: FMemLdR4 var_184(4)
  loc_C1922F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C19234: CVarStr var_C0
  loc_C19237: PopAdLdVar
  loc_C19238: FLdPr Me
  loc_C1923B: MemLdRfVar from_stack_1.htmFile
  loc_C1923E: LdPrVar
  loc_C19240: LateMemCall
  loc_C19246: FFree1Var var_C0 = ""
  loc_C19249: LitI4 0
  loc_C1924E: LitI4 0
  loc_C19253: LitI2_Byte 0
  loc_C19255: LitStr "left"
  loc_C19258: FMemLdR4 var_184(8)
  loc_C1925D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C19262: CVarStr var_C0
  loc_C19265: PopAdLdVar
  loc_C19266: FLdPr Me
  loc_C19269: MemLdRfVar from_stack_1.htmFile
  loc_C1926C: LdPrVar
  loc_C1926E: LateMemCall
  loc_C19274: FFree1Var var_C0 = ""
  loc_C19277: LitI4 0
  loc_C1927C: LitI4 0
  loc_C19281: LitI2_Byte 0
  loc_C19283: LitStr "right"
  loc_C19286: FMemLdR4 var_184(12)
  loc_C1928B: LitStr "<br>"
  loc_C1928E: ConcatStr
  loc_C1928F: FStStrNoPop var_134
  loc_C19292: FMemLdR4 var_184(16)
  loc_C19297: ConcatStr
  loc_C19298: FStStrNoPop var_138
  loc_C1929B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C192A0: CVarStr var_C0
  loc_C192A3: PopAdLdVar
  loc_C192A4: FLdPr Me
  loc_C192A7: MemLdRfVar from_stack_1.htmFile
  loc_C192AA: LdPrVar
  loc_C192AC: LateMemCall
  loc_C192B2: FFreeStr var_134 = ""
  loc_C192B9: FFree1Var var_C0 = ""
  loc_C192BC: LitI4 0
  loc_C192C1: LitI4 0
  loc_C192C6: LitI2_Byte 0
  loc_C192C8: LitStr "right"
  loc_C192CB: FMemLdR4 var_184(20)
  loc_C192D0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C192D5: CVarStr var_C0
  loc_C192D8: PopAdLdVar
  loc_C192D9: FLdPr Me
  loc_C192DC: MemLdRfVar from_stack_1.htmFile
  loc_C192DF: LdPrVar
  loc_C192E1: LateMemCall
  loc_C192E7: FFree1Var var_C0 = ""
  loc_C192EA: LitI4 0
  loc_C192EF: LitI4 0
  loc_C192F4: LitI2_Byte 0
  loc_C192F6: LitStr "left"
  loc_C192F9: FMemLdR4 var_184(24)
  loc_C192FE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C19303: CVarStr var_C0
  loc_C19306: PopAdLdVar
  loc_C19307: FLdPr Me
  loc_C1930A: MemLdRfVar from_stack_1.htmFile
  loc_C1930D: LdPrVar
  loc_C1930F: LateMemCall
  loc_C19315: FFree1Var var_C0 = ""
  loc_C19318: LitI4 0
  loc_C1931D: LitI4 0
  loc_C19322: LitI2_Byte 0
  loc_C19324: LitStr "right"
  loc_C19327: FMemLdR4 var_184(28)
  loc_C1932C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_C19331: CVarStr var_C0
  loc_C19334: PopAdLdVar
  loc_C19335: FLdPr Me
  loc_C19338: MemLdRfVar from_stack_1.htmFile
  loc_C1933B: LdPrVar
  loc_C1933D: LateMemCall
  loc_C19343: FFree1Var var_C0 = ""
  loc_C19346: LitVarStr var_A0, "    </tr>"
  loc_C1934B: PopAdLdVar
  loc_C1934C: FLdPr Me
  loc_C1934F: MemLdRfVar from_stack_1.htmFile
  loc_C19352: LdPrVar
  loc_C19354: LateMemCall
  loc_C1935A: LitI4 0
  loc_C1935F: FStR4 var_184
  loc_C19362: AryUnlock
  loc_C19365: AryUnlock
  loc_C19368: FLdPr Me
  loc_C1936B: MemLdRfVar from_stack_1.global_102
  loc_C1936E: NextI2 var_178, loc_C191B7
  loc_C19373: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C19378: PopAdLdVar
  loc_C19379: FLdPr Me
  loc_C1937C: MemLdRfVar from_stack_1.htmFile
  loc_C1937F: LdPrVar
  loc_C19381: LateMemCall
  loc_C19387: LitVarStr var_A0, "   <th colspan=""6"">TOTAL DE DEBITOS</th>"
  loc_C1938C: PopAdLdVar
  loc_C1938D: FLdPr Me
  loc_C19390: MemLdRfVar from_stack_1.htmFile
  loc_C19393: LdPrVar
  loc_C19395: LateMemCall
  loc_C1939B: LitStr "   <th>"
  loc_C1939E: FLdPr Me
  loc_C193A1: MemLdI2 global_92
  loc_C193A4: CI4UI1
  loc_C193A5: FLdPr Me
  loc_C193A8: MemLdStr global_88
  loc_C193AB: Ary1LdPr
  loc_C193AC: MemLdStr global_44
  loc_C193AF: ConcatStr
  loc_C193B0: FStStrNoPop var_134
  loc_C193B3: LitStr "</th>"
  loc_C193B6: ConcatStr
  loc_C193B7: CVarStr var_C0
  loc_C193BA: PopAdLdVar
  loc_C193BB: FLdPr Me
  loc_C193BE: MemLdRfVar from_stack_1.htmFile
  loc_C193C1: LdPrVar
  loc_C193C3: LateMemCall
  loc_C193C9: FFree1Str var_134
  loc_C193CC: FFree1Var var_C0 = ""
  loc_C193CF: LitVarStr var_A0, "  </tr>"
  loc_C193D4: PopAdLdVar
  loc_C193D5: FLdPr Me
  loc_C193D8: MemLdRfVar from_stack_1.htmFile
  loc_C193DB: LdPrVar
  loc_C193DD: LateMemCall
  loc_C193E3: LitVarStr var_A0, "</table>"
  loc_C193E8: PopAdLdVar
  loc_C193E9: FLdPr Me
  loc_C193EC: MemLdRfVar from_stack_1.htmFile
  loc_C193EF: LdPrVar
  loc_C193F1: LateMemCall
  loc_C193F7: FLdRfVar var_13E
  loc_C193FA: FLdPr Me
  loc_C193FD: VCallAd Control_ID_chkSintetico
  loc_C19400: FStAdFunc var_8C
  loc_C19403: FLdPr var_8C
  loc_C19406:  = Me.Value
  loc_C1940B: FLdI2 var_13E
  loc_C1940E: CI4UI1
  loc_C1940F: LitI4 1
  loc_C19414: EqI4
  loc_C19415: FFree1Ad var_8C
  loc_C19418: BranchF loc_C19B8F
  loc_C1941B: LitVarStr var_A0, "<table width=""85" & Chr(37) & """ border=""0"" align=""center"" cellspacing=""20"" class=""Normal"">"
  loc_C19420: PopAdLdVar
  loc_C19421: FLdPr Me
  loc_C19424: MemLdRfVar from_stack_1.htmFile
  loc_C19427: LdPrVar
  loc_C19429: LateMemCall
  loc_C1942F: LitVarStr var_A0, "<th nowrap>"
  loc_C19434: PopAdLdVar
  loc_C19435: FLdPr Me
  loc_C19438: MemLdRfVar from_stack_1.htmFile
  loc_C1943B: LdPrVar
  loc_C1943D: LateMemCall
  loc_C19443: LitStr "Municipalidad de Guaymallén"
  loc_C19446: FStStrCopy var_188
  loc_C19449: ILdRf var_188
  loc_C1944C: LitStr "Municipalidad de Tunuyán"
  loc_C1944F: EqStr
  loc_C19451: BranchF loc_C19636
  loc_C19454: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C19459: PopAdLdVar
  loc_C1945A: FLdPr Me
  loc_C1945D: MemLdRfVar from_stack_1.htmFile
  loc_C19460: LdPrVar
  loc_C19462: LateMemCall
  loc_C19468: LitStr "    <td colspan=""3"">"
  loc_C1946B: LitStr "Municipalidad de Guaymallén"
  loc_C1946E: ConcatStr
  loc_C1946F: FStStrNoPop var_134
  loc_C19472: LitStr "<br>"
  loc_C19475: ConcatStr
  loc_C19476: FStStrNoPop var_138
  loc_C19479: LitStr "Orden de pago: "
  loc_C1947C: ConcatStr
  loc_C1947D: FStStrNoPop var_13C
  loc_C19480: FLdPr Me
  loc_C19483: MemLdI2 global_92
  loc_C19486: CI4UI1
  loc_C19487: FLdPr Me
  loc_C1948A: MemLdStr global_88
  loc_C1948D: Ary1LdPr
  loc_C1948E: MemLdStr global_8
  loc_C19491: ConcatStr
  loc_C19492: FStStrNoPop var_18C
  loc_C19495: LitStr "</td>"
  loc_C19498: ConcatStr
  loc_C19499: CVarStr var_C0
  loc_C1949C: PopAdLdVar
  loc_C1949D: FLdPr Me
  loc_C194A0: MemLdRfVar from_stack_1.htmFile
  loc_C194A3: LdPrVar
  loc_C194A5: LateMemCall
  loc_C194AB: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C194B6: FFree1Var var_C0 = ""
  loc_C194B9: LitVarStr var_A0, "  </tr>"
  loc_C194BE: PopAdLdVar
  loc_C194BF: FLdPr Me
  loc_C194C2: MemLdRfVar from_stack_1.htmFile
  loc_C194C5: LdPrVar
  loc_C194C7: LateMemCall
  loc_C194CD: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C194D2: PopAdLdVar
  loc_C194D3: FLdPr Me
  loc_C194D6: MemLdRfVar from_stack_1.htmFile
  loc_C194D9: LdPrVar
  loc_C194DB: LateMemCall
  loc_C194E1: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C194E4: FLdPr Me
  loc_C194E7: MemLdI2 global_92
  loc_C194EA: CI4UI1
  loc_C194EB: FLdPr Me
  loc_C194EE: MemLdStr global_88
  loc_C194F1: Ary1LdPr
  loc_C194F2: MemLdStr global_16
  loc_C194F5: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C194FA: FStStrNoPop var_134
  loc_C194FD: ConcatStr
  loc_C194FE: FStStrNoPop var_138
  loc_C19501: LitStr "<br>"
  loc_C19504: ConcatStr
  loc_C19505: FStStrNoPop var_13C
  loc_C19508: FLdPr Me
  loc_C1950B: MemLdI2 global_92
  loc_C1950E: CI4UI1
  loc_C1950F: FLdPr Me
  loc_C19512: MemLdStr global_88
  loc_C19515: Ary1LdPr
  loc_C19516: MemLdStr global_16
  loc_C19519: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C1951E: FStStrNoPop var_18C
  loc_C19521: ConcatStr
  loc_C19522: FStStrNoPop var_190
  loc_C19525: LitStr "</td>"
  loc_C19528: ConcatStr
  loc_C19529: CVarStr var_C0
  loc_C1952C: PopAdLdVar
  loc_C1952D: FLdPr Me
  loc_C19530: MemLdRfVar from_stack_1.htmFile
  loc_C19533: LdPrVar
  loc_C19535: LateMemCall
  loc_C1953B: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C19548: FFree1Var var_C0 = ""
  loc_C1954B: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1954E: FLdPr Me
  loc_C19551: MemLdI2 global_92
  loc_C19554: CI4UI1
  loc_C19555: FLdPr Me
  loc_C19558: MemLdStr global_88
  loc_C1955B: Ary1LdPr
  loc_C1955C: MemLdStr global_16
  loc_C1955F: ImpAdCallI2 Proc_259_58_9C734C()
  loc_C19564: FStStrNoPop var_134
  loc_C19567: ConcatStr
  loc_C19568: FStStrNoPop var_138
  loc_C1956B: LitStr "<br>"
  loc_C1956E: ConcatStr
  loc_C1956F: FStStrNoPop var_13C
  loc_C19572: FLdPr Me
  loc_C19575: MemLdI2 global_92
  loc_C19578: CI4UI1
  loc_C19579: FLdPr Me
  loc_C1957C: MemLdStr global_88
  loc_C1957F: Ary1LdPr
  loc_C19580: MemLdStr global_16
  loc_C19583: ImpAdCallI2 Proc_259_59_9D04B8()
  loc_C19588: FStStrNoPop var_18C
  loc_C1958B: ConcatStr
  loc_C1958C: FStStrNoPop var_190
  loc_C1958F: LitStr "</td>"
  loc_C19592: ConcatStr
  loc_C19593: CVarStr var_C0
  loc_C19596: PopAdLdVar
  loc_C19597: FLdPr Me
  loc_C1959A: MemLdRfVar from_stack_1.htmFile
  loc_C1959D: LdPrVar
  loc_C1959F: LateMemCall
  loc_C195A5: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C195B2: FFree1Var var_C0 = ""
  loc_C195B5: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C195B8: FLdPr Me
  loc_C195BB: MemLdI2 global_92
  loc_C195BE: CI4UI1
  loc_C195BF: FLdPr Me
  loc_C195C2: MemLdStr global_88
  loc_C195C5: Ary1LdPr
  loc_C195C6: MemLdStr global_16
  loc_C195C9: ImpAdCallI2 Proc_259_60_9C78C4()
  loc_C195CE: FStStrNoPop var_134
  loc_C195D1: ConcatStr
  loc_C195D2: FStStrNoPop var_138
  loc_C195D5: LitStr "<br>"
  loc_C195D8: ConcatStr
  loc_C195D9: FStStrNoPop var_13C
  loc_C195DC: FLdPr Me
  loc_C195DF: MemLdI2 global_92
  loc_C195E2: CI4UI1
  loc_C195E3: FLdPr Me
  loc_C195E6: MemLdStr global_88
  loc_C195E9: Ary1LdPr
  loc_C195EA: MemLdStr global_16
  loc_C195ED: ImpAdCallI2 Proc_259_61_9CF39C()
  loc_C195F2: FStStrNoPop var_18C
  loc_C195F5: ConcatStr
  loc_C195F6: FStStrNoPop var_190
  loc_C195F9: LitStr "</td>"
  loc_C195FC: ConcatStr
  loc_C195FD: CVarStr var_C0
  loc_C19600: PopAdLdVar
  loc_C19601: FLdPr Me
  loc_C19604: MemLdRfVar from_stack_1.htmFile
  loc_C19607: LdPrVar
  loc_C19609: LateMemCall
  loc_C1960F: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1961C: FFree1Var var_C0 = ""
  loc_C1961F: LitVarStr var_A0, "  </tr>"
  loc_C19624: PopAdLdVar
  loc_C19625: FLdPr Me
  loc_C19628: MemLdRfVar from_stack_1.htmFile
  loc_C1962B: LdPrVar
  loc_C1962D: LateMemCall
  loc_C19633: Branch loc_C19B67
  loc_C19636: ILdRf var_188
  loc_C19639: LitStr "Municipalidad de Guaymallén"
  loc_C1963C: EqStr
  loc_C1963E: BranchT loc_C1964C
  loc_C19641: ILdRf var_188
  loc_C19644: LitStr "EPAS - Ente Provincial del Agua y de Saneamiento"
  loc_C19647: EqStr
  loc_C19649: BranchF loc_C197B5
  loc_C1964C: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C19651: PopAdLdVar
  loc_C19652: FLdPr Me
  loc_C19655: MemLdRfVar from_stack_1.htmFile
  loc_C19658: LdPrVar
  loc_C1965A: LateMemCall
  loc_C19660: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C19663: FLdPr Me
  loc_C19666: MemLdI2 global_92
  loc_C19669: CI4UI1
  loc_C1966A: FLdPr Me
  loc_C1966D: MemLdStr global_88
  loc_C19670: Ary1LdPr
  loc_C19671: MemLdStr global_16
  loc_C19674: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C19679: FStStrNoPop var_134
  loc_C1967C: ConcatStr
  loc_C1967D: FStStrNoPop var_138
  loc_C19680: LitStr "<br>"
  loc_C19683: ConcatStr
  loc_C19684: FStStrNoPop var_13C
  loc_C19687: FLdPr Me
  loc_C1968A: MemLdI2 global_92
  loc_C1968D: CI4UI1
  loc_C1968E: FLdPr Me
  loc_C19691: MemLdStr global_88
  loc_C19694: Ary1LdPr
  loc_C19695: MemLdStr global_16
  loc_C19698: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C1969D: FStStrNoPop var_18C
  loc_C196A0: ConcatStr
  loc_C196A1: FStStrNoPop var_190
  loc_C196A4: LitStr "</td>"
  loc_C196A7: ConcatStr
  loc_C196A8: CVarStr var_C0
  loc_C196AB: PopAdLdVar
  loc_C196AC: FLdPr Me
  loc_C196AF: MemLdRfVar from_stack_1.htmFile
  loc_C196B2: LdPrVar
  loc_C196B4: LateMemCall
  loc_C196BA: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C196C7: FFree1Var var_C0 = ""
  loc_C196CA: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C196CD: FLdPr Me
  loc_C196D0: MemLdI2 global_92
  loc_C196D3: CI4UI1
  loc_C196D4: FLdPr Me
  loc_C196D7: MemLdStr global_88
  loc_C196DA: Ary1LdPr
  loc_C196DB: MemLdStr global_16
  loc_C196DE: ImpAdCallI2 Proc_259_58_9C734C()
  loc_C196E3: FStStrNoPop var_134
  loc_C196E6: ConcatStr
  loc_C196E7: FStStrNoPop var_138
  loc_C196EA: LitStr "<br>"
  loc_C196ED: ConcatStr
  loc_C196EE: FStStrNoPop var_13C
  loc_C196F1: FLdPr Me
  loc_C196F4: MemLdI2 global_92
  loc_C196F7: CI4UI1
  loc_C196F8: FLdPr Me
  loc_C196FB: MemLdStr global_88
  loc_C196FE: Ary1LdPr
  loc_C196FF: MemLdStr global_16
  loc_C19702: ImpAdCallI2 Proc_259_59_9D04B8()
  loc_C19707: FStStrNoPop var_18C
  loc_C1970A: ConcatStr
  loc_C1970B: FStStrNoPop var_190
  loc_C1970E: LitStr "</td>"
  loc_C19711: ConcatStr
  loc_C19712: CVarStr var_C0
  loc_C19715: PopAdLdVar
  loc_C19716: FLdPr Me
  loc_C19719: MemLdRfVar from_stack_1.htmFile
  loc_C1971C: LdPrVar
  loc_C1971E: LateMemCall
  loc_C19724: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C19731: FFree1Var var_C0 = ""
  loc_C19734: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C19737: FLdPr Me
  loc_C1973A: MemLdI2 global_92
  loc_C1973D: CI4UI1
  loc_C1973E: FLdPr Me
  loc_C19741: MemLdStr global_88
  loc_C19744: Ary1LdPr
  loc_C19745: MemLdStr global_16
  loc_C19748: ImpAdCallI2 Proc_259_55_9C77AC()
  loc_C1974D: FStStrNoPop var_134
  loc_C19750: ConcatStr
  loc_C19751: FStStrNoPop var_138
  loc_C19754: LitStr "<br>"
  loc_C19757: ConcatStr
  loc_C19758: FStStrNoPop var_13C
  loc_C1975B: FLdPr Me
  loc_C1975E: MemLdI2 global_92
  loc_C19761: CI4UI1
  loc_C19762: FLdPr Me
  loc_C19765: MemLdStr global_88
  loc_C19768: Ary1LdPr
  loc_C19769: MemLdStr global_16
  loc_C1976C: ImpAdCallI2 Proc_259_57_9D0CB4()
  loc_C19771: FStStrNoPop var_18C
  loc_C19774: ConcatStr
  loc_C19775: FStStrNoPop var_190
  loc_C19778: LitStr "</td>"
  loc_C1977B: ConcatStr
  loc_C1977C: CVarStr var_C0
  loc_C1977F: PopAdLdVar
  loc_C19780: FLdPr Me
  loc_C19783: MemLdRfVar from_stack_1.htmFile
  loc_C19786: LdPrVar
  loc_C19788: LateMemCall
  loc_C1978E: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1979B: FFree1Var var_C0 = ""
  loc_C1979E: LitVarStr var_A0, "  </tr>"
  loc_C197A3: PopAdLdVar
  loc_C197A4: FLdPr Me
  loc_C197A7: MemLdRfVar from_stack_1.htmFile
  loc_C197AA: LdPrVar
  loc_C197AC: LateMemCall
  loc_C197B2: Branch loc_C19B67
  loc_C197B5: ILdRf var_188
  loc_C197B8: LitStr "Municipalidad de General Alvear"
  loc_C197BB: EqStr
  loc_C197BD: BranchF loc_C198F6
  loc_C197C0: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C197C5: PopAdLdVar
  loc_C197C6: FLdPr Me
  loc_C197C9: MemLdRfVar from_stack_1.htmFile
  loc_C197CC: LdPrVar
  loc_C197CE: LateMemCall
  loc_C197D4: LitStr "    <td colspan=""3"">"
  loc_C197D7: LitStr "Municipalidad de Guaymallén"
  loc_C197DA: ConcatStr
  loc_C197DB: FStStrNoPop var_134
  loc_C197DE: LitStr "<br>"
  loc_C197E1: ConcatStr
  loc_C197E2: FStStrNoPop var_138
  loc_C197E5: LitStr "Orden de pago: "
  loc_C197E8: ConcatStr
  loc_C197E9: FStStrNoPop var_13C
  loc_C197EC: FLdPr Me
  loc_C197EF: MemLdI2 global_92
  loc_C197F2: CI4UI1
  loc_C197F3: FLdPr Me
  loc_C197F6: MemLdStr global_88
  loc_C197F9: Ary1LdPr
  loc_C197FA: MemLdStr global_8
  loc_C197FD: ConcatStr
  loc_C197FE: FStStrNoPop var_18C
  loc_C19801: LitStr "</td>"
  loc_C19804: ConcatStr
  loc_C19805: CVarStr var_C0
  loc_C19808: PopAdLdVar
  loc_C19809: FLdPr Me
  loc_C1980C: MemLdRfVar from_stack_1.htmFile
  loc_C1980F: LdPrVar
  loc_C19811: LateMemCall
  loc_C19817: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C19822: FFree1Var var_C0 = ""
  loc_C19825: LitVarStr var_A0, "  </tr>"
  loc_C1982A: PopAdLdVar
  loc_C1982B: FLdPr Me
  loc_C1982E: MemLdRfVar from_stack_1.htmFile
  loc_C19831: LdPrVar
  loc_C19833: LateMemCall
  loc_C19839: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C1983E: PopAdLdVar
  loc_C1983F: FLdPr Me
  loc_C19842: MemLdRfVar from_stack_1.htmFile
  loc_C19845: LdPrVar
  loc_C19847: LateMemCall
  loc_C1984D: LitVarStr var_A0, "    <td width=""25" & Chr(37) & """></td>"
  loc_C19852: PopAdLdVar
  loc_C19853: FLdPr Me
  loc_C19856: MemLdRfVar from_stack_1.htmFile
  loc_C19859: LdPrVar
  loc_C1985B: LateMemCall
  loc_C19861: LitVarStr var_A0, "    <td width=""25" & Chr(37) & """></td>"
  loc_C19866: PopAdLdVar
  loc_C19867: FLdPr Me
  loc_C1986A: MemLdRfVar from_stack_1.htmFile
  loc_C1986D: LdPrVar
  loc_C1986F: LateMemCall
  loc_C19875: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C19878: FLdPr Me
  loc_C1987B: MemLdI2 global_92
  loc_C1987E: CI4UI1
  loc_C1987F: FLdPr Me
  loc_C19882: MemLdStr global_88
  loc_C19885: Ary1LdPr
  loc_C19886: MemLdStr global_16
  loc_C19889: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C1988E: FStStrNoPop var_134
  loc_C19891: ConcatStr
  loc_C19892: FStStrNoPop var_138
  loc_C19895: LitStr "<br>"
  loc_C19898: ConcatStr
  loc_C19899: FStStrNoPop var_13C
  loc_C1989C: FLdPr Me
  loc_C1989F: MemLdI2 global_92
  loc_C198A2: CI4UI1
  loc_C198A3: FLdPr Me
  loc_C198A6: MemLdStr global_88
  loc_C198A9: Ary1LdPr
  loc_C198AA: MemLdStr global_16
  loc_C198AD: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C198B2: FStStrNoPop var_18C
  loc_C198B5: ConcatStr
  loc_C198B6: FStStrNoPop var_190
  loc_C198B9: LitStr "</td>"
  loc_C198BC: ConcatStr
  loc_C198BD: CVarStr var_C0
  loc_C198C0: PopAdLdVar
  loc_C198C1: FLdPr Me
  loc_C198C4: MemLdRfVar from_stack_1.htmFile
  loc_C198C7: LdPrVar
  loc_C198C9: LateMemCall
  loc_C198CF: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C198DC: FFree1Var var_C0 = ""
  loc_C198DF: LitVarStr var_A0, "  </tr>"
  loc_C198E4: PopAdLdVar
  loc_C198E5: FLdPr Me
  loc_C198E8: MemLdRfVar from_stack_1.htmFile
  loc_C198EB: LdPrVar
  loc_C198ED: LateMemCall
  loc_C198F3: Branch loc_C19B67
  loc_C198F6: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C198FB: PopAdLdVar
  loc_C198FC: FLdPr Me
  loc_C198FF: MemLdRfVar from_stack_1.htmFile
  loc_C19902: LdPrVar
  loc_C19904: LateMemCall
  loc_C1990A: LitStr "    <td colspan=""2"">"
  loc_C1990D: LitStr "Municipalidad de Guaymallén"
  loc_C19910: ConcatStr
  loc_C19911: FStStrNoPop var_134
  loc_C19914: LitStr "<br>"
  loc_C19917: ConcatStr
  loc_C19918: FStStrNoPop var_138
  loc_C1991B: LitStr "Orden de pago: "
  loc_C1991E: ConcatStr
  loc_C1991F: FStStrNoPop var_13C
  loc_C19922: FLdPr Me
  loc_C19925: MemLdI2 global_92
  loc_C19928: CI4UI1
  loc_C19929: FLdPr Me
  loc_C1992C: MemLdStr global_88
  loc_C1992F: Ary1LdPr
  loc_C19930: MemLdStr global_8
  loc_C19933: ConcatStr
  loc_C19934: FStStrNoPop var_18C
  loc_C19937: LitStr "</td>"
  loc_C1993A: ConcatStr
  loc_C1993B: CVarStr var_C0
  loc_C1993E: PopAdLdVar
  loc_C1993F: FLdPr Me
  loc_C19942: MemLdRfVar from_stack_1.htmFile
  loc_C19945: LdPrVar
  loc_C19947: LateMemCall
  loc_C1994D: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C19958: FFree1Var var_C0 = ""
  loc_C1995B: LitVarStr var_A0, "  </tr>"
  loc_C19960: PopAdLdVar
  loc_C19961: FLdPr Me
  loc_C19964: MemLdRfVar from_stack_1.htmFile
  loc_C19967: LdPrVar
  loc_C19969: LateMemCall
  loc_C1996F: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C19974: PopAdLdVar
  loc_C19975: FLdPr Me
  loc_C19978: MemLdRfVar from_stack_1.htmFile
  loc_C1997B: LdPrVar
  loc_C1997D: LateMemCall
  loc_C19983: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C19986: FLdPr Me
  loc_C19989: MemLdI2 global_92
  loc_C1998C: CI4UI1
  loc_C1998D: FLdPr Me
  loc_C19990: MemLdStr global_88
  loc_C19993: Ary1LdPr
  loc_C19994: MemLdStr global_16
  loc_C19997: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C1999C: FStStrNoPop var_134
  loc_C1999F: ConcatStr
  loc_C199A0: FStStrNoPop var_138
  loc_C199A3: LitStr "<br>"
  loc_C199A6: ConcatStr
  loc_C199A7: FStStrNoPop var_13C
  loc_C199AA: FLdPr Me
  loc_C199AD: MemLdI2 global_92
  loc_C199B0: CI4UI1
  loc_C199B1: FLdPr Me
  loc_C199B4: MemLdStr global_88
  loc_C199B7: Ary1LdPr
  loc_C199B8: MemLdStr global_16
  loc_C199BB: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C199C0: FStStrNoPop var_18C
  loc_C199C3: ConcatStr
  loc_C199C4: FStStrNoPop var_190
  loc_C199C7: LitStr "</td>"
  loc_C199CA: ConcatStr
  loc_C199CB: CVarStr var_C0
  loc_C199CE: PopAdLdVar
  loc_C199CF: FLdPr Me
  loc_C199D2: MemLdRfVar from_stack_1.htmFile
  loc_C199D5: LdPrVar
  loc_C199D7: LateMemCall
  loc_C199DD: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C199EA: FFree1Var var_C0 = ""
  loc_C199ED: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C199F0: FLdPr Me
  loc_C199F3: MemLdI2 global_92
  loc_C199F6: CI4UI1
  loc_C199F7: FLdPr Me
  loc_C199FA: MemLdStr global_88
  loc_C199FD: Ary1LdPr
  loc_C199FE: MemLdStr global_16
  loc_C19A01: ImpAdCallI2 Proc_259_58_9C734C()
  loc_C19A06: FStStrNoPop var_134
  loc_C19A09: ConcatStr
  loc_C19A0A: FStStrNoPop var_138
  loc_C19A0D: LitStr "<br>"
  loc_C19A10: ConcatStr
  loc_C19A11: FStStrNoPop var_13C
  loc_C19A14: FLdPr Me
  loc_C19A17: MemLdI2 global_92
  loc_C19A1A: CI4UI1
  loc_C19A1B: FLdPr Me
  loc_C19A1E: MemLdStr global_88
  loc_C19A21: Ary1LdPr
  loc_C19A22: MemLdStr global_16
  loc_C19A25: ImpAdCallI2 Proc_259_59_9D04B8()
  loc_C19A2A: FStStrNoPop var_18C
  loc_C19A2D: ConcatStr
  loc_C19A2E: FStStrNoPop var_190
  loc_C19A31: LitStr "</td>"
  loc_C19A34: ConcatStr
  loc_C19A35: CVarStr var_C0
  loc_C19A38: PopAdLdVar
  loc_C19A39: FLdPr Me
  loc_C19A3C: MemLdRfVar from_stack_1.htmFile
  loc_C19A3F: LdPrVar
  loc_C19A41: LateMemCall
  loc_C19A47: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C19A54: FFree1Var var_C0 = ""
  loc_C19A57: LitVarStr var_A0, "  </tr>"
  loc_C19A5C: PopAdLdVar
  loc_C19A5D: FLdPr Me
  loc_C19A60: MemLdRfVar from_stack_1.htmFile
  loc_C19A63: LdPrVar
  loc_C19A65: LateMemCall
  loc_C19A6B: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C19A70: PopAdLdVar
  loc_C19A71: FLdPr Me
  loc_C19A74: MemLdRfVar from_stack_1.htmFile
  loc_C19A77: LdPrVar
  loc_C19A79: LateMemCall
  loc_C19A7F: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C19A82: FLdPr Me
  loc_C19A85: MemLdI2 global_92
  loc_C19A88: CI4UI1
  loc_C19A89: FLdPr Me
  loc_C19A8C: MemLdStr global_88
  loc_C19A8F: Ary1LdPr
  loc_C19A90: MemLdStr global_16
  loc_C19A93: ImpAdCallI2 Proc_259_60_9C78C4()
  loc_C19A98: FStStrNoPop var_134
  loc_C19A9B: ConcatStr
  loc_C19A9C: FStStrNoPop var_138
  loc_C19A9F: LitStr "<br>"
  loc_C19AA2: ConcatStr
  loc_C19AA3: FStStrNoPop var_13C
  loc_C19AA6: FLdPr Me
  loc_C19AA9: MemLdI2 global_92
  loc_C19AAC: CI4UI1
  loc_C19AAD: FLdPr Me
  loc_C19AB0: MemLdStr global_88
  loc_C19AB3: Ary1LdPr
  loc_C19AB4: MemLdStr global_16
  loc_C19AB7: ImpAdCallI2 Proc_259_61_9CF39C()
  loc_C19ABC: FStStrNoPop var_18C
  loc_C19ABF: ConcatStr
  loc_C19AC0: FStStrNoPop var_190
  loc_C19AC3: LitStr "</td>"
  loc_C19AC6: ConcatStr
  loc_C19AC7: CVarStr var_C0
  loc_C19ACA: PopAdLdVar
  loc_C19ACB: FLdPr Me
  loc_C19ACE: MemLdRfVar from_stack_1.htmFile
  loc_C19AD1: LdPrVar
  loc_C19AD3: LateMemCall
  loc_C19AD9: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C19AE6: FFree1Var var_C0 = ""
  loc_C19AE9: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C19AEC: FLdPr Me
  loc_C19AEF: MemLdI2 global_92
  loc_C19AF2: CI4UI1
  loc_C19AF3: FLdPr Me
  loc_C19AF6: MemLdStr global_88
  loc_C19AF9: Ary1LdPr
  loc_C19AFA: MemLdStr global_16
  loc_C19AFD: ImpAdCallI2 Proc_259_55_9C77AC()
  loc_C19B02: FStStrNoPop var_134
  loc_C19B05: ConcatStr
  loc_C19B06: FStStrNoPop var_138
  loc_C19B09: LitStr "<br>"
  loc_C19B0C: ConcatStr
  loc_C19B0D: FStStrNoPop var_13C
  loc_C19B10: FLdPr Me
  loc_C19B13: MemLdI2 global_92
  loc_C19B16: CI4UI1
  loc_C19B17: FLdPr Me
  loc_C19B1A: MemLdStr global_88
  loc_C19B1D: Ary1LdPr
  loc_C19B1E: MemLdStr global_16
  loc_C19B21: ImpAdCallI2 Proc_259_57_9D0CB4()
  loc_C19B26: FStStrNoPop var_18C
  loc_C19B29: ConcatStr
  loc_C19B2A: FStStrNoPop var_190
  loc_C19B2D: LitStr "</td>"
  loc_C19B30: ConcatStr
  loc_C19B31: CVarStr var_C0
  loc_C19B34: PopAdLdVar
  loc_C19B35: FLdPr Me
  loc_C19B38: MemLdRfVar from_stack_1.htmFile
  loc_C19B3B: LdPrVar
  loc_C19B3D: LateMemCall
  loc_C19B43: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C19B50: FFree1Var var_C0 = ""
  loc_C19B53: LitVarStr var_A0, "  </tr>"
  loc_C19B58: PopAdLdVar
  loc_C19B59: FLdPr Me
  loc_C19B5C: MemLdRfVar from_stack_1.htmFile
  loc_C19B5F: LdPrVar
  loc_C19B61: LateMemCall
  loc_C19B67: LitVarStr var_A0, "</th>"
  loc_C19B6C: PopAdLdVar
  loc_C19B6D: FLdPr Me
  loc_C19B70: MemLdRfVar from_stack_1.htmFile
  loc_C19B73: LdPrVar
  loc_C19B75: LateMemCall
  loc_C19B7B: LitVarStr var_A0, "</table>"
  loc_C19B80: PopAdLdVar
  loc_C19B81: FLdPr Me
  loc_C19B84: MemLdRfVar from_stack_1.htmFile
  loc_C19B87: LdPrVar
  loc_C19B89: LateMemCall
  loc_C19B8F: FLdPr Me
  loc_C19B92: MemLdI2 global_92
  loc_C19B95: CI4UI1
  loc_C19B96: FLdPr Me
  loc_C19B99: MemLdStr global_88
  loc_C19B9C: Ary1LdPr
  loc_C19B9D: MemLdI2 global_56
  loc_C19BA0: BranchF loc_C1A034
  loc_C19BA3: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""0"" class=""Titulo2"">"
  loc_C19BA8: PopAdLdVar
  loc_C19BA9: FLdPr Me
  loc_C19BAC: MemLdRfVar from_stack_1.htmFile
  loc_C19BAF: LdPrVar
  loc_C19BB1: LateMemCall
  loc_C19BB7: LitVarStr var_A0, "  <tr>"
  loc_C19BBC: PopAdLdVar
  loc_C19BBD: FLdPr Me
  loc_C19BC0: MemLdRfVar from_stack_1.htmFile
  loc_C19BC3: LdPrVar
  loc_C19BC5: LateMemCall
  loc_C19BCB: LitVarStr var_A0, "    <td><br>Efectuando las siguientes retenciones:</td>"
  loc_C19BD0: PopAdLdVar
  loc_C19BD1: FLdPr Me
  loc_C19BD4: MemLdRfVar from_stack_1.htmFile
  loc_C19BD7: LdPrVar
  loc_C19BD9: LateMemCall
  loc_C19BDF: LitVarStr var_A0, "  </tr>"
  loc_C19BE4: PopAdLdVar
  loc_C19BE5: FLdPr Me
  loc_C19BE8: MemLdRfVar from_stack_1.htmFile
  loc_C19BEB: LdPrVar
  loc_C19BED: LateMemCall
  loc_C19BF3: LitVarStr var_A0, "</table>"
  loc_C19BF8: PopAdLdVar
  loc_C19BF9: FLdPr Me
  loc_C19BFC: MemLdRfVar from_stack_1.htmFile
  loc_C19BFF: LdPrVar
  loc_C19C01: LateMemCall
  loc_C19C07: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_C19C0C: PopAdLdVar
  loc_C19C0D: FLdPr Me
  loc_C19C10: MemLdRfVar from_stack_1.htmFile
  loc_C19C13: LdPrVar
  loc_C19C15: LateMemCall
  loc_C19C1B: LitVarStr var_A0, "  <tr valign=""top"" align=""center"" class=""Encabezado"">"
  loc_C19C20: PopAdLdVar
  loc_C19C21: FLdPr Me
  loc_C19C24: MemLdRfVar from_stack_1.htmFile
  loc_C19C27: LdPrVar
  loc_C19C29: LateMemCall
  loc_C19C2F: LitVarStr var_A0, "        <th colspan=""1"">Acreedor</th>"
  loc_C19C34: PopAdLdVar
  loc_C19C35: FLdPr Me
  loc_C19C38: MemLdRfVar from_stack_1.htmFile
  loc_C19C3B: LdPrVar
  loc_C19C3D: LateMemCall
  loc_C19C43: LitVarStr var_A0, "        <th colspan=""2"">Retención</th>"
  loc_C19C48: PopAdLdVar
  loc_C19C49: FLdPr Me
  loc_C19C4C: MemLdRfVar from_stack_1.htmFile
  loc_C19C4F: LdPrVar
  loc_C19C51: LateMemCall
  loc_C19C57: LitVarStr var_A0, "        <th colspan=""1"">Cuenta Contable</th>"
  loc_C19C5C: PopAdLdVar
  loc_C19C5D: FLdPr Me
  loc_C19C60: MemLdRfVar from_stack_1.htmFile
  loc_C19C63: LdPrVar
  loc_C19C65: LateMemCall
  loc_C19C6B: LitVarStr var_A0, "        <th>Base Imp.</th>"
  loc_C19C70: PopAdLdVar
  loc_C19C71: FLdPr Me
  loc_C19C74: MemLdRfVar from_stack_1.htmFile
  loc_C19C77: LdPrVar
  loc_C19C79: LateMemCall
  loc_C19C7F: LitVarStr var_A0, "        <th>Alíc. (" & Chr(37) & ")</th>"
  loc_C19C84: PopAdLdVar
  loc_C19C85: FLdPr Me
  loc_C19C88: MemLdRfVar from_stack_1.htmFile
  loc_C19C8B: LdPrVar
  loc_C19C8D: LateMemCall
  loc_C19C93: LitVarStr var_A0, "        <th>Penal.</th>"
  loc_C19C98: PopAdLdVar
  loc_C19C99: FLdPr Me
  loc_C19C9C: MemLdRfVar from_stack_1.htmFile
  loc_C19C9F: LdPrVar
  loc_C19CA1: LateMemCall
  loc_C19CA7: LitVarStr var_A0, "        <th>Ex. (" & Chr(37) & ")</th>"
  loc_C19CAC: PopAdLdVar
  loc_C19CAD: FLdPr Me
  loc_C19CB0: MemLdRfVar from_stack_1.htmFile
  loc_C19CB3: LdPrVar
  loc_C19CB5: LateMemCall
  loc_C19CBB: LitVarStr var_A0, "        <th>Cert.</th>"
  loc_C19CC0: PopAdLdVar
  loc_C19CC1: FLdPr Me
  loc_C19CC4: MemLdRfVar from_stack_1.htmFile
  loc_C19CC7: LdPrVar
  loc_C19CC9: LateMemCall
  loc_C19CCF: LitVarStr var_A0, "        <th>Importe</th>"
  loc_C19CD4: PopAdLdVar
  loc_C19CD5: FLdPr Me
  loc_C19CD8: MemLdRfVar from_stack_1.htmFile
  loc_C19CDB: LdPrVar
  loc_C19CDD: LateMemCall
  loc_C19CE3: LitVarStr var_A0, "  </tr>"
  loc_C19CE8: PopAdLdVar
  loc_C19CE9: FLdPr Me
  loc_C19CEC: MemLdRfVar from_stack_1.htmFile
  loc_C19CEF: LdPrVar
  loc_C19CF1: LateMemCall
  loc_C19CF7: LitI2_Byte 1
  loc_C19CF9: FLdPr Me
  loc_C19CFC: MemLdRfVar from_stack_1.global_96
  loc_C19CFF: FLdPr Me
  loc_C19D02: MemLdI2 global_92
  loc_C19D05: CI4UI1
  loc_C19D06: FLdPr Me
  loc_C19D09: MemLdStr global_88
  loc_C19D0C: Ary1LdPr
  loc_C19D0D: MemLdStr global_60
  loc_C19D10: LitI2_Byte 1
  loc_C19D12: FnUBound
  loc_C19D14: CI2I4
  loc_C19D15: ForI2 var_194
  loc_C19D1B: FLdPr Me
  loc_C19D1E: MemLdI2 global_96
  loc_C19D21: CI4UI1
  loc_C19D22: FLdPr Me
  loc_C19D25: MemLdI2 global_92
  loc_C19D28: CI4UI1
  loc_C19D29: FLdPr Me
  loc_C19D2C: MemLdStr global_88
  loc_C19D2F: AryLock
  loc_C19D32: Ary1LdPr
  loc_C19D33: MemLdStr global_60
  loc_C19D36: AryLock
  loc_C19D39: Ary1LdRf
  loc_C19D3A: FStR4 var_1A0
  loc_C19D3D: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C19D42: PopAdLdVar
  loc_C19D43: FLdPr Me
  loc_C19D46: MemLdRfVar from_stack_1.htmFile
  loc_C19D49: LdPrVar
  loc_C19D4B: LateMemCall
  loc_C19D51: LitI4 0
  loc_C19D56: LitI4 0
  loc_C19D5B: LitStr "LDIzq"
  loc_C19D5E: FMemLdR4 var_1A0(0)
  loc_C19D63: LitStr "<br>"
  loc_C19D66: ConcatStr
  loc_C19D67: FStStrNoPop var_134
  loc_C19D6A: FMemLdR4 var_1A0(4)
  loc_C19D6F: ConcatStr
  loc_C19D70: FStStrNoPop var_138
  loc_C19D73: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19D78: CVarStr var_C0
  loc_C19D7B: PopAdLdVar
  loc_C19D7C: FLdPr Me
  loc_C19D7F: MemLdRfVar from_stack_1.htmFile
  loc_C19D82: LdPrVar
  loc_C19D84: LateMemCall
  loc_C19D8A: FFreeStr var_134 = ""
  loc_C19D91: FFree1Var var_C0 = ""
  loc_C19D94: LitI4 0
  loc_C19D99: LitI4 0
  loc_C19D9E: LitStr "LDIzq"
  loc_C19DA1: FMemLdR4 var_1A0(8)
  loc_C19DA6: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19DAB: CVarStr var_C0
  loc_C19DAE: PopAdLdVar
  loc_C19DAF: FLdPr Me
  loc_C19DB2: MemLdRfVar from_stack_1.htmFile
  loc_C19DB5: LdPrVar
  loc_C19DB7: LateMemCall
  loc_C19DBD: FFree1Var var_C0 = ""
  loc_C19DC0: LitVarStr var_B0, vbNullString
  loc_C19DC5: FStVarCopyObj var_D0
  loc_C19DC8: FLdRfVar var_D0
  loc_C19DCB: LitStr "<br>"
  loc_C19DCE: FMemLdR4 var_1A0(28)
  loc_C19DD3: ConcatStr
  loc_C19DD4: CVarStr var_C0
  loc_C19DD7: FMemLdR4 var_1A0(12)
  loc_C19DDC: FMemLdR4 var_1A0(28)
  loc_C19DE1: NeStr
  loc_C19DE3: CVarBoolI2 var_A0
  loc_C19DE7: FLdRfVar var_E0
  loc_C19DEA: ImpAdCallFPR4  = IIf(, , )
  loc_C19DEF: LitI4 0
  loc_C19DF4: LitI4 0
  loc_C19DF9: LitStr "LDIzq"
  loc_C19DFC: FMemLdR4 var_1A0(12)
  loc_C19E01: CVarStr var_F0
  loc_C19E04: FLdRfVar var_E0
  loc_C19E07: ConcatVar var_100
  loc_C19E0B: CStrVarVal var_134
  loc_C19E0F: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19E14: CVarStr var_120
  loc_C19E17: PopAdLdVar
  loc_C19E18: FLdPr Me
  loc_C19E1B: MemLdRfVar from_stack_1.htmFile
  loc_C19E1E: LdPrVar
  loc_C19E20: LateMemCall
  loc_C19E26: FFree1Str var_134
  loc_C19E29: FFreeVar var_A0 = "": var_C0 = "": var_D0 = "": var_E0 = "": var_100 = ""
  loc_C19E38: LitI4 0
  loc_C19E3D: LitI4 0
  loc_C19E42: LitStr "LDIzq"
  loc_C19E45: FMemLdR4 var_1A0(16)
  loc_C19E4A: LitStr "<br>"
  loc_C19E4D: ConcatStr
  loc_C19E4E: FStStrNoPop var_134
  loc_C19E51: FMemLdR4 var_1A0(20)
  loc_C19E56: ConcatStr
  loc_C19E57: FStStrNoPop var_138
  loc_C19E5A: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19E5F: CVarStr var_C0
  loc_C19E62: PopAdLdVar
  loc_C19E63: FLdPr Me
  loc_C19E66: MemLdRfVar from_stack_1.htmFile
  loc_C19E69: LdPrVar
  loc_C19E6B: LateMemCall
  loc_C19E71: FFreeStr var_134 = ""
  loc_C19E78: FFree1Var var_C0 = ""
  loc_C19E7B: LitI4 0
  loc_C19E80: LitI4 0
  loc_C19E85: LitStr "LDDer"
  loc_C19E88: FMemLdR4 var_1A0(32)
  loc_C19E8D: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19E92: CVarStr var_C0
  loc_C19E95: PopAdLdVar
  loc_C19E96: FLdPr Me
  loc_C19E99: MemLdRfVar from_stack_1.htmFile
  loc_C19E9C: LdPrVar
  loc_C19E9E: LateMemCall
  loc_C19EA4: FFree1Var var_C0 = ""
  loc_C19EA7: LitI4 0
  loc_C19EAC: LitI4 0
  loc_C19EB1: LitStr "LDDer"
  loc_C19EB4: FMemLdR4 var_1A0(36)
  loc_C19EB9: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19EBE: CVarStr var_C0
  loc_C19EC1: PopAdLdVar
  loc_C19EC2: FLdPr Me
  loc_C19EC5: MemLdRfVar from_stack_1.htmFile
  loc_C19EC8: LdPrVar
  loc_C19ECA: LateMemCall
  loc_C19ED0: FFree1Var var_C0 = ""
  loc_C19ED3: LitI4 0
  loc_C19ED8: LitI4 0
  loc_C19EDD: LitStr "LDDer"
  loc_C19EE0: FMemLdR4 var_1A0(40)
  loc_C19EE5: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19EEA: CVarStr var_C0
  loc_C19EED: PopAdLdVar
  loc_C19EEE: FLdPr Me
  loc_C19EF1: MemLdRfVar from_stack_1.htmFile
  loc_C19EF4: LdPrVar
  loc_C19EF6: LateMemCall
  loc_C19EFC: FFree1Var var_C0 = ""
  loc_C19EFF: LitI4 0
  loc_C19F04: LitI4 0
  loc_C19F09: LitStr "LDDer"
  loc_C19F0C: FMemLdR4 var_1A0(44)
  loc_C19F11: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19F16: CVarStr var_C0
  loc_C19F19: PopAdLdVar
  loc_C19F1A: FLdPr Me
  loc_C19F1D: MemLdRfVar from_stack_1.htmFile
  loc_C19F20: LdPrVar
  loc_C19F22: LateMemCall
  loc_C19F28: FFree1Var var_C0 = ""
  loc_C19F2B: LitI4 0
  loc_C19F30: LitI4 0
  loc_C19F35: LitStr "LDDer"
  loc_C19F38: FMemLdR4 var_1A0(48)
  loc_C19F3D: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19F42: CVarStr var_C0
  loc_C19F45: PopAdLdVar
  loc_C19F46: FLdPr Me
  loc_C19F49: MemLdRfVar from_stack_1.htmFile
  loc_C19F4C: LdPrVar
  loc_C19F4E: LateMemCall
  loc_C19F54: FFree1Var var_C0 = ""
  loc_C19F57: LitI4 0
  loc_C19F5C: LitI4 0
  loc_C19F61: LitStr "LDDer"
  loc_C19F64: FMemLdR4 var_1A0(52)
  loc_C19F69: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C19F6E: CVarStr var_C0
  loc_C19F71: PopAdLdVar
  loc_C19F72: FLdPr Me
  loc_C19F75: MemLdRfVar from_stack_1.htmFile
  loc_C19F78: LdPrVar
  loc_C19F7A: LateMemCall
  loc_C19F80: FFree1Var var_C0 = ""
  loc_C19F83: LitVarStr var_A0, "    </tr>"
  loc_C19F88: PopAdLdVar
  loc_C19F89: FLdPr Me
  loc_C19F8C: MemLdRfVar from_stack_1.htmFile
  loc_C19F8F: LdPrVar
  loc_C19F91: LateMemCall
  loc_C19F97: LitI4 0
  loc_C19F9C: FStR4 var_1A0
  loc_C19F9F: AryUnlock
  loc_C19FA2: AryUnlock
  loc_C19FA5: FLdPr Me
  loc_C19FA8: MemLdRfVar from_stack_1.global_96
  loc_C19FAB: NextI2 var_194, loc_C19D1B
  loc_C19FB0: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C19FB5: PopAdLdVar
  loc_C19FB6: FLdPr Me
  loc_C19FB9: MemLdRfVar from_stack_1.htmFile
  loc_C19FBC: LdPrVar
  loc_C19FBE: LateMemCall
  loc_C19FC4: LitVarStr var_A0, "   <th colspan=""9"">TOTAL DE RETENCIONES</th>"
  loc_C19FC9: PopAdLdVar
  loc_C19FCA: FLdPr Me
  loc_C19FCD: MemLdRfVar from_stack_1.htmFile
  loc_C19FD0: LdPrVar
  loc_C19FD2: LateMemCall
  loc_C19FD8: LitStr "   <th>"
  loc_C19FDB: FLdPr Me
  loc_C19FDE: MemLdI2 global_92
  loc_C19FE1: CI4UI1
  loc_C19FE2: FLdPr Me
  loc_C19FE5: MemLdStr global_88
  loc_C19FE8: Ary1LdPr
  loc_C19FE9: MemLdStr global_64
  loc_C19FEC: ConcatStr
  loc_C19FED: FStStrNoPop var_134
  loc_C19FF0: LitStr "</th>"
  loc_C19FF3: ConcatStr
  loc_C19FF4: CVarStr var_C0
  loc_C19FF7: PopAdLdVar
  loc_C19FF8: FLdPr Me
  loc_C19FFB: MemLdRfVar from_stack_1.htmFile
  loc_C19FFE: LdPrVar
  loc_C1A000: LateMemCall
  loc_C1A006: FFree1Str var_134
  loc_C1A009: FFree1Var var_C0 = ""
  loc_C1A00C: LitVarStr var_A0, "  </tr>"
  loc_C1A011: PopAdLdVar
  loc_C1A012: FLdPr Me
  loc_C1A015: MemLdRfVar from_stack_1.htmFile
  loc_C1A018: LdPrVar
  loc_C1A01A: LateMemCall
  loc_C1A020: LitVarStr var_A0, "</table>"
  loc_C1A025: PopAdLdVar
  loc_C1A026: FLdPr Me
  loc_C1A029: MemLdRfVar from_stack_1.htmFile
  loc_C1A02C: LdPrVar
  loc_C1A02E: LateMemCall
  loc_C1A034: LitVarStr var_A0, "<br>"
  loc_C1A039: PopAdLdVar
  loc_C1A03A: FLdPr Me
  loc_C1A03D: MemLdRfVar from_stack_1.htmFile
  loc_C1A040: LdPrVar
  loc_C1A042: LateMemCall
  loc_C1A048: FLdPr Me
  loc_C1A04B: MemLdI2 global_92
  loc_C1A04E: CI4UI1
  loc_C1A04F: FLdPr Me
  loc_C1A052: MemLdStr global_88
  loc_C1A055: Ary1LdPr
  loc_C1A056: MemLdI2 global_58
  loc_C1A059: BranchF loc_C1A45B
  loc_C1A05C: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_C1A061: PopAdLdVar
  loc_C1A062: FLdPr Me
  loc_C1A065: MemLdRfVar from_stack_1.htmFile
  loc_C1A068: LdPrVar
  loc_C1A06A: LateMemCall
  loc_C1A070: LitVarStr var_A0, "  <tr valign=""top"" align=""center"" class=""Encabezado"">"
  loc_C1A075: PopAdLdVar
  loc_C1A076: FLdPr Me
  loc_C1A079: MemLdRfVar from_stack_1.htmFile
  loc_C1A07C: LdPrVar
  loc_C1A07E: LateMemCall
  loc_C1A084: LitVarStr var_A0, "    <th colspan=""2"">A la orden de</th>"
  loc_C1A089: PopAdLdVar
  loc_C1A08A: FLdPr Me
  loc_C1A08D: MemLdRfVar from_stack_1.htmFile
  loc_C1A090: LdPrVar
  loc_C1A092: LateMemCall
  loc_C1A098: LitVarStr var_A0, "    <th colspan=""2"">Banco</th>"
  loc_C1A09D: PopAdLdVar
  loc_C1A09E: FLdPr Me
  loc_C1A0A1: MemLdRfVar from_stack_1.htmFile
  loc_C1A0A4: LdPrVar
  loc_C1A0A6: LateMemCall
  loc_C1A0AC: LitVarStr var_A0, "    <th>Medio de Pago</th>"
  loc_C1A0B1: PopAdLdVar
  loc_C1A0B2: FLdPr Me
  loc_C1A0B5: MemLdRfVar from_stack_1.htmFile
  loc_C1A0B8: LdPrVar
  loc_C1A0BA: LateMemCall
  loc_C1A0C0: LitVarStr var_A0, "    <th>Número</th>"
  loc_C1A0C5: PopAdLdVar
  loc_C1A0C6: FLdPr Me
  loc_C1A0C9: MemLdRfVar from_stack_1.htmFile
  loc_C1A0CC: LdPrVar
  loc_C1A0CE: LateMemCall
  loc_C1A0D4: LitVarStr var_A0, "    <th>Fecha emisión</th>"
  loc_C1A0D9: PopAdLdVar
  loc_C1A0DA: FLdPr Me
  loc_C1A0DD: MemLdRfVar from_stack_1.htmFile
  loc_C1A0E0: LdPrVar
  loc_C1A0E2: LateMemCall
  loc_C1A0E8: LitVarStr var_A0, "    <th>Importe</th>"
  loc_C1A0ED: PopAdLdVar
  loc_C1A0EE: FLdPr Me
  loc_C1A0F1: MemLdRfVar from_stack_1.htmFile
  loc_C1A0F4: LdPrVar
  loc_C1A0F6: LateMemCall
  loc_C1A0FC: LitVarStr var_A0, "  </tr>"
  loc_C1A101: PopAdLdVar
  loc_C1A102: FLdPr Me
  loc_C1A105: MemLdRfVar from_stack_1.htmFile
  loc_C1A108: LdPrVar
  loc_C1A10A: LateMemCall
  loc_C1A110: LitI2_Byte 1
  loc_C1A112: FLdPr Me
  loc_C1A115: MemLdRfVar from_stack_1.global_98
  loc_C1A118: FLdPr Me
  loc_C1A11B: MemLdI2 global_92
  loc_C1A11E: CI4UI1
  loc_C1A11F: FLdPr Me
  loc_C1A122: MemLdStr global_88
  loc_C1A125: Ary1LdPr
  loc_C1A126: MemLdStr bGenerado
  loc_C1A129: LitI2_Byte 1
  loc_C1A12B: FnUBound
  loc_C1A12D: CI2I4
  loc_C1A12E: ForI2 var_1A4
  loc_C1A134: FLdPr Me
  loc_C1A137: MemLdI2 global_98
  loc_C1A13A: CI4UI1
  loc_C1A13B: FLdPr Me
  loc_C1A13E: MemLdI2 global_92
  loc_C1A141: CI4UI1
  loc_C1A142: FLdPr Me
  loc_C1A145: MemLdStr global_88
  loc_C1A148: AryLock
  loc_C1A14B: Ary1LdPr
  loc_C1A14C: MemLdStr bGenerado
  loc_C1A14F: AryLock
  loc_C1A152: Ary1LdRf
  loc_C1A153: FStR4 var_1B0
  loc_C1A156: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C1A15B: PopAdLdVar
  loc_C1A15C: FLdPr Me
  loc_C1A15F: MemLdRfVar from_stack_1.htmFile
  loc_C1A162: LdPrVar
  loc_C1A164: LateMemCall
  loc_C1A16A: LitI4 0
  loc_C1A16F: LitI4 0
  loc_C1A174: LitStr "LDDer"
  loc_C1A177: FMemLdR4 var_1B0(0)
  loc_C1A17C: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A181: CVarStr var_C0
  loc_C1A184: PopAdLdVar
  loc_C1A185: FLdPr Me
  loc_C1A188: MemLdRfVar from_stack_1.htmFile
  loc_C1A18B: LdPrVar
  loc_C1A18D: LateMemCall
  loc_C1A193: FFree1Var var_C0 = ""
  loc_C1A196: LitI4 0
  loc_C1A19B: LitI4 0
  loc_C1A1A0: LitStr "LDIzq"
  loc_C1A1A3: FMemLdR4 var_1B0(4)
  loc_C1A1A8: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A1AD: CVarStr var_C0
  loc_C1A1B0: PopAdLdVar
  loc_C1A1B1: FLdPr Me
  loc_C1A1B4: MemLdRfVar from_stack_1.htmFile
  loc_C1A1B7: LdPrVar
  loc_C1A1B9: LateMemCall
  loc_C1A1BF: FFree1Var var_C0 = ""
  loc_C1A1C2: LitI4 0
  loc_C1A1C7: LitI4 0
  loc_C1A1CC: LitStr "LDDer"
  loc_C1A1CF: FMemLdR4 var_1B0(8)
  loc_C1A1D4: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A1D9: CVarStr var_C0
  loc_C1A1DC: PopAdLdVar
  loc_C1A1DD: FLdPr Me
  loc_C1A1E0: MemLdRfVar from_stack_1.htmFile
  loc_C1A1E3: LdPrVar
  loc_C1A1E5: LateMemCall
  loc_C1A1EB: FFree1Var var_C0 = ""
  loc_C1A1EE: LitI4 0
  loc_C1A1F3: LitI4 0
  loc_C1A1F8: LitStr "LDIzq"
  loc_C1A1FB: FMemLdR4 var_1B0(12)
  loc_C1A200: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A205: CVarStr var_C0
  loc_C1A208: PopAdLdVar
  loc_C1A209: FLdPr Me
  loc_C1A20C: MemLdRfVar from_stack_1.htmFile
  loc_C1A20F: LdPrVar
  loc_C1A211: LateMemCall
  loc_C1A217: FFree1Var var_C0 = ""
  loc_C1A21A: LitI4 0
  loc_C1A21F: LitI4 0
  loc_C1A224: LitStr "LDIzq"
  loc_C1A227: FMemLdR4 var_1B0(20)
  loc_C1A22C: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A231: CVarStr var_C0
  loc_C1A234: PopAdLdVar
  loc_C1A235: FLdPr Me
  loc_C1A238: MemLdRfVar from_stack_1.htmFile
  loc_C1A23B: LdPrVar
  loc_C1A23D: LateMemCall
  loc_C1A243: FFree1Var var_C0 = ""
  loc_C1A246: LitI4 0
  loc_C1A24B: LitI4 0
  loc_C1A250: LitStr "LDDer"
  loc_C1A253: FMemLdR4 var_1B0(24)
  loc_C1A258: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A25D: CVarStr var_C0
  loc_C1A260: PopAdLdVar
  loc_C1A261: FLdPr Me
  loc_C1A264: MemLdRfVar from_stack_1.htmFile
  loc_C1A267: LdPrVar
  loc_C1A269: LateMemCall
  loc_C1A26F: FFree1Var var_C0 = ""
  loc_C1A272: LitI4 0
  loc_C1A277: LitI4 0
  loc_C1A27C: LitStr "LDCen"
  loc_C1A27F: FMemLdR4 var_1B0(28)
  loc_C1A284: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A289: CVarStr var_C0
  loc_C1A28C: PopAdLdVar
  loc_C1A28D: FLdPr Me
  loc_C1A290: MemLdRfVar from_stack_1.htmFile
  loc_C1A293: LdPrVar
  loc_C1A295: LateMemCall
  loc_C1A29B: FFree1Var var_C0 = ""
  loc_C1A29E: LitI4 0
  loc_C1A2A3: LitI4 0
  loc_C1A2A8: LitStr "LDDer"
  loc_C1A2AB: FMemLdR4 var_1B0(36)
  loc_C1A2B0: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_C1A2B5: CVarStr var_C0
  loc_C1A2B8: PopAdLdVar
  loc_C1A2B9: FLdPr Me
  loc_C1A2BC: MemLdRfVar from_stack_1.htmFile
  loc_C1A2BF: LdPrVar
  loc_C1A2C1: LateMemCall
  loc_C1A2C7: FFree1Var var_C0 = ""
  loc_C1A2CA: LitVarStr var_A0, "  </tr>"
  loc_C1A2CF: PopAdLdVar
  loc_C1A2D0: FLdPr Me
  loc_C1A2D3: MemLdRfVar from_stack_1.htmFile
  loc_C1A2D6: LdPrVar
  loc_C1A2D8: LateMemCall
  loc_C1A2DE: LitI4 0
  loc_C1A2E3: FStR4 var_1B0
  loc_C1A2E6: AryUnlock
  loc_C1A2E9: AryUnlock
  loc_C1A2EC: FLdPr Me
  loc_C1A2EF: MemLdRfVar from_stack_1.global_98
  loc_C1A2F2: NextI2 var_1A4, loc_C1A134
  loc_C1A2F7: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C1A2FC: PopAdLdVar
  loc_C1A2FD: FLdPr Me
  loc_C1A300: MemLdRfVar from_stack_1.htmFile
  loc_C1A303: LdPrVar
  loc_C1A305: LateMemCall
  loc_C1A30B: LitVarStr var_A0, "   <th colspan=""7"">Total de Cheques Emitidos</th>"
  loc_C1A310: PopAdLdVar
  loc_C1A311: FLdPr Me
  loc_C1A314: MemLdRfVar from_stack_1.htmFile
  loc_C1A317: LdPrVar
  loc_C1A319: LateMemCall
  loc_C1A31F: LitStr "   <th>"
  loc_C1A322: FLdPr Me
  loc_C1A325: MemLdI2 global_92
  loc_C1A328: CI4UI1
  loc_C1A329: FLdPr Me
  loc_C1A32C: MemLdStr global_88
  loc_C1A32F: Ary1LdPr
  loc_C1A330: MemLdStr global_72
  loc_C1A333: ConcatStr
  loc_C1A334: FStStrNoPop var_134
  loc_C1A337: LitStr "</th>"
  loc_C1A33A: ConcatStr
  loc_C1A33B: CVarStr var_C0
  loc_C1A33E: PopAdLdVar
  loc_C1A33F: FLdPr Me
  loc_C1A342: MemLdRfVar from_stack_1.htmFile
  loc_C1A345: LdPrVar
  loc_C1A347: LateMemCall
  loc_C1A34D: FFree1Str var_134
  loc_C1A350: FFree1Var var_C0 = ""
  loc_C1A353: LitVarStr var_A0, "  </tr>"
  loc_C1A358: PopAdLdVar
  loc_C1A359: FLdPr Me
  loc_C1A35C: MemLdRfVar from_stack_1.htmFile
  loc_C1A35F: LdPrVar
  loc_C1A361: LateMemCall
  loc_C1A367: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C1A36C: PopAdLdVar
  loc_C1A36D: FLdPr Me
  loc_C1A370: MemLdRfVar from_stack_1.htmFile
  loc_C1A373: LdPrVar
  loc_C1A375: LateMemCall
  loc_C1A37B: LitVarStr var_A0, "   <th colspan=""7"">Total de Cheques Sin Emitir</th>"
  loc_C1A380: PopAdLdVar
  loc_C1A381: FLdPr Me
  loc_C1A384: MemLdRfVar from_stack_1.htmFile
  loc_C1A387: LdPrVar
  loc_C1A389: LateMemCall
  loc_C1A38F: LitStr "   <th>"
  loc_C1A392: FLdPr Me
  loc_C1A395: MemLdI2 global_92
  loc_C1A398: CI4UI1
  loc_C1A399: FLdPr Me
  loc_C1A39C: MemLdStr global_88
  loc_C1A39F: Ary1LdPr
  loc_C1A3A0: MemLdStr global_76
  loc_C1A3A3: ConcatStr
  loc_C1A3A4: FStStrNoPop var_134
  loc_C1A3A7: LitStr "</th>"
  loc_C1A3AA: ConcatStr
  loc_C1A3AB: CVarStr var_C0
  loc_C1A3AE: PopAdLdVar
  loc_C1A3AF: FLdPr Me
  loc_C1A3B2: MemLdRfVar from_stack_1.htmFile
  loc_C1A3B5: LdPrVar
  loc_C1A3B7: LateMemCall
  loc_C1A3BD: FFree1Str var_134
  loc_C1A3C0: FFree1Var var_C0 = ""
  loc_C1A3C3: LitVarStr var_A0, "  </tr>"
  loc_C1A3C8: PopAdLdVar
  loc_C1A3C9: FLdPr Me
  loc_C1A3CC: MemLdRfVar from_stack_1.htmFile
  loc_C1A3CF: LdPrVar
  loc_C1A3D1: LateMemCall
  loc_C1A3D7: LitVarStr var_A0, " <tr align=""right"" class=""Titulo2"">"
  loc_C1A3DC: PopAdLdVar
  loc_C1A3DD: FLdPr Me
  loc_C1A3E0: MemLdRfVar from_stack_1.htmFile
  loc_C1A3E3: LdPrVar
  loc_C1A3E5: LateMemCall
  loc_C1A3EB: LitVarStr var_A0, "   <th colspan=""7"">Total de Transferencias</th>"
  loc_C1A3F0: PopAdLdVar
  loc_C1A3F1: FLdPr Me
  loc_C1A3F4: MemLdRfVar from_stack_1.htmFile
  loc_C1A3F7: LdPrVar
  loc_C1A3F9: LateMemCall
  loc_C1A3FF: LitStr "   <th>"
  loc_C1A402: FLdPr Me
  loc_C1A405: MemLdI2 global_92
  loc_C1A408: CI4UI1
  loc_C1A409: FLdPr Me
  loc_C1A40C: MemLdStr global_88
  loc_C1A40F: Ary1LdPr
  loc_C1A410: MemLdStr global_80
  loc_C1A413: ConcatStr
  loc_C1A414: FStStrNoPop var_134
  loc_C1A417: LitStr "</th>"
  loc_C1A41A: ConcatStr
  loc_C1A41B: CVarStr var_C0
  loc_C1A41E: PopAdLdVar
  loc_C1A41F: FLdPr Me
  loc_C1A422: MemLdRfVar from_stack_1.htmFile
  loc_C1A425: LdPrVar
  loc_C1A427: LateMemCall
  loc_C1A42D: FFree1Str var_134
  loc_C1A430: FFree1Var var_C0 = ""
  loc_C1A433: LitVarStr var_A0, "  </tr>"
  loc_C1A438: PopAdLdVar
  loc_C1A439: FLdPr Me
  loc_C1A43C: MemLdRfVar from_stack_1.htmFile
  loc_C1A43F: LdPrVar
  loc_C1A441: LateMemCall
  loc_C1A447: LitVarStr var_A0, "</table>"
  loc_C1A44C: PopAdLdVar
  loc_C1A44D: FLdPr Me
  loc_C1A450: MemLdRfVar from_stack_1.htmFile
  loc_C1A453: LdPrVar
  loc_C1A455: LateMemCall
  loc_C1A45B: LitVarStr var_A0, "<br>"
  loc_C1A460: PopAdLdVar
  loc_C1A461: FLdPr Me
  loc_C1A464: MemLdRfVar from_stack_1.htmFile
  loc_C1A467: LdPrVar
  loc_C1A469: LateMemCall
  loc_C1A46F: LitVarStr var_A0, "<br>"
  loc_C1A474: PopAdLdVar
  loc_C1A475: FLdPr Me
  loc_C1A478: MemLdRfVar from_stack_1.htmFile
  loc_C1A47B: LdPrVar
  loc_C1A47D: LateMemCall
  loc_C1A483: LitVarStr var_A0, "<br>"
  loc_C1A488: PopAdLdVar
  loc_C1A489: FLdPr Me
  loc_C1A48C: MemLdRfVar from_stack_1.htmFile
  loc_C1A48F: LdPrVar
  loc_C1A491: LateMemCall
  loc_C1A497: FLdRfVar var_13E
  loc_C1A49A: FLdPr Me
  loc_C1A49D: VCallAd Control_ID_chkSintetico
  loc_C1A4A0: FStAdFunc var_8C
  loc_C1A4A3: FLdPr var_8C
  loc_C1A4A6:  = Me.Value
  loc_C1A4AB: FLdI2 var_13E
  loc_C1A4AE: CI4UI1
  loc_C1A4AF: LitI4 0
  loc_C1A4B4: EqI4
  loc_C1A4B5: FFree1Ad var_8C
  loc_C1A4B8: BranchF loc_C1ACA8
  loc_C1A4BB: LitVarStr var_A0, "<table width=""85" & Chr(37) & """ border=""0"" align=""center"" cellspacing=""20"" class=""Normal"">"
  loc_C1A4C0: PopAdLdVar
  loc_C1A4C1: FLdPr Me
  loc_C1A4C4: MemLdRfVar from_stack_1.htmFile
  loc_C1A4C7: LdPrVar
  loc_C1A4C9: LateMemCall
  loc_C1A4CF: LitVarStr var_A0, "<th nowrap>"
  loc_C1A4D4: PopAdLdVar
  loc_C1A4D5: FLdPr Me
  loc_C1A4D8: MemLdRfVar from_stack_1.htmFile
  loc_C1A4DB: LdPrVar
  loc_C1A4DD: LateMemCall
  loc_C1A4E3: LitStr "Municipalidad de Guaymallén"
  loc_C1A4E6: FStStrCopy var_1B4
  loc_C1A4E9: ILdRf var_1B4
  loc_C1A4EC: LitStr "Municipalidad de Tunuyán"
  loc_C1A4EF: EqStr
  loc_C1A4F1: BranchT loc_C1A4FF
  loc_C1A4F4: ILdRf var_1B4
  loc_C1A4F7: LitStr "EPAS - Ente Provincial del Agua y de Saneamiento"
  loc_C1A4FA: EqStr
  loc_C1A4FC: BranchF loc_C1A6E1
  loc_C1A4FF: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C1A504: PopAdLdVar
  loc_C1A505: FLdPr Me
  loc_C1A508: MemLdRfVar from_stack_1.htmFile
  loc_C1A50B: LdPrVar
  loc_C1A50D: LateMemCall
  loc_C1A513: LitStr "    <td colspan=""3"">"
  loc_C1A516: LitStr "Municipalidad de Guaymallén"
  loc_C1A519: ConcatStr
  loc_C1A51A: FStStrNoPop var_134
  loc_C1A51D: LitStr "<br>"
  loc_C1A520: ConcatStr
  loc_C1A521: FStStrNoPop var_138
  loc_C1A524: LitStr "Orden de pago: "
  loc_C1A527: ConcatStr
  loc_C1A528: FStStrNoPop var_13C
  loc_C1A52B: FLdPr Me
  loc_C1A52E: MemLdI2 global_92
  loc_C1A531: CI4UI1
  loc_C1A532: FLdPr Me
  loc_C1A535: MemLdStr global_88
  loc_C1A538: Ary1LdPr
  loc_C1A539: MemLdStr global_8
  loc_C1A53C: ConcatStr
  loc_C1A53D: FStStrNoPop var_18C
  loc_C1A540: LitStr "</td>"
  loc_C1A543: ConcatStr
  loc_C1A544: CVarStr var_C0
  loc_C1A547: PopAdLdVar
  loc_C1A548: FLdPr Me
  loc_C1A54B: MemLdRfVar from_stack_1.htmFile
  loc_C1A54E: LdPrVar
  loc_C1A550: LateMemCall
  loc_C1A556: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C1A561: FFree1Var var_C0 = ""
  loc_C1A564: LitVarStr var_A0, "  </tr>"
  loc_C1A569: PopAdLdVar
  loc_C1A56A: FLdPr Me
  loc_C1A56D: MemLdRfVar from_stack_1.htmFile
  loc_C1A570: LdPrVar
  loc_C1A572: LateMemCall
  loc_C1A578: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C1A57D: PopAdLdVar
  loc_C1A57E: FLdPr Me
  loc_C1A581: MemLdRfVar from_stack_1.htmFile
  loc_C1A584: LdPrVar
  loc_C1A586: LateMemCall
  loc_C1A58C: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1A58F: FLdPr Me
  loc_C1A592: MemLdI2 global_92
  loc_C1A595: CI4UI1
  loc_C1A596: FLdPr Me
  loc_C1A599: MemLdStr global_88
  loc_C1A59C: Ary1LdPr
  loc_C1A59D: MemLdStr global_16
  loc_C1A5A0: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C1A5A5: FStStrNoPop var_134
  loc_C1A5A8: ConcatStr
  loc_C1A5A9: FStStrNoPop var_138
  loc_C1A5AC: LitStr "<br>"
  loc_C1A5AF: ConcatStr
  loc_C1A5B0: FStStrNoPop var_13C
  loc_C1A5B3: FLdPr Me
  loc_C1A5B6: MemLdI2 global_92
  loc_C1A5B9: CI4UI1
  loc_C1A5BA: FLdPr Me
  loc_C1A5BD: MemLdStr global_88
  loc_C1A5C0: Ary1LdPr
  loc_C1A5C1: MemLdStr global_16
  loc_C1A5C4: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C1A5C9: FStStrNoPop var_18C
  loc_C1A5CC: ConcatStr
  loc_C1A5CD: FStStrNoPop var_190
  loc_C1A5D0: LitStr "</td>"
  loc_C1A5D3: ConcatStr
  loc_C1A5D4: CVarStr var_C0
  loc_C1A5D7: PopAdLdVar
  loc_C1A5D8: FLdPr Me
  loc_C1A5DB: MemLdRfVar from_stack_1.htmFile
  loc_C1A5DE: LdPrVar
  loc_C1A5E0: LateMemCall
  loc_C1A5E6: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1A5F3: FFree1Var var_C0 = ""
  loc_C1A5F6: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1A5F9: FLdPr Me
  loc_C1A5FC: MemLdI2 global_92
  loc_C1A5FF: CI4UI1
  loc_C1A600: FLdPr Me
  loc_C1A603: MemLdStr global_88
  loc_C1A606: Ary1LdPr
  loc_C1A607: MemLdStr global_16
  loc_C1A60A: ImpAdCallI2 Proc_259_58_9C734C()
  loc_C1A60F: FStStrNoPop var_134
  loc_C1A612: ConcatStr
  loc_C1A613: FStStrNoPop var_138
  loc_C1A616: LitStr "<br>"
  loc_C1A619: ConcatStr
  loc_C1A61A: FStStrNoPop var_13C
  loc_C1A61D: FLdPr Me
  loc_C1A620: MemLdI2 global_92
  loc_C1A623: CI4UI1
  loc_C1A624: FLdPr Me
  loc_C1A627: MemLdStr global_88
  loc_C1A62A: Ary1LdPr
  loc_C1A62B: MemLdStr global_16
  loc_C1A62E: ImpAdCallI2 Proc_259_59_9D04B8()
  loc_C1A633: FStStrNoPop var_18C
  loc_C1A636: ConcatStr
  loc_C1A637: FStStrNoPop var_190
  loc_C1A63A: LitStr "</td>"
  loc_C1A63D: ConcatStr
  loc_C1A63E: CVarStr var_C0
  loc_C1A641: PopAdLdVar
  loc_C1A642: FLdPr Me
  loc_C1A645: MemLdRfVar from_stack_1.htmFile
  loc_C1A648: LdPrVar
  loc_C1A64A: LateMemCall
  loc_C1A650: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1A65D: FFree1Var var_C0 = ""
  loc_C1A660: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1A663: FLdPr Me
  loc_C1A666: MemLdI2 global_92
  loc_C1A669: CI4UI1
  loc_C1A66A: FLdPr Me
  loc_C1A66D: MemLdStr global_88
  loc_C1A670: Ary1LdPr
  loc_C1A671: MemLdStr global_16
  loc_C1A674: ImpAdCallI2 Proc_259_60_9C78C4()
  loc_C1A679: FStStrNoPop var_134
  loc_C1A67C: ConcatStr
  loc_C1A67D: FStStrNoPop var_138
  loc_C1A680: LitStr "<br>"
  loc_C1A683: ConcatStr
  loc_C1A684: FStStrNoPop var_13C
  loc_C1A687: FLdPr Me
  loc_C1A68A: MemLdI2 global_92
  loc_C1A68D: CI4UI1
  loc_C1A68E: FLdPr Me
  loc_C1A691: MemLdStr global_88
  loc_C1A694: Ary1LdPr
  loc_C1A695: MemLdStr global_16
  loc_C1A698: ImpAdCallI2 Proc_259_61_9CF39C()
  loc_C1A69D: FStStrNoPop var_18C
  loc_C1A6A0: ConcatStr
  loc_C1A6A1: FStStrNoPop var_190
  loc_C1A6A4: LitStr "</td>"
  loc_C1A6A7: ConcatStr
  loc_C1A6A8: CVarStr var_C0
  loc_C1A6AB: PopAdLdVar
  loc_C1A6AC: FLdPr Me
  loc_C1A6AF: MemLdRfVar from_stack_1.htmFile
  loc_C1A6B2: LdPrVar
  loc_C1A6B4: LateMemCall
  loc_C1A6BA: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1A6C7: FFree1Var var_C0 = ""
  loc_C1A6CA: LitVarStr var_A0, "  </tr>"
  loc_C1A6CF: PopAdLdVar
  loc_C1A6D0: FLdPr Me
  loc_C1A6D3: MemLdRfVar from_stack_1.htmFile
  loc_C1A6D6: LdPrVar
  loc_C1A6D8: LateMemCall
  loc_C1A6DE: Branch loc_C1AC80
  loc_C1A6E1: ILdRf var_1B4
  loc_C1A6E4: LitStr "Municipalidad de San Carlos"
  loc_C1A6E7: EqStr
  loc_C1A6E9: BranchF loc_C1A8CE
  loc_C1A6EC: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C1A6F1: PopAdLdVar
  loc_C1A6F2: FLdPr Me
  loc_C1A6F5: MemLdRfVar from_stack_1.htmFile
  loc_C1A6F8: LdPrVar
  loc_C1A6FA: LateMemCall
  loc_C1A700: LitStr "    <td colspan=""3"">"
  loc_C1A703: LitStr "Municipalidad de Guaymallén"
  loc_C1A706: ConcatStr
  loc_C1A707: FStStrNoPop var_134
  loc_C1A70A: LitStr "<br>"
  loc_C1A70D: ConcatStr
  loc_C1A70E: FStStrNoPop var_138
  loc_C1A711: LitStr "Orden de pago: "
  loc_C1A714: ConcatStr
  loc_C1A715: FStStrNoPop var_13C
  loc_C1A718: FLdPr Me
  loc_C1A71B: MemLdI2 global_92
  loc_C1A71E: CI4UI1
  loc_C1A71F: FLdPr Me
  loc_C1A722: MemLdStr global_88
  loc_C1A725: Ary1LdPr
  loc_C1A726: MemLdStr global_8
  loc_C1A729: ConcatStr
  loc_C1A72A: FStStrNoPop var_18C
  loc_C1A72D: LitStr "</td>"
  loc_C1A730: ConcatStr
  loc_C1A731: CVarStr var_C0
  loc_C1A734: PopAdLdVar
  loc_C1A735: FLdPr Me
  loc_C1A738: MemLdRfVar from_stack_1.htmFile
  loc_C1A73B: LdPrVar
  loc_C1A73D: LateMemCall
  loc_C1A743: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C1A74E: FFree1Var var_C0 = ""
  loc_C1A751: LitVarStr var_A0, "  </tr>"
  loc_C1A756: PopAdLdVar
  loc_C1A757: FLdPr Me
  loc_C1A75A: MemLdRfVar from_stack_1.htmFile
  loc_C1A75D: LdPrVar
  loc_C1A75F: LateMemCall
  loc_C1A765: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C1A76A: PopAdLdVar
  loc_C1A76B: FLdPr Me
  loc_C1A76E: MemLdRfVar from_stack_1.htmFile
  loc_C1A771: LdPrVar
  loc_C1A773: LateMemCall
  loc_C1A779: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1A77C: FLdPr Me
  loc_C1A77F: MemLdI2 global_92
  loc_C1A782: CI4UI1
  loc_C1A783: FLdPr Me
  loc_C1A786: MemLdStr global_88
  loc_C1A789: Ary1LdPr
  loc_C1A78A: MemLdStr global_16
  loc_C1A78D: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C1A792: FStStrNoPop var_134
  loc_C1A795: ConcatStr
  loc_C1A796: FStStrNoPop var_138
  loc_C1A799: LitStr "<br>"
  loc_C1A79C: ConcatStr
  loc_C1A79D: FStStrNoPop var_13C
  loc_C1A7A0: FLdPr Me
  loc_C1A7A3: MemLdI2 global_92
  loc_C1A7A6: CI4UI1
  loc_C1A7A7: FLdPr Me
  loc_C1A7AA: MemLdStr global_88
  loc_C1A7AD: Ary1LdPr
  loc_C1A7AE: MemLdStr global_16
  loc_C1A7B1: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C1A7B6: FStStrNoPop var_18C
  loc_C1A7B9: ConcatStr
  loc_C1A7BA: FStStrNoPop var_190
  loc_C1A7BD: LitStr "</td>"
  loc_C1A7C0: ConcatStr
  loc_C1A7C1: CVarStr var_C0
  loc_C1A7C4: PopAdLdVar
  loc_C1A7C5: FLdPr Me
  loc_C1A7C8: MemLdRfVar from_stack_1.htmFile
  loc_C1A7CB: LdPrVar
  loc_C1A7CD: LateMemCall
  loc_C1A7D3: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1A7E0: FFree1Var var_C0 = ""
  loc_C1A7E3: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1A7E6: FLdPr Me
  loc_C1A7E9: MemLdI2 global_92
  loc_C1A7EC: CI4UI1
  loc_C1A7ED: FLdPr Me
  loc_C1A7F0: MemLdStr global_88
  loc_C1A7F3: Ary1LdPr
  loc_C1A7F4: MemLdStr global_16
  loc_C1A7F7: ImpAdCallI2 Proc_259_58_9C734C()
  loc_C1A7FC: FStStrNoPop var_134
  loc_C1A7FF: ConcatStr
  loc_C1A800: FStStrNoPop var_138
  loc_C1A803: LitStr "<br>"
  loc_C1A806: ConcatStr
  loc_C1A807: FStStrNoPop var_13C
  loc_C1A80A: FLdPr Me
  loc_C1A80D: MemLdI2 global_92
  loc_C1A810: CI4UI1
  loc_C1A811: FLdPr Me
  loc_C1A814: MemLdStr global_88
  loc_C1A817: Ary1LdPr
  loc_C1A818: MemLdStr global_16
  loc_C1A81B: ImpAdCallI2 Proc_259_59_9D04B8()
  loc_C1A820: FStStrNoPop var_18C
  loc_C1A823: ConcatStr
  loc_C1A824: FStStrNoPop var_190
  loc_C1A827: LitStr "</td>"
  loc_C1A82A: ConcatStr
  loc_C1A82B: CVarStr var_C0
  loc_C1A82E: PopAdLdVar
  loc_C1A82F: FLdPr Me
  loc_C1A832: MemLdRfVar from_stack_1.htmFile
  loc_C1A835: LdPrVar
  loc_C1A837: LateMemCall
  loc_C1A83D: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1A84A: FFree1Var var_C0 = ""
  loc_C1A84D: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1A850: FLdPr Me
  loc_C1A853: MemLdI2 global_92
  loc_C1A856: CI4UI1
  loc_C1A857: FLdPr Me
  loc_C1A85A: MemLdStr global_88
  loc_C1A85D: Ary1LdPr
  loc_C1A85E: MemLdStr global_16
  loc_C1A861: ImpAdCallI2 Proc_259_55_9C77AC()
  loc_C1A866: FStStrNoPop var_134
  loc_C1A869: ConcatStr
  loc_C1A86A: FStStrNoPop var_138
  loc_C1A86D: LitStr "<br>"
  loc_C1A870: ConcatStr
  loc_C1A871: FStStrNoPop var_13C
  loc_C1A874: FLdPr Me
  loc_C1A877: MemLdI2 global_92
  loc_C1A87A: CI4UI1
  loc_C1A87B: FLdPr Me
  loc_C1A87E: MemLdStr global_88
  loc_C1A881: Ary1LdPr
  loc_C1A882: MemLdStr global_16
  loc_C1A885: ImpAdCallI2 Proc_259_57_9D0CB4()
  loc_C1A88A: FStStrNoPop var_18C
  loc_C1A88D: ConcatStr
  loc_C1A88E: FStStrNoPop var_190
  loc_C1A891: LitStr "</td>"
  loc_C1A894: ConcatStr
  loc_C1A895: CVarStr var_C0
  loc_C1A898: PopAdLdVar
  loc_C1A899: FLdPr Me
  loc_C1A89C: MemLdRfVar from_stack_1.htmFile
  loc_C1A89F: LdPrVar
  loc_C1A8A1: LateMemCall
  loc_C1A8A7: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1A8B4: FFree1Var var_C0 = ""
  loc_C1A8B7: LitVarStr var_A0, "  </tr>"
  loc_C1A8BC: PopAdLdVar
  loc_C1A8BD: FLdPr Me
  loc_C1A8C0: MemLdRfVar from_stack_1.htmFile
  loc_C1A8C3: LdPrVar
  loc_C1A8C5: LateMemCall
  loc_C1A8CB: Branch loc_C1AC80
  loc_C1A8CE: ILdRf var_1B4
  loc_C1A8D1: LitStr "Municipalidad de General Alvear"
  loc_C1A8D4: EqStr
  loc_C1A8D6: BranchF loc_C1AA0F
  loc_C1A8D9: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C1A8DE: PopAdLdVar
  loc_C1A8DF: FLdPr Me
  loc_C1A8E2: MemLdRfVar from_stack_1.htmFile
  loc_C1A8E5: LdPrVar
  loc_C1A8E7: LateMemCall
  loc_C1A8ED: LitStr "    <td colspan=""3"">"
  loc_C1A8F0: LitStr "Municipalidad de Guaymallén"
  loc_C1A8F3: ConcatStr
  loc_C1A8F4: FStStrNoPop var_134
  loc_C1A8F7: LitStr "<br>"
  loc_C1A8FA: ConcatStr
  loc_C1A8FB: FStStrNoPop var_138
  loc_C1A8FE: LitStr "Orden de pago: "
  loc_C1A901: ConcatStr
  loc_C1A902: FStStrNoPop var_13C
  loc_C1A905: FLdPr Me
  loc_C1A908: MemLdI2 global_92
  loc_C1A90B: CI4UI1
  loc_C1A90C: FLdPr Me
  loc_C1A90F: MemLdStr global_88
  loc_C1A912: Ary1LdPr
  loc_C1A913: MemLdStr global_8
  loc_C1A916: ConcatStr
  loc_C1A917: FStStrNoPop var_18C
  loc_C1A91A: LitStr "</td>"
  loc_C1A91D: ConcatStr
  loc_C1A91E: CVarStr var_C0
  loc_C1A921: PopAdLdVar
  loc_C1A922: FLdPr Me
  loc_C1A925: MemLdRfVar from_stack_1.htmFile
  loc_C1A928: LdPrVar
  loc_C1A92A: LateMemCall
  loc_C1A930: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C1A93B: FFree1Var var_C0 = ""
  loc_C1A93E: LitVarStr var_A0, "  </tr>"
  loc_C1A943: PopAdLdVar
  loc_C1A944: FLdPr Me
  loc_C1A947: MemLdRfVar from_stack_1.htmFile
  loc_C1A94A: LdPrVar
  loc_C1A94C: LateMemCall
  loc_C1A952: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C1A957: PopAdLdVar
  loc_C1A958: FLdPr Me
  loc_C1A95B: MemLdRfVar from_stack_1.htmFile
  loc_C1A95E: LdPrVar
  loc_C1A960: LateMemCall
  loc_C1A966: LitVarStr var_A0, "    <td width=""25" & Chr(37) & """></td>"
  loc_C1A96B: PopAdLdVar
  loc_C1A96C: FLdPr Me
  loc_C1A96F: MemLdRfVar from_stack_1.htmFile
  loc_C1A972: LdPrVar
  loc_C1A974: LateMemCall
  loc_C1A97A: LitVarStr var_A0, "    <td width=""25" & Chr(37) & """></td>"
  loc_C1A97F: PopAdLdVar
  loc_C1A980: FLdPr Me
  loc_C1A983: MemLdRfVar from_stack_1.htmFile
  loc_C1A986: LdPrVar
  loc_C1A988: LateMemCall
  loc_C1A98E: LitStr "    <td width=""25" & Chr(37) & """><hr>"
  loc_C1A991: FLdPr Me
  loc_C1A994: MemLdI2 global_92
  loc_C1A997: CI4UI1
  loc_C1A998: FLdPr Me
  loc_C1A99B: MemLdStr global_88
  loc_C1A99E: Ary1LdPr
  loc_C1A99F: MemLdStr global_16
  loc_C1A9A2: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C1A9A7: FStStrNoPop var_134
  loc_C1A9AA: ConcatStr
  loc_C1A9AB: FStStrNoPop var_138
  loc_C1A9AE: LitStr "<br>"
  loc_C1A9B1: ConcatStr
  loc_C1A9B2: FStStrNoPop var_13C
  loc_C1A9B5: FLdPr Me
  loc_C1A9B8: MemLdI2 global_92
  loc_C1A9BB: CI4UI1
  loc_C1A9BC: FLdPr Me
  loc_C1A9BF: MemLdStr global_88
  loc_C1A9C2: Ary1LdPr
  loc_C1A9C3: MemLdStr global_16
  loc_C1A9C6: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C1A9CB: FStStrNoPop var_18C
  loc_C1A9CE: ConcatStr
  loc_C1A9CF: FStStrNoPop var_190
  loc_C1A9D2: LitStr "</td>"
  loc_C1A9D5: ConcatStr
  loc_C1A9D6: CVarStr var_C0
  loc_C1A9D9: PopAdLdVar
  loc_C1A9DA: FLdPr Me
  loc_C1A9DD: MemLdRfVar from_stack_1.htmFile
  loc_C1A9E0: LdPrVar
  loc_C1A9E2: LateMemCall
  loc_C1A9E8: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1A9F5: FFree1Var var_C0 = ""
  loc_C1A9F8: LitVarStr var_A0, "  </tr>"
  loc_C1A9FD: PopAdLdVar
  loc_C1A9FE: FLdPr Me
  loc_C1AA01: MemLdRfVar from_stack_1.htmFile
  loc_C1AA04: LdPrVar
  loc_C1AA06: LateMemCall
  loc_C1AA0C: Branch loc_C1AC80
  loc_C1AA0F: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C1AA14: PopAdLdVar
  loc_C1AA15: FLdPr Me
  loc_C1AA18: MemLdRfVar from_stack_1.htmFile
  loc_C1AA1B: LdPrVar
  loc_C1AA1D: LateMemCall
  loc_C1AA23: LitStr "    <td colspan=""2"">"
  loc_C1AA26: LitStr "Municipalidad de Guaymallén"
  loc_C1AA29: ConcatStr
  loc_C1AA2A: FStStrNoPop var_134
  loc_C1AA2D: LitStr "<br>"
  loc_C1AA30: ConcatStr
  loc_C1AA31: FStStrNoPop var_138
  loc_C1AA34: LitStr "Orden de pago: "
  loc_C1AA37: ConcatStr
  loc_C1AA38: FStStrNoPop var_13C
  loc_C1AA3B: FLdPr Me
  loc_C1AA3E: MemLdI2 global_92
  loc_C1AA41: CI4UI1
  loc_C1AA42: FLdPr Me
  loc_C1AA45: MemLdStr global_88
  loc_C1AA48: Ary1LdPr
  loc_C1AA49: MemLdStr global_8
  loc_C1AA4C: ConcatStr
  loc_C1AA4D: FStStrNoPop var_18C
  loc_C1AA50: LitStr "</td>"
  loc_C1AA53: ConcatStr
  loc_C1AA54: CVarStr var_C0
  loc_C1AA57: PopAdLdVar
  loc_C1AA58: FLdPr Me
  loc_C1AA5B: MemLdRfVar from_stack_1.htmFile
  loc_C1AA5E: LdPrVar
  loc_C1AA60: LateMemCall
  loc_C1AA66: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C1AA71: FFree1Var var_C0 = ""
  loc_C1AA74: LitVarStr var_A0, "  </tr>"
  loc_C1AA79: PopAdLdVar
  loc_C1AA7A: FLdPr Me
  loc_C1AA7D: MemLdRfVar from_stack_1.htmFile
  loc_C1AA80: LdPrVar
  loc_C1AA82: LateMemCall
  loc_C1AA88: LitVarStr var_A0, "  <tr align=""center"" height=124px>"
  loc_C1AA8D: PopAdLdVar
  loc_C1AA8E: FLdPr Me
  loc_C1AA91: MemLdRfVar from_stack_1.htmFile
  loc_C1AA94: LdPrVar
  loc_C1AA96: LateMemCall
  loc_C1AA9C: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C1AA9F: FLdPr Me
  loc_C1AAA2: MemLdI2 global_92
  loc_C1AAA5: CI4UI1
  loc_C1AAA6: FLdPr Me
  loc_C1AAA9: MemLdStr global_88
  loc_C1AAAC: Ary1LdPr
  loc_C1AAAD: MemLdStr global_16
  loc_C1AAB0: ImpAdCallI2 Proc_259_56_9C7694()
  loc_C1AAB5: FStStrNoPop var_134
  loc_C1AAB8: ConcatStr
  loc_C1AAB9: FStStrNoPop var_138
  loc_C1AABC: LitStr "<br>"
  loc_C1AABF: ConcatStr
  loc_C1AAC0: FStStrNoPop var_13C
  loc_C1AAC3: FLdPr Me
  loc_C1AAC6: MemLdI2 global_92
  loc_C1AAC9: CI4UI1
  loc_C1AACA: FLdPr Me
  loc_C1AACD: MemLdStr global_88
  loc_C1AAD0: Ary1LdPr
  loc_C1AAD1: MemLdStr global_16
  loc_C1AAD4: ImpAdCallI2 Proc_259_62_9D0028()
  loc_C1AAD9: FStStrNoPop var_18C
  loc_C1AADC: ConcatStr
  loc_C1AADD: FStStrNoPop var_190
  loc_C1AAE0: LitStr "</td>"
  loc_C1AAE3: ConcatStr
  loc_C1AAE4: CVarStr var_C0
  loc_C1AAE7: PopAdLdVar
  loc_C1AAE8: FLdPr Me
  loc_C1AAEB: MemLdRfVar from_stack_1.htmFile
  loc_C1AAEE: LdPrVar
  loc_C1AAF0: LateMemCall
  loc_C1AAF6: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1AB03: FFree1Var var_C0 = ""
  loc_C1AB06: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C1AB09: FLdPr Me
  loc_C1AB0C: MemLdI2 global_92
  loc_C1AB0F: CI4UI1
  loc_C1AB10: FLdPr Me
  loc_C1AB13: MemLdStr global_88
  loc_C1AB16: Ary1LdPr
  loc_C1AB17: MemLdStr global_16
  loc_C1AB1A: ImpAdCallI2 Proc_259_58_9C734C()
  loc_C1AB1F: FStStrNoPop var_134
  loc_C1AB22: ConcatStr
  loc_C1AB23: FStStrNoPop var_138
  loc_C1AB26: LitStr "<br>"
  loc_C1AB29: ConcatStr
  loc_C1AB2A: FStStrNoPop var_13C
  loc_C1AB2D: FLdPr Me
  loc_C1AB30: MemLdI2 global_92
  loc_C1AB33: CI4UI1
  loc_C1AB34: FLdPr Me
  loc_C1AB37: MemLdStr global_88
  loc_C1AB3A: Ary1LdPr
  loc_C1AB3B: MemLdStr global_16
  loc_C1AB3E: ImpAdCallI2 Proc_259_59_9D04B8()
  loc_C1AB43: FStStrNoPop var_18C
  loc_C1AB46: ConcatStr
  loc_C1AB47: FStStrNoPop var_190
  loc_C1AB4A: LitStr "</td>"
  loc_C1AB4D: ConcatStr
  loc_C1AB4E: CVarStr var_C0
  loc_C1AB51: PopAdLdVar
  loc_C1AB52: FLdPr Me
  loc_C1AB55: MemLdRfVar from_stack_1.htmFile
  loc_C1AB58: LdPrVar
  loc_C1AB5A: LateMemCall
  loc_C1AB60: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1AB6D: FFree1Var var_C0 = ""
  loc_C1AB70: LitVarStr var_A0, "  </tr>"
  loc_C1AB75: PopAdLdVar
  loc_C1AB76: FLdPr Me
  loc_C1AB79: MemLdRfVar from_stack_1.htmFile
  loc_C1AB7C: LdPrVar
  loc_C1AB7E: LateMemCall
  loc_C1AB84: LitVarStr var_A0, "  <tr align=""center"">"
  loc_C1AB89: PopAdLdVar
  loc_C1AB8A: FLdPr Me
  loc_C1AB8D: MemLdRfVar from_stack_1.htmFile
  loc_C1AB90: LdPrVar
  loc_C1AB92: LateMemCall
  loc_C1AB98: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C1AB9B: FLdPr Me
  loc_C1AB9E: MemLdI2 global_92
  loc_C1ABA1: CI4UI1
  loc_C1ABA2: FLdPr Me
  loc_C1ABA5: MemLdStr global_88
  loc_C1ABA8: Ary1LdPr
  loc_C1ABA9: MemLdStr global_16
  loc_C1ABAC: ImpAdCallI2 Proc_259_60_9C78C4()
  loc_C1ABB1: FStStrNoPop var_134
  loc_C1ABB4: ConcatStr
  loc_C1ABB5: FStStrNoPop var_138
  loc_C1ABB8: LitStr "<br>"
  loc_C1ABBB: ConcatStr
  loc_C1ABBC: FStStrNoPop var_13C
  loc_C1ABBF: FLdPr Me
  loc_C1ABC2: MemLdI2 global_92
  loc_C1ABC5: CI4UI1
  loc_C1ABC6: FLdPr Me
  loc_C1ABC9: MemLdStr global_88
  loc_C1ABCC: Ary1LdPr
  loc_C1ABCD: MemLdStr global_16
  loc_C1ABD0: ImpAdCallI2 Proc_259_61_9CF39C()
  loc_C1ABD5: FStStrNoPop var_18C
  loc_C1ABD8: ConcatStr
  loc_C1ABD9: FStStrNoPop var_190
  loc_C1ABDC: LitStr "</td>"
  loc_C1ABDF: ConcatStr
  loc_C1ABE0: CVarStr var_C0
  loc_C1ABE3: PopAdLdVar
  loc_C1ABE4: FLdPr Me
  loc_C1ABE7: MemLdRfVar from_stack_1.htmFile
  loc_C1ABEA: LdPrVar
  loc_C1ABEC: LateMemCall
  loc_C1ABF2: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1ABFF: FFree1Var var_C0 = ""
  loc_C1AC02: LitStr "    <td width=""33" & Chr(37) & """><hr>"
  loc_C1AC05: FLdPr Me
  loc_C1AC08: MemLdI2 global_92
  loc_C1AC0B: CI4UI1
  loc_C1AC0C: FLdPr Me
  loc_C1AC0F: MemLdStr global_88
  loc_C1AC12: Ary1LdPr
  loc_C1AC13: MemLdStr global_16
  loc_C1AC16: ImpAdCallI2 Proc_259_55_9C77AC()
  loc_C1AC1B: FStStrNoPop var_134
  loc_C1AC1E: ConcatStr
  loc_C1AC1F: FStStrNoPop var_138
  loc_C1AC22: LitStr "<br>"
  loc_C1AC25: ConcatStr
  loc_C1AC26: FStStrNoPop var_13C
  loc_C1AC29: FLdPr Me
  loc_C1AC2C: MemLdI2 global_92
  loc_C1AC2F: CI4UI1
  loc_C1AC30: FLdPr Me
  loc_C1AC33: MemLdStr global_88
  loc_C1AC36: Ary1LdPr
  loc_C1AC37: MemLdStr global_16
  loc_C1AC3A: ImpAdCallI2 Proc_259_57_9D0CB4()
  loc_C1AC3F: FStStrNoPop var_18C
  loc_C1AC42: ConcatStr
  loc_C1AC43: FStStrNoPop var_190
  loc_C1AC46: LitStr "</td>"
  loc_C1AC49: ConcatStr
  loc_C1AC4A: CVarStr var_C0
  loc_C1AC4D: PopAdLdVar
  loc_C1AC4E: FLdPr Me
  loc_C1AC51: MemLdRfVar from_stack_1.htmFile
  loc_C1AC54: LdPrVar
  loc_C1AC56: LateMemCall
  loc_C1AC5C: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_18C = ""
  loc_C1AC69: FFree1Var var_C0 = ""
  loc_C1AC6C: LitVarStr var_A0, "  </tr>"
  loc_C1AC71: PopAdLdVar
  loc_C1AC72: FLdPr Me
  loc_C1AC75: MemLdRfVar from_stack_1.htmFile
  loc_C1AC78: LdPrVar
  loc_C1AC7A: LateMemCall
  loc_C1AC80: LitVarStr var_A0, "</th>"
  loc_C1AC85: PopAdLdVar
  loc_C1AC86: FLdPr Me
  loc_C1AC89: MemLdRfVar from_stack_1.htmFile
  loc_C1AC8C: LdPrVar
  loc_C1AC8E: LateMemCall
  loc_C1AC94: LitVarStr var_A0, "</table>"
  loc_C1AC99: PopAdLdVar
  loc_C1AC9A: FLdPr Me
  loc_C1AC9D: MemLdRfVar from_stack_1.htmFile
  loc_C1ACA0: LdPrVar
  loc_C1ACA2: LateMemCall
  loc_C1ACA8: LitStr "Orden de Pago Nº "
  loc_C1ACAB: FLdPr Me
  loc_C1ACAE: MemLdI2 global_92
  loc_C1ACB1: CI4UI1
  loc_C1ACB2: FLdPr Me
  loc_C1ACB5: MemLdStr global_88
  loc_C1ACB8: Ary1LdPr
  loc_C1ACB9: MemLdStr global_8
  loc_C1ACBC: ConcatStr
  loc_C1ACBD: FStStrNoPop var_134
  loc_C1ACC0: LitStr "<br>"
  loc_C1ACC3: ConcatStr
  loc_C1ACC4: CVarStr var_C0
  loc_C1ACC7: PopAdLdVar
  loc_C1ACC8: FLdPr Me
  loc_C1ACCB: MemLdRfVar from_stack_1.htmFile
  loc_C1ACCE: LdPrVar
  loc_C1ACD0: LateMemCall
  loc_C1ACD6: FFree1Str var_134
  loc_C1ACD9: FFree1Var var_C0 = ""
  loc_C1ACDC: LitVarStr var_B0, "SIN REMITIR"
  loc_C1ACE1: FStVarCopyObj var_D0
  loc_C1ACE4: FLdRfVar var_D0
  loc_C1ACE7: LitStr "Fecha de remisión: "
  loc_C1ACEA: FLdPr Me
  loc_C1ACED: MemLdI2 global_92
  loc_C1ACF0: CI4UI1
  loc_C1ACF1: FLdPr Me
  loc_C1ACF4: MemLdStr global_88
  loc_C1ACF7: Ary1LdPr
  loc_C1ACF8: MemLdStr global_20
  loc_C1ACFB: ConcatStr
  loc_C1ACFC: CVarStr var_C0
  loc_C1ACFF: FLdPr Me
  loc_C1AD02: MemLdI2 global_92
  loc_C1AD05: CI4UI1
  loc_C1AD06: FLdPr Me
  loc_C1AD09: MemLdStr global_88
  loc_C1AD0C: Ary1LdPr
  loc_C1AD0D: MemLdStr global_20
  loc_C1AD10: LitStr vbNullString
  loc_C1AD13: NeStr
  loc_C1AD15: CVarBoolI2 var_A0
  loc_C1AD19: FLdRfVar var_E0
  loc_C1AD1C: ImpAdCallFPR4  = IIf(, , )
  loc_C1AD21: FLdVar var_E0
  loc_C1AD25: FLdPr Me
  loc_C1AD28: MemLdRfVar from_stack_1.htmFile
  loc_C1AD2B: LdPrVar
  loc_C1AD2D: LateMemCall
  loc_C1AD33: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_C1AD3E: LitVarStr var_B0, vbNullString
  loc_C1AD43: FStVarCopyObj var_D0
  loc_C1AD46: FLdRfVar var_D0
  loc_C1AD49: LitStr " - Fecha de archivo: "
  loc_C1AD4C: FLdPr Me
  loc_C1AD4F: MemLdI2 global_92
  loc_C1AD52: CI4UI1
  loc_C1AD53: FLdPr Me
  loc_C1AD56: MemLdStr global_88
  loc_C1AD59: Ary1LdPr
  loc_C1AD5A: MemLdStr global_32
  loc_C1AD5D: ConcatStr
  loc_C1AD5E: CVarStr var_C0
  loc_C1AD61: FLdPr Me
  loc_C1AD64: MemLdI2 global_92
  loc_C1AD67: CI4UI1
  loc_C1AD68: FLdPr Me
  loc_C1AD6B: MemLdStr global_88
  loc_C1AD6E: Ary1LdPr
  loc_C1AD6F: MemLdStr global_32
  loc_C1AD72: LitStr vbNullString
  loc_C1AD75: NeStr
  loc_C1AD77: CVarBoolI2 var_A0
  loc_C1AD7B: FLdRfVar var_E0
  loc_C1AD7E: ImpAdCallFPR4  = IIf(, , )
  loc_C1AD83: FLdVar var_E0
  loc_C1AD87: FLdPr Me
  loc_C1AD8A: MemLdRfVar from_stack_1.htmFile
  loc_C1AD8D: LdPrVar
  loc_C1AD8F: LateMemCall
  loc_C1AD95: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_C1ADA0: FLdPr Me
  loc_C1ADA3: MemLdRfVar from_stack_1.global_92
  loc_C1ADA6: NextI2 var_90, loc_C17EDB
  loc_C1ADAB: Call Proc_211_26_974FEC()
  loc_C1ADB0: FLdPr Me
  loc_C1ADB3: MemLdRfVar from_stack_1.htmFile
  loc_C1ADB6: LdPrVar
  loc_C1ADB8: LateMemCall
  loc_C1ADBE: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_C1ADC3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BD4C30
  'Data Table: 4A8D80
  loc_BD36B4: FLdPr Me
  loc_BD36B7: MemLdI2 bGenerado
  loc_BD36BA: BranchF loc_BD36BE
  loc_BD36BD: ExitProcHresult
  loc_BD36BE: LitVarStr var_A0, "Generando reporte..."
  loc_BD36C3: PopAdLdVar
  loc_BD36C4: FLdPr Me
  loc_BD36C7: VCallAd Control_ID_statusBar
  loc_BD36CA: FStAdFunc var_B4
  loc_BD36CD: FLdPr var_B4
  loc_BD36D0: LateIdSt
  loc_BD36D5: FFree1Ad var_B4
  loc_BD36D8: LitI4 &HB
  loc_BD36DD: CI2I4
  loc_BD36DE: FLdPr Me
  loc_BD36E1: Me.MousePointer = from_stack_1
  loc_BD36E6: LitStr vbNullString
  loc_BD36E9: FLdPr Me
  loc_BD36EC: MemStStrCopy
  loc_BD36F0: LitI2_Byte 0
  loc_BD36F2: PopTmpLdAd2 var_B6
  loc_BD36F5: Call cboExpeImpu_Validate(from_stack_1v)
  loc_BD36FA: FLdPr Me
  loc_BD36FD: MemLdStr global_104
  loc_BD3700: LitStr vbNullString
  loc_BD3703: NeStr
  loc_BD3705: BranchF loc_BD370B
  loc_BD3708: Branch loc_BD4C05
  loc_BD370B: LitI2_Byte 0
  loc_BD370D: PopTmpLdAd2 var_B6
  loc_BD3710: Call NumeOrpaTxt_Validate(from_stack_1v)
  loc_BD3715: FLdPr Me
  loc_BD3718: MemLdStr global_104
  loc_BD371B: LitStr vbNullString
  loc_BD371E: NeStr
  loc_BD3720: BranchF loc_BD3726
  loc_BD3723: Branch loc_BD4C05
  loc_BD3726: FLdRfVar var_BC
  loc_BD3729: FLdPr Me
  loc_BD372C: VCallAd Control_ID_cboExpeImpu
  loc_BD372F: FStAdFunc var_B4
  loc_BD3732: FLdPr var_B4
  loc_BD3735:  = Me.Text
  loc_BD373A: ILdRf var_BC
  loc_BD373D: LitStr vbNullString
  loc_BD3740: NeStr
  loc_BD3742: FFree1Str var_BC
  loc_BD3745: FFree1Ad var_B4
  loc_BD3748: BranchF loc_BD3787
  loc_BD374B: LitStr " AND ordenpago.ExpeImpu = '"
  loc_BD374E: FLdRfVar var_BC
  loc_BD3751: FLdPr Me
  loc_BD3754: VCallAd Control_ID_cboExpeImpu
  loc_BD3757: FStAdFunc var_B4
  loc_BD375A: FLdPr var_B4
  loc_BD375D:  = Me.Text
  loc_BD3762: ILdRf var_BC
  loc_BD3765: ConcatStr
  loc_BD3766: FStStrNoPop var_C0
  loc_BD3769: LitStr "'"
  loc_BD376C: ConcatStr
  loc_BD376D: FStStr var_88
  loc_BD3770: FFreeStr var_BC = ""
  loc_BD3777: FFree1Ad var_B4
  loc_BD377A: LitStr vbNullString
  loc_BD377D: FLdPr Me
  loc_BD3780: MemStStrCopy
  loc_BD3784: Branch loc_BD378D
  loc_BD3787: LitStr vbNullString
  loc_BD378A: FStStrCopy var_88
  loc_BD378D: FLdPr Me
  loc_BD3790: VCallAd Control_ID_NumeLiquMsk
  loc_BD3793: FStAdFunc var_B4
  loc_BD3796: FLdPr var_B4
  loc_BD3799: LateIdLdVar var_D0 DispID_22 0
  loc_BD37A0: PopAd
  loc_BD37A2: FLdPr Me
  loc_BD37A5: VCallAd Control_ID_NumeLiquMsk
  loc_BD37A8: FStAdFunc var_D4
  loc_BD37AB: FLdPr var_D4
  loc_BD37AE: LateIdLdVar var_E4 DispID_22 0
  loc_BD37B5: PopAd
  loc_BD37B7: LitVarStr var_B0, vbNullString
  loc_BD37BC: FStVarCopyObj var_104
  loc_BD37BF: FLdRfVar var_104
  loc_BD37C2: LitStr " AND ordenpago.NumeLiqu = "
  loc_BD37C5: FLdRfVar var_E4
  loc_BD37C8: CStrVarTmp
  loc_BD37C9: FStStrNoPop var_C0
  loc_BD37CC: ConcatStr
  loc_BD37CD: CVarStr var_F4
  loc_BD37D0: FLdRfVar var_D0
  loc_BD37D3: CStrVarTmp
  loc_BD37D4: FStStrNoPop var_BC
  loc_BD37D7: LitStr vbNullString
  loc_BD37DA: NeStr
  loc_BD37DC: CVarBoolI2 var_A0
  loc_BD37E0: FLdRfVar var_114
  loc_BD37E3: ImpAdCallFPR4  = IIf(, , )
  loc_BD37E8: FLdRfVar var_114
  loc_BD37EB: CStrVarTmp
  loc_BD37EC: FStStr var_8C
  loc_BD37EF: FFreeStr var_BC = ""
  loc_BD37F6: FFreeAd var_B4 = ""
  loc_BD37FD: FFreeVar var_D0 = "": var_E4 = "": var_A0 = "": var_F4 = "": var_104 = ""
  loc_BD380C: LitI4 3
  loc_BD3811: ImpAdLdRf MemVar_C3D03C
  loc_BD3814: CVarRef
  loc_BD3819: FLdRfVar var_D0
  loc_BD381C: ImpAdCallFPR4  = Left(, )
  loc_BD3821: FLdRfVar var_D0
  loc_BD3824: FLdRfVar var_E4
  loc_BD3827: ImpAdCallFPR4  = Ucase()
  loc_BD382C: FLdRfVar var_BC
  loc_BD382F: FLdPr Me
  loc_BD3832: VCallAd Control_ID_cboPeriodo
  loc_BD3835: FStAdFunc var_B4
  loc_BD3838: FLdPr var_B4
  loc_BD383B:  = Me.Text
  loc_BD3840: ILdRf var_BC
  loc_BD3843: CI2Str
  loc_BD3845: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_BD384A: FStStr var_178
  loc_BD384D: LitStr " AND FechOrpa <= "
  loc_BD3850: LitI4 1
  loc_BD3855: LitI4 1
  loc_BD385A: LitVarStr var_124, "'yyyy-mm-dd'"
  loc_BD385F: FStVarCopyObj var_114
  loc_BD3862: FLdRfVar var_114
  loc_BD3865: FLdZeroAd var_178
  loc_BD3868: CVarStr var_104
  loc_BD386B: ImpAdCallI2 Format$(, )
  loc_BD3870: FStStrNoPop var_C0
  loc_BD3873: ConcatStr
  loc_BD3874: CVarStr var_164
  loc_BD3877: LitVarStr var_144, vbNullString
  loc_BD387C: FStVarCopyObj var_154
  loc_BD387F: FLdRfVar var_154
  loc_BD3882: FLdRfVar var_E4
  loc_BD3885: LitVarStr var_B0, "HTC"
  loc_BD388A: HardType
  loc_BD388B: NeVar var_F4
  loc_BD388F: FStVar var_134
  loc_BD3893: FLdRfVar var_134
  loc_BD3896: FLdRfVar var_174
  loc_BD3899: ImpAdCallFPR4  = IIf(, , )
  loc_BD389E: FLdRfVar var_174
  loc_BD38A1: CStrVarTmp
  loc_BD38A2: FStStr var_90
  loc_BD38A5: FFreeStr var_BC = "": var_C0 = ""
  loc_BD38AE: FFree1Ad var_B4
  loc_BD38B1: FFreeVar var_D0 = "": var_E4 = "": var_104 = "": var_114 = "": var_134 = "": var_154 = "": var_164 = ""
  loc_BD38C4: LitStr "SELECT NumeOrpa, TipoOrpa"
  loc_BD38C7: LitStr " FROM ordenpago"
  loc_BD38CA: ConcatStr
  loc_BD38CB: FStStrNoPop var_BC
  loc_BD38CE: LitStr " WHERE PeriInfo = "
  loc_BD38D1: ConcatStr
  loc_BD38D2: FStStrNoPop var_178
  loc_BD38D5: FLdRfVar var_C0
  loc_BD38D8: FLdPr Me
  loc_BD38DB: VCallAd Control_ID_cboPeriodo
  loc_BD38DE: FStAdFunc var_B4
  loc_BD38E1: FLdPr var_B4
  loc_BD38E4:  = Me.Text
  loc_BD38E9: ILdRf var_C0
  loc_BD38EC: ConcatStr
  loc_BD38ED: FStStrNoPop var_17C
  loc_BD38F0: FLdPr Me
  loc_BD38F3: MemLdStr global_108
  loc_BD38F6: ConcatStr
  loc_BD38F7: FStStrNoPop var_180
  loc_BD38FA: ILdRf var_88
  loc_BD38FD: ConcatStr
  loc_BD38FE: FStStrNoPop var_184
  loc_BD3901: ILdRf var_8C
  loc_BD3904: ConcatStr
  loc_BD3905: FStStrNoPop var_188
  loc_BD3908: ILdRf var_90
  loc_BD390B: ConcatStr
  loc_BD390C: FStStrNoPop var_18C
  loc_BD390F: LitStr " ORDER BY NumeOrpa;"
  loc_BD3912: ConcatStr
  loc_BD3913: FStStrNoPop var_190
  loc_BD3916: FLdPr Me
  loc_BD3919: MemLdRfVar from_stack_1.global_76
  loc_BD391C: NewIfNullPr clsbase
  loc_BD391F: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD3924: FFreeStr var_BC = "": var_178 = "": var_C0 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_BD3939: FFree1Ad var_B4
  loc_BD393C: FLdRfVar var_194
  loc_BD393F: FLdPr Me
  loc_BD3942: MemLdRfVar from_stack_1.global_76
  loc_BD3945: NewIfNullPr clsbase
  loc_BD3948: from_stack_1 = clsbase.RecordCount
  loc_BD394D: ILdRf var_194
  loc_BD3950: LitI4 0
  loc_BD3955: EqI4
  loc_BD3956: BranchF loc_BD3987
  loc_BD3959: ILdRf var_90
  loc_BD395C: LitStr vbNullString
  loc_BD395F: EqStr
  loc_BD3961: BranchF loc_BD3974
  loc_BD3964: LitI4 0
  loc_BD3969: LitStr "No existen registros para el criterio de búsqueda especificado..."
  loc_BD396C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD3971: Branch loc_BD3981
  loc_BD3974: LitI4 0
  loc_BD3979: LitStr "La Orden de Pago NO se encuentra en un Balance Definitivo. Verifique.."
  loc_BD397C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD3981: Branch loc_BD4C05
  loc_BD3984: Branch loc_BD3A83
  loc_BD3987: FLdPr Me
  loc_BD398A: MemLdRfVar from_stack_1.global_76
  loc_BD398D: NewIfNullPr clsbase
  loc_BD3990: Call clsbase.MoveFirst()
  loc_BD3995: FLdRfVar var_B6
  loc_BD3998: FLdPr Me
  loc_BD399B: MemLdRfVar from_stack_1.global_76
  loc_BD399E: NewIfNullPr clsbase
  loc_BD39A1: from_stack_1 = clsbase.EOF
  loc_BD39A6: FLdI2 var_B6
  loc_BD39A9: NotI4
  loc_BD39AA: BranchF loc_BD3A83
  loc_BD39AD: FLdRfVar var_D0
  loc_BD39B0: FLdRfVar var_198
  loc_BD39B3: LitVarStr var_A0, "TipoOrpa"
  loc_BD39B8: PopAdLdVar
  loc_BD39B9: FLdRfVar var_D4
  loc_BD39BC: FLdRfVar var_B4
  loc_BD39BF: FLdPr Me
  loc_BD39C2: MemLdRfVar from_stack_1.global_76
  loc_BD39C5: NewIfNullPr clsbase
  loc_BD39C8: from_stack_1v = clsbase.RsFrmGet()
  loc_BD39CD: FLdPr var_B4
  loc_BD39D0:  = Me.Fields
  loc_BD39D5: FLdPr var_D4
  loc_BD39D8: from_stack_2 = Me.Item(from_stack_1)
  loc_BD39DD: FLdPr var_198
  loc_BD39E0:  = Me.Value
  loc_BD39E5: FLdRfVar var_D0
  loc_BD39E8: LitVarStr var_B0, "Reservada"
  loc_BD39ED: HardType
  loc_BD39EE: EqVarBool
  loc_BD39F0: FFreeAd var_B4 = "": var_D4 = ""
  loc_BD39F9: FFree1Var var_D0 = ""
  loc_BD39FC: BranchF loc_BD3A72
  loc_BD39FF: LitI4 0
  loc_BD3A04: LitVarStr var_B0, "La Orden de Pago "
  loc_BD3A09: FLdRfVar var_D0
  loc_BD3A0C: FLdRfVar var_198
  loc_BD3A0F: LitVarStr var_A0, "NumeOrpa"
  loc_BD3A14: PopAdLdVar
  loc_BD3A15: FLdRfVar var_D4
  loc_BD3A18: FLdRfVar var_B4
  loc_BD3A1B: FLdPr Me
  loc_BD3A1E: MemLdRfVar from_stack_1.global_76
  loc_BD3A21: NewIfNullPr clsbase
  loc_BD3A24: from_stack_1v = clsbase.RsFrmGet()
  loc_BD3A29: FLdPr var_B4
  loc_BD3A2C:  = Me.Fields
  loc_BD3A31: FLdPr var_D4
  loc_BD3A34: from_stack_2 = Me.Item(from_stack_1)
  loc_BD3A39: FLdPr var_198
  loc_BD3A3C:  = Me.Value
  loc_BD3A41: FLdRfVar var_D0
  loc_BD3A44: ConcatVar var_E4
  loc_BD3A48: LitVarStr var_124, " está Reservada. Verifique..."
  loc_BD3A4D: ConcatVar var_F4
  loc_BD3A51: CStrVarVal var_BC
  loc_BD3A55: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD3A5A: FFree1Str var_BC
  loc_BD3A5D: FFreeAd var_B4 = "": var_D4 = ""
  loc_BD3A66: FFreeVar var_D0 = "": var_E4 = ""
  loc_BD3A6F: Branch loc_BD4C05
  loc_BD3A72: FLdPr Me
  loc_BD3A75: MemLdRfVar from_stack_1.global_76
  loc_BD3A78: NewIfNullPr clsbase
  loc_BD3A7B: Call clsbase.MoveSiguiente()
  loc_BD3A80: Branch loc_BD3995
  loc_BD3A83: FLdPr Me
  loc_BD3A86: MemLdRfVar from_stack_1.global_76
  loc_BD3A89: NewIfNullPr clsbase
  loc_BD3A8C: Call clsbase.MoveFirst()
  loc_BD3A91: LitI4 0
  loc_BD3A96: LitI4 1
  loc_BD3A9B: FLdPr Me
  loc_BD3A9E: MemLdRfVar from_stack_1.global_88
  loc_BD3AA1: Redim
  loc_BD3AAB: LitI2_Byte 1
  loc_BD3AAD: FLdPr Me
  loc_BD3AB0: MemLdRfVar from_stack_1.global_92
  loc_BD3AB3: FLdRfVar var_194
  loc_BD3AB6: FLdPr Me
  loc_BD3AB9: MemLdRfVar from_stack_1.global_76
  loc_BD3ABC: NewIfNullPr clsbase
  loc_BD3ABF: from_stack_1 = clsbase.RecordCount
  loc_BD3AC4: ILdRf var_194
  loc_BD3AC7: CI2I4
  loc_BD3AC8: ForI2 var_19C
  loc_BD3ACE: LitI4 0
  loc_BD3AD3: FLdPr Me
  loc_BD3AD6: MemLdI2 global_92
  loc_BD3AD9: CI4UI1
  loc_BD3ADA: FLdPr Me
  loc_BD3ADD: MemLdRfVar from_stack_1.global_88
  loc_BD3AE0: RedimPreserve
  loc_BD3AEA: LitI2_Byte 0
  loc_BD3AEC: FLdPr Me
  loc_BD3AEF: MemLdI2 global_92
  loc_BD3AF2: CI4UI1
  loc_BD3AF3: FLdPr Me
  loc_BD3AF6: MemLdStr global_88
  loc_BD3AF9: Ary1LdPr
  loc_BD3AFA: MemStI2 global_2
  loc_BD3AFD: LitI2_Byte 0
  loc_BD3AFF: FLdPr Me
  loc_BD3B02: MemLdI2 global_92
  loc_BD3B05: CI4UI1
  loc_BD3B06: FLdPr Me
  loc_BD3B09: MemLdStr global_88
  loc_BD3B0C: Ary1LdPr
  loc_BD3B0D: MemStI2 global_0
  loc_BD3B10: LitI2_Byte 0
  loc_BD3B12: FLdPr Me
  loc_BD3B15: MemLdI2 global_92
  loc_BD3B18: CI4UI1
  loc_BD3B19: FLdPr Me
  loc_BD3B1C: MemLdStr global_88
  loc_BD3B1F: Ary1LdPr
  loc_BD3B20: MemStI2 global_4
  loc_BD3B23: FLdRfVar var_D0
  loc_BD3B26: FLdRfVar var_198
  loc_BD3B29: LitVarStr var_A0, "TipoOrpa"
  loc_BD3B2E: PopAdLdVar
  loc_BD3B2F: FLdRfVar var_D4
  loc_BD3B32: FLdRfVar var_B4
  loc_BD3B35: FLdPr Me
  loc_BD3B38: MemLdRfVar from_stack_1.global_76
  loc_BD3B3B: NewIfNullPr clsbase
  loc_BD3B3E: from_stack_1v = clsbase.RsFrmGet()
  loc_BD3B43: FLdPr var_B4
  loc_BD3B46:  = Me.Fields
  loc_BD3B4B: FLdPr var_D4
  loc_BD3B4E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD3B53: FLdPr var_198
  loc_BD3B56:  = Me.Value
  loc_BD3B5B: FLdRfVar var_D0
  loc_BD3B5E: FStVar var_1AC
  loc_BD3B62: FFreeAd var_B4 = "": var_D4 = ""
  loc_BD3B6B: FLdRfVar var_1AC
  loc_BD3B6E: LitVarStr var_A0, "Reservada"
  loc_BD3B73: HardType
  loc_BD3B74: EqVarBool
  loc_BD3B76: BranchF loc_BD3BF3
  loc_BD3B79: LitI2_Byte &HFF
  loc_BD3B7B: FLdPr Me
  loc_BD3B7E: MemLdI2 global_92
  loc_BD3B81: CI4UI1
  loc_BD3B82: FLdPr Me
  loc_BD3B85: MemLdStr global_88
  loc_BD3B88: Ary1LdPr
  loc_BD3B89: MemStI2 global_2
  loc_BD3B8C: LitStr "SELECT '' CucuPers, '' DetaProv"
  loc_BD3B8F: FLdPr Me
  loc_BD3B92: MemLdRfVar from_stack_1.global_80
  loc_BD3B95: NewIfNullPr clsbase
  loc_BD3B98: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD3B9D: Call Proc_211_24_A09C58()
  loc_BD3BA2: FLdPr Me
  loc_BD3BA5: MemLdI2 global_92
  loc_BD3BA8: CI4UI1
  loc_BD3BA9: FLdPr Me
  loc_BD3BAC: MemLdStr global_88
  loc_BD3BAF: Ary1LdPr
  loc_BD3BB0: MemLdI2 global_2
  loc_BD3BB3: BranchF loc_BD3BC9
  loc_BD3BB6: LitI2_Byte 0
  loc_BD3BB8: FLdPr Me
  loc_BD3BBB: MemLdI2 global_92
  loc_BD3BBE: CI4UI1
  loc_BD3BBF: FLdPr Me
  loc_BD3BC2: MemLdStr global_88
  loc_BD3BC5: Ary1LdPr
  loc_BD3BC6: MemStI2 global_56
  loc_BD3BC9: FLdPr Me
  loc_BD3BCC: MemLdI2 global_92
  loc_BD3BCF: CI4UI1
  loc_BD3BD0: FLdPr Me
  loc_BD3BD3: MemLdStr global_88
  loc_BD3BD6: Ary1LdPr
  loc_BD3BD7: MemLdI2 global_2
  loc_BD3BDA: BranchF loc_BD3BF0
  loc_BD3BDD: LitI2_Byte 0
  loc_BD3BDF: FLdPr Me
  loc_BD3BE2: MemLdI2 global_92
  loc_BD3BE5: CI4UI1
  loc_BD3BE6: FLdPr Me
  loc_BD3BE9: MemLdStr global_88
  loc_BD3BEC: Ary1LdPr
  loc_BD3BED: MemStI2 global_58
  loc_BD3BF0: Branch loc_BD4BE4
  loc_BD3BF3: FLdRfVar var_1AC
  loc_BD3BF6: LitVarStr var_A0, "Devengado"
  loc_BD3BFB: HardType
  loc_BD3BFC: EqVarBool
  loc_BD3BFE: BranchF loc_BD44BC
  loc_BD3C01: LitI2_Byte &HFF
  loc_BD3C03: FLdPr Me
  loc_BD3C06: MemLdI2 global_92
  loc_BD3C09: CI4UI1
  loc_BD3C0A: FLdPr Me
  loc_BD3C0D: MemLdStr global_88
  loc_BD3C10: Ary1LdPr
  loc_BD3C11: MemStI2 global_0
  loc_BD3C14: LitStr "SELECT o.*, IFNULL(Sum(MapaImpu),0) Importe, Count(DISTINCT CucuPers) Proveedores"
  loc_BD3C17: LitStr " FROM ordenpago o"
  loc_BD3C1A: ConcatStr
  loc_BD3C1B: FStStrNoPop var_BC
  loc_BD3C1E: LitStr " INNER JOIN imputacion i ON i.PeriInfo = o.PeriInfo AND i.NumeOrpa = o.NumeOrpa AND MapaImpu != 0 AND AjusImpu = 0"
  loc_BD3C21: ConcatStr
  loc_BD3C22: FStStrNoPop var_C0
  loc_BD3C25: LitStr " WHERE o.PeriInfo = "
  loc_BD3C28: ConcatStr
  loc_BD3C29: FStStrNoPop var_17C
  loc_BD3C2C: FLdRfVar var_178
  loc_BD3C2F: FLdPr Me
  loc_BD3C32: VCallAd Control_ID_cboPeriodo
  loc_BD3C35: FStAdFunc var_B4
  loc_BD3C38: FLdPr var_B4
  loc_BD3C3B:  = Me.Text
  loc_BD3C40: ILdRf var_178
  loc_BD3C43: ConcatStr
  loc_BD3C44: FStStrNoPop var_180
  loc_BD3C47: LitStr " AND o.NumeOrpa = "
  loc_BD3C4A: ConcatStr
  loc_BD3C4B: CVarStr var_E4
  loc_BD3C4E: FLdRfVar var_D0
  loc_BD3C51: FLdRfVar var_1B0
  loc_BD3C54: LitVarStr var_A0, "NumeOrpa"
  loc_BD3C59: PopAdLdVar
  loc_BD3C5A: FLdRfVar var_198
  loc_BD3C5D: FLdRfVar var_D4
  loc_BD3C60: FLdPr Me
  loc_BD3C63: MemLdRfVar from_stack_1.global_76
  loc_BD3C66: NewIfNullPr clsbase
  loc_BD3C69: from_stack_1v = clsbase.RsFrmGet()
  loc_BD3C6E: FLdPr var_D4
  loc_BD3C71:  = Me.Fields
  loc_BD3C76: FLdPr var_198
  loc_BD3C79: from_stack_2 = Me.Item(from_stack_1)
  loc_BD3C7E: FLdPr var_1B0
  loc_BD3C81:  = Me.Value
  loc_BD3C86: FLdRfVar var_D0
  loc_BD3C89: ConcatVar var_F4
  loc_BD3C8D: LitVarStr var_B0, " GROUP BY o.PeriInfo, o.NumeOrpa;"
  loc_BD3C92: ConcatVar var_104
  loc_BD3C96: CStrVarVal var_184
  loc_BD3C9A: FLdPr Me
  loc_BD3C9D: MemLdRfVar from_stack_1.global_80
  loc_BD3CA0: NewIfNullPr clsbase
  loc_BD3CA3: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD3CA8: FFreeStr var_BC = "": var_C0 = "": var_17C = "": var_178 = "": var_180 = ""
  loc_BD3CB7: FFreeAd var_B4 = "": var_D4 = "": var_198 = ""
  loc_BD3CC2: FFreeVar var_E4 = "": var_D0 = "": var_F4 = ""
  loc_BD3CCD: Call Proc_211_23_AE27A8()
  loc_BD3CD2: FLdPr Me
  loc_BD3CD5: MemLdI2 global_92
  loc_BD3CD8: CI4UI1
  loc_BD3CD9: FLdPr Me
  loc_BD3CDC: MemLdStr global_88
  loc_BD3CDF: Ary1LdPr
  loc_BD3CE0: MemLdStr global_24
  loc_BD3CE3: LitStr vbNullString
  loc_BD3CE6: NeStr
  loc_BD3CE8: BranchF loc_BD3D03
  loc_BD3CEB: LitI4 0
  loc_BD3CF0: FLdRfVar var_BC
  loc_BD3CF3: Call Proc_211_29_9CB068()
  loc_BD3CF8: ILdRf var_BC
  loc_BD3CFB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD3D00: FFree1Str var_BC
  loc_BD3D03: LitStr "SELECT DISTINCT ld.CucuPers, DetaProv"
  loc_BD3D06: LitStr " FROM liquidacion l"
  loc_BD3D09: ConcatStr
  loc_BD3D0A: FStStrNoPop var_BC
  loc_BD3D0D: LitStr " INNER JOIN imputacion ld ON ld.PeriInfo = l.PeriInfo AND ld.ExpeImpu = l.ExpeImpu AND ld.NumeLiqu = l.NumeLiqu AND ld.NumeOrpa = l.NumeOrpa"
  loc_BD3D10: ConcatStr
  loc_BD3D11: FStStrNoPop var_C0
  loc_BD3D14: LitStr " AND MapaImpu > 0 AND AjusImpu = 0"
  loc_BD3D17: ConcatStr
  loc_BD3D18: FStStrNoPop var_178
  loc_BD3D1B: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = ld.CucuPers"
  loc_BD3D1E: ConcatStr
  loc_BD3D1F: FStStrNoPop var_17C
  loc_BD3D22: LitStr " WHERE l.PeriInfo = "
  loc_BD3D25: ConcatStr
  loc_BD3D26: FStStrNoPop var_184
  loc_BD3D29: FLdRfVar var_180
  loc_BD3D2C: FLdPr Me
  loc_BD3D2F: VCallAd Control_ID_cboPeriodo
  loc_BD3D32: FStAdFunc var_B4
  loc_BD3D35: FLdPr var_B4
  loc_BD3D38:  = Me.Text
  loc_BD3D3D: ILdRf var_180
  loc_BD3D40: ConcatStr
  loc_BD3D41: FStStrNoPop var_188
  loc_BD3D44: LitStr " AND l.NumeOrpa = "
  loc_BD3D47: ConcatStr
  loc_BD3D48: CVarStr var_E4
  loc_BD3D4B: FLdRfVar var_D0
  loc_BD3D4E: FLdRfVar var_1B0
  loc_BD3D51: LitVarStr var_A0, "NumeOrpa"
  loc_BD3D56: PopAdLdVar
  loc_BD3D57: FLdRfVar var_198
  loc_BD3D5A: FLdRfVar var_D4
  loc_BD3D5D: FLdPr Me
  loc_BD3D60: MemLdRfVar from_stack_1.global_76
  loc_BD3D63: NewIfNullPr clsbase
  loc_BD3D66: from_stack_1v = clsbase.RsFrmGet()
  loc_BD3D6B: FLdPr var_D4
  loc_BD3D6E:  = Me.Fields
  loc_BD3D73: FLdPr var_198
  loc_BD3D76: from_stack_2 = Me.Item(from_stack_1)
  loc_BD3D7B: FLdPr var_1B0
  loc_BD3D7E:  = Me.Value
  loc_BD3D83: FLdRfVar var_D0
  loc_BD3D86: ConcatVar var_F4
  loc_BD3D8A: LitVarStr var_B0, " ORDER BY DetaProv, CucuPers;"
  loc_BD3D8F: ConcatVar var_104
  loc_BD3D93: CStrVarVal var_18C
  loc_BD3D97: FLdPr Me
  loc_BD3D9A: MemLdRfVar from_stack_1.global_80
  loc_BD3D9D: NewIfNullPr clsbase
  loc_BD3DA0: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD3DA5: FFreeStr var_BC = "": var_C0 = "": var_178 = "": var_17C = "": var_184 = "": var_180 = "": var_188 = ""
  loc_BD3DB8: FFreeAd var_B4 = "": var_D4 = "": var_198 = ""
  loc_BD3DC3: FFreeVar var_E4 = "": var_D0 = "": var_F4 = ""
  loc_BD3DCE: Call Proc_211_24_A09C58()
  loc_BD3DD3: FLdPr Me
  loc_BD3DD6: MemLdRfVar from_stack_1.global_80
  loc_BD3DD9: NewIfNullAd
  loc_BD3DDC: FStAd var_1B4 
  loc_BD3DE0: FLdRfVar var_B6
  loc_BD3DE3: FLdPr Me
  loc_BD3DE6: VCallAd Control_ID_chkSintetico
  loc_BD3DE9: FStAdFunc var_B4
  loc_BD3DEC: FLdPr var_B4
  loc_BD3DEF:  = Me.Value
  loc_BD3DF4: FLdI2 var_B6
  loc_BD3DF7: CI4UI1
  loc_BD3DF8: LitI4 1
  loc_BD3DFD: EqI4
  loc_BD3DFE: FFree1Ad var_B4
  loc_BD3E01: BranchF loc_BD3EF2
  loc_BD3E04: LitStr "SELECT i.CucuPers, DetaProv, i.CodiPart, DetaPart, i.CodiOrga, DetaOrga, i.ExorImpu, NumeFact, Sum(MapaImpu) MapaImpu"
  loc_BD3E07: LitStr ", (SELECT Count(Distinct Concat(i2.CodiPart,i2.CodiOrga,i2.NumeFact,i2.ExorImpu)) FROM imputacion i2 WHERE i2.PeriInfo = i.PeriInfo AND i2.NumeOrpa = i.NumeOrpa AND i2.CucuPers = i.CucuPers) Rowspan"
  loc_BD3E0A: ConcatStr
  loc_BD3E0B: FStStrNoPop var_BC
  loc_BD3E0E: LitStr " FROM ordenpago o"
  loc_BD3E11: ConcatStr
  loc_BD3E12: FStStrNoPop var_C0
  loc_BD3E15: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = o.PeriInfo AND l.ExpeImpu = o.ExpeImpu AND l.NumeLiqu = o.NumeLiqu"
  loc_BD3E18: ConcatStr
  loc_BD3E19: FStStrNoPop var_178
  loc_BD3E1C: LitStr " INNER JOIN imputacion i ON i.PeriInfo = l.PeriInfo AND i.ExpeImpu = l.ExpeImpu AND i.NumeLiqu = l.NumeLiqu AND MapaImpu != 0 AND AjusImpu = 0"
  loc_BD3E1F: ConcatStr
  loc_BD3E20: FStStrNoPop var_17C
  loc_BD3E23: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_BD3E26: ConcatStr
  loc_BD3E27: FStStrNoPop var_180
  loc_BD3E2A: LitStr " INNER JOIN infogov.organigrama orga ON orga.PeriInfo = i.PeriInfo AND orga.CodiOrga = i.CodiOrga"
  loc_BD3E2D: ConcatStr
  loc_BD3E2E: FStStrNoPop var_184
  loc_BD3E31: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_BD3E34: ConcatStr
  loc_BD3E35: FStStrNoPop var_188
  loc_BD3E38: LitStr " WHERE o.PeriInfo = "
  loc_BD3E3B: ConcatStr
  loc_BD3E3C: FStStrNoPop var_190
  loc_BD3E3F: FLdRfVar var_18C
  loc_BD3E42: FLdPr Me
  loc_BD3E45: VCallAd Control_ID_cboPeriodo
  loc_BD3E48: FStAdFunc var_B4
  loc_BD3E4B: FLdPr var_B4
  loc_BD3E4E:  = Me.Text
  loc_BD3E53: ILdRf var_18C
  loc_BD3E56: ConcatStr
  loc_BD3E57: FStStrNoPop var_1B8
  loc_BD3E5A: LitStr " AND o.NumeOrpa = "
  loc_BD3E5D: ConcatStr
  loc_BD3E5E: CVarStr var_E4
  loc_BD3E61: FLdRfVar var_D0
  loc_BD3E64: FLdRfVar var_1B0
  loc_BD3E67: LitVarStr var_A0, "NumeOrpa"
  loc_BD3E6C: PopAdLdVar
  loc_BD3E6D: FLdRfVar var_198
  loc_BD3E70: FLdRfVar var_D4
  loc_BD3E73: FLdPr Me
  loc_BD3E76: MemLdRfVar from_stack_1.global_76
  loc_BD3E79: NewIfNullPr clsbase
  loc_BD3E7C: from_stack_1v = clsbase.RsFrmGet()
  loc_BD3E81: FLdPr var_D4
  loc_BD3E84:  = Me.Fields
  loc_BD3E89: FLdPr var_198
  loc_BD3E8C: from_stack_2 = Me.Item(from_stack_1)
  loc_BD3E91: FLdPr var_1B0
  loc_BD3E94:  = Me.Value
  loc_BD3E99: FLdRfVar var_D0
  loc_BD3E9C: ConcatVar var_F4
  loc_BD3EA0: LitVarStr var_B0, " GROUP BY o.PeriInfo, o.NumeOrpa, i.CucuPers, i.CodiPart, i.CodiOrga, i.ExorImpu, NumeFact"
  loc_BD3EA5: ConcatVar var_104
  loc_BD3EA9: LitVarStr var_124, " ORDER BY DetaProv, i.CucuPers, NumeFact;"
  loc_BD3EAE: ConcatVar var_114
  loc_BD3EB2: CStrVarVal var_1BC
  loc_BD3EB6: FLdPr var_1B4
  loc_BD3EB9: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD3EBE: FFreeStr var_BC = "": var_C0 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = "": var_18C = "": var_1B8 = ""
  loc_BD3ED7: FFreeAd var_B4 = "": var_D4 = "": var_198 = ""
  loc_BD3EE2: FFreeVar var_E4 = "": var_D0 = "": var_F4 = "": var_104 = ""
  loc_BD3EEF: Branch loc_BD3FD2
  loc_BD3EF2: LitStr "SELECT i.CucuPers, DetaProv, i.CodiPart, DetaPart, i.CodiOrga, i.ExorImpu, DetaOrga, NumeFact, MapaImpu"
  loc_BD3EF5: LitStr ", 0 Rowspan"
  loc_BD3EF8: ConcatStr
  loc_BD3EF9: FStStrNoPop var_BC
  loc_BD3EFC: LitStr " FROM ordenpago o"
  loc_BD3EFF: ConcatStr
  loc_BD3F00: FStStrNoPop var_C0
  loc_BD3F03: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = o.PeriInfo AND l.ExpeImpu = o.ExpeImpu AND l.NumeLiqu = o.NumeLiqu"
  loc_BD3F06: ConcatStr
  loc_BD3F07: FStStrNoPop var_178
  loc_BD3F0A: LitStr " INNER JOIN imputacion i ON i.PeriInfo = l.PeriInfo AND i.NumeOrpa = l.NumeOrpa AND MapaImpu != 0 AND AjusImpu = 0"
  loc_BD3F0D: ConcatStr
  loc_BD3F0E: FStStrNoPop var_17C
  loc_BD3F11: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_BD3F14: ConcatStr
  loc_BD3F15: FStStrNoPop var_180
  loc_BD3F18: LitStr " INNER JOIN infogov.organigrama orga ON orga.PeriInfo = i.PeriInfo AND orga.CodiOrga = i.CodiOrga"
  loc_BD3F1B: ConcatStr
  loc_BD3F1C: FStStrNoPop var_184
  loc_BD3F1F: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_BD3F22: ConcatStr
  loc_BD3F23: FStStrNoPop var_188
  loc_BD3F26: LitStr " WHERE o.PeriInfo = "
  loc_BD3F29: ConcatStr
  loc_BD3F2A: FStStrNoPop var_190
  loc_BD3F2D: FLdRfVar var_18C
  loc_BD3F30: FLdPr Me
  loc_BD3F33: VCallAd Control_ID_cboPeriodo
  loc_BD3F36: FStAdFunc var_B4
  loc_BD3F39: FLdPr var_B4
  loc_BD3F3C:  = Me.Text
  loc_BD3F41: ILdRf var_18C
  loc_BD3F44: ConcatStr
  loc_BD3F45: FStStrNoPop var_1B8
  loc_BD3F48: LitStr " AND o.NumeOrpa = "
  loc_BD3F4B: ConcatStr
  loc_BD3F4C: CVarStr var_E4
  loc_BD3F4F: FLdRfVar var_D0
  loc_BD3F52: FLdRfVar var_1B0
  loc_BD3F55: LitVarStr var_A0, "NumeOrpa"
  loc_BD3F5A: PopAdLdVar
  loc_BD3F5B: FLdRfVar var_198
  loc_BD3F5E: FLdRfVar var_D4
  loc_BD3F61: FLdPr Me
  loc_BD3F64: MemLdRfVar from_stack_1.global_76
  loc_BD3F67: NewIfNullPr clsbase
  loc_BD3F6A: from_stack_1v = clsbase.RsFrmGet()
  loc_BD3F6F: FLdPr var_D4
  loc_BD3F72:  = Me.Fields
  loc_BD3F77: FLdPr var_198
  loc_BD3F7A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD3F7F: FLdPr var_1B0
  loc_BD3F82:  = Me.Value
  loc_BD3F87: FLdRfVar var_D0
  loc_BD3F8A: ConcatVar var_F4
  loc_BD3F8E: LitVarStr var_B0, " ORDER BY DetaProv, i.CucuPers, i.ExorImpu, NumeFact;"
  loc_BD3F93: ConcatVar var_104
  loc_BD3F97: CStrVarVal var_1BC
  loc_BD3F9B: FLdPr var_1B4
  loc_BD3F9E: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD3FA3: FFreeStr var_BC = "": var_C0 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_190 = "": var_18C = "": var_1B8 = ""
  loc_BD3FBC: FFreeAd var_B4 = "": var_D4 = "": var_198 = ""
  loc_BD3FC7: FFreeVar var_E4 = "": var_D0 = "": var_F4 = ""
  loc_BD3FD2: FLdRfVar var_194
  loc_BD3FD5: FLdPr var_1B4
  loc_BD3FD8: from_stack_1 = clsbase.RecordCount
  loc_BD3FDD: LitI4 0
  loc_BD3FE2: ILdRf var_194
  loc_BD3FE5: FLdPr Me
  loc_BD3FE8: MemLdI2 global_92
  loc_BD3FEB: CI4UI1
  loc_BD3FEC: FLdPr Me
  loc_BD3FEF: MemLdStr global_88
  loc_BD3FF2: Ary1LdPr
  loc_BD3FF3: MemLdRfVar from_stack_1.htmFile
  loc_BD3FF6: RedimPreserve
  loc_BD4000: FLdPr var_1B4
  loc_BD4003: Call clsbase.MoveFirst()
  loc_BD4008: LitI2_Byte 1
  loc_BD400A: FLdPr Me
  loc_BD400D: MemLdRfVar from_stack_1.global_94
  loc_BD4010: FLdPr Me
  loc_BD4013: MemLdI2 global_92
  loc_BD4016: CI4UI1
  loc_BD4017: FLdPr Me
  loc_BD401A: MemLdStr global_88
  loc_BD401D: Ary1LdPr
  loc_BD401E: MemLdStr htmFile
  loc_BD4021: LitI2_Byte 1
  loc_BD4023: FnUBound
  loc_BD4025: CI2I4
  loc_BD4026: ForI2 var_1C0
  loc_BD402C: FLdRfVar var_198
  loc_BD402F: LitVarStr var_A0, "CucuPers"
  loc_BD4034: PopAdLdVar
  loc_BD4035: FLdRfVar var_D4
  loc_BD4038: FLdRfVar var_B4
  loc_BD403B: FLdPr var_1B4
  loc_BD403E: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4043: FLdPr var_B4
  loc_BD4046:  = Me.Fields
  loc_BD404B: FLdPr var_D4
  loc_BD404E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4053: LitI2_Byte 0
  loc_BD4055: LitVar_Missing var_E4
  loc_BD4058: LitI2_Byte 0
  loc_BD405A: FLdZeroAd var_198
  loc_BD405D: CVarAd
  loc_BD4061: PopAdLdVar
  loc_BD4062: FLdPr Me
  loc_BD4065: MemLdI2 global_94
  loc_BD4068: CI4UI1
  loc_BD4069: FLdPr Me
  loc_BD406C: MemLdI2 global_92
  loc_BD406F: CI4UI1
  loc_BD4070: FLdPr Me
  loc_BD4073: MemLdStr global_88
  loc_BD4076: AryLock
  loc_BD4079: Ary1LdPr
  loc_BD407A: MemLdStr htmFile
  loc_BD407D: AryLock
  loc_BD4080: Ary1LdPr
  loc_BD4081: MemLdRfVar from_stack_1.global_0
  loc_BD4084: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4089: AryUnlock
  loc_BD408C: AryUnlock
  loc_BD408F: FFreeAd var_B4 = ""
  loc_BD4096: FFreeVar var_D0 = ""
  loc_BD409D: FLdRfVar var_198
  loc_BD40A0: LitVarStr var_A0, "DetaProv"
  loc_BD40A5: PopAdLdVar
  loc_BD40A6: FLdRfVar var_D4
  loc_BD40A9: FLdRfVar var_B4
  loc_BD40AC: FLdPr var_1B4
  loc_BD40AF: from_stack_1v = clsbase.RsFrmGet()
  loc_BD40B4: FLdPr var_B4
  loc_BD40B7:  = Me.Fields
  loc_BD40BC: FLdPr var_D4
  loc_BD40BF: from_stack_2 = Me.Item(from_stack_1)
  loc_BD40C4: LitI2_Byte 0
  loc_BD40C6: LitVar_Missing var_E4
  loc_BD40C9: LitI2_Byte 0
  loc_BD40CB: FLdZeroAd var_198
  loc_BD40CE: CVarAd
  loc_BD40D2: PopAdLdVar
  loc_BD40D3: FLdPr Me
  loc_BD40D6: MemLdI2 global_94
  loc_BD40D9: CI4UI1
  loc_BD40DA: FLdPr Me
  loc_BD40DD: MemLdI2 global_92
  loc_BD40E0: CI4UI1
  loc_BD40E1: FLdPr Me
  loc_BD40E4: MemLdStr global_88
  loc_BD40E7: AryLock
  loc_BD40EA: Ary1LdPr
  loc_BD40EB: MemLdStr htmFile
  loc_BD40EE: AryLock
  loc_BD40F1: Ary1LdPr
  loc_BD40F2: MemLdRfVar from_stack_1.global_4
  loc_BD40F5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD40FA: AryUnlock
  loc_BD40FD: AryUnlock
  loc_BD4100: FFreeAd var_B4 = ""
  loc_BD4107: FFreeVar var_D0 = ""
  loc_BD410E: FLdRfVar var_198
  loc_BD4111: LitVarStr var_A0, "CodiPart"
  loc_BD4116: PopAdLdVar
  loc_BD4117: FLdRfVar var_D4
  loc_BD411A: FLdRfVar var_B4
  loc_BD411D: FLdPr var_1B4
  loc_BD4120: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4125: FLdPr var_B4
  loc_BD4128:  = Me.Fields
  loc_BD412D: FLdPr var_D4
  loc_BD4130: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4135: LitI2_Byte 0
  loc_BD4137: LitVar_Missing var_E4
  loc_BD413A: LitI2_Byte 0
  loc_BD413C: FLdZeroAd var_198
  loc_BD413F: CVarAd
  loc_BD4143: PopAdLdVar
  loc_BD4144: FLdPr Me
  loc_BD4147: MemLdI2 global_94
  loc_BD414A: CI4UI1
  loc_BD414B: FLdPr Me
  loc_BD414E: MemLdI2 global_92
  loc_BD4151: CI4UI1
  loc_BD4152: FLdPr Me
  loc_BD4155: MemLdStr global_88
  loc_BD4158: AryLock
  loc_BD415B: Ary1LdPr
  loc_BD415C: MemLdStr htmFile
  loc_BD415F: AryLock
  loc_BD4162: Ary1LdPr
  loc_BD4163: MemLdRfVar from_stack_1.global_8
  loc_BD4166: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD416B: AryUnlock
  loc_BD416E: AryUnlock
  loc_BD4171: FFreeAd var_B4 = ""
  loc_BD4178: FFreeVar var_D0 = ""
  loc_BD417F: FLdRfVar var_198
  loc_BD4182: LitVarStr var_A0, "DetaPart"
  loc_BD4187: PopAdLdVar
  loc_BD4188: FLdRfVar var_D4
  loc_BD418B: FLdRfVar var_B4
  loc_BD418E: FLdPr var_1B4
  loc_BD4191: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4196: FLdPr var_B4
  loc_BD4199:  = Me.Fields
  loc_BD419E: FLdPr var_D4
  loc_BD41A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BD41A6: LitI2_Byte 0
  loc_BD41A8: LitVar_Missing var_E4
  loc_BD41AB: LitI2_Byte 0
  loc_BD41AD: FLdZeroAd var_198
  loc_BD41B0: CVarAd
  loc_BD41B4: PopAdLdVar
  loc_BD41B5: FLdPr Me
  loc_BD41B8: MemLdI2 global_94
  loc_BD41BB: CI4UI1
  loc_BD41BC: FLdPr Me
  loc_BD41BF: MemLdI2 global_92
  loc_BD41C2: CI4UI1
  loc_BD41C3: FLdPr Me
  loc_BD41C6: MemLdStr global_88
  loc_BD41C9: AryLock
  loc_BD41CC: Ary1LdPr
  loc_BD41CD: MemLdStr htmFile
  loc_BD41D0: AryLock
  loc_BD41D3: Ary1LdPr
  loc_BD41D4: MemLdRfVar from_stack_1.global_12
  loc_BD41D7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD41DC: AryUnlock
  loc_BD41DF: AryUnlock
  loc_BD41E2: FFreeAd var_B4 = ""
  loc_BD41E9: FFreeVar var_D0 = ""
  loc_BD41F0: FLdRfVar var_198
  loc_BD41F3: LitVarStr var_A0, "CodiOrga"
  loc_BD41F8: PopAdLdVar
  loc_BD41F9: FLdRfVar var_D4
  loc_BD41FC: FLdRfVar var_B4
  loc_BD41FF: FLdPr var_1B4
  loc_BD4202: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4207: FLdPr var_B4
  loc_BD420A:  = Me.Fields
  loc_BD420F: FLdPr var_D4
  loc_BD4212: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4217: LitI2_Byte 0
  loc_BD4219: LitVar_Missing var_E4
  loc_BD421C: LitI2_Byte 0
  loc_BD421E: FLdZeroAd var_198
  loc_BD4221: CVarAd
  loc_BD4225: PopAdLdVar
  loc_BD4226: FLdPr Me
  loc_BD4229: MemLdI2 global_94
  loc_BD422C: CI4UI1
  loc_BD422D: FLdPr Me
  loc_BD4230: MemLdI2 global_92
  loc_BD4233: CI4UI1
  loc_BD4234: FLdPr Me
  loc_BD4237: MemLdStr global_88
  loc_BD423A: AryLock
  loc_BD423D: Ary1LdPr
  loc_BD423E: MemLdStr htmFile
  loc_BD4241: AryLock
  loc_BD4244: Ary1LdPr
  loc_BD4245: MemLdRfVar from_stack_1.global_16
  loc_BD4248: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD424D: AryUnlock
  loc_BD4250: AryUnlock
  loc_BD4253: FFreeAd var_B4 = ""
  loc_BD425A: FFreeVar var_D0 = ""
  loc_BD4261: FLdRfVar var_198
  loc_BD4264: LitVarStr var_A0, "DetaOrga"
  loc_BD4269: PopAdLdVar
  loc_BD426A: FLdRfVar var_D4
  loc_BD426D: FLdRfVar var_B4
  loc_BD4270: FLdPr var_1B4
  loc_BD4273: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4278: FLdPr var_B4
  loc_BD427B:  = Me.Fields
  loc_BD4280: FLdPr var_D4
  loc_BD4283: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4288: LitI2_Byte 0
  loc_BD428A: LitVar_Missing var_E4
  loc_BD428D: LitI2_Byte 0
  loc_BD428F: FLdZeroAd var_198
  loc_BD4292: CVarAd
  loc_BD4296: PopAdLdVar
  loc_BD4297: FLdPr Me
  loc_BD429A: MemLdI2 global_94
  loc_BD429D: CI4UI1
  loc_BD429E: FLdPr Me
  loc_BD42A1: MemLdI2 global_92
  loc_BD42A4: CI4UI1
  loc_BD42A5: FLdPr Me
  loc_BD42A8: MemLdStr global_88
  loc_BD42AB: AryLock
  loc_BD42AE: Ary1LdPr
  loc_BD42AF: MemLdStr htmFile
  loc_BD42B2: AryLock
  loc_BD42B5: Ary1LdPr
  loc_BD42B6: MemLdRfVar from_stack_1.global_20
  loc_BD42B9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD42BE: AryUnlock
  loc_BD42C1: AryUnlock
  loc_BD42C4: FFreeAd var_B4 = ""
  loc_BD42CB: FFreeVar var_D0 = ""
  loc_BD42D2: FLdRfVar var_198
  loc_BD42D5: LitVarStr var_A0, "ExorImpu"
  loc_BD42DA: PopAdLdVar
  loc_BD42DB: FLdRfVar var_D4
  loc_BD42DE: FLdRfVar var_B4
  loc_BD42E1: FLdPr var_1B4
  loc_BD42E4: from_stack_1v = clsbase.RsFrmGet()
  loc_BD42E9: FLdPr var_B4
  loc_BD42EC:  = Me.Fields
  loc_BD42F1: FLdPr var_D4
  loc_BD42F4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD42F9: LitI2_Byte 0
  loc_BD42FB: LitVar_Missing var_E4
  loc_BD42FE: LitI2_Byte 0
  loc_BD4300: FLdZeroAd var_198
  loc_BD4303: CVarAd
  loc_BD4307: PopAdLdVar
  loc_BD4308: FLdPr Me
  loc_BD430B: MemLdI2 global_94
  loc_BD430E: CI4UI1
  loc_BD430F: FLdPr Me
  loc_BD4312: MemLdI2 global_92
  loc_BD4315: CI4UI1
  loc_BD4316: FLdPr Me
  loc_BD4319: MemLdStr global_88
  loc_BD431C: AryLock
  loc_BD431F: Ary1LdPr
  loc_BD4320: MemLdStr htmFile
  loc_BD4323: AryLock
  loc_BD4326: Ary1LdPr
  loc_BD4327: MemLdRfVar from_stack_1.global_24
  loc_BD432A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD432F: AryUnlock
  loc_BD4332: AryUnlock
  loc_BD4335: FFreeAd var_B4 = ""
  loc_BD433C: FFreeVar var_D0 = ""
  loc_BD4343: FLdRfVar var_198
  loc_BD4346: LitVarStr var_A0, "NumeFact"
  loc_BD434B: PopAdLdVar
  loc_BD434C: FLdRfVar var_D4
  loc_BD434F: FLdRfVar var_B4
  loc_BD4352: FLdPr var_1B4
  loc_BD4355: from_stack_1v = clsbase.RsFrmGet()
  loc_BD435A: FLdPr var_B4
  loc_BD435D:  = Me.Fields
  loc_BD4362: FLdPr var_D4
  loc_BD4365: from_stack_2 = Me.Item(from_stack_1)
  loc_BD436A: LitI2_Byte 0
  loc_BD436C: LitVar_Missing var_E4
  loc_BD436F: LitI2_Byte 0
  loc_BD4371: FLdZeroAd var_198
  loc_BD4374: CVarAd
  loc_BD4378: PopAdLdVar
  loc_BD4379: FLdPr Me
  loc_BD437C: MemLdI2 global_94
  loc_BD437F: CI4UI1
  loc_BD4380: FLdPr Me
  loc_BD4383: MemLdI2 global_92
  loc_BD4386: CI4UI1
  loc_BD4387: FLdPr Me
  loc_BD438A: MemLdStr global_88
  loc_BD438D: AryLock
  loc_BD4390: Ary1LdPr
  loc_BD4391: MemLdStr htmFile
  loc_BD4394: AryLock
  loc_BD4397: Ary1LdPr
  loc_BD4398: MemLdRfVar from_stack_1.global_40
  loc_BD439B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD43A0: AryUnlock
  loc_BD43A3: AryUnlock
  loc_BD43A6: FFreeAd var_B4 = ""
  loc_BD43AD: FFreeVar var_D0 = ""
  loc_BD43B4: FLdRfVar var_198
  loc_BD43B7: LitVarStr var_A0, "MapaImpu"
  loc_BD43BC: PopAdLdVar
  loc_BD43BD: FLdRfVar var_D4
  loc_BD43C0: FLdRfVar var_B4
  loc_BD43C3: FLdPr var_1B4
  loc_BD43C6: from_stack_1v = clsbase.RsFrmGet()
  loc_BD43CB: FLdPr var_B4
  loc_BD43CE:  = Me.Fields
  loc_BD43D3: FLdPr var_D4
  loc_BD43D6: from_stack_2 = Me.Item(from_stack_1)
  loc_BD43DB: LitI2_Byte 0
  loc_BD43DD: LitVar_Missing var_E4
  loc_BD43E0: LitI2_Byte &HFF
  loc_BD43E2: FLdZeroAd var_198
  loc_BD43E5: CVarAd
  loc_BD43E9: PopAdLdVar
  loc_BD43EA: FLdPr Me
  loc_BD43ED: MemLdI2 global_94
  loc_BD43F0: CI4UI1
  loc_BD43F1: FLdPr Me
  loc_BD43F4: MemLdI2 global_92
  loc_BD43F7: CI4UI1
  loc_BD43F8: FLdPr Me
  loc_BD43FB: MemLdStr global_88
  loc_BD43FE: AryLock
  loc_BD4401: Ary1LdPr
  loc_BD4402: MemLdStr htmFile
  loc_BD4405: AryLock
  loc_BD4408: Ary1LdPr
  loc_BD4409: MemLdRfVar from_stack_1.global_44
  loc_BD440C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4411: AryUnlock
  loc_BD4414: AryUnlock
  loc_BD4417: FFreeAd var_B4 = ""
  loc_BD441E: FFreeVar var_D0 = ""
  loc_BD4425: FLdRfVar var_198
  loc_BD4428: LitVarStr var_A0, "RowSpan"
  loc_BD442D: PopAdLdVar
  loc_BD442E: FLdRfVar var_D4
  loc_BD4431: FLdRfVar var_B4
  loc_BD4434: FLdPr var_1B4
  loc_BD4437: from_stack_1v = clsbase.RsFrmGet()
  loc_BD443C: FLdPr var_B4
  loc_BD443F:  = Me.Fields
  loc_BD4444: FLdPr var_D4
  loc_BD4447: from_stack_2 = Me.Item(from_stack_1)
  loc_BD444C: LitI2_Byte 0
  loc_BD444E: LitVar_Missing var_E4
  loc_BD4451: LitI2_Byte 0
  loc_BD4453: FLdZeroAd var_198
  loc_BD4456: CVarAd
  loc_BD445A: PopAdLdVar
  loc_BD445B: FLdPr Me
  loc_BD445E: MemLdI2 global_94
  loc_BD4461: CI4UI1
  loc_BD4462: FLdPr Me
  loc_BD4465: MemLdI2 global_92
  loc_BD4468: CI4UI1
  loc_BD4469: FLdPr Me
  loc_BD446C: MemLdStr global_88
  loc_BD446F: AryLock
  loc_BD4472: Ary1LdPr
  loc_BD4473: MemLdStr htmFile
  loc_BD4476: AryLock
  loc_BD4479: Ary1LdPr
  loc_BD447A: MemLdRfVar from_stack_1.global_48
  loc_BD447D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4482: AryUnlock
  loc_BD4485: AryUnlock
  loc_BD4488: FFreeAd var_B4 = ""
  loc_BD448F: FFreeVar var_D0 = ""
  loc_BD4496: FLdPr var_1B4
  loc_BD4499: Call clsbase.MoveSiguiente()
  loc_BD449E: FLdPr Me
  loc_BD44A1: MemLdRfVar from_stack_1.global_94
  loc_BD44A4: NextI2 var_1C0, loc_BD402C
  loc_BD44A9: LitNothing
  loc_BD44AB: FStAd var_1B4 
  loc_BD44AF: Call Proc_211_27_B08674()
  loc_BD44B4: Call Proc_211_28_B70B38()
  loc_BD44B9: Branch loc_BD4BE4
  loc_BD44BC: FLdRfVar var_1AC
  loc_BD44BF: LitVarStr var_A0, "Debito"
  loc_BD44C4: HardType
  loc_BD44C5: EqVarBool
  loc_BD44C7: BranchF loc_BD4BE4
  loc_BD44CA: LitI2_Byte &HFF
  loc_BD44CC: FLdPr Me
  loc_BD44CF: MemLdI2 global_92
  loc_BD44D2: CI4UI1
  loc_BD44D3: FLdPr Me
  loc_BD44D6: MemLdStr global_88
  loc_BD44D9: Ary1LdPr
  loc_BD44DA: MemStI2 global_4
  loc_BD44DD: LitStr "SELECT o.*, Sum(ImpoImpu) Importe, Count(DISTINCT CucuPers) Proveedores"
  loc_BD44E0: LitStr " FROM ordenpago o"
  loc_BD44E3: ConcatStr
  loc_BD44E4: FStStrNoPop var_BC
  loc_BD44E7: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu AND ld.FeanLide IS NULL"
  loc_BD44EA: ConcatStr
  loc_BD44EB: FStStrNoPop var_C0
  loc_BD44EE: LitStr " WHERE o.PeriInfo = "
  loc_BD44F1: ConcatStr
  loc_BD44F2: FStStrNoPop var_17C
  loc_BD44F5: FLdRfVar var_178
  loc_BD44F8: FLdPr Me
  loc_BD44FB: VCallAd Control_ID_cboPeriodo
  loc_BD44FE: FStAdFunc var_B4
  loc_BD4501: FLdPr var_B4
  loc_BD4504:  = Me.Text
  loc_BD4509: ILdRf var_178
  loc_BD450C: ConcatStr
  loc_BD450D: FStStrNoPop var_180
  loc_BD4510: LitStr " AND o.NumeOrpa = "
  loc_BD4513: ConcatStr
  loc_BD4514: CVarStr var_E4
  loc_BD4517: FLdRfVar var_D0
  loc_BD451A: FLdRfVar var_1B0
  loc_BD451D: LitVarStr var_A0, "NumeOrpa"
  loc_BD4522: PopAdLdVar
  loc_BD4523: FLdRfVar var_198
  loc_BD4526: FLdRfVar var_D4
  loc_BD4529: FLdPr Me
  loc_BD452C: MemLdRfVar from_stack_1.global_76
  loc_BD452F: NewIfNullPr clsbase
  loc_BD4532: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4537: FLdPr var_D4
  loc_BD453A:  = Me.Fields
  loc_BD453F: FLdPr var_198
  loc_BD4542: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4547: FLdPr var_1B0
  loc_BD454A:  = Me.Value
  loc_BD454F: FLdRfVar var_D0
  loc_BD4552: ConcatVar var_F4
  loc_BD4556: LitVarStr var_B0, " GROUP BY o.PeriInfo, o.NumeOrpa;"
  loc_BD455B: ConcatVar var_104
  loc_BD455F: CStrVarVal var_184
  loc_BD4563: FLdPr Me
  loc_BD4566: MemLdRfVar from_stack_1.global_80
  loc_BD4569: NewIfNullPr clsbase
  loc_BD456C: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD4571: FFreeStr var_BC = "": var_C0 = "": var_17C = "": var_178 = "": var_180 = ""
  loc_BD4580: FFreeAd var_B4 = "": var_D4 = "": var_198 = ""
  loc_BD458B: FFreeVar var_E4 = "": var_D0 = "": var_F4 = ""
  loc_BD4596: Call Proc_211_23_AE27A8()
  loc_BD459B: FLdPr Me
  loc_BD459E: MemLdI2 global_92
  loc_BD45A1: CI4UI1
  loc_BD45A2: FLdPr Me
  loc_BD45A5: MemLdStr global_88
  loc_BD45A8: Ary1LdPr
  loc_BD45A9: MemLdStr global_24
  loc_BD45AC: LitStr vbNullString
  loc_BD45AF: NeStr
  loc_BD45B1: BranchF loc_BD45CC
  loc_BD45B4: LitI4 0
  loc_BD45B9: FLdRfVar var_BC
  loc_BD45BC: Call Proc_211_29_9CB068()
  loc_BD45C1: ILdRf var_BC
  loc_BD45C4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD45C9: FFree1Str var_BC
  loc_BD45CC: LitStr "SELECT DISTINCT ld.CucuPers, DetaProv"
  loc_BD45CF: LitStr " FROM ordenpago o"
  loc_BD45D2: ConcatStr
  loc_BD45D3: FStStrNoPop var_BC
  loc_BD45D6: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu AND ld.FeanLide IS NULL"
  loc_BD45D9: ConcatStr
  loc_BD45DA: FStStrNoPop var_C0
  loc_BD45DD: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = ld.CucuPers"
  loc_BD45E0: ConcatStr
  loc_BD45E1: FStStrNoPop var_178
  loc_BD45E4: LitStr " WHERE o.PeriInfo = "
  loc_BD45E7: ConcatStr
  loc_BD45E8: FStStrNoPop var_180
  loc_BD45EB: FLdRfVar var_17C
  loc_BD45EE: FLdPr Me
  loc_BD45F1: VCallAd Control_ID_cboPeriodo
  loc_BD45F4: FStAdFunc var_B4
  loc_BD45F7: FLdPr var_B4
  loc_BD45FA:  = Me.Text
  loc_BD45FF: ILdRf var_17C
  loc_BD4602: ConcatStr
  loc_BD4603: FStStrNoPop var_184
  loc_BD4606: LitStr " AND o.NumeOrpa = "
  loc_BD4609: ConcatStr
  loc_BD460A: CVarStr var_E4
  loc_BD460D: FLdRfVar var_D0
  loc_BD4610: FLdRfVar var_1B0
  loc_BD4613: LitVarStr var_A0, "NumeOrpa"
  loc_BD4618: PopAdLdVar
  loc_BD4619: FLdRfVar var_198
  loc_BD461C: FLdRfVar var_D4
  loc_BD461F: FLdPr Me
  loc_BD4622: MemLdRfVar from_stack_1.global_76
  loc_BD4625: NewIfNullPr clsbase
  loc_BD4628: from_stack_1v = clsbase.RsFrmGet()
  loc_BD462D: FLdPr var_D4
  loc_BD4630:  = Me.Fields
  loc_BD4635: FLdPr var_198
  loc_BD4638: from_stack_2 = Me.Item(from_stack_1)
  loc_BD463D: FLdPr var_1B0
  loc_BD4640:  = Me.Value
  loc_BD4645: FLdRfVar var_D0
  loc_BD4648: ConcatVar var_F4
  loc_BD464C: LitVarStr var_B0, " ORDER BY DetaProv, CucuPers;"
  loc_BD4651: ConcatVar var_104
  loc_BD4655: CStrVarVal var_188
  loc_BD4659: FLdPr Me
  loc_BD465C: MemLdRfVar from_stack_1.global_80
  loc_BD465F: NewIfNullPr clsbase
  loc_BD4662: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD4667: FFreeStr var_BC = "": var_C0 = "": var_178 = "": var_180 = "": var_17C = "": var_184 = ""
  loc_BD4678: FFreeAd var_B4 = "": var_D4 = "": var_198 = ""
  loc_BD4683: FFreeVar var_E4 = "": var_D0 = "": var_F4 = ""
  loc_BD468E: Call Proc_211_24_A09C58()
  loc_BD4693: FLdPr Me
  loc_BD4696: MemLdRfVar from_stack_1.global_80
  loc_BD4699: NewIfNullAd
  loc_BD469C: FStAd var_1CC 
  loc_BD46A0: LitStr "SELECT ld.*, DetaProv, DetaCuco, DetaDebi, ImpoImpu AS ImpoDebi"
  loc_BD46A3: LitStr " FROM ordenpago o"
  loc_BD46A6: ConcatStr
  loc_BD46A7: FStStrNoPop var_BC
  loc_BD46AA: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu AND ld.FeanLide IS NULL"
  loc_BD46AD: ConcatStr
  loc_BD46AE: FStStrNoPop var_C0
  loc_BD46B1: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_BD46B4: ConcatStr
  loc_BD46B5: FStStrNoPop var_178
  loc_BD46B8: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_BD46BB: ConcatStr
  loc_BD46BC: FStStrNoPop var_17C
  loc_BD46BF: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = d.PeriInfo AND cc.CodiCuco = d.CodiCuco"
  loc_BD46C2: ConcatStr
  loc_BD46C3: FStStrNoPop var_180
  loc_BD46C6: LitStr " WHERE o.PeriInfo = "
  loc_BD46C9: ConcatStr
  loc_BD46CA: FStStrNoPop var_188
  loc_BD46CD: FLdRfVar var_184
  loc_BD46D0: FLdPr Me
  loc_BD46D3: VCallAd Control_ID_cboPeriodo
  loc_BD46D6: FStAdFunc var_B4
  loc_BD46D9: FLdPr var_B4
  loc_BD46DC:  = Me.Text
  loc_BD46E1: ILdRf var_184
  loc_BD46E4: ConcatStr
  loc_BD46E5: FStStrNoPop var_18C
  loc_BD46E8: LitStr " AND o.NumeOrpa = "
  loc_BD46EB: ConcatStr
  loc_BD46EC: CVarStr var_E4
  loc_BD46EF: FLdRfVar var_D0
  loc_BD46F2: FLdRfVar var_1B0
  loc_BD46F5: LitVarStr var_A0, "NumeOrpa"
  loc_BD46FA: PopAdLdVar
  loc_BD46FB: FLdRfVar var_198
  loc_BD46FE: FLdRfVar var_D4
  loc_BD4701: FLdPr Me
  loc_BD4704: MemLdRfVar from_stack_1.global_76
  loc_BD4707: NewIfNullPr clsbase
  loc_BD470A: from_stack_1v = clsbase.RsFrmGet()
  loc_BD470F: FLdPr var_D4
  loc_BD4712:  = Me.Fields
  loc_BD4717: FLdPr var_198
  loc_BD471A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD471F: FLdPr var_1B0
  loc_BD4722:  = Me.Value
  loc_BD4727: FLdRfVar var_D0
  loc_BD472A: ConcatVar var_F4
  loc_BD472E: LitVarStr var_B0, " ORDER BY DetaProv, CucuPers;"
  loc_BD4733: ConcatVar var_104
  loc_BD4737: CStrVarVal var_190
  loc_BD473B: FLdPr var_1CC
  loc_BD473E: Call clsbase.RedefineRS(from_stack_1v)
  loc_BD4743: FFreeStr var_BC = "": var_C0 = "": var_178 = "": var_17C = "": var_180 = "": var_188 = "": var_184 = "": var_18C = ""
  loc_BD4758: FFreeAd var_B4 = "": var_D4 = "": var_198 = ""
  loc_BD4763: FFreeVar var_E4 = "": var_D0 = "": var_F4 = ""
  loc_BD476E: FLdRfVar var_194
  loc_BD4771: FLdPr var_1CC
  loc_BD4774: from_stack_1 = clsbase.RecordCount
  loc_BD4779: LitI4 0
  loc_BD477E: ILdRf var_194
  loc_BD4781: FLdPr Me
  loc_BD4784: MemLdI2 global_92
  loc_BD4787: CI4UI1
  loc_BD4788: FLdPr Me
  loc_BD478B: MemLdStr global_88
  loc_BD478E: Ary1LdPr
  loc_BD478F: MemLdRfVar from_stack_1.global_84
  loc_BD4792: RedimPreserve
  loc_BD479C: FLdPr var_1CC
  loc_BD479F: Call clsbase.MoveFirst()
  loc_BD47A4: LitI2_Byte 1
  loc_BD47A6: FLdPr Me
  loc_BD47A9: MemLdRfVar from_stack_1.global_102
  loc_BD47AC: FLdPr Me
  loc_BD47AF: MemLdI2 global_92
  loc_BD47B2: CI4UI1
  loc_BD47B3: FLdPr Me
  loc_BD47B6: MemLdStr global_88
  loc_BD47B9: Ary1LdPr
  loc_BD47BA: MemLdStr global_84
  loc_BD47BD: LitI2_Byte 1
  loc_BD47BF: FnUBound
  loc_BD47C1: CI2I4
  loc_BD47C2: ForI2 var_1D0
  loc_BD47C8: FLdRfVar var_198
  loc_BD47CB: LitVarStr var_A0, "CucuPers"
  loc_BD47D0: PopAdLdVar
  loc_BD47D1: FLdRfVar var_D4
  loc_BD47D4: FLdRfVar var_B4
  loc_BD47D7: FLdPr var_1CC
  loc_BD47DA: from_stack_1v = clsbase.RsFrmGet()
  loc_BD47DF: FLdPr var_B4
  loc_BD47E2:  = Me.Fields
  loc_BD47E7: FLdPr var_D4
  loc_BD47EA: from_stack_2 = Me.Item(from_stack_1)
  loc_BD47EF: LitI2_Byte 0
  loc_BD47F1: LitVar_Missing var_E4
  loc_BD47F4: LitI2_Byte 0
  loc_BD47F6: FLdZeroAd var_198
  loc_BD47F9: CVarAd
  loc_BD47FD: PopAdLdVar
  loc_BD47FE: FLdPr Me
  loc_BD4801: MemLdI2 global_102
  loc_BD4804: CI4UI1
  loc_BD4805: FLdPr Me
  loc_BD4808: MemLdI2 global_92
  loc_BD480B: CI4UI1
  loc_BD480C: FLdPr Me
  loc_BD480F: MemLdStr global_88
  loc_BD4812: AryLock
  loc_BD4815: Ary1LdPr
  loc_BD4816: MemLdStr global_84
  loc_BD4819: AryLock
  loc_BD481C: Ary1LdPr
  loc_BD481D: MemLdRfVar from_stack_1.global_0
  loc_BD4820: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4825: AryUnlock
  loc_BD4828: AryUnlock
  loc_BD482B: FFreeAd var_B4 = ""
  loc_BD4832: FFreeVar var_D0 = ""
  loc_BD4839: FLdRfVar var_198
  loc_BD483C: LitVarStr var_A0, "DetaProv"
  loc_BD4841: PopAdLdVar
  loc_BD4842: FLdRfVar var_D4
  loc_BD4845: FLdRfVar var_B4
  loc_BD4848: FLdPr var_1CC
  loc_BD484B: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4850: FLdPr var_B4
  loc_BD4853:  = Me.Fields
  loc_BD4858: FLdPr var_D4
  loc_BD485B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4860: LitI2_Byte 0
  loc_BD4862: LitVar_Missing var_E4
  loc_BD4865: LitI2_Byte 0
  loc_BD4867: FLdZeroAd var_198
  loc_BD486A: CVarAd
  loc_BD486E: PopAdLdVar
  loc_BD486F: FLdPr Me
  loc_BD4872: MemLdI2 global_102
  loc_BD4875: CI4UI1
  loc_BD4876: FLdPr Me
  loc_BD4879: MemLdI2 global_92
  loc_BD487C: CI4UI1
  loc_BD487D: FLdPr Me
  loc_BD4880: MemLdStr global_88
  loc_BD4883: AryLock
  loc_BD4886: Ary1LdPr
  loc_BD4887: MemLdStr global_84
  loc_BD488A: AryLock
  loc_BD488D: Ary1LdPr
  loc_BD488E: MemLdRfVar from_stack_1.global_4
  loc_BD4891: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4896: AryUnlock
  loc_BD4899: AryUnlock
  loc_BD489C: FFreeAd var_B4 = ""
  loc_BD48A3: FFreeVar var_D0 = ""
  loc_BD48AA: FLdRfVar var_198
  loc_BD48AD: LitVarStr var_A0, "DetaDebi"
  loc_BD48B2: PopAdLdVar
  loc_BD48B3: FLdRfVar var_D4
  loc_BD48B6: FLdRfVar var_B4
  loc_BD48B9: FLdPr var_1CC
  loc_BD48BC: from_stack_1v = clsbase.RsFrmGet()
  loc_BD48C1: FLdPr var_B4
  loc_BD48C4:  = Me.Fields
  loc_BD48C9: FLdPr var_D4
  loc_BD48CC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD48D1: LitI2_Byte 0
  loc_BD48D3: LitVar_Missing var_E4
  loc_BD48D6: LitI2_Byte 0
  loc_BD48D8: FLdZeroAd var_198
  loc_BD48DB: CVarAd
  loc_BD48DF: PopAdLdVar
  loc_BD48E0: FLdPr Me
  loc_BD48E3: MemLdI2 global_102
  loc_BD48E6: CI4UI1
  loc_BD48E7: FLdPr Me
  loc_BD48EA: MemLdI2 global_92
  loc_BD48ED: CI4UI1
  loc_BD48EE: FLdPr Me
  loc_BD48F1: MemLdStr global_88
  loc_BD48F4: AryLock
  loc_BD48F7: Ary1LdPr
  loc_BD48F8: MemLdStr global_84
  loc_BD48FB: AryLock
  loc_BD48FE: Ary1LdPr
  loc_BD48FF: MemLdRfVar from_stack_1.global_8
  loc_BD4902: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4907: AryUnlock
  loc_BD490A: AryUnlock
  loc_BD490D: FFreeAd var_B4 = ""
  loc_BD4914: FFreeVar var_D0 = ""
  loc_BD491B: FLdRfVar var_198
  loc_BD491E: LitVarStr var_A0, "CodiCuco"
  loc_BD4923: PopAdLdVar
  loc_BD4924: FLdRfVar var_D4
  loc_BD4927: FLdRfVar var_B4
  loc_BD492A: FLdPr var_1CC
  loc_BD492D: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4932: FLdPr var_B4
  loc_BD4935:  = Me.Fields
  loc_BD493A: FLdPr var_D4
  loc_BD493D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4942: LitI2_Byte 0
  loc_BD4944: LitVar_Missing var_E4
  loc_BD4947: LitI2_Byte 0
  loc_BD4949: FLdZeroAd var_198
  loc_BD494C: CVarAd
  loc_BD4950: PopAdLdVar
  loc_BD4951: FLdPr Me
  loc_BD4954: MemLdI2 global_102
  loc_BD4957: CI4UI1
  loc_BD4958: FLdPr Me
  loc_BD495B: MemLdI2 global_92
  loc_BD495E: CI4UI1
  loc_BD495F: FLdPr Me
  loc_BD4962: MemLdStr global_88
  loc_BD4965: AryLock
  loc_BD4968: Ary1LdPr
  loc_BD4969: MemLdStr global_84
  loc_BD496C: AryLock
  loc_BD496F: Ary1LdPr
  loc_BD4970: MemLdRfVar from_stack_1.global_12
  loc_BD4973: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4978: AryUnlock
  loc_BD497B: AryUnlock
  loc_BD497E: FFreeAd var_B4 = ""
  loc_BD4985: FFreeVar var_D0 = ""
  loc_BD498C: FLdRfVar var_198
  loc_BD498F: LitVarStr var_A0, "DetaCuco"
  loc_BD4994: PopAdLdVar
  loc_BD4995: FLdRfVar var_D4
  loc_BD4998: FLdRfVar var_B4
  loc_BD499B: FLdPr var_1CC
  loc_BD499E: from_stack_1v = clsbase.RsFrmGet()
  loc_BD49A3: FLdPr var_B4
  loc_BD49A6:  = Me.Fields
  loc_BD49AB: FLdPr var_D4
  loc_BD49AE: from_stack_2 = Me.Item(from_stack_1)
  loc_BD49B3: LitI2_Byte 0
  loc_BD49B5: LitVar_Missing var_E4
  loc_BD49B8: LitI2_Byte 0
  loc_BD49BA: FLdZeroAd var_198
  loc_BD49BD: CVarAd
  loc_BD49C1: PopAdLdVar
  loc_BD49C2: FLdPr Me
  loc_BD49C5: MemLdI2 global_102
  loc_BD49C8: CI4UI1
  loc_BD49C9: FLdPr Me
  loc_BD49CC: MemLdI2 global_92
  loc_BD49CF: CI4UI1
  loc_BD49D0: FLdPr Me
  loc_BD49D3: MemLdStr global_88
  loc_BD49D6: AryLock
  loc_BD49D9: Ary1LdPr
  loc_BD49DA: MemLdStr global_84
  loc_BD49DD: AryLock
  loc_BD49E0: Ary1LdPr
  loc_BD49E1: MemLdRfVar from_stack_1.global_16
  loc_BD49E4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD49E9: AryUnlock
  loc_BD49EC: AryUnlock
  loc_BD49EF: FFreeAd var_B4 = ""
  loc_BD49F6: FFreeVar var_D0 = ""
  loc_BD49FD: FLdRfVar var_198
  loc_BD4A00: LitVarStr var_A0, "DetaCuco"
  loc_BD4A05: PopAdLdVar
  loc_BD4A06: FLdRfVar var_D4
  loc_BD4A09: FLdRfVar var_B4
  loc_BD4A0C: FLdPr var_1CC
  loc_BD4A0F: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4A14: FLdPr var_B4
  loc_BD4A17:  = Me.Fields
  loc_BD4A1C: FLdPr var_D4
  loc_BD4A1F: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4A24: LitI2_Byte 0
  loc_BD4A26: LitVar_Missing var_E4
  loc_BD4A29: LitI2_Byte 0
  loc_BD4A2B: FLdZeroAd var_198
  loc_BD4A2E: CVarAd
  loc_BD4A32: PopAdLdVar
  loc_BD4A33: FLdPr Me
  loc_BD4A36: MemLdI2 global_102
  loc_BD4A39: CI4UI1
  loc_BD4A3A: FLdPr Me
  loc_BD4A3D: MemLdI2 global_92
  loc_BD4A40: CI4UI1
  loc_BD4A41: FLdPr Me
  loc_BD4A44: MemLdStr global_88
  loc_BD4A47: AryLock
  loc_BD4A4A: Ary1LdPr
  loc_BD4A4B: MemLdStr global_84
  loc_BD4A4E: AryLock
  loc_BD4A51: Ary1LdPr
  loc_BD4A52: MemLdRfVar from_stack_1.global_16
  loc_BD4A55: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4A5A: AryUnlock
  loc_BD4A5D: AryUnlock
  loc_BD4A60: FFreeAd var_B4 = ""
  loc_BD4A67: FFreeVar var_D0 = ""
  loc_BD4A6E: FLdRfVar var_198
  loc_BD4A71: LitVarStr var_A0, "NumeDebi"
  loc_BD4A76: PopAdLdVar
  loc_BD4A77: FLdRfVar var_D4
  loc_BD4A7A: FLdRfVar var_B4
  loc_BD4A7D: FLdPr var_1CC
  loc_BD4A80: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4A85: FLdPr var_B4
  loc_BD4A88:  = Me.Fields
  loc_BD4A8D: FLdPr var_D4
  loc_BD4A90: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4A95: LitI2_Byte 0
  loc_BD4A97: LitVar_Missing var_E4
  loc_BD4A9A: LitI2_Byte 0
  loc_BD4A9C: FLdZeroAd var_198
  loc_BD4A9F: CVarAd
  loc_BD4AA3: PopAdLdVar
  loc_BD4AA4: FLdPr Me
  loc_BD4AA7: MemLdI2 global_102
  loc_BD4AAA: CI4UI1
  loc_BD4AAB: FLdPr Me
  loc_BD4AAE: MemLdI2 global_92
  loc_BD4AB1: CI4UI1
  loc_BD4AB2: FLdPr Me
  loc_BD4AB5: MemLdStr global_88
  loc_BD4AB8: AryLock
  loc_BD4ABB: Ary1LdPr
  loc_BD4ABC: MemLdStr global_84
  loc_BD4ABF: AryLock
  loc_BD4AC2: Ary1LdPr
  loc_BD4AC3: MemLdRfVar from_stack_1.global_20
  loc_BD4AC6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4ACB: AryUnlock
  loc_BD4ACE: AryUnlock
  loc_BD4AD1: FFreeAd var_B4 = ""
  loc_BD4AD8: FFreeVar var_D0 = ""
  loc_BD4ADF: FLdRfVar var_198
  loc_BD4AE2: LitVarStr var_A0, "NumeFact"
  loc_BD4AE7: PopAdLdVar
  loc_BD4AE8: FLdRfVar var_D4
  loc_BD4AEB: FLdRfVar var_B4
  loc_BD4AEE: FLdPr var_1CC
  loc_BD4AF1: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4AF6: FLdPr var_B4
  loc_BD4AF9:  = Me.Fields
  loc_BD4AFE: FLdPr var_D4
  loc_BD4B01: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4B06: LitI2_Byte 0
  loc_BD4B08: LitVar_Missing var_E4
  loc_BD4B0B: LitI2_Byte 0
  loc_BD4B0D: FLdZeroAd var_198
  loc_BD4B10: CVarAd
  loc_BD4B14: PopAdLdVar
  loc_BD4B15: FLdPr Me
  loc_BD4B18: MemLdI2 global_102
  loc_BD4B1B: CI4UI1
  loc_BD4B1C: FLdPr Me
  loc_BD4B1F: MemLdI2 global_92
  loc_BD4B22: CI4UI1
  loc_BD4B23: FLdPr Me
  loc_BD4B26: MemLdStr global_88
  loc_BD4B29: AryLock
  loc_BD4B2C: Ary1LdPr
  loc_BD4B2D: MemLdStr global_84
  loc_BD4B30: AryLock
  loc_BD4B33: Ary1LdPr
  loc_BD4B34: MemLdRfVar from_stack_1.global_24
  loc_BD4B37: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4B3C: AryUnlock
  loc_BD4B3F: AryUnlock
  loc_BD4B42: FFreeAd var_B4 = ""
  loc_BD4B49: FFreeVar var_D0 = ""
  loc_BD4B50: FLdRfVar var_198
  loc_BD4B53: LitVarStr var_A0, "ImpoDebi"
  loc_BD4B58: PopAdLdVar
  loc_BD4B59: FLdRfVar var_D4
  loc_BD4B5C: FLdRfVar var_B4
  loc_BD4B5F: FLdPr var_1CC
  loc_BD4B62: from_stack_1v = clsbase.RsFrmGet()
  loc_BD4B67: FLdPr var_B4
  loc_BD4B6A:  = Me.Fields
  loc_BD4B6F: FLdPr var_D4
  loc_BD4B72: from_stack_2 = Me.Item(from_stack_1)
  loc_BD4B77: LitI2_Byte 0
  loc_BD4B79: LitVar_Missing var_E4
  loc_BD4B7C: LitI2_Byte &HFF
  loc_BD4B7E: FLdZeroAd var_198
  loc_BD4B81: CVarAd
  loc_BD4B85: PopAdLdVar
  loc_BD4B86: FLdPr Me
  loc_BD4B89: MemLdI2 global_102
  loc_BD4B8C: CI4UI1
  loc_BD4B8D: FLdPr Me
  loc_BD4B90: MemLdI2 global_92
  loc_BD4B93: CI4UI1
  loc_BD4B94: FLdPr Me
  loc_BD4B97: MemLdStr global_88
  loc_BD4B9A: AryLock
  loc_BD4B9D: Ary1LdPr
  loc_BD4B9E: MemLdStr global_84
  loc_BD4BA1: AryLock
  loc_BD4BA4: Ary1LdPr
  loc_BD4BA5: MemLdRfVar from_stack_1.global_28
  loc_BD4BA8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD4BAD: AryUnlock
  loc_BD4BB0: AryUnlock
  loc_BD4BB3: FFreeAd var_B4 = ""
  loc_BD4BBA: FFreeVar var_D0 = ""
  loc_BD4BC1: FLdPr var_1CC
  loc_BD4BC4: Call clsbase.MoveSiguiente()
  loc_BD4BC9: FLdPr Me
  loc_BD4BCC: MemLdRfVar from_stack_1.global_102
  loc_BD4BCF: NextI2 var_1D0, loc_BD47C8
  loc_BD4BD4: LitNothing
  loc_BD4BD6: FStAd var_1CC 
  loc_BD4BDA: Call Proc_211_27_B08674()
  loc_BD4BDF: Call Proc_211_28_B70B38()
  loc_BD4BE4: FLdPr Me
  loc_BD4BE7: MemLdRfVar from_stack_1.global_76
  loc_BD4BEA: NewIfNullPr clsbase
  loc_BD4BED: Call clsbase.MoveSiguiente()
  loc_BD4BF2: FLdPr Me
  loc_BD4BF5: MemLdRfVar from_stack_1.global_92
  loc_BD4BF8: NextI2 var_19C, loc_BD3ACE
  loc_BD4BFD: LitI2_Byte &HFF
  loc_BD4BFF: FLdPr Me
  loc_BD4C02: MemStI2 bGenerado
  loc_BD4C05: LitI4 0
  loc_BD4C0A: CI2I4
  loc_BD4C0B: FLdPr Me
  loc_BD4C0E: Me.MousePointer = from_stack_1
  loc_BD4C13: LitVarStr var_A0, vbNullString
  loc_BD4C18: PopAdLdVar
  loc_BD4C19: FLdPr Me
  loc_BD4C1C: VCallAd Control_ID_statusBar
  loc_BD4C1F: FStAdFunc var_B4
  loc_BD4C22: FLdPr var_B4
  loc_BD4C25: LateIdSt
  loc_BD4C2A: FFree1Ad var_B4
  loc_BD4C2D: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9A6500
  'Data Table: 4A8D80
  loc_9A648C: LitI4 0
  loc_9A6491: LitI4 4
  loc_9A6496: FLdRfVar var_88
  loc_9A6499: Redim
  loc_9A64A3: FLdPr Me
  loc_9A64A6: VCallAd Control_ID_cboPeriodo
  loc_9A64A9: CVarAd
  loc_9A64AD: ParmAry1St
  loc_9A64B3: FLdPr Me
  loc_9A64B6: VCallAd Control_ID_cboExpeImpu
  loc_9A64B9: CVarAd
  loc_9A64BD: ParmAry1St
  loc_9A64C3: FLdPr Me
  loc_9A64C6: VCallAd Control_ID_NumeLiquMsk
  loc_9A64C9: CVarAd
  loc_9A64CD: ParmAry1St
  loc_9A64D3: FLdPr Me
  loc_9A64D6: VCallAd Control_ID_NumeOrpaTxt
  loc_9A64D9: CVarAd
  loc_9A64DD: ParmAry1St
  loc_9A64E3: FLdPr Me
  loc_9A64E6: VCallAd Control_ID_chkSintetico
  loc_9A64E9: CVarAd
  loc_9A64ED: ParmAry1St
  loc_9A64F3: FLdRfVar var_88
  loc_9A64F6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A64FB: FLdRfVar var_88
  loc_9A64FE: Erase
  loc_9A64FF: ExitProcHresult
End Sub

Private Function Proc_211_23_AE27A8() 'AE27A8
  'Data Table: 4A8D80
  loc_AE2104: FLdPr Me
  loc_AE2107: MemLdI2 global_92
  loc_AE210A: CI4UI1
  loc_AE210B: FLdPr Me
  loc_AE210E: MemLdStr global_88
  loc_AE2111: AryLock
  loc_AE2114: Ary1LdRf
  loc_AE2115: FStR4 var_8C
  loc_AE2118: FLdRfVar var_A8
  loc_AE211B: LitVarStr var_A4, "NumeOrpa"
  loc_AE2120: PopAdLdVar
  loc_AE2121: FLdRfVar var_94
  loc_AE2124: FLdRfVar var_90
  loc_AE2127: FLdPr Me
  loc_AE212A: MemLdRfVar from_stack_1.global_76
  loc_AE212D: NewIfNullPr clsbase
  loc_AE2130: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2135: FLdPr var_90
  loc_AE2138:  = Me.Fields
  loc_AE213D: FLdPr var_94
  loc_AE2140: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2145: LitI2_Byte 0
  loc_AE2147: LitVar_Missing var_D8
  loc_AE214A: LitI2_Byte 0
  loc_AE214C: FLdZeroAd var_A8
  loc_AE214F: CVarAd
  loc_AE2153: PopAdLdVar
  loc_AE2154: FMemLdRf 68B8
  loc_AE2159: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE215E: FFreeAd var_90 = ""
  loc_AE2165: FFreeVar var_B8 = ""
  loc_AE216C: FLdRfVar var_DC
  loc_AE216F: FLdPr Me
  loc_AE2172: MemLdRfVar from_stack_1.global_80
  loc_AE2175: NewIfNullPr clsbase
  loc_AE2178: from_stack_1 = clsbase.RecordCount
  loc_AE217D: ILdRf var_DC
  loc_AE2180: LitI4 0
  loc_AE2185: GtI4
  loc_AE2186: BranchF loc_AE279B
  loc_AE2189: FLdRfVar var_A8
  loc_AE218C: LitVarStr var_A4, "DetaOrpa"
  loc_AE2191: PopAdLdVar
  loc_AE2192: FLdRfVar var_94
  loc_AE2195: FLdRfVar var_90
  loc_AE2198: FLdPr Me
  loc_AE219B: MemLdRfVar from_stack_1.global_80
  loc_AE219E: NewIfNullPr clsbase
  loc_AE21A1: from_stack_1v = clsbase.RsFrmGet()
  loc_AE21A6: FLdPr var_90
  loc_AE21A9:  = Me.Fields
  loc_AE21AE: FLdPr var_94
  loc_AE21B1: from_stack_2 = Me.Item(from_stack_1)
  loc_AE21B6: LitI2_Byte 0
  loc_AE21B8: LitVar_Missing var_D8
  loc_AE21BB: LitI2_Byte 0
  loc_AE21BD: FLdZeroAd var_A8
  loc_AE21C0: CVarAd
  loc_AE21C4: PopAdLdVar
  loc_AE21C5: FMemLdRf 68B8
  loc_AE21CA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE21CF: FFreeAd var_90 = ""
  loc_AE21D6: FFreeVar var_B8 = ""
  loc_AE21DD: FLdRfVar var_A8
  loc_AE21E0: LitVarStr var_A4, "FechOrpa"
  loc_AE21E5: PopAdLdVar
  loc_AE21E6: FLdRfVar var_94
  loc_AE21E9: FLdRfVar var_90
  loc_AE21EC: FLdPr Me
  loc_AE21EF: MemLdRfVar from_stack_1.global_80
  loc_AE21F2: NewIfNullPr clsbase
  loc_AE21F5: from_stack_1v = clsbase.RsFrmGet()
  loc_AE21FA: FLdPr var_90
  loc_AE21FD:  = Me.Fields
  loc_AE2202: FLdPr var_94
  loc_AE2205: from_stack_2 = Me.Item(from_stack_1)
  loc_AE220A: LitI4 1
  loc_AE220F: LitI4 1
  loc_AE2214: LitVarStr var_C8, "dd/mm/yyyy"
  loc_AE2219: FStVarCopyObj var_D8
  loc_AE221C: FLdRfVar var_D8
  loc_AE221F: FLdZeroAd var_A8
  loc_AE2222: CVarAd
  loc_AE2226: ImpAdCallI2 Format$(, )
  loc_AE222B: FStStr var_110
  loc_AE222E: LitI2_Byte 0
  loc_AE2230: LitVar_Missing var_10C
  loc_AE2233: LitI2_Byte 0
  loc_AE2235: FLdZeroAd var_110
  loc_AE2238: CVarStr var_EC
  loc_AE223B: PopAdLdVar
  loc_AE223C: FMemLdRf 68B8
  loc_AE2241: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE2246: FFree1Str var_110
  loc_AE2249: FFreeAd var_90 = ""
  loc_AE2250: FFreeVar var_B8 = "": var_D8 = "": var_EC = ""
  loc_AE225B: FLdRfVar var_B8
  loc_AE225E: FLdRfVar var_A8
  loc_AE2261: LitVarStr var_A4, "FereOrpa"
  loc_AE2266: PopAdLdVar
  loc_AE2267: FLdRfVar var_94
  loc_AE226A: FLdRfVar var_90
  loc_AE226D: FLdPr Me
  loc_AE2270: MemLdRfVar from_stack_1.global_80
  loc_AE2273: NewIfNullPr clsbase
  loc_AE2276: from_stack_1v = clsbase.RsFrmGet()
  loc_AE227B: FLdPr var_90
  loc_AE227E:  = Me.Fields
  loc_AE2283: FLdPr var_94
  loc_AE2286: from_stack_2 = Me.Item(from_stack_1)
  loc_AE228B: FLdPr var_A8
  loc_AE228E:  = Me.Value
  loc_AE2293: FLdRfVar var_11C
  loc_AE2296: LitVarStr var_FC, "FereOrpa"
  loc_AE229B: PopAdLdVar
  loc_AE229C: FLdRfVar var_118
  loc_AE229F: FLdRfVar var_114
  loc_AE22A2: FLdPr Me
  loc_AE22A5: MemLdRfVar from_stack_1.global_80
  loc_AE22A8: NewIfNullPr clsbase
  loc_AE22AB: from_stack_1v = clsbase.RsFrmGet()
  loc_AE22B0: FLdPr var_114
  loc_AE22B3:  = Me.Fields
  loc_AE22B8: FLdPr var_118
  loc_AE22BB: from_stack_2 = Me.Item(from_stack_1)
  loc_AE22C0: FLdZeroAd var_11C
  loc_AE22C3: CVarAd
  loc_AE22C7: ImpAdCallI2 IsNull()
  loc_AE22CC: FStI2 var_1EA
  loc_AE22CF: FLdRfVar var_148
  loc_AE22D2: LitVarStr var_144, "FereOrpa"
  loc_AE22D7: PopAdLdVar
  loc_AE22D8: FLdRfVar var_134
  loc_AE22DB: FLdRfVar var_130
  loc_AE22DE: FLdPr Me
  loc_AE22E1: MemLdRfVar from_stack_1.global_80
  loc_AE22E4: NewIfNullPr clsbase
  loc_AE22E7: from_stack_1v = clsbase.RsFrmGet()
  loc_AE22EC: FLdPr var_130
  loc_AE22EF:  = Me.Fields
  loc_AE22F4: FLdPr var_134
  loc_AE22F7: from_stack_2 = Me.Item(from_stack_1)
  loc_AE22FC: LitI4 1
  loc_AE2301: LitI4 1
  loc_AE2306: LitVarStr var_168, "dd/mm/yyyy"
  loc_AE230B: FStVarCopyObj var_178
  loc_AE230E: FLdRfVar var_178
  loc_AE2311: FLdZeroAd var_148
  loc_AE2314: CVarAd
  loc_AE2318: ImpAdCallI2 Format$(, )
  loc_AE231D: CVarStr var_1B8
  loc_AE2320: LitVarStr var_198, vbNullString
  loc_AE2325: FStVarCopyObj var_1A8
  loc_AE2328: FLdRfVar var_1A8
  loc_AE232B: FLdRfVar var_B8
  loc_AE232E: LitVarStr var_C8, vbNullString
  loc_AE2333: HardType
  loc_AE2334: EqVar var_D8
  loc_AE2338: FLdI2 var_1EA
  loc_AE233B: CVarBoolI2 var_12C
  loc_AE233F: OrVar var_10C
  loc_AE2343: FStVar var_188
  loc_AE2347: FLdRfVar var_188
  loc_AE234A: FLdRfVar var_1C8
  loc_AE234D: ImpAdCallFPR4  = IIf(, , )
  loc_AE2352: LitI2_Byte 0
  loc_AE2354: LitVar_Missing var_1E8
  loc_AE2357: LitI2_Byte 0
  loc_AE2359: FLdVar var_1C8
  loc_AE235D: FMemLdRf 68B8
  loc_AE2362: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE2367: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_114 = "": var_118 = "": var_130 = ""
  loc_AE2378: FFreeVar var_B8 = "": var_EC = "": var_12C = "": var_158 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = ""
  loc_AE238F: FLdRfVar var_B8
  loc_AE2392: FLdRfVar var_A8
  loc_AE2395: LitVarStr var_A4, "FearOrpa"
  loc_AE239A: PopAdLdVar
  loc_AE239B: FLdRfVar var_94
  loc_AE239E: FLdRfVar var_90
  loc_AE23A1: FLdPr Me
  loc_AE23A4: MemLdRfVar from_stack_1.global_80
  loc_AE23A7: NewIfNullPr clsbase
  loc_AE23AA: from_stack_1v = clsbase.RsFrmGet()
  loc_AE23AF: FLdPr var_90
  loc_AE23B2:  = Me.Fields
  loc_AE23B7: FLdPr var_94
  loc_AE23BA: from_stack_2 = Me.Item(from_stack_1)
  loc_AE23BF: FLdPr var_A8
  loc_AE23C2:  = Me.Value
  loc_AE23C7: FLdRfVar var_11C
  loc_AE23CA: LitVarStr var_FC, "FearOrpa"
  loc_AE23CF: PopAdLdVar
  loc_AE23D0: FLdRfVar var_118
  loc_AE23D3: FLdRfVar var_114
  loc_AE23D6: FLdPr Me
  loc_AE23D9: MemLdRfVar from_stack_1.global_80
  loc_AE23DC: NewIfNullPr clsbase
  loc_AE23DF: from_stack_1v = clsbase.RsFrmGet()
  loc_AE23E4: FLdPr var_114
  loc_AE23E7:  = Me.Fields
  loc_AE23EC: FLdPr var_118
  loc_AE23EF: from_stack_2 = Me.Item(from_stack_1)
  loc_AE23F4: FLdZeroAd var_11C
  loc_AE23F7: CVarAd
  loc_AE23FB: ImpAdCallI2 IsNull()
  loc_AE2400: FStI2 var_1EA
  loc_AE2403: FLdRfVar var_148
  loc_AE2406: LitVarStr var_144, "FearOrpa"
  loc_AE240B: PopAdLdVar
  loc_AE240C: FLdRfVar var_134
  loc_AE240F: FLdRfVar var_130
  loc_AE2412: FLdPr Me
  loc_AE2415: MemLdRfVar from_stack_1.global_80
  loc_AE2418: NewIfNullPr clsbase
  loc_AE241B: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2420: FLdPr var_130
  loc_AE2423:  = Me.Fields
  loc_AE2428: FLdPr var_134
  loc_AE242B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2430: LitI4 1
  loc_AE2435: LitI4 1
  loc_AE243A: LitVarStr var_168, "dd/mm/yyyy"
  loc_AE243F: FStVarCopyObj var_178
  loc_AE2442: FLdRfVar var_178
  loc_AE2445: FLdZeroAd var_148
  loc_AE2448: CVarAd
  loc_AE244C: ImpAdCallI2 Format$(, )
  loc_AE2451: CVarStr var_1B8
  loc_AE2454: LitVarStr var_198, vbNullString
  loc_AE2459: FStVarCopyObj var_1A8
  loc_AE245C: FLdRfVar var_1A8
  loc_AE245F: FLdRfVar var_B8
  loc_AE2462: LitVarStr var_C8, vbNullString
  loc_AE2467: HardType
  loc_AE2468: EqVar var_D8
  loc_AE246C: FLdI2 var_1EA
  loc_AE246F: CVarBoolI2 var_12C
  loc_AE2473: OrVar var_10C
  loc_AE2477: FStVar var_188
  loc_AE247B: FLdRfVar var_188
  loc_AE247E: FLdRfVar var_1C8
  loc_AE2481: ImpAdCallFPR4  = IIf(, , )
  loc_AE2486: LitI2_Byte 0
  loc_AE2488: LitVar_Missing var_1E8
  loc_AE248B: LitI2_Byte 0
  loc_AE248D: FLdVar var_1C8
  loc_AE2491: FMemLdRf 68B8
  loc_AE2496: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE249B: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_114 = "": var_118 = "": var_130 = ""
  loc_AE24AC: FFreeVar var_B8 = "": var_EC = "": var_12C = "": var_158 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = ""
  loc_AE24C3: FLdRfVar var_B8
  loc_AE24C6: FLdRfVar var_A8
  loc_AE24C9: LitVarStr var_A4, "FeanOrpa"
  loc_AE24CE: PopAdLdVar
  loc_AE24CF: FLdRfVar var_94
  loc_AE24D2: FLdRfVar var_90
  loc_AE24D5: FLdPr Me
  loc_AE24D8: MemLdRfVar from_stack_1.global_80
  loc_AE24DB: NewIfNullPr clsbase
  loc_AE24DE: from_stack_1v = clsbase.RsFrmGet()
  loc_AE24E3: FLdPr var_90
  loc_AE24E6:  = Me.Fields
  loc_AE24EB: FLdPr var_94
  loc_AE24EE: from_stack_2 = Me.Item(from_stack_1)
  loc_AE24F3: FLdPr var_A8
  loc_AE24F6:  = Me.Value
  loc_AE24FB: FLdRfVar var_11C
  loc_AE24FE: LitVarStr var_FC, "FeanOrpa"
  loc_AE2503: PopAdLdVar
  loc_AE2504: FLdRfVar var_118
  loc_AE2507: FLdRfVar var_114
  loc_AE250A: FLdPr Me
  loc_AE250D: MemLdRfVar from_stack_1.global_80
  loc_AE2510: NewIfNullPr clsbase
  loc_AE2513: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2518: FLdPr var_114
  loc_AE251B:  = Me.Fields
  loc_AE2520: FLdPr var_118
  loc_AE2523: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2528: FLdZeroAd var_11C
  loc_AE252B: CVarAd
  loc_AE252F: ImpAdCallI2 IsNull()
  loc_AE2534: FStI2 var_1EA
  loc_AE2537: FLdRfVar var_148
  loc_AE253A: LitVarStr var_144, "FeanOrpa"
  loc_AE253F: PopAdLdVar
  loc_AE2540: FLdRfVar var_134
  loc_AE2543: FLdRfVar var_130
  loc_AE2546: FLdPr Me
  loc_AE2549: MemLdRfVar from_stack_1.global_80
  loc_AE254C: NewIfNullPr clsbase
  loc_AE254F: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2554: FLdPr var_130
  loc_AE2557:  = Me.Fields
  loc_AE255C: FLdPr var_134
  loc_AE255F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2564: LitI4 1
  loc_AE2569: LitI4 1
  loc_AE256E: LitVarStr var_168, "dd/mm/yyyy"
  loc_AE2573: FStVarCopyObj var_178
  loc_AE2576: FLdRfVar var_178
  loc_AE2579: FLdZeroAd var_148
  loc_AE257C: CVarAd
  loc_AE2580: ImpAdCallI2 Format$(, )
  loc_AE2585: CVarStr var_1B8
  loc_AE2588: LitVarStr var_198, vbNullString
  loc_AE258D: FStVarCopyObj var_1A8
  loc_AE2590: FLdRfVar var_1A8
  loc_AE2593: FLdRfVar var_B8
  loc_AE2596: LitVarStr var_C8, vbNullString
  loc_AE259B: HardType
  loc_AE259C: EqVar var_D8
  loc_AE25A0: FLdI2 var_1EA
  loc_AE25A3: CVarBoolI2 var_12C
  loc_AE25A7: OrVar var_10C
  loc_AE25AB: FStVar var_188
  loc_AE25AF: FLdRfVar var_188
  loc_AE25B2: FLdRfVar var_1C8
  loc_AE25B5: ImpAdCallFPR4  = IIf(, , )
  loc_AE25BA: LitI2_Byte 0
  loc_AE25BC: LitVar_Missing var_1E8
  loc_AE25BF: LitI2_Byte 0
  loc_AE25C1: FLdVar var_1C8
  loc_AE25C5: FMemLdRf 68B8
  loc_AE25CA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE25CF: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_114 = "": var_118 = "": var_130 = ""
  loc_AE25E0: FFreeVar var_B8 = "": var_EC = "": var_12C = "": var_158 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = "": var_1C8 = ""
  loc_AE25F7: FLdRfVar var_A8
  loc_AE25FA: LitVarStr var_A4, "BajaMoti"
  loc_AE25FF: PopAdLdVar
  loc_AE2600: FLdRfVar var_94
  loc_AE2603: FLdRfVar var_90
  loc_AE2606: FLdPr Me
  loc_AE2609: MemLdRfVar from_stack_1.global_80
  loc_AE260C: NewIfNullPr clsbase
  loc_AE260F: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2614: FLdPr var_90
  loc_AE2617:  = Me.Fields
  loc_AE261C: FLdPr var_94
  loc_AE261F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2624: LitI2_Byte 0
  loc_AE2626: LitVar_Missing var_D8
  loc_AE2629: LitI2_Byte 0
  loc_AE262B: FLdZeroAd var_A8
  loc_AE262E: CVarAd
  loc_AE2632: PopAdLdVar
  loc_AE2633: FMemLdRf 68B8
  loc_AE2638: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE263D: FFreeAd var_90 = ""
  loc_AE2644: FFreeVar var_B8 = ""
  loc_AE264B: FLdRfVar var_A8
  loc_AE264E: LitVarStr var_A4, "ExpeImpu"
  loc_AE2653: PopAdLdVar
  loc_AE2654: FLdRfVar var_94
  loc_AE2657: FLdRfVar var_90
  loc_AE265A: FLdPr Me
  loc_AE265D: MemLdRfVar from_stack_1.global_80
  loc_AE2660: NewIfNullPr clsbase
  loc_AE2663: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2668: FLdPr var_90
  loc_AE266B:  = Me.Fields
  loc_AE2670: FLdPr var_94
  loc_AE2673: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2678: LitI2_Byte 0
  loc_AE267A: LitVar_Missing var_D8
  loc_AE267D: LitI2_Byte 0
  loc_AE267F: FLdZeroAd var_A8
  loc_AE2682: CVarAd
  loc_AE2686: PopAdLdVar
  loc_AE2687: FMemLdRf 68B8
  loc_AE268C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE2691: FFreeAd var_90 = ""
  loc_AE2698: FFreeVar var_B8 = ""
  loc_AE269F: FLdRfVar var_A8
  loc_AE26A2: LitVarStr var_A4, "NumeLiqu"
  loc_AE26A7: PopAdLdVar
  loc_AE26A8: FLdRfVar var_94
  loc_AE26AB: FLdRfVar var_90
  loc_AE26AE: FLdPr Me
  loc_AE26B1: MemLdRfVar from_stack_1.global_80
  loc_AE26B4: NewIfNullPr clsbase
  loc_AE26B7: from_stack_1v = clsbase.RsFrmGet()
  loc_AE26BC: FLdPr var_90
  loc_AE26BF:  = Me.Fields
  loc_AE26C4: FLdPr var_94
  loc_AE26C7: from_stack_2 = Me.Item(from_stack_1)
  loc_AE26CC: LitI2_Byte 0
  loc_AE26CE: LitVar_Missing var_D8
  loc_AE26D1: LitI2_Byte 0
  loc_AE26D3: FLdZeroAd var_A8
  loc_AE26D6: CVarAd
  loc_AE26DA: PopAdLdVar
  loc_AE26DB: FMemLdRf 68B8
  loc_AE26E0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE26E5: FFreeAd var_90 = ""
  loc_AE26EC: FFreeVar var_B8 = ""
  loc_AE26F3: FLdRfVar var_A8
  loc_AE26F6: LitVarStr var_A4, "Importe"
  loc_AE26FB: PopAdLdVar
  loc_AE26FC: FLdRfVar var_94
  loc_AE26FF: FLdRfVar var_90
  loc_AE2702: FLdPr Me
  loc_AE2705: MemLdRfVar from_stack_1.global_80
  loc_AE2708: NewIfNullPr clsbase
  loc_AE270B: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2710: FLdPr var_90
  loc_AE2713:  = Me.Fields
  loc_AE2718: FLdPr var_94
  loc_AE271B: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2720: LitI2_Byte 0
  loc_AE2722: LitVar_Missing var_D8
  loc_AE2725: LitI2_Byte &HFF
  loc_AE2727: FLdZeroAd var_A8
  loc_AE272A: CVarAd
  loc_AE272E: PopAdLdVar
  loc_AE272F: FMemLdRf 68B8
  loc_AE2734: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE2739: FFreeAd var_90 = ""
  loc_AE2740: FFreeVar var_B8 = ""
  loc_AE2747: FLdRfVar var_A8
  loc_AE274A: LitVarStr var_A4, "ChunOrpa"
  loc_AE274F: PopAdLdVar
  loc_AE2750: FLdRfVar var_94
  loc_AE2753: FLdRfVar var_90
  loc_AE2756: FLdPr Me
  loc_AE2759: MemLdRfVar from_stack_1.global_80
  loc_AE275C: NewIfNullPr clsbase
  loc_AE275F: from_stack_1v = clsbase.RsFrmGet()
  loc_AE2764: FLdPr var_90
  loc_AE2767:  = Me.Fields
  loc_AE276C: FLdPr var_94
  loc_AE276F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE2774: LitI2_Byte 0
  loc_AE2776: LitVar_Missing var_D8
  loc_AE2779: LitI2_Byte 0
  loc_AE277B: FLdZeroAd var_A8
  loc_AE277E: CVarAd
  loc_AE2782: PopAdLdVar
  loc_AE2783: FMemLdRf 68B8
  loc_AE2788: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE278D: FFreeAd var_90 = ""
  loc_AE2794: FFreeVar var_B8 = ""
  loc_AE279B: LitI4 0
  loc_AE27A0: FStR4 var_8C
  loc_AE27A3: AryUnlock
  loc_AE27A6: ExitProcHresult
End Function

Private Function Proc_211_24_A09C58() 'A09C58
  'Data Table: 4A8D80
  loc_A09AFC: FLdPr Me
  loc_A09AFF: MemLdRfVar from_stack_1.global_80
  loc_A09B02: NewIfNullAd
  loc_A09B05: FStAd var_88 
  loc_A09B09: FLdRfVar var_8C
  loc_A09B0C: FLdPr var_88
  loc_A09B0F: from_stack_1 = clsbase.RecordCount
  loc_A09B14: LitI4 0
  loc_A09B19: ILdRf var_8C
  loc_A09B1C: FLdPr Me
  loc_A09B1F: MemLdI2 global_92
  loc_A09B22: CI4UI1
  loc_A09B23: FLdPr Me
  loc_A09B26: MemLdStr global_88
  loc_A09B29: Ary1LdPr
  loc_A09B2A: MemLdRfVar from_stack_1.global_48
  loc_A09B2D: RedimPreserve
  loc_A09B37: LitI2_Byte 1
  loc_A09B39: FLdPr Me
  loc_A09B3C: MemLdRfVar from_stack_1.global_100
  loc_A09B3F: FLdPr Me
  loc_A09B42: MemLdI2 global_92
  loc_A09B45: CI4UI1
  loc_A09B46: FLdPr Me
  loc_A09B49: MemLdStr global_88
  loc_A09B4C: Ary1LdPr
  loc_A09B4D: MemLdStr global_48
  loc_A09B50: LitI2_Byte 1
  loc_A09B52: FnUBound
  loc_A09B54: CI2I4
  loc_A09B55: ForI2 var_90
  loc_A09B5B: FLdRfVar var_AC
  loc_A09B5E: LitVarStr var_A8, "CucuPers"
  loc_A09B63: PopAdLdVar
  loc_A09B64: FLdRfVar var_98
  loc_A09B67: FLdRfVar var_94
  loc_A09B6A: FLdPr var_88
  loc_A09B6D: from_stack_1v = clsbase.RsFrmGet()
  loc_A09B72: FLdPr var_94
  loc_A09B75:  = Me.Fields
  loc_A09B7A: FLdPr var_98
  loc_A09B7D: from_stack_2 = Me.Item(from_stack_1)
  loc_A09B82: LitI2_Byte 0
  loc_A09B84: LitVar_Missing var_E4
  loc_A09B87: LitI2_Byte 0
  loc_A09B89: FLdZeroAd var_AC
  loc_A09B8C: CVarAd
  loc_A09B90: PopAdLdVar
  loc_A09B91: FLdPr Me
  loc_A09B94: MemLdI2 global_100
  loc_A09B97: CI4UI1
  loc_A09B98: FLdPr Me
  loc_A09B9B: MemLdI2 global_92
  loc_A09B9E: CI4UI1
  loc_A09B9F: FLdPr Me
  loc_A09BA2: MemLdStr global_88
  loc_A09BA5: AryLock
  loc_A09BA8: Ary1LdPr
  loc_A09BA9: MemLdStr global_48
  loc_A09BAC: AryLock
  loc_A09BAF: Ary1LdPr
  loc_A09BB0: MemLdRfVar from_stack_1.global_0
  loc_A09BB3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09BB8: AryUnlock
  loc_A09BBB: AryUnlock
  loc_A09BBE: FFreeAd var_94 = ""
  loc_A09BC5: FFreeVar var_C4 = ""
  loc_A09BCC: FLdRfVar var_AC
  loc_A09BCF: LitVarStr var_A8, "DetaProv"
  loc_A09BD4: PopAdLdVar
  loc_A09BD5: FLdRfVar var_98
  loc_A09BD8: FLdRfVar var_94
  loc_A09BDB: FLdPr var_88
  loc_A09BDE: from_stack_1v = clsbase.RsFrmGet()
  loc_A09BE3: FLdPr var_94
  loc_A09BE6:  = Me.Fields
  loc_A09BEB: FLdPr var_98
  loc_A09BEE: from_stack_2 = Me.Item(from_stack_1)
  loc_A09BF3: LitI2_Byte 0
  loc_A09BF5: LitVar_Missing var_E4
  loc_A09BF8: LitI2_Byte 0
  loc_A09BFA: FLdZeroAd var_AC
  loc_A09BFD: CVarAd
  loc_A09C01: PopAdLdVar
  loc_A09C02: FLdPr Me
  loc_A09C05: MemLdI2 global_100
  loc_A09C08: CI4UI1
  loc_A09C09: FLdPr Me
  loc_A09C0C: MemLdI2 global_92
  loc_A09C0F: CI4UI1
  loc_A09C10: FLdPr Me
  loc_A09C13: MemLdStr global_88
  loc_A09C16: AryLock
  loc_A09C19: Ary1LdPr
  loc_A09C1A: MemLdStr global_48
  loc_A09C1D: AryLock
  loc_A09C20: Ary1LdPr
  loc_A09C21: MemLdRfVar from_stack_1.global_4
  loc_A09C24: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A09C29: AryUnlock
  loc_A09C2C: AryUnlock
  loc_A09C2F: FFreeAd var_94 = ""
  loc_A09C36: FFreeVar var_C4 = ""
  loc_A09C3D: FLdPr var_88
  loc_A09C40: Call clsbase.MoveSiguiente()
  loc_A09C45: FLdPr Me
  loc_A09C48: MemLdRfVar from_stack_1.global_100
  loc_A09C4B: NextI2 var_90, loc_A09B5B
  loc_A09C50: LitNothing
  loc_A09C52: FStAd var_88 
  loc_A09C56: ExitProcHresult
End Function

Private Function Proc_211_25_A585CC() 'A585CC
  'Data Table: 4A8D80
  loc_A582E0: LitVarStr var_94, "<html>"
  loc_A582E5: PopAdLdVar
  loc_A582E6: FLdPr Me
  loc_A582E9: MemLdRfVar from_stack_1.htmFile
  loc_A582EC: LdPrVar
  loc_A582EE: LateMemCall
  loc_A582F4: LitVarStr var_94, "<head>"
  loc_A582F9: PopAdLdVar
  loc_A582FA: FLdPr Me
  loc_A582FD: MemLdRfVar from_stack_1.htmFile
  loc_A58300: LdPrVar
  loc_A58302: LateMemCall
  loc_A58308: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A5830D: PopAdLdVar
  loc_A5830E: FLdPr Me
  loc_A58311: MemLdRfVar from_stack_1.htmFile
  loc_A58314: LdPrVar
  loc_A58316: LateMemCall
  loc_A5831C: LitStr "<title>"
  loc_A5831F: FLdRfVar var_A8
  loc_A58322: FLdPr Me
  loc_A58325:  = Me.Caption
  loc_A5832A: ILdRf var_A8
  loc_A5832D: ConcatStr
  loc_A5832E: FStStrNoPop var_AC
  loc_A58331: LitStr "</title>"
  loc_A58334: ConcatStr
  loc_A58335: CVarStr var_BC
  loc_A58338: PopAdLdVar
  loc_A58339: FLdPr Me
  loc_A5833C: MemLdRfVar from_stack_1.htmFile
  loc_A5833F: LdPrVar
  loc_A58341: LateMemCall
  loc_A58347: FFreeStr var_A8 = ""
  loc_A5834E: FFree1Var var_BC = ""
  loc_A58351: LitStr vbNullString
  loc_A58354: ILdRf Me
  loc_A58357: CastAd
  loc_A5835A: FStAdFunc var_C0
  loc_A5835D: FLdRfVar var_C0
  loc_A58360: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A58365: FFree1Ad var_C0
  loc_A58368: LitI4 0
  loc_A5836D: FStStrCopy var_AC
  loc_A58370: FLdRfVar var_AC
  loc_A58373: LitI4 0
  loc_A58378: FStStrCopy var_A8
  loc_A5837B: FLdRfVar var_A8
  loc_A5837E: LitI2_Byte 0
  loc_A58380: PopTmpLdAd2 var_C2
  loc_A58383: FLdPr Me
  loc_A58386: MemLdRfVar from_stack_1.htmFile
  loc_A58389: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A5838E: FFreeStr var_A8 = ""
  loc_A58395: FLdPr Me
  loc_A58398: MemLdStr global_88
  loc_A5839B: LitI2_Byte 1
  loc_A5839D: FnUBound
  loc_A5839F: LitI4 1
  loc_A583A4: GtI4
  loc_A583A5: BranchF loc_A583D8
  loc_A583A8: LitI4 0
  loc_A583AD: FStStrCopy var_AC
  loc_A583B0: FLdRfVar var_AC
  loc_A583B3: LitI4 0
  loc_A583B8: FStStrCopy var_A8
  loc_A583BB: FLdRfVar var_A8
  loc_A583BE: LitI2_Byte 0
  loc_A583C0: PopTmpLdAd2 var_C2
  loc_A583C3: FLdPr Me
  loc_A583C6: MemLdRfVar from_stack_1.htmFile
  loc_A583C9: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A583CE: FFreeStr var_A8 = ""
  loc_A583D5: Branch loc_A585CB
  loc_A583D8: LitVarStr var_94, "<SCRIPT LANGUAGE=""JavaScript"">"
  loc_A583DD: PopAdLdVar
  loc_A583DE: FLdPr Me
  loc_A583E1: MemLdRfVar from_stack_1.htmFile
  loc_A583E4: LdPrVar
  loc_A583E6: LateMemCall
  loc_A583EC: LitVarStr var_94, "<!--"
  loc_A583F1: PopAdLdVar
  loc_A583F2: FLdPr Me
  loc_A583F5: MemLdRfVar from_stack_1.htmFile
  loc_A583F8: LdPrVar
  loc_A583FA: LateMemCall
  loc_A58400: LitVarStr var_94, "function stopError() {"
  loc_A58405: PopAdLdVar
  loc_A58406: FLdPr Me
  loc_A58409: MemLdRfVar from_stack_1.htmFile
  loc_A5840C: LdPrVar
  loc_A5840E: LateMemCall
  loc_A58414: LitVarStr var_94, "  return true;"
  loc_A58419: PopAdLdVar
  loc_A5841A: FLdPr Me
  loc_A5841D: MemLdRfVar from_stack_1.htmFile
  loc_A58420: LdPrVar
  loc_A58422: LateMemCall
  loc_A58428: LitVarStr var_94, "}"
  loc_A5842D: PopAdLdVar
  loc_A5842E: FLdPr Me
  loc_A58431: MemLdRfVar from_stack_1.htmFile
  loc_A58434: LdPrVar
  loc_A58436: LateMemCall
  loc_A5843C: LitVarStr var_94, "window.onerror = stopError;"
  loc_A58441: PopAdLdVar
  loc_A58442: FLdPr Me
  loc_A58445: MemLdRfVar from_stack_1.htmFile
  loc_A58448: LdPrVar
  loc_A5844A: LateMemCall
  loc_A58450: LitVarStr var_94, "// -->"
  loc_A58455: PopAdLdVar
  loc_A58456: FLdPr Me
  loc_A58459: MemLdRfVar from_stack_1.htmFile
  loc_A5845C: LdPrVar
  loc_A5845E: LateMemCall
  loc_A58464: LitVarStr var_94, "</SCRIPT>"
  loc_A58469: PopAdLdVar
  loc_A5846A: FLdPr Me
  loc_A5846D: MemLdRfVar from_stack_1.htmFile
  loc_A58470: LdPrVar
  loc_A58472: LateMemCall
  loc_A58478: LitVarStr var_94, "<script defer>"
  loc_A5847D: PopAdLdVar
  loc_A5847E: FLdPr Me
  loc_A58481: MemLdRfVar from_stack_1.htmFile
  loc_A58484: LdPrVar
  loc_A58486: LateMemCall
  loc_A5848C: LitVarStr var_94, "function ini() {"
  loc_A58491: PopAdLdVar
  loc_A58492: FLdPr Me
  loc_A58495: MemLdRfVar from_stack_1.htmFile
  loc_A58498: LdPrVar
  loc_A5849A: LateMemCall
  loc_A584A0: LitVarStr var_94, "  factory.printing.bottomMargin = ""6,35"""
  loc_A584A5: PopAdLdVar
  loc_A584A6: FLdPr Me
  loc_A584A9: MemLdRfVar from_stack_1.htmFile
  loc_A584AC: LdPrVar
  loc_A584AE: LateMemCall
  loc_A584B4: LitVarStr var_94, "  factory.printing.topMargin = ""6,35"""
  loc_A584B9: PopAdLdVar
  loc_A584BA: FLdPr Me
  loc_A584BD: MemLdRfVar from_stack_1.htmFile
  loc_A584C0: LdPrVar
  loc_A584C2: LateMemCall
  loc_A584C8: LitVarStr var_94, "  factory.printing.leftMargin = ""6,35"""
  loc_A584CD: PopAdLdVar
  loc_A584CE: FLdPr Me
  loc_A584D1: MemLdRfVar from_stack_1.htmFile
  loc_A584D4: LdPrVar
  loc_A584D6: LateMemCall
  loc_A584DC: LitVarStr var_94, "  factory.printing.rightMargin = ""10"""
  loc_A584E1: PopAdLdVar
  loc_A584E2: FLdPr Me
  loc_A584E5: MemLdRfVar from_stack_1.htmFile
  loc_A584E8: LdPrVar
  loc_A584EA: LateMemCall
  loc_A584F0: LitVarStr var_94, "  factory.printing.header = """""
  loc_A584F5: PopAdLdVar
  loc_A584F6: FLdPr Me
  loc_A584F9: MemLdRfVar from_stack_1.htmFile
  loc_A584FC: LdPrVar
  loc_A584FE: LateMemCall
  loc_A58504: LitStr "  factory.printing.footer = ""Usuario: "
  loc_A58507: ImpAdLdI4 MemVar_C3D044
  loc_A5850A: ConcatStr
  loc_A5850B: FStStrNoPop var_A8
  loc_A5850E: LitStr "&bOrden de Pago Nº "
  loc_A58511: ConcatStr
  loc_A58512: FStStrNoPop var_AC
  loc_A58515: LitI4 1
  loc_A5851A: FLdPr Me
  loc_A5851D: MemLdStr global_88
  loc_A58520: Ary1LdPr
  loc_A58521: MemLdStr global_8
  loc_A58524: ConcatStr
  loc_A58525: FStStrNoPop var_C8
  loc_A58528: LitStr "&bHoja: &p/&P"
  loc_A5852B: ConcatStr
  loc_A5852C: FStStrNoPop var_CC
  loc_A5852F: LitStr """"
  loc_A58532: ConcatStr
  loc_A58533: CVarStr var_BC
  loc_A58536: PopAdLdVar
  loc_A58537: FLdPr Me
  loc_A5853A: MemLdRfVar from_stack_1.htmFile
  loc_A5853D: LdPrVar
  loc_A5853F: LateMemCall
  loc_A58545: FFreeStr var_A8 = "": var_AC = "": var_C8 = ""
  loc_A58550: FFree1Var var_BC = ""
  loc_A58553: LitVarStr var_94, "  factory.printing.portrait = true"
  loc_A58558: PopAdLdVar
  loc_A58559: FLdPr Me
  loc_A5855C: MemLdRfVar from_stack_1.htmFile
  loc_A5855F: LdPrVar
  loc_A58561: LateMemCall
  loc_A58567: LitVarStr var_94, "}"
  loc_A5856C: PopAdLdVar
  loc_A5856D: FLdPr Me
  loc_A58570: MemLdRfVar from_stack_1.htmFile
  loc_A58573: LdPrVar
  loc_A58575: LateMemCall
  loc_A5857B: LitVarStr var_94, "</script>"
  loc_A58580: PopAdLdVar
  loc_A58581: FLdPr Me
  loc_A58584: MemLdRfVar from_stack_1.htmFile
  loc_A58587: LdPrVar
  loc_A58589: LateMemCall
  loc_A5858F: LitVarStr var_94, "</head>"
  loc_A58594: PopAdLdVar
  loc_A58595: FLdPr Me
  loc_A58598: MemLdRfVar from_stack_1.htmFile
  loc_A5859B: LdPrVar
  loc_A5859D: LateMemCall
  loc_A585A3: LitVarStr var_94, "<body onload=""ini()"">"
  loc_A585A8: PopAdLdVar
  loc_A585A9: FLdPr Me
  loc_A585AC: MemLdRfVar from_stack_1.htmFile
  loc_A585AF: LdPrVar
  loc_A585B1: LateMemCall
  loc_A585B7: LitVarStr var_94, "  <object id=""factory"" style=""display:none"" viewastext classid=""clsid:1663ED61-23EB-11D2-B92F-008048FDD814""></object>"
  loc_A585BC: PopAdLdVar
  loc_A585BD: FLdPr Me
  loc_A585C0: MemLdRfVar from_stack_1.htmFile
  loc_A585C3: LdPrVar
  loc_A585C5: LateMemCall
  loc_A585CB: ExitProcHresult
End Function

Private Function Proc_211_26_974FEC() '974FEC
  'Data Table: 4A8D80
  loc_974FC0: LitVarStr var_94, "</body>"
  loc_974FC5: PopAdLdVar
  loc_974FC6: FLdPr Me
  loc_974FC9: MemLdRfVar from_stack_1.htmFile
  loc_974FCC: LdPrVar
  loc_974FCE: LateMemCall
  loc_974FD4: LitVarStr var_94, "</html>"
  loc_974FD9: PopAdLdVar
  loc_974FDA: FLdPr Me
  loc_974FDD: MemLdRfVar from_stack_1.htmFile
  loc_974FE0: LdPrVar
  loc_974FE2: LateMemCall
  loc_974FE8: ExitProcHresult
End Function

Private Function Proc_211_27_B08674() 'B08674
  'Data Table: 4A8D80
  loc_B07EC8: FLdPr Me
  loc_B07ECB: MemLdRfVar from_stack_1.global_80
  loc_B07ECE: NewIfNullAd
  loc_B07ED1: FStAd var_88 
  loc_B07ED5: LitStr "SELECT lqn.*, DetaProv, Concat(DetaRete,IF(r.CucuPers!=0,'*','')) DetaRete, lqn.CodiCuco, DetaDere, IF(lqn.TipoLine=1,lqn.CodiConc,BaseEsca) BaseEsca, AlicEsca"
  loc_B07ED8: LitStr ", CAST(IF(lqn.PefiLine>0 AND lqn.PerfLine=0,CONCAT('FI *',lqn.PefiLine),IF(lqn.PefiLine=0 AND lqn.PerfLine>0,CONCAT('RF *',lqn.PerfLine),IF(lqn.PefiLine>0 AND lqn.PerfLine>0,CONCAT('FI *',lqn.PefiLine,' - RF *',lqn.PerfLine),'&nbsp;'))) AS Char) Penalidad"
  loc_B07EDB: ConcatStr
  loc_B07EDC: FStStrNoPop var_8C
  loc_B07EDF: LitStr ", DetaCuco"
  loc_B07EE2: ConcatStr
  loc_B07EE3: FStStrNoPop var_90
  loc_B07EE6: LitStr " FROM liquidaneto lqn"
  loc_B07EE9: ConcatStr
  loc_B07EEA: FStStrNoPop var_94
  loc_B07EED: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_B07EF0: ConcatStr
  loc_B07EF1: FStStrNoPop var_98
  loc_B07EF4: LitStr " INNER JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_B07EF7: ConcatStr
  loc_B07EF8: FStStrNoPop var_9C
  loc_B07EFB: LitStr " INNER JOIN deretenciones dr ON dr.PeriInfo = lqn.PeriInfo AND dr.CodiRete = lqn.CodiRete AND dr.CodiDere = lqn.CodiDere"
  loc_B07EFE: ConcatStr
  loc_B07EFF: FStStrNoPop var_A0
  loc_B07F02: LitStr " INNER JOIN escalas e ON e.PeriInfo = lqn.PeriInfo AND e.CodiRete = lqn.CodiRete AND e.CodiDere = lqn.CodiDere AND e.CodiEsca = lqn.CodiEsca AND e.FechEsca = lqn.FechEsca"
  loc_B07F05: ConcatStr
  loc_B07F06: FStStrNoPop var_A4
  loc_B07F09: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = lqn.PeriInfo AND cc.CodiCuco = lqn.CodiCuco"
  loc_B07F0C: ConcatStr
  loc_B07F0D: FStStrNoPop var_A8
  loc_B07F10: LitStr " WHERE lqn.FeanLine IS NULL AND lqn.CodiRete <> 0 AND ExpeImpu = '"
  loc_B07F13: ConcatStr
  loc_B07F14: FStStrNoPop var_AC
  loc_B07F17: FLdPr Me
  loc_B07F1A: MemLdI2 global_92
  loc_B07F1D: CI4UI1
  loc_B07F1E: FLdPr Me
  loc_B07F21: MemLdStr global_88
  loc_B07F24: Ary1LdPr
  loc_B07F25: MemLdStr global_36
  loc_B07F28: ConcatStr
  loc_B07F29: FStStrNoPop var_B0
  loc_B07F2C: LitStr "' AND NumeLiqu = '"
  loc_B07F2F: ConcatStr
  loc_B07F30: FStStrNoPop var_B4
  loc_B07F33: FLdPr Me
  loc_B07F36: MemLdI2 global_92
  loc_B07F39: CI4UI1
  loc_B07F3A: FLdPr Me
  loc_B07F3D: MemLdStr global_88
  loc_B07F40: Ary1LdPr
  loc_B07F41: MemLdStr global_40
  loc_B07F44: ConcatStr
  loc_B07F45: FStStrNoPop var_B8
  loc_B07F48: LitStr "'"
  loc_B07F4B: ConcatStr
  loc_B07F4C: FStStrNoPop var_BC
  loc_B07F4F: LitStr " ORDER BY DetaProv, CucuPers, CodiRete;"
  loc_B07F52: ConcatStr
  loc_B07F53: FStStrNoPop var_C0
  loc_B07F56: FLdPr var_88
  loc_B07F59: Call clsbase.RedefineRS(from_stack_1v)
  loc_B07F5E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B07F7D: FLdRfVar var_C4
  loc_B07F80: FLdPr var_88
  loc_B07F83: from_stack_1 = clsbase.RecordCount
  loc_B07F88: ILdRf var_C4
  loc_B07F8B: LitI4 0
  loc_B07F90: GtI4
  loc_B07F91: BranchF loc_B0865A
  loc_B07F94: LitI2_Byte &HFF
  loc_B07F96: FLdPr Me
  loc_B07F99: MemLdI2 global_92
  loc_B07F9C: CI4UI1
  loc_B07F9D: FLdPr Me
  loc_B07FA0: MemLdStr global_88
  loc_B07FA3: Ary1LdPr
  loc_B07FA4: MemStI2 global_56
  loc_B07FA7: FLdRfVar var_C4
  loc_B07FAA: FLdPr var_88
  loc_B07FAD: from_stack_1 = clsbase.RecordCount
  loc_B07FB2: LitI4 0
  loc_B07FB7: ILdRf var_C4
  loc_B07FBA: FLdPr Me
  loc_B07FBD: MemLdI2 global_92
  loc_B07FC0: CI4UI1
  loc_B07FC1: FLdPr Me
  loc_B07FC4: MemLdStr global_88
  loc_B07FC7: Ary1LdPr
  loc_B07FC8: MemLdRfVar from_stack_1.global_60
  loc_B07FCB: RedimPreserve
  loc_B07FD5: FLdPr var_88
  loc_B07FD8: Call clsbase.MoveFirst()
  loc_B07FDD: LitI2_Byte 1
  loc_B07FDF: FLdPr Me
  loc_B07FE2: MemLdRfVar from_stack_1.global_96
  loc_B07FE5: FLdPr Me
  loc_B07FE8: MemLdI2 global_92
  loc_B07FEB: CI4UI1
  loc_B07FEC: FLdPr Me
  loc_B07FEF: MemLdStr global_88
  loc_B07FF2: Ary1LdPr
  loc_B07FF3: MemLdStr global_60
  loc_B07FF6: LitI2_Byte 1
  loc_B07FF8: FnUBound
  loc_B07FFA: CI2I4
  loc_B07FFB: ForI2 var_C8
  loc_B08001: FLdRfVar var_E4
  loc_B08004: LitVarStr var_E0, "CucuPers"
  loc_B08009: PopAdLdVar
  loc_B0800A: FLdRfVar var_D0
  loc_B0800D: FLdRfVar var_CC
  loc_B08010: FLdPr var_88
  loc_B08013: from_stack_1v = clsbase.RsFrmGet()
  loc_B08018: FLdPr var_CC
  loc_B0801B:  = Me.Fields
  loc_B08020: FLdPr var_D0
  loc_B08023: from_stack_2 = Me.Item(from_stack_1)
  loc_B08028: LitI2_Byte 0
  loc_B0802A: LitVar_Missing var_11C
  loc_B0802D: LitI2_Byte 0
  loc_B0802F: FLdZeroAd var_E4
  loc_B08032: CVarAd
  loc_B08036: PopAdLdVar
  loc_B08037: FLdPr Me
  loc_B0803A: MemLdI2 global_96
  loc_B0803D: CI4UI1
  loc_B0803E: FLdPr Me
  loc_B08041: MemLdI2 global_92
  loc_B08044: CI4UI1
  loc_B08045: FLdPr Me
  loc_B08048: MemLdStr global_88
  loc_B0804B: AryLock
  loc_B0804E: Ary1LdPr
  loc_B0804F: MemLdStr global_60
  loc_B08052: AryLock
  loc_B08055: Ary1LdPr
  loc_B08056: MemLdRfVar from_stack_1.global_0
  loc_B08059: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0805E: AryUnlock
  loc_B08061: AryUnlock
  loc_B08064: FFreeAd var_CC = ""
  loc_B0806B: FFreeVar var_FC = ""
  loc_B08072: FLdRfVar var_E4
  loc_B08075: LitVarStr var_E0, "DetaProv"
  loc_B0807A: PopAdLdVar
  loc_B0807B: FLdRfVar var_D0
  loc_B0807E: FLdRfVar var_CC
  loc_B08081: FLdPr var_88
  loc_B08084: from_stack_1v = clsbase.RsFrmGet()
  loc_B08089: FLdPr var_CC
  loc_B0808C:  = Me.Fields
  loc_B08091: FLdPr var_D0
  loc_B08094: from_stack_2 = Me.Item(from_stack_1)
  loc_B08099: LitI2_Byte 0
  loc_B0809B: LitVar_Missing var_11C
  loc_B0809E: LitI2_Byte 0
  loc_B080A0: FLdZeroAd var_E4
  loc_B080A3: CVarAd
  loc_B080A7: PopAdLdVar
  loc_B080A8: FLdPr Me
  loc_B080AB: MemLdI2 global_96
  loc_B080AE: CI4UI1
  loc_B080AF: FLdPr Me
  loc_B080B2: MemLdI2 global_92
  loc_B080B5: CI4UI1
  loc_B080B6: FLdPr Me
  loc_B080B9: MemLdStr global_88
  loc_B080BC: AryLock
  loc_B080BF: Ary1LdPr
  loc_B080C0: MemLdStr global_60
  loc_B080C3: AryLock
  loc_B080C6: Ary1LdPr
  loc_B080C7: MemLdRfVar from_stack_1.global_4
  loc_B080CA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B080CF: AryUnlock
  loc_B080D2: AryUnlock
  loc_B080D5: FFreeAd var_CC = ""
  loc_B080DC: FFreeVar var_FC = ""
  loc_B080E3: FLdRfVar var_E4
  loc_B080E6: LitVarStr var_E0, "CodiRete"
  loc_B080EB: PopAdLdVar
  loc_B080EC: FLdRfVar var_D0
  loc_B080EF: FLdRfVar var_CC
  loc_B080F2: FLdPr var_88
  loc_B080F5: from_stack_1v = clsbase.RsFrmGet()
  loc_B080FA: FLdPr var_CC
  loc_B080FD:  = Me.Fields
  loc_B08102: FLdPr var_D0
  loc_B08105: from_stack_2 = Me.Item(from_stack_1)
  loc_B0810A: LitI2_Byte 0
  loc_B0810C: LitVar_Missing var_11C
  loc_B0810F: LitI2_Byte 0
  loc_B08111: FLdZeroAd var_E4
  loc_B08114: CVarAd
  loc_B08118: PopAdLdVar
  loc_B08119: FLdPr Me
  loc_B0811C: MemLdI2 global_96
  loc_B0811F: CI4UI1
  loc_B08120: FLdPr Me
  loc_B08123: MemLdI2 global_92
  loc_B08126: CI4UI1
  loc_B08127: FLdPr Me
  loc_B0812A: MemLdStr global_88
  loc_B0812D: AryLock
  loc_B08130: Ary1LdPr
  loc_B08131: MemLdStr global_60
  loc_B08134: AryLock
  loc_B08137: Ary1LdPr
  loc_B08138: MemLdRfVar from_stack_1.global_8
  loc_B0813B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08140: AryUnlock
  loc_B08143: AryUnlock
  loc_B08146: FFreeAd var_CC = ""
  loc_B0814D: FFreeVar var_FC = ""
  loc_B08154: FLdRfVar var_E4
  loc_B08157: LitVarStr var_E0, "DetaRete"
  loc_B0815C: PopAdLdVar
  loc_B0815D: FLdRfVar var_D0
  loc_B08160: FLdRfVar var_CC
  loc_B08163: FLdPr var_88
  loc_B08166: from_stack_1v = clsbase.RsFrmGet()
  loc_B0816B: FLdPr var_CC
  loc_B0816E:  = Me.Fields
  loc_B08173: FLdPr var_D0
  loc_B08176: from_stack_2 = Me.Item(from_stack_1)
  loc_B0817B: LitI2_Byte 0
  loc_B0817D: LitVar_Missing var_11C
  loc_B08180: LitI2_Byte 0
  loc_B08182: FLdZeroAd var_E4
  loc_B08185: CVarAd
  loc_B08189: PopAdLdVar
  loc_B0818A: FLdPr Me
  loc_B0818D: MemLdI2 global_96
  loc_B08190: CI4UI1
  loc_B08191: FLdPr Me
  loc_B08194: MemLdI2 global_92
  loc_B08197: CI4UI1
  loc_B08198: FLdPr Me
  loc_B0819B: MemLdStr global_88
  loc_B0819E: AryLock
  loc_B081A1: Ary1LdPr
  loc_B081A2: MemLdStr global_60
  loc_B081A5: AryLock
  loc_B081A8: Ary1LdPr
  loc_B081A9: MemLdRfVar from_stack_1.global_12
  loc_B081AC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B081B1: AryUnlock
  loc_B081B4: AryUnlock
  loc_B081B7: FFreeAd var_CC = ""
  loc_B081BE: FFreeVar var_FC = ""
  loc_B081C5: FLdRfVar var_E4
  loc_B081C8: LitVarStr var_E0, "CodiCuco"
  loc_B081CD: PopAdLdVar
  loc_B081CE: FLdRfVar var_D0
  loc_B081D1: FLdRfVar var_CC
  loc_B081D4: FLdPr var_88
  loc_B081D7: from_stack_1v = clsbase.RsFrmGet()
  loc_B081DC: FLdPr var_CC
  loc_B081DF:  = Me.Fields
  loc_B081E4: FLdPr var_D0
  loc_B081E7: from_stack_2 = Me.Item(from_stack_1)
  loc_B081EC: LitI2_Byte 0
  loc_B081EE: LitVar_Missing var_11C
  loc_B081F1: LitI2_Byte 0
  loc_B081F3: FLdZeroAd var_E4
  loc_B081F6: CVarAd
  loc_B081FA: PopAdLdVar
  loc_B081FB: FLdPr Me
  loc_B081FE: MemLdI2 global_96
  loc_B08201: CI4UI1
  loc_B08202: FLdPr Me
  loc_B08205: MemLdI2 global_92
  loc_B08208: CI4UI1
  loc_B08209: FLdPr Me
  loc_B0820C: MemLdStr global_88
  loc_B0820F: AryLock
  loc_B08212: Ary1LdPr
  loc_B08213: MemLdStr global_60
  loc_B08216: AryLock
  loc_B08219: Ary1LdPr
  loc_B0821A: MemLdRfVar from_stack_1.global_16
  loc_B0821D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08222: AryUnlock
  loc_B08225: AryUnlock
  loc_B08228: FFreeAd var_CC = ""
  loc_B0822F: FFreeVar var_FC = ""
  loc_B08236: FLdRfVar var_E4
  loc_B08239: LitVarStr var_E0, "DetaCuco"
  loc_B0823E: PopAdLdVar
  loc_B0823F: FLdRfVar var_D0
  loc_B08242: FLdRfVar var_CC
  loc_B08245: FLdPr var_88
  loc_B08248: from_stack_1v = clsbase.RsFrmGet()
  loc_B0824D: FLdPr var_CC
  loc_B08250:  = Me.Fields
  loc_B08255: FLdPr var_D0
  loc_B08258: from_stack_2 = Me.Item(from_stack_1)
  loc_B0825D: LitI2_Byte 0
  loc_B0825F: LitVar_Missing var_11C
  loc_B08262: LitI2_Byte 0
  loc_B08264: FLdZeroAd var_E4
  loc_B08267: CVarAd
  loc_B0826B: PopAdLdVar
  loc_B0826C: FLdPr Me
  loc_B0826F: MemLdI2 global_96
  loc_B08272: CI4UI1
  loc_B08273: FLdPr Me
  loc_B08276: MemLdI2 global_92
  loc_B08279: CI4UI1
  loc_B0827A: FLdPr Me
  loc_B0827D: MemLdStr global_88
  loc_B08280: AryLock
  loc_B08283: Ary1LdPr
  loc_B08284: MemLdStr global_60
  loc_B08287: AryLock
  loc_B0828A: Ary1LdPr
  loc_B0828B: MemLdRfVar from_stack_1.global_20
  loc_B0828E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08293: AryUnlock
  loc_B08296: AryUnlock
  loc_B08299: FFreeAd var_CC = ""
  loc_B082A0: FFreeVar var_FC = ""
  loc_B082A7: FLdRfVar var_E4
  loc_B082AA: LitVarStr var_E0, "CodiDere"
  loc_B082AF: PopAdLdVar
  loc_B082B0: FLdRfVar var_D0
  loc_B082B3: FLdRfVar var_CC
  loc_B082B6: FLdPr var_88
  loc_B082B9: from_stack_1v = clsbase.RsFrmGet()
  loc_B082BE: FLdPr var_CC
  loc_B082C1:  = Me.Fields
  loc_B082C6: FLdPr var_D0
  loc_B082C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B082CE: LitI2_Byte 0
  loc_B082D0: LitVar_Missing var_11C
  loc_B082D3: LitI2_Byte 0
  loc_B082D5: FLdZeroAd var_E4
  loc_B082D8: CVarAd
  loc_B082DC: PopAdLdVar
  loc_B082DD: FLdPr Me
  loc_B082E0: MemLdI2 global_96
  loc_B082E3: CI4UI1
  loc_B082E4: FLdPr Me
  loc_B082E7: MemLdI2 global_92
  loc_B082EA: CI4UI1
  loc_B082EB: FLdPr Me
  loc_B082EE: MemLdStr global_88
  loc_B082F1: AryLock
  loc_B082F4: Ary1LdPr
  loc_B082F5: MemLdStr global_60
  loc_B082F8: AryLock
  loc_B082FB: Ary1LdPr
  loc_B082FC: MemLdRfVar from_stack_1.global_24
  loc_B082FF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08304: AryUnlock
  loc_B08307: AryUnlock
  loc_B0830A: FFreeAd var_CC = ""
  loc_B08311: FFreeVar var_FC = ""
  loc_B08318: FLdRfVar var_E4
  loc_B0831B: LitVarStr var_E0, "DetaDere"
  loc_B08320: PopAdLdVar
  loc_B08321: FLdRfVar var_D0
  loc_B08324: FLdRfVar var_CC
  loc_B08327: FLdPr var_88
  loc_B0832A: from_stack_1v = clsbase.RsFrmGet()
  loc_B0832F: FLdPr var_CC
  loc_B08332:  = Me.Fields
  loc_B08337: FLdPr var_D0
  loc_B0833A: from_stack_2 = Me.Item(from_stack_1)
  loc_B0833F: LitI2_Byte 0
  loc_B08341: LitVar_Missing var_11C
  loc_B08344: LitI2_Byte 0
  loc_B08346: FLdZeroAd var_E4
  loc_B08349: CVarAd
  loc_B0834D: PopAdLdVar
  loc_B0834E: FLdPr Me
  loc_B08351: MemLdI2 global_96
  loc_B08354: CI4UI1
  loc_B08355: FLdPr Me
  loc_B08358: MemLdI2 global_92
  loc_B0835B: CI4UI1
  loc_B0835C: FLdPr Me
  loc_B0835F: MemLdStr global_88
  loc_B08362: AryLock
  loc_B08365: Ary1LdPr
  loc_B08366: MemLdStr global_60
  loc_B08369: AryLock
  loc_B0836C: Ary1LdPr
  loc_B0836D: MemLdRfVar from_stack_1.global_28
  loc_B08370: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08375: AryUnlock
  loc_B08378: AryUnlock
  loc_B0837B: FFreeAd var_CC = ""
  loc_B08382: FFreeVar var_FC = ""
  loc_B08389: FLdRfVar var_E4
  loc_B0838C: LitVarStr var_E0, "BaseEsca"
  loc_B08391: PopAdLdVar
  loc_B08392: FLdRfVar var_D0
  loc_B08395: FLdRfVar var_CC
  loc_B08398: FLdPr var_88
  loc_B0839B: from_stack_1v = clsbase.RsFrmGet()
  loc_B083A0: FLdPr var_CC
  loc_B083A3:  = Me.Fields
  loc_B083A8: FLdPr var_D0
  loc_B083AB: from_stack_2 = Me.Item(from_stack_1)
  loc_B083B0: LitI2_Byte 0
  loc_B083B2: LitVar_Missing var_11C
  loc_B083B5: LitI2_Byte 0
  loc_B083B7: FLdZeroAd var_E4
  loc_B083BA: CVarAd
  loc_B083BE: PopAdLdVar
  loc_B083BF: FLdPr Me
  loc_B083C2: MemLdI2 global_96
  loc_B083C5: CI4UI1
  loc_B083C6: FLdPr Me
  loc_B083C9: MemLdI2 global_92
  loc_B083CC: CI4UI1
  loc_B083CD: FLdPr Me
  loc_B083D0: MemLdStr global_88
  loc_B083D3: AryLock
  loc_B083D6: Ary1LdPr
  loc_B083D7: MemLdStr global_60
  loc_B083DA: AryLock
  loc_B083DD: Ary1LdPr
  loc_B083DE: MemLdRfVar from_stack_1.global_32
  loc_B083E1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B083E6: AryUnlock
  loc_B083E9: AryUnlock
  loc_B083EC: FFreeAd var_CC = ""
  loc_B083F3: FFreeVar var_FC = ""
  loc_B083FA: FLdRfVar var_E4
  loc_B083FD: LitVarStr var_E0, "AlicEsca"
  loc_B08402: PopAdLdVar
  loc_B08403: FLdRfVar var_D0
  loc_B08406: FLdRfVar var_CC
  loc_B08409: FLdPr var_88
  loc_B0840C: from_stack_1v = clsbase.RsFrmGet()
  loc_B08411: FLdPr var_CC
  loc_B08414:  = Me.Fields
  loc_B08419: FLdPr var_D0
  loc_B0841C: from_stack_2 = Me.Item(from_stack_1)
  loc_B08421: LitI2_Byte 0
  loc_B08423: LitVar_Missing var_11C
  loc_B08426: LitI2_Byte 0
  loc_B08428: FLdZeroAd var_E4
  loc_B0842B: CVarAd
  loc_B0842F: PopAdLdVar
  loc_B08430: FLdPr Me
  loc_B08433: MemLdI2 global_96
  loc_B08436: CI4UI1
  loc_B08437: FLdPr Me
  loc_B0843A: MemLdI2 global_92
  loc_B0843D: CI4UI1
  loc_B0843E: FLdPr Me
  loc_B08441: MemLdStr global_88
  loc_B08444: AryLock
  loc_B08447: Ary1LdPr
  loc_B08448: MemLdStr global_60
  loc_B0844B: AryLock
  loc_B0844E: Ary1LdPr
  loc_B0844F: MemLdRfVar from_stack_1.global_36
  loc_B08452: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08457: AryUnlock
  loc_B0845A: AryUnlock
  loc_B0845D: FFreeAd var_CC = ""
  loc_B08464: FFreeVar var_FC = ""
  loc_B0846B: FLdRfVar var_E4
  loc_B0846E: LitVarStr var_E0, "Penalidad"
  loc_B08473: PopAdLdVar
  loc_B08474: FLdRfVar var_D0
  loc_B08477: FLdRfVar var_CC
  loc_B0847A: FLdPr var_88
  loc_B0847D: from_stack_1v = clsbase.RsFrmGet()
  loc_B08482: FLdPr var_CC
  loc_B08485:  = Me.Fields
  loc_B0848A: FLdPr var_D0
  loc_B0848D: from_stack_2 = Me.Item(from_stack_1)
  loc_B08492: LitI2_Byte 0
  loc_B08494: LitVar_Missing var_11C
  loc_B08497: LitI2_Byte 0
  loc_B08499: FLdZeroAd var_E4
  loc_B0849C: CVarAd
  loc_B084A0: PopAdLdVar
  loc_B084A1: FLdPr Me
  loc_B084A4: MemLdI2 global_96
  loc_B084A7: CI4UI1
  loc_B084A8: FLdPr Me
  loc_B084AB: MemLdI2 global_92
  loc_B084AE: CI4UI1
  loc_B084AF: FLdPr Me
  loc_B084B2: MemLdStr global_88
  loc_B084B5: AryLock
  loc_B084B8: Ary1LdPr
  loc_B084B9: MemLdStr global_60
  loc_B084BC: AryLock
  loc_B084BF: Ary1LdPr
  loc_B084C0: MemLdRfVar from_stack_1.global_40
  loc_B084C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B084C8: AryUnlock
  loc_B084CB: AryUnlock
  loc_B084CE: FFreeAd var_CC = ""
  loc_B084D5: FFreeVar var_FC = ""
  loc_B084DC: FLdRfVar var_E4
  loc_B084DF: LitVarStr var_E0, "PoexLine"
  loc_B084E4: PopAdLdVar
  loc_B084E5: FLdRfVar var_D0
  loc_B084E8: FLdRfVar var_CC
  loc_B084EB: FLdPr var_88
  loc_B084EE: from_stack_1v = clsbase.RsFrmGet()
  loc_B084F3: FLdPr var_CC
  loc_B084F6:  = Me.Fields
  loc_B084FB: FLdPr var_D0
  loc_B084FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B08503: LitI2_Byte 0
  loc_B08505: LitVar_Missing var_11C
  loc_B08508: LitI2_Byte 0
  loc_B0850A: FLdZeroAd var_E4
  loc_B0850D: CVarAd
  loc_B08511: PopAdLdVar
  loc_B08512: FLdPr Me
  loc_B08515: MemLdI2 global_96
  loc_B08518: CI4UI1
  loc_B08519: FLdPr Me
  loc_B0851C: MemLdI2 global_92
  loc_B0851F: CI4UI1
  loc_B08520: FLdPr Me
  loc_B08523: MemLdStr global_88
  loc_B08526: AryLock
  loc_B08529: Ary1LdPr
  loc_B0852A: MemLdStr global_60
  loc_B0852D: AryLock
  loc_B08530: Ary1LdPr
  loc_B08531: MemLdRfVar from_stack_1.global_44
  loc_B08534: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08539: AryUnlock
  loc_B0853C: AryUnlock
  loc_B0853F: FFreeAd var_CC = ""
  loc_B08546: FFreeVar var_FC = ""
  loc_B0854D: FLdRfVar var_E4
  loc_B08550: LitVarStr var_E0, "CertLine"
  loc_B08555: PopAdLdVar
  loc_B08556: FLdRfVar var_D0
  loc_B08559: FLdRfVar var_CC
  loc_B0855C: FLdPr var_88
  loc_B0855F: from_stack_1v = clsbase.RsFrmGet()
  loc_B08564: FLdPr var_CC
  loc_B08567:  = Me.Fields
  loc_B0856C: FLdPr var_D0
  loc_B0856F: from_stack_2 = Me.Item(from_stack_1)
  loc_B08574: LitI2_Byte 0
  loc_B08576: LitVar_Missing var_11C
  loc_B08579: LitI2_Byte 0
  loc_B0857B: FLdZeroAd var_E4
  loc_B0857E: CVarAd
  loc_B08582: PopAdLdVar
  loc_B08583: FLdPr Me
  loc_B08586: MemLdI2 global_96
  loc_B08589: CI4UI1
  loc_B0858A: FLdPr Me
  loc_B0858D: MemLdI2 global_92
  loc_B08590: CI4UI1
  loc_B08591: FLdPr Me
  loc_B08594: MemLdStr global_88
  loc_B08597: AryLock
  loc_B0859A: Ary1LdPr
  loc_B0859B: MemLdStr global_60
  loc_B0859E: AryLock
  loc_B085A1: Ary1LdPr
  loc_B085A2: MemLdRfVar from_stack_1.global_48
  loc_B085A5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B085AA: AryUnlock
  loc_B085AD: AryUnlock
  loc_B085B0: FFreeAd var_CC = ""
  loc_B085B7: FFreeVar var_FC = ""
  loc_B085BE: FLdRfVar var_E4
  loc_B085C1: LitVarStr var_E0, "ImpoLine"
  loc_B085C6: PopAdLdVar
  loc_B085C7: FLdRfVar var_D0
  loc_B085CA: FLdRfVar var_CC
  loc_B085CD: FLdPr var_88
  loc_B085D0: from_stack_1v = clsbase.RsFrmGet()
  loc_B085D5: FLdPr var_CC
  loc_B085D8:  = Me.Fields
  loc_B085DD: FLdPr var_D0
  loc_B085E0: from_stack_2 = Me.Item(from_stack_1)
  loc_B085E5: LitI2_Byte 0
  loc_B085E7: FLdPr Me
  loc_B085EA: MemLdI2 global_92
  loc_B085ED: CI4UI1
  loc_B085EE: FLdPr Me
  loc_B085F1: MemLdStr global_88
  loc_B085F4: AryLock
  loc_B085F7: Ary1LdPr
  loc_B085F8: MemLdRfVar from_stack_1.global_64
  loc_B085FB: CVarRef
  loc_B08600: LitI2_Byte &HFF
  loc_B08602: FLdZeroAd var_E4
  loc_B08605: CVarAd
  loc_B08609: PopAdLdVar
  loc_B0860A: FLdPr Me
  loc_B0860D: MemLdI2 global_96
  loc_B08610: CI4UI1
  loc_B08611: FLdPr Me
  loc_B08614: MemLdI2 global_92
  loc_B08617: CI4UI1
  loc_B08618: FLdPr Me
  loc_B0861B: MemLdStr global_88
  loc_B0861E: AryLock
  loc_B08621: Ary1LdPr
  loc_B08622: MemLdStr global_60
  loc_B08625: AryLock
  loc_B08628: Ary1LdPr
  loc_B08629: MemLdRfVar from_stack_1.htmFile
  loc_B0862C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B08631: AryUnlock
  loc_B08634: AryUnlock
  loc_B08637: AryUnlock
  loc_B0863A: FFreeAd var_CC = ""
  loc_B08641: FFree1Var var_FC = ""
  loc_B08644: FLdPr var_88
  loc_B08647: Call clsbase.MoveSiguiente()
  loc_B0864C: FLdPr Me
  loc_B0864F: MemLdRfVar from_stack_1.global_96
  loc_B08652: NextI2 var_C8, loc_B08001
  loc_B08657: Branch loc_B0866D
  loc_B0865A: LitI2_Byte 0
  loc_B0865C: FLdPr Me
  loc_B0865F: MemLdI2 global_92
  loc_B08662: CI4UI1
  loc_B08663: FLdPr Me
  loc_B08666: MemLdStr global_88
  loc_B08669: Ary1LdPr
  loc_B0866A: MemStI2 global_56
  loc_B0866D: LitNothing
  loc_B0866F: FStAd var_88 
  loc_B08673: ExitProcHresult
End Function

Private Function Proc_211_28_B70B38() 'B70B38
  'Data Table: 4A8D80
  loc_B6FF6C: FLdPr Me
  loc_B6FF6F: MemLdRfVar from_stack_1.global_80
  loc_B6FF72: NewIfNullAd
  loc_B6FF75: FStAd var_88 
  loc_B6FF79: LitStr "SELECT ch.CucuPers, if(OrdeCheq='',DetaProv,OrdeCheq) OrdeCheq, ch.CodiBanc, IFNULL(DetaBanc,'') DetaBanc, NumeMoba, FechCheq, ImpoCheq, FeanCheq, AutoCheq"
  loc_B6FF7C: LitStr " FROM cheque ch"
  loc_B6FF7F: ConcatStr
  loc_B6FF80: FStStrNoPop var_8C
  loc_B6FF83: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B6FF86: ConcatStr
  loc_B6FF87: FStStrNoPop var_90
  loc_B6FF8A: LitStr " LEFT JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B6FF8D: ConcatStr
  loc_B6FF8E: FStStrNoPop var_94
  loc_B6FF91: LitStr " WHERE ch.PeriInfo = "
  loc_B6FF94: ConcatStr
  loc_B6FF95: FStStrNoPop var_A0
  loc_B6FF98: FLdRfVar var_9C
  loc_B6FF9B: FLdPr Me
  loc_B6FF9E: VCallAd Control_ID_cboPeriodo
  loc_B6FFA1: FStAdFunc var_98
  loc_B6FFA4: FLdPr var_98
  loc_B6FFA7:  = Me.Text
  loc_B6FFAC: ILdRf var_9C
  loc_B6FFAF: ConcatStr
  loc_B6FFB0: FStStrNoPop var_A4
  loc_B6FFB3: LitStr " AND NumeOrpa = "
  loc_B6FFB6: ConcatStr
  loc_B6FFB7: CVarStr var_E0
  loc_B6FFBA: FLdRfVar var_D0
  loc_B6FFBD: FLdRfVar var_C0
  loc_B6FFC0: LitVarStr var_BC, "NumeOrpa"
  loc_B6FFC5: PopAdLdVar
  loc_B6FFC6: FLdRfVar var_AC
  loc_B6FFC9: FLdRfVar var_A8
  loc_B6FFCC: FLdPr Me
  loc_B6FFCF: MemLdRfVar from_stack_1.global_76
  loc_B6FFD2: NewIfNullPr clsbase
  loc_B6FFD5: from_stack_1v = clsbase.RsFrmGet()
  loc_B6FFDA: FLdPr var_A8
  loc_B6FFDD:  = Me.Fields
  loc_B6FFE2: FLdPr var_AC
  loc_B6FFE5: from_stack_2 = Me.Item(from_stack_1)
  loc_B6FFEA: FLdPr var_C0
  loc_B6FFED:  = Me.Value
  loc_B6FFF2: FLdRfVar var_D0
  loc_B6FFF5: ConcatVar var_F0
  loc_B6FFF9: LitVarStr var_100, " AND ch.FeanCheq IS NULL"
  loc_B6FFFE: ConcatVar var_110
  loc_B70002: LitVarStr var_120, " ORDER BY DetaProv, ch.CucuPers, OrdeCheq, ch.CodiBanc;"
  loc_B70007: ConcatVar var_130
  loc_B7000B: CStrVarVal var_134
  loc_B7000F: FLdPr var_88
  loc_B70012: Call clsbase.RedefineRS(from_stack_1v)
  loc_B70017: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_A0 = "": var_9C = "": var_A4 = ""
  loc_B70028: FFreeAd var_98 = "": var_A8 = "": var_AC = ""
  loc_B70033: FFreeVar var_E0 = "": var_D0 = "": var_F0 = "": var_110 = ""
  loc_B70040: FLdRfVar var_138
  loc_B70043: FLdPr var_88
  loc_B70046: from_stack_1 = clsbase.RecordCount
  loc_B7004B: LitI4 0
  loc_B70050: ILdRf var_138
  loc_B70053: FLdPr Me
  loc_B70056: MemLdI2 global_92
  loc_B70059: CI4UI1
  loc_B7005A: FLdPr Me
  loc_B7005D: MemLdStr global_88
  loc_B70060: Ary1LdPr
  loc_B70061: MemLdRfVar from_stack_1.bGenerado
  loc_B70064: RedimPreserve
  loc_B7006E: FLdRfVar var_138
  loc_B70071: FLdPr var_88
  loc_B70074: from_stack_1 = clsbase.RecordCount
  loc_B70079: ILdRf var_138
  loc_B7007C: LitI4 0
  loc_B70081: EqI4
  loc_B70082: BranchF loc_B7009B
  loc_B70085: LitI2_Byte 0
  loc_B70087: FLdPr Me
  loc_B7008A: MemLdI2 global_92
  loc_B7008D: CI4UI1
  loc_B7008E: FLdPr Me
  loc_B70091: MemLdStr global_88
  loc_B70094: Ary1LdPr
  loc_B70095: MemStI2 global_58
  loc_B70098: Branch loc_B700AE
  loc_B7009B: LitI2_Byte &HFF
  loc_B7009D: FLdPr Me
  loc_B700A0: MemLdI2 global_92
  loc_B700A3: CI4UI1
  loc_B700A4: FLdPr Me
  loc_B700A7: MemLdStr global_88
  loc_B700AA: Ary1LdPr
  loc_B700AB: MemStI2 global_58
  loc_B700AE: FLdPr var_88
  loc_B700B1: Call clsbase.MoveFirst()
  loc_B700B6: LitI2_Byte 0
  loc_B700B8: LitVar_Missing var_D0
  loc_B700BB: LitI2_Byte &HFF
  loc_B700BD: LitVarI2 var_BC, 0
  loc_B700C2: PopAdLdVar
  loc_B700C3: FLdPr Me
  loc_B700C6: MemLdI2 global_92
  loc_B700C9: CI4UI1
  loc_B700CA: FLdPr Me
  loc_B700CD: MemLdStr global_88
  loc_B700D0: AryLock
  loc_B700D3: Ary1LdPr
  loc_B700D4: MemLdRfVar from_stack_1.global_72
  loc_B700D7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B700DC: AryUnlock
  loc_B700DF: FFree1Var var_D0 = ""
  loc_B700E2: LitI2_Byte 0
  loc_B700E4: LitVar_Missing var_D0
  loc_B700E7: LitI2_Byte &HFF
  loc_B700E9: LitVarI2 var_BC, 0
  loc_B700EE: PopAdLdVar
  loc_B700EF: FLdPr Me
  loc_B700F2: MemLdI2 global_92
  loc_B700F5: CI4UI1
  loc_B700F6: FLdPr Me
  loc_B700F9: MemLdStr global_88
  loc_B700FC: AryLock
  loc_B700FF: Ary1LdPr
  loc_B70100: MemLdRfVar from_stack_1.global_76
  loc_B70103: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B70108: AryUnlock
  loc_B7010B: FFree1Var var_D0 = ""
  loc_B7010E: LitI2_Byte 0
  loc_B70110: LitVar_Missing var_D0
  loc_B70113: LitI2_Byte &HFF
  loc_B70115: LitVarI2 var_BC, 0
  loc_B7011A: PopAdLdVar
  loc_B7011B: FLdPr Me
  loc_B7011E: MemLdI2 global_92
  loc_B70121: CI4UI1
  loc_B70122: FLdPr Me
  loc_B70125: MemLdStr global_88
  loc_B70128: AryLock
  loc_B7012B: Ary1LdPr
  loc_B7012C: MemLdRfVar from_stack_1.global_80
  loc_B7012F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B70134: AryUnlock
  loc_B70137: FFree1Var var_D0 = ""
  loc_B7013A: LitI2_Byte 1
  loc_B7013C: FLdPr Me
  loc_B7013F: MemLdRfVar from_stack_1.global_98
  loc_B70142: FLdPr Me
  loc_B70145: MemLdI2 global_92
  loc_B70148: CI4UI1
  loc_B70149: FLdPr Me
  loc_B7014C: MemLdStr global_88
  loc_B7014F: Ary1LdPr
  loc_B70150: MemLdStr bGenerado
  loc_B70153: LitI2_Byte 1
  loc_B70155: FnUBound
  loc_B70157: CI2I4
  loc_B70158: ForI2 var_140
  loc_B7015E: FLdRfVar var_AC
  loc_B70161: LitVarStr var_BC, "CucuPers"
  loc_B70166: PopAdLdVar
  loc_B70167: FLdRfVar var_A8
  loc_B7016A: FLdRfVar var_98
  loc_B7016D: FLdPr var_88
  loc_B70170: from_stack_1v = clsbase.RsFrmGet()
  loc_B70175: FLdPr var_98
  loc_B70178:  = Me.Fields
  loc_B7017D: FLdPr var_A8
  loc_B70180: from_stack_2 = Me.Item(from_stack_1)
  loc_B70185: LitI2_Byte 0
  loc_B70187: LitVar_Missing var_E0
  loc_B7018A: LitI2_Byte 0
  loc_B7018C: FLdZeroAd var_AC
  loc_B7018F: CVarAd
  loc_B70193: PopAdLdVar
  loc_B70194: FLdPr Me
  loc_B70197: MemLdI2 global_98
  loc_B7019A: CI4UI1
  loc_B7019B: FLdPr Me
  loc_B7019E: MemLdI2 global_92
  loc_B701A1: CI4UI1
  loc_B701A2: FLdPr Me
  loc_B701A5: MemLdStr global_88
  loc_B701A8: AryLock
  loc_B701AB: Ary1LdPr
  loc_B701AC: MemLdStr bGenerado
  loc_B701AF: AryLock
  loc_B701B2: Ary1LdPr
  loc_B701B3: MemLdRfVar from_stack_1.global_0
  loc_B701B6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B701BB: AryUnlock
  loc_B701BE: AryUnlock
  loc_B701C1: FFreeAd var_98 = ""
  loc_B701C8: FFreeVar var_D0 = ""
  loc_B701CF: FLdRfVar var_AC
  loc_B701D2: LitVarStr var_BC, "OrdeCheq"
  loc_B701D7: PopAdLdVar
  loc_B701D8: FLdRfVar var_A8
  loc_B701DB: FLdRfVar var_98
  loc_B701DE: FLdPr var_88
  loc_B701E1: from_stack_1v = clsbase.RsFrmGet()
  loc_B701E6: FLdPr var_98
  loc_B701E9:  = Me.Fields
  loc_B701EE: FLdPr var_A8
  loc_B701F1: from_stack_2 = Me.Item(from_stack_1)
  loc_B701F6: LitI2_Byte 0
  loc_B701F8: LitVar_Missing var_E0
  loc_B701FB: LitI2_Byte 0
  loc_B701FD: FLdZeroAd var_AC
  loc_B70200: CVarAd
  loc_B70204: PopAdLdVar
  loc_B70205: FLdPr Me
  loc_B70208: MemLdI2 global_98
  loc_B7020B: CI4UI1
  loc_B7020C: FLdPr Me
  loc_B7020F: MemLdI2 global_92
  loc_B70212: CI4UI1
  loc_B70213: FLdPr Me
  loc_B70216: MemLdStr global_88
  loc_B70219: AryLock
  loc_B7021C: Ary1LdPr
  loc_B7021D: MemLdStr bGenerado
  loc_B70220: AryLock
  loc_B70223: Ary1LdPr
  loc_B70224: MemLdRfVar from_stack_1.global_4
  loc_B70227: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7022C: AryUnlock
  loc_B7022F: AryUnlock
  loc_B70232: FFreeAd var_98 = ""
  loc_B70239: FFreeVar var_D0 = ""
  loc_B70240: FLdRfVar var_AC
  loc_B70243: LitVarStr var_BC, "CodiBanc"
  loc_B70248: PopAdLdVar
  loc_B70249: FLdRfVar var_A8
  loc_B7024C: FLdRfVar var_98
  loc_B7024F: FLdPr var_88
  loc_B70252: from_stack_1v = clsbase.RsFrmGet()
  loc_B70257: FLdPr var_98
  loc_B7025A:  = Me.Fields
  loc_B7025F: FLdPr var_A8
  loc_B70262: from_stack_2 = Me.Item(from_stack_1)
  loc_B70267: LitI2_Byte 0
  loc_B70269: LitVar_Missing var_E0
  loc_B7026C: LitI2_Byte 0
  loc_B7026E: FLdZeroAd var_AC
  loc_B70271: CVarAd
  loc_B70275: PopAdLdVar
  loc_B70276: FLdPr Me
  loc_B70279: MemLdI2 global_98
  loc_B7027C: CI4UI1
  loc_B7027D: FLdPr Me
  loc_B70280: MemLdI2 global_92
  loc_B70283: CI4UI1
  loc_B70284: FLdPr Me
  loc_B70287: MemLdStr global_88
  loc_B7028A: AryLock
  loc_B7028D: Ary1LdPr
  loc_B7028E: MemLdStr bGenerado
  loc_B70291: AryLock
  loc_B70294: Ary1LdPr
  loc_B70295: MemLdRfVar from_stack_1.global_8
  loc_B70298: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7029D: AryUnlock
  loc_B702A0: AryUnlock
  loc_B702A3: FFreeAd var_98 = ""
  loc_B702AA: FFreeVar var_D0 = ""
  loc_B702B1: FLdRfVar var_AC
  loc_B702B4: LitVarStr var_BC, "DetaBanc"
  loc_B702B9: PopAdLdVar
  loc_B702BA: FLdRfVar var_A8
  loc_B702BD: FLdRfVar var_98
  loc_B702C0: FLdPr var_88
  loc_B702C3: from_stack_1v = clsbase.RsFrmGet()
  loc_B702C8: FLdPr var_98
  loc_B702CB:  = Me.Fields
  loc_B702D0: FLdPr var_A8
  loc_B702D3: from_stack_2 = Me.Item(from_stack_1)
  loc_B702D8: LitI2_Byte 0
  loc_B702DA: LitVar_Missing var_E0
  loc_B702DD: LitI2_Byte 0
  loc_B702DF: FLdZeroAd var_AC
  loc_B702E2: CVarAd
  loc_B702E6: PopAdLdVar
  loc_B702E7: FLdPr Me
  loc_B702EA: MemLdI2 global_98
  loc_B702ED: CI4UI1
  loc_B702EE: FLdPr Me
  loc_B702F1: MemLdI2 global_92
  loc_B702F4: CI4UI1
  loc_B702F5: FLdPr Me
  loc_B702F8: MemLdStr global_88
  loc_B702FB: AryLock
  loc_B702FE: Ary1LdPr
  loc_B702FF: MemLdStr bGenerado
  loc_B70302: AryLock
  loc_B70305: Ary1LdPr
  loc_B70306: MemLdRfVar from_stack_1.global_12
  loc_B70309: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7030E: AryUnlock
  loc_B70311: AryUnlock
  loc_B70314: FFreeAd var_98 = ""
  loc_B7031B: FFreeVar var_D0 = ""
  loc_B70322: FLdRfVar var_AC
  loc_B70325: LitVarStr var_BC, "AutoCheq"
  loc_B7032A: PopAdLdVar
  loc_B7032B: FLdRfVar var_A8
  loc_B7032E: FLdRfVar var_98
  loc_B70331: FLdPr var_88
  loc_B70334: from_stack_1v = clsbase.RsFrmGet()
  loc_B70339: FLdPr var_98
  loc_B7033C:  = Me.Fields
  loc_B70341: FLdPr var_A8
  loc_B70344: from_stack_2 = Me.Item(from_stack_1)
  loc_B70349: LitI2_Byte 0
  loc_B7034B: LitVar_Missing var_E0
  loc_B7034E: LitI2_Byte 0
  loc_B70350: FLdZeroAd var_AC
  loc_B70353: CVarAd
  loc_B70357: PopAdLdVar
  loc_B70358: FLdPr Me
  loc_B7035B: MemLdI2 global_98
  loc_B7035E: CI4UI1
  loc_B7035F: FLdPr Me
  loc_B70362: MemLdI2 global_92
  loc_B70365: CI4UI1
  loc_B70366: FLdPr Me
  loc_B70369: MemLdStr global_88
  loc_B7036C: AryLock
  loc_B7036F: Ary1LdPr
  loc_B70370: MemLdStr bGenerado
  loc_B70373: AryLock
  loc_B70376: Ary1LdPr
  loc_B70377: MemLdRfVar from_stack_1.global_16
  loc_B7037A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7037F: AryUnlock
  loc_B70382: AryUnlock
  loc_B70385: FFreeAd var_98 = ""
  loc_B7038C: FFreeVar var_D0 = ""
  loc_B70393: FLdRfVar var_D0
  loc_B70396: FLdRfVar var_AC
  loc_B70399: LitVarStr var_BC, "AutoCheq"
  loc_B7039E: PopAdLdVar
  loc_B7039F: FLdRfVar var_A8
  loc_B703A2: FLdRfVar var_98
  loc_B703A5: FLdPr var_88
  loc_B703A8: from_stack_1v = clsbase.RsFrmGet()
  loc_B703AD: FLdPr var_98
  loc_B703B0:  = Me.Fields
  loc_B703B5: FLdPr var_A8
  loc_B703B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B703BD: FLdPr var_AC
  loc_B703C0:  = Me.Value
  loc_B703C5: FLdRfVar var_F0
  loc_B703C8: FLdRfVar var_14C
  loc_B703CB: LitVarStr var_120, "AutoCheq"
  loc_B703D0: PopAdLdVar
  loc_B703D1: FLdRfVar var_148
  loc_B703D4: FLdRfVar var_C0
  loc_B703D7: FLdPr var_88
  loc_B703DA: from_stack_1v = clsbase.RsFrmGet()
  loc_B703DF: FLdPr var_C0
  loc_B703E2:  = Me.Fields
  loc_B703E7: FLdPr var_148
  loc_B703EA: from_stack_2 = Me.Item(from_stack_1)
  loc_B703EF: FLdPr var_14C
  loc_B703F2:  = Me.Value
  loc_B703F7: FLdRfVar var_130
  loc_B703FA: FLdRfVar var_178
  loc_B703FD: LitVarStr var_174, "AutoCheq"
  loc_B70402: PopAdLdVar
  loc_B70403: FLdRfVar var_164
  loc_B70406: FLdRfVar var_160
  loc_B70409: FLdPr var_88
  loc_B7040C: from_stack_1v = clsbase.RsFrmGet()
  loc_B70411: FLdPr var_160
  loc_B70414:  = Me.Fields
  loc_B70419: FLdPr var_164
  loc_B7041C: from_stack_2 = Me.Item(from_stack_1)
  loc_B70421: FLdPr var_178
  loc_B70424:  = Me.Value
  loc_B70429: LitVarStr var_1D8, vbNullString
  loc_B7042E: FStVarCopyObj var_1E8
  loc_B70431: FLdRfVar var_1E8
  loc_B70434: LitVarStr var_1B8, "transferencia"
  loc_B70439: FStVarCopyObj var_1C8
  loc_B7043C: FLdRfVar var_1C8
  loc_B7043F: FLdRfVar var_130
  loc_B70442: LitVarI2 var_188, 3
  loc_B70447: HardType
  loc_B70448: EqVar var_198
  loc_B7044C: FStVar var_1A8
  loc_B70450: FLdRfVar var_1A8
  loc_B70453: FLdRfVar var_1F8
  loc_B70456: ImpAdCallFPR4  = IIf(, , )
  loc_B7045B: FLdRfVar var_1F8
  loc_B7045E: LitVarStr var_218, "cheque impreso"
  loc_B70463: FStVarCopyObj var_228
  loc_B70466: FLdRfVar var_228
  loc_B70469: FLdRfVar var_F0
  loc_B7046C: LitVarI2 var_15C, 2
  loc_B70471: HardType
  loc_B70472: EqVar var_110
  loc_B70476: FStVar var_208
  loc_B7047A: FLdRfVar var_208
  loc_B7047D: FLdRfVar var_238
  loc_B70480: ImpAdCallFPR4  = IIf(, , )
  loc_B70485: FLdRfVar var_238
  loc_B70488: LitVarStr var_258, "cheque manual"
  loc_B7048D: FStVarCopyObj var_268
  loc_B70490: FLdRfVar var_268
  loc_B70493: FLdRfVar var_D0
  loc_B70496: LitVarI2 var_100, 1
  loc_B7049B: HardType
  loc_B7049C: EqVar var_E0
  loc_B704A0: FStVar var_248
  loc_B704A4: FLdRfVar var_248
  loc_B704A7: FLdRfVar var_278
  loc_B704AA: ImpAdCallFPR4  = IIf(, , )
  loc_B704AF: LitI2_Byte 0
  loc_B704B1: LitVar_Missing var_298
  loc_B704B4: LitI2_Byte 0
  loc_B704B6: FLdVar var_278
  loc_B704BA: FLdPr Me
  loc_B704BD: MemLdI2 global_98
  loc_B704C0: CI4UI1
  loc_B704C1: FLdPr Me
  loc_B704C4: MemLdI2 global_92
  loc_B704C7: CI4UI1
  loc_B704C8: FLdPr Me
  loc_B704CB: MemLdStr global_88
  loc_B704CE: AryLock
  loc_B704D1: Ary1LdPr
  loc_B704D2: MemLdStr bGenerado
  loc_B704D5: AryLock
  loc_B704D8: Ary1LdPr
  loc_B704D9: MemLdRfVar from_stack_1.global_20
  loc_B704DC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B704E1: AryUnlock
  loc_B704E4: AryUnlock
  loc_B704E7: FFreeAd var_98 = "": var_A8 = "": var_AC = "": var_C0 = "": var_148 = "": var_14C = "": var_160 = "": var_164 = ""
  loc_B704FC: FFreeVar var_D0 = "": var_F0 = "": var_130 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_1F8 = "": var_248 = "": var_268 = "": var_238 = "": var_278 = ""
  loc_B7051B: FLdRfVar var_D0
  loc_B7051E: FLdRfVar var_AC
  loc_B70521: LitVarStr var_BC, "NumeMoba"
  loc_B70526: PopAdLdVar
  loc_B70527: FLdRfVar var_A8
  loc_B7052A: FLdRfVar var_98
  loc_B7052D: FLdPr var_88
  loc_B70530: from_stack_1v = clsbase.RsFrmGet()
  loc_B70535: FLdPr var_98
  loc_B70538:  = Me.Fields
  loc_B7053D: FLdPr var_A8
  loc_B70540: from_stack_2 = Me.Item(from_stack_1)
  loc_B70545: FLdPr var_AC
  loc_B70548:  = Me.Value
  loc_B7054D: FLdRfVar var_14C
  loc_B70550: LitVarStr var_100, "NumeMoba"
  loc_B70555: PopAdLdVar
  loc_B70556: FLdRfVar var_148
  loc_B70559: FLdRfVar var_C0
  loc_B7055C: FLdPr var_88
  loc_B7055F: from_stack_1v = clsbase.RsFrmGet()
  loc_B70564: FLdPr var_C0
  loc_B70567:  = Me.Fields
  loc_B7056C: FLdPr var_148
  loc_B7056F: from_stack_2 = Me.Item(from_stack_1)
  loc_B70574: LitVarStr var_15C, "&nbsp;"
  loc_B70579: FStVarCopyObj var_F0
  loc_B7057C: FLdRfVar var_F0
  loc_B7057F: FLdZeroAd var_14C
  loc_B70582: CVarAd
  loc_B70586: FLdRfVar var_D0
  loc_B70589: FnCStrVar
  loc_B7058B: FStStrNoPop var_8C
  loc_B7058E: LitStr "0"
  loc_B70591: NeStr
  loc_B70593: CVarBoolI2 var_120
  loc_B70597: FLdRfVar var_110
  loc_B7059A: ImpAdCallFPR4  = IIf(, , )
  loc_B7059F: LitI2_Byte 0
  loc_B705A1: LitVar_Missing var_130
  loc_B705A4: LitI2_Byte 0
  loc_B705A6: FLdVar var_110
  loc_B705AA: FLdPr Me
  loc_B705AD: MemLdI2 global_98
  loc_B705B0: CI4UI1
  loc_B705B1: FLdPr Me
  loc_B705B4: MemLdI2 global_92
  loc_B705B7: CI4UI1
  loc_B705B8: FLdPr Me
  loc_B705BB: MemLdStr global_88
  loc_B705BE: AryLock
  loc_B705C1: Ary1LdPr
  loc_B705C2: MemLdStr bGenerado
  loc_B705C5: AryLock
  loc_B705C8: Ary1LdPr
  loc_B705C9: MemLdRfVar from_stack_1.global_24
  loc_B705CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B705D1: AryUnlock
  loc_B705D4: AryUnlock
  loc_B705D7: FFree1Str var_8C
  loc_B705DA: FFreeAd var_98 = "": var_A8 = "": var_AC = "": var_C0 = ""
  loc_B705E7: FFreeVar var_D0 = "": var_120 = "": var_E0 = "": var_F0 = "": var_110 = ""
  loc_B705F6: FLdRfVar var_AC
  loc_B705F9: LitVarStr var_BC, "FechCheq"
  loc_B705FE: PopAdLdVar
  loc_B705FF: FLdRfVar var_A8
  loc_B70602: FLdRfVar var_98
  loc_B70605: FLdPr var_88
  loc_B70608: from_stack_1v = clsbase.RsFrmGet()
  loc_B7060D: FLdPr var_98
  loc_B70610:  = Me.Fields
  loc_B70615: FLdPr var_A8
  loc_B70618: from_stack_2 = Me.Item(from_stack_1)
  loc_B7061D: LitI4 1
  loc_B70622: LitI4 1
  loc_B70627: LitVarStr var_100, "dd/mm/yyyy"
  loc_B7062C: FStVarCopyObj var_E0
  loc_B7062F: FLdRfVar var_E0
  loc_B70632: FLdZeroAd var_AC
  loc_B70635: CVarAd
  loc_B70639: ImpAdCallI2 Format$(, )
  loc_B7063E: FStStr var_8C
  loc_B70641: LitI2_Byte 0
  loc_B70643: LitVar_Missing var_110
  loc_B70646: LitI2_Byte 0
  loc_B70648: FLdZeroAd var_8C
  loc_B7064B: CVarStr var_F0
  loc_B7064E: PopAdLdVar
  loc_B7064F: FLdPr Me
  loc_B70652: MemLdI2 global_98
  loc_B70655: CI4UI1
  loc_B70656: FLdPr Me
  loc_B70659: MemLdI2 global_92
  loc_B7065C: CI4UI1
  loc_B7065D: FLdPr Me
  loc_B70660: MemLdStr global_88
  loc_B70663: AryLock
  loc_B70666: Ary1LdPr
  loc_B70667: MemLdStr bGenerado
  loc_B7066A: AryLock
  loc_B7066D: Ary1LdPr
  loc_B7066E: MemLdRfVar from_stack_1.global_28
  loc_B70671: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B70676: AryUnlock
  loc_B70679: AryUnlock
  loc_B7067C: FFree1Str var_8C
  loc_B7067F: FFreeAd var_98 = ""
  loc_B70686: FFreeVar var_D0 = "": var_E0 = "": var_F0 = ""
  loc_B70691: FLdRfVar var_D0
  loc_B70694: FLdRfVar var_AC
  loc_B70697: LitVarStr var_BC, "AutoCheq"
  loc_B7069C: PopAdLdVar
  loc_B7069D: FLdRfVar var_A8
  loc_B706A0: FLdRfVar var_98
  loc_B706A3: FLdPr var_88
  loc_B706A6: from_stack_1v = clsbase.RsFrmGet()
  loc_B706AB: FLdPr var_98
  loc_B706AE:  = Me.Fields
  loc_B706B3: FLdPr var_A8
  loc_B706B6: from_stack_2 = Me.Item(from_stack_1)
  loc_B706BB: FLdPr var_AC
  loc_B706BE:  = Me.Value
  loc_B706C3: FLdRfVar var_D0
  loc_B706C6: LitVarI2 var_100, 1
  loc_B706CB: HardType
  loc_B706CC: EqVar var_E0
  loc_B706D0: FLdRfVar var_F0
  loc_B706D3: FLdRfVar var_14C
  loc_B706D6: LitVarStr var_120, "AutoCheq"
  loc_B706DB: PopAdLdVar
  loc_B706DC: FLdRfVar var_148
  loc_B706DF: FLdRfVar var_C0
  loc_B706E2: FLdPr var_88
  loc_B706E5: from_stack_1v = clsbase.RsFrmGet()
  loc_B706EA: FLdPr var_C0
  loc_B706ED:  = Me.Fields
  loc_B706F2: FLdPr var_148
  loc_B706F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B706FA: FLdPr var_14C
  loc_B706FD:  = Me.Value
  loc_B70702: FLdRfVar var_F0
  loc_B70705: LitVarI2 var_15C, 2
  loc_B7070A: HardType
  loc_B7070B: EqVar var_110
  loc_B7070F: OrVar var_130
  loc_B70713: FLdRfVar var_178
  loc_B70716: LitVarStr var_174, "FeanCheq"
  loc_B7071B: PopAdLdVar
  loc_B7071C: FLdRfVar var_164
  loc_B7071F: FLdRfVar var_160
  loc_B70722: FLdPr var_88
  loc_B70725: from_stack_1v = clsbase.RsFrmGet()
  loc_B7072A: FLdPr var_160
  loc_B7072D:  = Me.Fields
  loc_B70732: FLdPr var_164
  loc_B70735: from_stack_2 = Me.Item(from_stack_1)
  loc_B7073A: FLdZeroAd var_178
  loc_B7073D: CVarAd
  loc_B70741: ImpAdCallI2 IsNull()
  loc_B70746: CVarBoolI2 var_188
  loc_B7074A: AndVar var_1A8
  loc_B7074E: FLdRfVar var_1C8
  loc_B70751: FLdRfVar var_2A4
  loc_B70754: LitVarStr var_1B8, "NumeMoba"
  loc_B70759: PopAdLdVar
  loc_B7075A: FLdRfVar var_2A0
  loc_B7075D: FLdRfVar var_29C
  loc_B70760: FLdPr var_88
  loc_B70763: from_stack_1v = clsbase.RsFrmGet()
  loc_B70768: FLdPr var_29C
  loc_B7076B:  = Me.Fields
  loc_B70770: FLdPr var_2A0
  loc_B70773: from_stack_2 = Me.Item(from_stack_1)
  loc_B70778: FLdPr var_2A4
  loc_B7077B:  = Me.Value
  loc_B70780: FLdRfVar var_1C8
  loc_B70783: FnCLngVar
  loc_B70785: LitI4 0
  loc_B7078A: NeI4
  loc_B7078B: CVarBoolI2 var_1D8
  loc_B7078F: AndVar var_1E8
  loc_B70793: CBoolVarNull
  loc_B70795: FFreeAd var_98 = "": var_A8 = "": var_AC = "": var_C0 = "": var_148 = "": var_14C = "": var_160 = "": var_164 = "": var_29C = "": var_2A0 = ""
  loc_B707AE: FFreeVar var_D0 = "": var_F0 = "": var_198 = "": var_188 = "": var_1C8 = ""
  loc_B707BD: BranchF loc_B70849
  loc_B707C0: FLdRfVar var_AC
  loc_B707C3: LitVarStr var_BC, "ImpoCheq"
  loc_B707C8: PopAdLdVar
  loc_B707C9: FLdRfVar var_A8
  loc_B707CC: FLdRfVar var_98
  loc_B707CF: FLdPr var_88
  loc_B707D2: from_stack_1v = clsbase.RsFrmGet()
  loc_B707D7: FLdPr var_98
  loc_B707DA:  = Me.Fields
  loc_B707DF: FLdPr var_A8
  loc_B707E2: from_stack_2 = Me.Item(from_stack_1)
  loc_B707E7: LitI2_Byte 0
  loc_B707E9: FLdPr Me
  loc_B707EC: MemLdI2 global_92
  loc_B707EF: CI4UI1
  loc_B707F0: FLdPr Me
  loc_B707F3: MemLdStr global_88
  loc_B707F6: AryLock
  loc_B707F9: Ary1LdPr
  loc_B707FA: MemLdRfVar from_stack_1.global_72
  loc_B707FD: CVarRef
  loc_B70802: LitI2_Byte &HFF
  loc_B70804: FLdZeroAd var_AC
  loc_B70807: CVarAd
  loc_B7080B: PopAdLdVar
  loc_B7080C: FLdPr Me
  loc_B7080F: MemLdI2 global_98
  loc_B70812: CI4UI1
  loc_B70813: FLdPr Me
  loc_B70816: MemLdI2 global_92
  loc_B70819: CI4UI1
  loc_B7081A: FLdPr Me
  loc_B7081D: MemLdStr global_88
  loc_B70820: AryLock
  loc_B70823: Ary1LdPr
  loc_B70824: MemLdStr bGenerado
  loc_B70827: AryLock
  loc_B7082A: Ary1LdPr
  loc_B7082B: MemLdRfVar from_stack_1.global_36
  loc_B7082E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B70833: AryUnlock
  loc_B70836: AryUnlock
  loc_B70839: AryUnlock
  loc_B7083C: FFreeAd var_98 = ""
  loc_B70843: FFree1Var var_D0 = ""
  loc_B70846: Branch loc_B70B1C
  loc_B70849: FLdRfVar var_D0
  loc_B7084C: FLdRfVar var_AC
  loc_B7084F: LitVarStr var_BC, "AutoCheq"
  loc_B70854: PopAdLdVar
  loc_B70855: FLdRfVar var_A8
  loc_B70858: FLdRfVar var_98
  loc_B7085B: FLdPr var_88
  loc_B7085E: from_stack_1v = clsbase.RsFrmGet()
  loc_B70863: FLdPr var_98
  loc_B70866:  = Me.Fields
  loc_B7086B: FLdPr var_A8
  loc_B7086E: from_stack_2 = Me.Item(from_stack_1)
  loc_B70873: FLdPr var_AC
  loc_B70876:  = Me.Value
  loc_B7087B: FLdRfVar var_D0
  loc_B7087E: LitVarI2 var_100, 1
  loc_B70883: HardType
  loc_B70884: EqVar var_E0
  loc_B70888: FLdRfVar var_F0
  loc_B7088B: FLdRfVar var_14C
  loc_B7088E: LitVarStr var_120, "AutoCheq"
  loc_B70893: PopAdLdVar
  loc_B70894: FLdRfVar var_148
  loc_B70897: FLdRfVar var_C0
  loc_B7089A: FLdPr var_88
  loc_B7089D: from_stack_1v = clsbase.RsFrmGet()
  loc_B708A2: FLdPr var_C0
  loc_B708A5:  = Me.Fields
  loc_B708AA: FLdPr var_148
  loc_B708AD: from_stack_2 = Me.Item(from_stack_1)
  loc_B708B2: FLdPr var_14C
  loc_B708B5:  = Me.Value
  loc_B708BA: FLdRfVar var_F0
  loc_B708BD: LitVarI2 var_15C, 2
  loc_B708C2: HardType
  loc_B708C3: EqVar var_110
  loc_B708C7: OrVar var_130
  loc_B708CB: FLdRfVar var_178
  loc_B708CE: LitVarStr var_174, "FeanCheq"
  loc_B708D3: PopAdLdVar
  loc_B708D4: FLdRfVar var_164
  loc_B708D7: FLdRfVar var_160
  loc_B708DA: FLdPr var_88
  loc_B708DD: from_stack_1v = clsbase.RsFrmGet()
  loc_B708E2: FLdPr var_160
  loc_B708E5:  = Me.Fields
  loc_B708EA: FLdPr var_164
  loc_B708ED: from_stack_2 = Me.Item(from_stack_1)
  loc_B708F2: FLdZeroAd var_178
  loc_B708F5: CVarAd
  loc_B708F9: ImpAdCallI2 IsNull()
  loc_B708FE: CVarBoolI2 var_188
  loc_B70902: AndVar var_1A8
  loc_B70906: FLdRfVar var_1C8
  loc_B70909: FLdRfVar var_2A4
  loc_B7090C: LitVarStr var_1B8, "NumeMoba"
  loc_B70911: PopAdLdVar
  loc_B70912: FLdRfVar var_2A0
  loc_B70915: FLdRfVar var_29C
  loc_B70918: FLdPr var_88
  loc_B7091B: from_stack_1v = clsbase.RsFrmGet()
  loc_B70920: FLdPr var_29C
  loc_B70923:  = Me.Fields
  loc_B70928: FLdPr var_2A0
  loc_B7092B: from_stack_2 = Me.Item(from_stack_1)
  loc_B70930: FLdPr var_2A4
  loc_B70933:  = Me.Value
  loc_B70938: FLdRfVar var_1C8
  loc_B7093B: FnCLngVar
  loc_B7093D: LitI4 0
  loc_B70942: EqI4
  loc_B70943: CVarBoolI2 var_1D8
  loc_B70947: AndVar var_1E8
  loc_B7094B: CBoolVarNull
  loc_B7094D: FFreeAd var_98 = "": var_A8 = "": var_AC = "": var_C0 = "": var_148 = "": var_14C = "": var_160 = "": var_164 = "": var_29C = "": var_2A0 = ""
  loc_B70966: FFreeVar var_D0 = "": var_F0 = "": var_198 = "": var_188 = "": var_1C8 = ""
  loc_B70975: BranchF loc_B70A01
  loc_B70978: FLdRfVar var_AC
  loc_B7097B: LitVarStr var_BC, "ImpoCheq"
  loc_B70980: PopAdLdVar
  loc_B70981: FLdRfVar var_A8
  loc_B70984: FLdRfVar var_98
  loc_B70987: FLdPr var_88
  loc_B7098A: from_stack_1v = clsbase.RsFrmGet()
  loc_B7098F: FLdPr var_98
  loc_B70992:  = Me.Fields
  loc_B70997: FLdPr var_A8
  loc_B7099A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7099F: LitI2_Byte 0
  loc_B709A1: FLdPr Me
  loc_B709A4: MemLdI2 global_92
  loc_B709A7: CI4UI1
  loc_B709A8: FLdPr Me
  loc_B709AB: MemLdStr global_88
  loc_B709AE: AryLock
  loc_B709B1: Ary1LdPr
  loc_B709B2: MemLdRfVar from_stack_1.global_76
  loc_B709B5: CVarRef
  loc_B709BA: LitI2_Byte &HFF
  loc_B709BC: FLdZeroAd var_AC
  loc_B709BF: CVarAd
  loc_B709C3: PopAdLdVar
  loc_B709C4: FLdPr Me
  loc_B709C7: MemLdI2 global_98
  loc_B709CA: CI4UI1
  loc_B709CB: FLdPr Me
  loc_B709CE: MemLdI2 global_92
  loc_B709D1: CI4UI1
  loc_B709D2: FLdPr Me
  loc_B709D5: MemLdStr global_88
  loc_B709D8: AryLock
  loc_B709DB: Ary1LdPr
  loc_B709DC: MemLdStr bGenerado
  loc_B709DF: AryLock
  loc_B709E2: Ary1LdPr
  loc_B709E3: MemLdRfVar from_stack_1.global_36
  loc_B709E6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B709EB: AryUnlock
  loc_B709EE: AryUnlock
  loc_B709F1: AryUnlock
  loc_B709F4: FFreeAd var_98 = ""
  loc_B709FB: FFree1Var var_D0 = ""
  loc_B709FE: Branch loc_B70B1C
  loc_B70A01: FLdRfVar var_D0
  loc_B70A04: FLdRfVar var_AC
  loc_B70A07: LitVarStr var_BC, "AutoCheq"
  loc_B70A0C: PopAdLdVar
  loc_B70A0D: FLdRfVar var_A8
  loc_B70A10: FLdRfVar var_98
  loc_B70A13: FLdPr var_88
  loc_B70A16: from_stack_1v = clsbase.RsFrmGet()
  loc_B70A1B: FLdPr var_98
  loc_B70A1E:  = Me.Fields
  loc_B70A23: FLdPr var_A8
  loc_B70A26: from_stack_2 = Me.Item(from_stack_1)
  loc_B70A2B: FLdPr var_AC
  loc_B70A2E:  = Me.Value
  loc_B70A33: FLdRfVar var_D0
  loc_B70A36: LitVarI2 var_100, 3
  loc_B70A3B: HardType
  loc_B70A3C: EqVar var_E0
  loc_B70A40: FLdRfVar var_14C
  loc_B70A43: LitVarStr var_120, "FeanCheq"
  loc_B70A48: PopAdLdVar
  loc_B70A49: FLdRfVar var_148
  loc_B70A4C: FLdRfVar var_C0
  loc_B70A4F: FLdPr var_88
  loc_B70A52: from_stack_1v = clsbase.RsFrmGet()
  loc_B70A57: FLdPr var_C0
  loc_B70A5A:  = Me.Fields
  loc_B70A5F: FLdPr var_148
  loc_B70A62: from_stack_2 = Me.Item(from_stack_1)
  loc_B70A67: FLdZeroAd var_14C
  loc_B70A6A: CVarAd
  loc_B70A6E: ImpAdCallI2 IsNull()
  loc_B70A73: CVarBoolI2 var_15C
  loc_B70A77: AndVar var_110
  loc_B70A7B: CBoolVarNull
  loc_B70A7D: FFreeAd var_98 = "": var_A8 = "": var_AC = "": var_C0 = ""
  loc_B70A8A: FFreeVar var_D0 = "": var_F0 = ""
  loc_B70A93: BranchF loc_B70B1C
  loc_B70A96: FLdRfVar var_AC
  loc_B70A99: LitVarStr var_BC, "ImpoCheq"
  loc_B70A9E: PopAdLdVar
  loc_B70A9F: FLdRfVar var_A8
  loc_B70AA2: FLdRfVar var_98
  loc_B70AA5: FLdPr var_88
  loc_B70AA8: from_stack_1v = clsbase.RsFrmGet()
  loc_B70AAD: FLdPr var_98
  loc_B70AB0:  = Me.Fields
  loc_B70AB5: FLdPr var_A8
  loc_B70AB8: from_stack_2 = Me.Item(from_stack_1)
  loc_B70ABD: LitI2_Byte 0
  loc_B70ABF: FLdPr Me
  loc_B70AC2: MemLdI2 global_92
  loc_B70AC5: CI4UI1
  loc_B70AC6: FLdPr Me
  loc_B70AC9: MemLdStr global_88
  loc_B70ACC: AryLock
  loc_B70ACF: Ary1LdPr
  loc_B70AD0: MemLdRfVar from_stack_1.global_80
  loc_B70AD3: CVarRef
  loc_B70AD8: LitI2_Byte &HFF
  loc_B70ADA: FLdZeroAd var_AC
  loc_B70ADD: CVarAd
  loc_B70AE1: PopAdLdVar
  loc_B70AE2: FLdPr Me
  loc_B70AE5: MemLdI2 global_98
  loc_B70AE8: CI4UI1
  loc_B70AE9: FLdPr Me
  loc_B70AEC: MemLdI2 global_92
  loc_B70AEF: CI4UI1
  loc_B70AF0: FLdPr Me
  loc_B70AF3: MemLdStr global_88
  loc_B70AF6: AryLock
  loc_B70AF9: Ary1LdPr
  loc_B70AFA: MemLdStr bGenerado
  loc_B70AFD: AryLock
  loc_B70B00: Ary1LdPr
  loc_B70B01: MemLdRfVar from_stack_1.global_36
  loc_B70B04: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B70B09: AryUnlock
  loc_B70B0C: AryUnlock
  loc_B70B0F: AryUnlock
  loc_B70B12: FFreeAd var_98 = ""
  loc_B70B19: FFree1Var var_D0 = ""
  loc_B70B1C: FLdPr var_88
  loc_B70B1F: Call clsbase.MoveSiguiente()
  loc_B70B24: FLdPr Me
  loc_B70B27: MemLdRfVar from_stack_1.global_98
  loc_B70B2A: NextI2 var_140, loc_B7015E
  loc_B70B2F: LitNothing
  loc_B70B31: FStAd var_88 
  loc_B70B35: ExitProcHresult
End Function

Private Function Proc_211_29_9CB068() '9CB068
  'Data Table: 4A8D80
  loc_9CAFB4: ZeroRetVal
  loc_9CAFB6: FLdPr Me
  loc_9CAFB9: MemLdI2 global_92
  loc_9CAFBC: CI4UI1
  loc_9CAFBD: FLdPr Me
  loc_9CAFC0: MemLdStr global_88
  loc_9CAFC3: AryLock
  loc_9CAFC6: Ary1LdRf
  loc_9CAFC7: FStR4 var_90
  loc_9CAFCA: LitStr "La orden de pago Nº "
  loc_9CAFCD: FMemLdR4 var_90(8)
  loc_9CAFD2: ConcatStr
  loc_9CAFD3: FStStrNoPop var_94
  loc_9CAFD6: LitStr " está anulada."
  loc_9CAFD9: ConcatStr
  loc_9CAFDA: FStStrNoPop var_98
  loc_9CAFDD: LitStr vbCrLf
  loc_9CAFE0: ConcatStr
  loc_9CAFE1: FStStrNoPop var_9C
  loc_9CAFE4: LitStr "Detalle: "
  loc_9CAFE7: ConcatStr
  loc_9CAFE8: FStStrNoPop var_A0
  loc_9CAFEB: FMemLdR4 var_90(12)
  loc_9CAFF0: ConcatStr
  loc_9CAFF1: FStStrNoPop var_A4
  loc_9CAFF4: LitStr vbCrLf
  loc_9CAFF7: ConcatStr
  loc_9CAFF8: FStStrNoPop var_A8
  loc_9CAFFB: LitStr "Fecha: "
  loc_9CAFFE: ConcatStr
  loc_9CAFFF: FStStrNoPop var_AC
  loc_9CB002: FMemLdR4 var_90(16)
  loc_9CB007: ConcatStr
  loc_9CB008: FStStrNoPop var_B0
  loc_9CB00B: LitStr vbCrLf
  loc_9CB00E: ConcatStr
  loc_9CB00F: FStStrNoPop var_B4
  loc_9CB012: LitStr "Expediente: "
  loc_9CB015: ConcatStr
  loc_9CB016: FStStrNoPop var_B8
  loc_9CB019: FMemLdR4 var_90(36)
  loc_9CB01E: ConcatStr
  loc_9CB01F: FStStrNoPop var_BC
  loc_9CB022: LitStr vbCrLf
  loc_9CB025: ConcatStr
  loc_9CB026: FStStrNoPop var_C0
  loc_9CB029: LitStr "Liquidación: "
  loc_9CB02C: ConcatStr
  loc_9CB02D: FStStrNoPop var_C4
  loc_9CB030: FMemLdR4 var_90(40)
  loc_9CB035: ConcatStr
  loc_9CB036: FStStr var_88
  loc_9CB039: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9CB056: LitI4 0
  loc_9CB05B: FStR4 var_90
  loc_9CB05E: AryUnlock
  loc_9CB061: ExitProcCbHresult
End Function
