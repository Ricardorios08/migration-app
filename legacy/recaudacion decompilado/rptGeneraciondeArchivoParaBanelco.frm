VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Begin VB.Form rptGeneraciondeArchivoParaBanelco
  Caption = "Geneacion de Archivos para Banelco"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptGeneraciondeArchivoParaBanelco.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9228
  ClientHeight = 5544
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 3360
    Width = 9012
    Height = 156
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptGeneraciondeArchivoParaBanelco.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5292
    Width = 9228
    Height = 252
    TabIndex = 16
    OleObjectBlob = "rptGeneraciondeArchivoParaBanelco.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 3720
    Width = 855
    Height = 735
    TabIndex = 13
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptGeneraciondeArchivoParaBanelco.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptGeneraciondeArchivoParaBanelco.frx":0C04
    Left = 8520
    Top = 3720
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3600
    Width = 3375
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3600
    Width = 4095
    Height = 1215
    TabIndex = 7
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9015
    Height = 3132
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame4
      Left = 1080
      Top = 2280
      Width = 5772
      Height = 732
      TabIndex = 21
      Begin VB.OptionButton OptAmbas
        Caption = "Ambas"
        Left = 3840
        Top = 240
        Width = 1335
        Height = 375
        TabIndex = 24
      End
      Begin VB.OptionButton OptBime
        Caption = "Bimestral"
        Left = 1800
        Top = 240
        Width = 1335
        Height = 375
        TabIndex = 23
      End
      Begin VB.OptionButton OptAnual
        Caption = "Anual"
        Left = 240
        Top = 240
        Width = 1335
        Height = 375
        TabIndex = 22
      End
    End
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2640
      Top = 1800
      Width = 2295
      Height = 420
      TabIndex = 19
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton OptLink
      Caption = "Link"
      Left = 3720
      Top = 240
      Width = 1335
      Height = 375
      TabIndex = 18
    End
    Begin VB.OptionButton OptBanelco
      Caption = "Banelco"
      Left = 2280
      Top = 240
      Width = 1335
      Height = 375
      TabIndex = 17
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7200
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2640
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptGeneraciondeArchivoParaBanelco.frx":0C68
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2640
      Top = 1365
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptGeneraciondeArchivoParaBanelco.frx":0D18
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 1800
      Top = 1800
      Width = 795
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 1800
      Top = 840
      Width = 765
      Height = 300
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1860
      Top = 1365
      Width = 705
      Height = 300
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 3360
    Width = 492
    Height = 252
    TabStop = 0   'False
    TabIndex = 15
    OleObjectBlob = "rptGeneraciondeArchivoParaBanelco.frx":0DC8
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 7200
    Top = 4080
    Width = 768
    Height = 372
    Visible = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptGeneraciondeArchivoParaBanelco.frx":0E7C
  End
End

Attribute VB_Name = "rptGeneraciondeArchivoParaBanelco"

Public bGenerado As Boolean

Private Type UDT_1_00563F18
  bStruc(52) As Byte ' String fields: 13
End Type


Private Sub cmdTxt_Click() '9D2848
  'Data Table: 4CB4F8
  loc_9D2830: LitI2_Byte &HFF
  loc_9D2832: ILdRf Me
  loc_9D2835: CastAd
  loc_9D2838: FStAdFunc var_88
  loc_9D283B: FLdRfVar var_88
  loc_9D283E: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9D2843: FFree1Ad var_88
  loc_9D2846: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A009AC
  'Data Table: 4CB4F8
  loc_A0097C: LitVarStr var_94, "Cerrando..."
  loc_A00981: PopAdLdVar
  loc_A00982: FLdPr Me
  loc_A00985: VCallAd Control_ID_statusBar
  loc_A00988: FStAdFunc var_A8
  loc_A0098B: FLdPr var_A8
  loc_A0098E: LateIdSt
  loc_A00993: FFree1Ad var_A8
  loc_A00996: ILdRf Me
  loc_A00999: FStAdNoPop
  loc_A0099D: ImpAdLdRf MemVar_D9C5D8
  loc_A009A0: NewIfNullPr Global
  loc_A009A3: Global.Unload from_stack_1
  loc_A009A8: FFree1Ad var_A8
  loc_A009AB: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C1880
  'Data Table: 4CB4F8
  loc_9C186C: FLdPr Me
  loc_9C186F: VCallAd Control_ID_DesdeMsk
  loc_9C1872: CVarAd
  loc_9C1876: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C187B: FFree1Var var_94 = ""
  loc_9C187E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A62DA0
  'Data Table: 4CB4F8
  loc_A62D44: FLdPr Me
  loc_A62D47: VCallAd Control_ID_DesdeMsk
  loc_A62D4A: FStAdFunc var_88
  loc_A62D4D: FLdPr var_88
  loc_A62D50: LateIdLdVar var_98 DispID_15 0
  loc_A62D57: CStrVarTmp
  loc_A62D58: FStStrNoPop var_9C
  loc_A62D5B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62D60: FStStrNoPop var_A0
  loc_A62D63: FLdPr Me
  loc_A62D66: MemStStrCopy
  loc_A62D6A: FFreeStr var_9C = ""
  loc_A62D71: FFree1Ad var_88
  loc_A62D74: FFree1Var var_98 = ""
  loc_A62D77: FLdPr Me
  loc_A62D7A: VCallAd Control_ID_DesdeMsk
  loc_A62D7D: FStAdFuncNoPop
  loc_A62D80: CastAd
  loc_A62D83: FStAdFunc var_A4
  loc_A62D86: FLdRfVar var_A4
  loc_A62D89: FLdPr Me
  loc_A62D8C: MemLdStr global_104
  loc_A62D8F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62D94: IStI2 arg_C
  loc_A62D97: FFreeAd var_88 = ""
  loc_A62D9E: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A1F924
  'Data Table: 4CB4F8
  loc_A1F8E0: ILdI2 KeyAscii
  loc_A1F8E3: CI4UI1
  loc_A1F8E4: LitI4 &H20
  loc_A1F8E9: EqI4
  loc_A1F8EA: BranchF loc_A1F920
  loc_A1F8ED: LitVar_Missing var_A4
  loc_A1F8F0: PopAdLdVar
  loc_A1F8F1: LitVarI4
  loc_A1F8F9: PopAdLdVar
  loc_A1F8FA: ImpAdLdRf MemVar_D930A4
  loc_A1F8FD: NewIfNullPr frmCalendario
  loc_A1F900: frmCalendario.Show from_stack_1, from_stack_2
  loc_A1F905: ImpAdLdRf MemVar_D93028
  loc_A1F908: CDargRef
  loc_A1F90C: FLdPr Me
  loc_A1F90F: VCallAd Control_ID_DesdeMsk
  loc_A1F912: FStAdFunc var_A8
  loc_A1F915: FLdPr var_A8
  loc_A1F918: LateIdSt
  loc_A1F91D: FFree1Ad var_A8
  loc_A1F920: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'A8C224
  'Data Table: 4CB4F8
  loc_A8C17C: FLdRfVar var_8A
  loc_A8C17F: FLdPr Me
  loc_A8C182: VCallAd Control_ID_OficinaCbo
  loc_A8C185: FStAdFunc var_88
  loc_A8C188: FLdPr var_88
  loc_A8C18B:  = Me.ListIndex
  loc_A8C190: FLdI2 var_8A
  loc_A8C193: FStI2 var_8C
  loc_A8C196: FFree1Ad var_88
  loc_A8C199: FLdI2 var_8C
  loc_A8C19C: LitI2_Byte 0
  loc_A8C19E: EqI2
  loc_A8C19F: BranchF loc_A8C1AD
  loc_A8C1A2: LitI2_Byte 1
  loc_A8C1A4: CUI1I2
  loc_A8C1A6: ImpAdStUI1 MemVar_D93038
  loc_A8C1AA: Branch loc_A8C222
  loc_A8C1AD: FLdI2 var_8C
  loc_A8C1B0: LitI2_Byte 1
  loc_A8C1B2: EqI2
  loc_A8C1B3: BranchF loc_A8C1C1
  loc_A8C1B6: LitI2_Byte 2
  loc_A8C1B8: CUI1I2
  loc_A8C1BA: ImpAdStUI1 MemVar_D93038
  loc_A8C1BE: Branch loc_A8C222
  loc_A8C1C1: FLdI2 var_8C
  loc_A8C1C4: LitI2_Byte 2
  loc_A8C1C6: EqI2
  loc_A8C1C7: BranchF loc_A8C1D5
  loc_A8C1CA: LitI2_Byte 3
  loc_A8C1CC: CUI1I2
  loc_A8C1CE: ImpAdStUI1 MemVar_D93038
  loc_A8C1D2: Branch loc_A8C222
  loc_A8C1D5: FLdI2 var_8C
  loc_A8C1D8: LitI2_Byte 3
  loc_A8C1DA: EqI2
  loc_A8C1DB: BranchF loc_A8C1E9
  loc_A8C1DE: LitI2_Byte 4
  loc_A8C1E0: CUI1I2
  loc_A8C1E2: ImpAdStUI1 MemVar_D93038
  loc_A8C1E6: Branch loc_A8C222
  loc_A8C1E9: FLdI2 var_8C
  loc_A8C1EC: LitI2_Byte 4
  loc_A8C1EE: EqI2
  loc_A8C1EF: BranchF loc_A8C1FD
  loc_A8C1F2: LitI2_Byte 5
  loc_A8C1F4: CUI1I2
  loc_A8C1F6: ImpAdStUI1 MemVar_D93038
  loc_A8C1FA: Branch loc_A8C222
  loc_A8C1FD: FLdI2 var_8C
  loc_A8C200: LitI2_Byte 5
  loc_A8C202: EqI2
  loc_A8C203: BranchF loc_A8C211
  loc_A8C206: LitI2_Byte 6
  loc_A8C208: CUI1I2
  loc_A8C20A: ImpAdStUI1 MemVar_D93038
  loc_A8C20E: Branch loc_A8C222
  loc_A8C211: FLdI2 var_8C
  loc_A8C214: LitI2_Byte 6
  loc_A8C216: EqI2
  loc_A8C217: BranchF loc_A8C222
  loc_A8C21A: LitI2_Byte 7
  loc_A8C21C: CUI1I2
  loc_A8C21E: ImpAdStUI1 MemVar_D93038
  loc_A8C222: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AD1230
  'Data Table: 4CB4F8
  loc_AD10F8: LitI2_Byte 0
  loc_AD10FA: FLdPr Me
  loc_AD10FD: MemStI2 bGenerado
  loc_AD1100: LitI2_Byte &HFF
  loc_AD1102: FLdPr Me
  loc_AD1105: VCallAd Control_ID_OptBanelco
  loc_AD1108: FStAdFunc var_88
  loc_AD110B: FLdPr var_88
  loc_AD110E: Me.Value = from_stack_1b
  loc_AD1113: FFree1Ad var_88
  loc_AD1116: LitI2_Byte 0
  loc_AD1118: FLdPr Me
  loc_AD111B: VCallAd Control_ID_OptLink
  loc_AD111E: FStAdFunc var_88
  loc_AD1121: FLdPr var_88
  loc_AD1124: Me.Value = from_stack_1b
  loc_AD1129: FFree1Ad var_88
  loc_AD112C: LitVar_Missing var_98
  loc_AD112F: PopAdLdVar
  loc_AD1130: LitStr "Inmueble"
  loc_AD1133: FLdPr Me
  loc_AD1136: VCallAd Control_ID_OficinaCbo
  loc_AD1139: FStAdFunc var_88
  loc_AD113C: FLdPr var_88
  loc_AD113F: Me.AddItem from_stack_1, from_stack_2
  loc_AD1144: FFree1Ad var_88
  loc_AD1147: LitVar_Missing var_98
  loc_AD114A: PopAdLdVar
  loc_AD114B: LitStr "Comercio"
  loc_AD114E: FLdPr Me
  loc_AD1151: VCallAd Control_ID_OficinaCbo
  loc_AD1154: FStAdFunc var_88
  loc_AD1157: FLdPr var_88
  loc_AD115A: Me.AddItem from_stack_1, from_stack_2
  loc_AD115F: FFree1Ad var_88
  loc_AD1162: LitVar_Missing var_98
  loc_AD1165: PopAdLdVar
  loc_AD1166: LitStr "Deudores Varios"
  loc_AD1169: FLdPr Me
  loc_AD116C: VCallAd Control_ID_OficinaCbo
  loc_AD116F: FStAdFunc var_88
  loc_AD1172: FLdPr var_88
  loc_AD1175: Me.AddItem from_stack_1, from_stack_2
  loc_AD117A: FFree1Ad var_88
  loc_AD117D: LitVar_Missing var_98
  loc_AD1180: PopAdLdVar
  loc_AD1181: LitStr "Cementerio"
  loc_AD1184: FLdPr Me
  loc_AD1187: VCallAd Control_ID_OficinaCbo
  loc_AD118A: FStAdFunc var_88
  loc_AD118D: FLdPr var_88
  loc_AD1190: Me.AddItem from_stack_1, from_stack_2
  loc_AD1195: FFree1Ad var_88
  loc_AD1198: LitVar_Missing var_98
  loc_AD119B: PopAdLdVar
  loc_AD119C: LitStr "Transito"
  loc_AD119F: FLdPr Me
  loc_AD11A2: VCallAd Control_ID_OficinaCbo
  loc_AD11A5: FStAdFunc var_88
  loc_AD11A8: FLdPr var_88
  loc_AD11AB: Me.AddItem from_stack_1, from_stack_2
  loc_AD11B0: FFree1Ad var_88
  loc_AD11B3: LitVar_Missing var_98
  loc_AD11B6: PopAdLdVar
  loc_AD11B7: LitStr "Publicidad"
  loc_AD11BA: FLdPr Me
  loc_AD11BD: VCallAd Control_ID_OficinaCbo
  loc_AD11C0: FStAdFunc var_88
  loc_AD11C3: FLdPr var_88
  loc_AD11C6: Me.AddItem from_stack_1, from_stack_2
  loc_AD11CB: FFree1Ad var_88
  loc_AD11CE: LitVar_Missing var_98
  loc_AD11D1: PopAdLdVar
  loc_AD11D2: LitStr "Antena"
  loc_AD11D5: FLdPr Me
  loc_AD11D8: VCallAd Control_ID_OficinaCbo
  loc_AD11DB: FStAdFunc var_88
  loc_AD11DE: FLdPr var_88
  loc_AD11E1: Me.AddItem from_stack_1, from_stack_2
  loc_AD11E6: FFree1Ad var_88
  loc_AD11E9: LitI2_Byte 0
  loc_AD11EB: FLdPr Me
  loc_AD11EE: VCallAd Control_ID_OficinaCbo
  loc_AD11F1: FStAdFunc var_88
  loc_AD11F4: FLdPr var_88
  loc_AD11F7: Me.ListIndex = from_stack_1
  loc_AD11FC: FFree1Ad var_88
  loc_AD11FF: LitI2_Byte 0
  loc_AD1201: ILdRf Me
  loc_AD1204: CastAd
  loc_AD1207: FStAdFunc var_88
  loc_AD120A: FLdRfVar var_88
  loc_AD120D: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AD1212: FFree1Ad var_88
  loc_AD1215: Call HabilitarCriterio()
  loc_AD121A: ILdRf Me
  loc_AD121D: CastAd
  loc_AD1220: FStAdFunc var_88
  loc_AD1223: FLdRfVar var_88
  loc_AD1226: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD122B: FFree1Ad var_88
  loc_AD122E: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9C18C8
  'Data Table: 4CB4F8
  loc_9C18B4: FLdPr Me
  loc_9C18B7: VCallAd Control_ID_HastaMsk
  loc_9C18BA: CVarAd
  loc_9C18BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C18C3: FFree1Var var_94 = ""
  loc_9C18C6: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'A621C0
  'Data Table: 4CB4F8
  loc_A62164: FLdPr Me
  loc_A62167: VCallAd Control_ID_HastaMsk
  loc_A6216A: FStAdFunc var_88
  loc_A6216D: FLdPr var_88
  loc_A62170: LateIdLdVar var_98 DispID_15 0
  loc_A62177: CStrVarTmp
  loc_A62178: FStStrNoPop var_9C
  loc_A6217B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62180: FStStrNoPop var_A0
  loc_A62183: FLdPr Me
  loc_A62186: MemStStrCopy
  loc_A6218A: FFreeStr var_9C = ""
  loc_A62191: FFree1Ad var_88
  loc_A62194: FFree1Var var_98 = ""
  loc_A62197: FLdPr Me
  loc_A6219A: VCallAd Control_ID_HastaMsk
  loc_A6219D: FStAdFuncNoPop
  loc_A621A0: CastAd
  loc_A621A3: FStAdFunc var_A4
  loc_A621A6: FLdRfVar var_A4
  loc_A621A9: FLdPr Me
  loc_A621AC: MemLdStr global_104
  loc_A621AF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A621B4: IStI2 arg_C
  loc_A621B7: FFreeAd var_88 = ""
  loc_A621BE: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A1F654
  'Data Table: 4CB4F8
  loc_A1F610: ILdI2 KeyAscii
  loc_A1F613: CI4UI1
  loc_A1F614: LitI4 &H20
  loc_A1F619: EqI4
  loc_A1F61A: BranchF loc_A1F650
  loc_A1F61D: LitVar_Missing var_A4
  loc_A1F620: PopAdLdVar
  loc_A1F621: LitVarI4
  loc_A1F629: PopAdLdVar
  loc_A1F62A: ImpAdLdRf MemVar_D930A4
  loc_A1F62D: NewIfNullPr frmCalendario
  loc_A1F630: frmCalendario.Show from_stack_1, from_stack_2
  loc_A1F635: ImpAdLdRf MemVar_D93028
  loc_A1F638: CDargRef
  loc_A1F63C: FLdPr Me
  loc_A1F63F: VCallAd Control_ID_HastaMsk
  loc_A1F642: FStAdFunc var_A8
  loc_A1F645: FLdPr var_A8
  loc_A1F648: LateIdSt
  loc_A1F64D: FFree1Ad var_A8
  loc_A1F650: ExitProcHresult
End Sub

Private Sub Form_Load() 'A5E668
  'Data Table: 4CB4F8
  loc_A5E604: ILdRf Me
  loc_A5E607: CastAd
  loc_A5E60A: FStAdFunc var_88
  loc_A5E60D: FLdRfVar var_88
  loc_A5E610: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_A5E615: FFree1Ad var_88
  loc_A5E618: LitI2_Byte 0
  loc_A5E61A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A5E61F: CStrDate
  loc_A5E621: CVarStr var_98
  loc_A5E624: PopAdLdVar
  loc_A5E625: FLdPr Me
  loc_A5E628: VCallAd Control_ID_DesdeMsk
  loc_A5E62B: FStAdFunc var_88
  loc_A5E62E: FLdPr var_88
  loc_A5E631: LateIdSt
  loc_A5E636: FFree1Ad var_88
  loc_A5E639: FFree1Var var_98 = ""
  loc_A5E63C: LitI2_Byte 0
  loc_A5E63E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A5E643: CStrDate
  loc_A5E645: CVarStr var_98
  loc_A5E648: PopAdLdVar
  loc_A5E649: FLdPr Me
  loc_A5E64C: VCallAd Control_ID_HastaMsk
  loc_A5E64F: FStAdFunc var_88
  loc_A5E652: FLdPr var_88
  loc_A5E655: LateIdSt
  loc_A5E65A: FFree1Ad var_88
  loc_A5E65D: FFree1Var var_98 = ""
  loc_A5E660: Call cmdNueva_Click()
  loc_A5E665: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9C9FB8
  'Data Table: 4CB4F8
  loc_9C9FA0: FLdPr Me
  loc_9C9FA3: VCallAd Control_ID_wbbReporte
  loc_9C9FA6: FStAdFunc var_88
  loc_9C9FA9: FLdRfVar var_88
  loc_9C9FAC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9C9FB1: FFree1Ad var_88
  loc_9C9FB4: ExitProcHresult
  loc_9C9FB7: GeI4
End Sub

Private Sub cmdPredeterminada_Click() '9D2B40
  'Data Table: 4CB4F8
  loc_9D2B28: LitI2_Byte 0
  loc_9D2B2A: ILdRf Me
  loc_9D2B2D: CastAd
  loc_9D2B30: FStAdFunc var_88
  loc_9D2B33: FLdRfVar var_88
  loc_9D2B36: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D2B3B: FFree1Ad var_88
  loc_9D2B3E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D2B8C
  'Data Table: 4CB4F8
  loc_9D2B74: ILdRf Me
  loc_9D2B77: CastAd
  loc_9D2B7A: FStAdFunc var_88
  loc_9D2B7D: FLdRfVar var_88
  loc_9D2B80: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D2B85: FFree1Ad var_88
  loc_9D2B88: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE11C
  'Data Table: 4CB4F8
  loc_9DE100: LitI2_Byte 0
  loc_9DE102: PopTmpLdAd2 var_8A
  loc_9DE105: ILdRf Me
  loc_9DE108: CastAd
  loc_9DE10B: FStAdFunc var_88
  loc_9DE10E: FLdRfVar var_88
  loc_9DE111: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE116: FFree1Ad var_88
  loc_9DE119: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A207A0
  'Data Table: 4CB4F8
  loc_A20768: FLdPr Me
  loc_A2076B: VCallAd Control_ID_statusBar
  loc_A2076E: FStAdFunc var_88
  loc_A20771: FLdPr var_88
  loc_A20774: LateIdLdVar var_98 DispID_1 0
  loc_A2077B: CStrVarTmp
  loc_A2077C: CVarStr var_A8
  loc_A2077F: PopAdLdVar
  loc_A20780: FLdPr Me
  loc_A20783: VCallAd Control_ID_statusBar
  loc_A20786: FStAdFunc var_BC
  loc_A20789: FLdPr var_BC
  loc_A2078C: LateIdSt
  loc_A20791: FFreeAd var_88 = ""
  loc_A20798: FFreeVar var_98 = ""
  loc_A2079F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4CC790
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4CC79F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A94990
  'Data Table: 4CB4F8
  loc_A948FC: LitI4 0
  loc_A94901: LitI4 6
  loc_A94906: FLdRfVar var_88
  loc_A94909: Redim
  loc_A94913: FLdPr Me
  loc_A94916: VCallAd Control_ID_DesdeMsk
  loc_A94919: CVarAd
  loc_A9491D: ParmAry1St
  loc_A94923: FLdPr Me
  loc_A94926: VCallAd Control_ID_HastaMsk
  loc_A94929: CVarAd
  loc_A9492D: ParmAry1St
  loc_A94933: FLdPr Me
  loc_A94936: VCallAd Control_ID_OptBanelco
  loc_A94939: CVarAd
  loc_A9493D: ParmAry1St
  loc_A94943: FLdPr Me
  loc_A94946: VCallAd Control_ID_OptLink
  loc_A94949: CVarAd
  loc_A9494D: ParmAry1St
  loc_A94953: FLdPr Me
  loc_A94956: VCallAd Control_ID_OptAnual
  loc_A94959: CVarAd
  loc_A9495D: ParmAry1St
  loc_A94963: FLdPr Me
  loc_A94966: VCallAd Control_ID_OptBime
  loc_A94969: CVarAd
  loc_A9496D: ParmAry1St
  loc_A94973: FLdPr Me
  loc_A94976: VCallAd Control_ID_OptAmbas
  loc_A94979: CVarAd
  loc_A9497D: ParmAry1St
  loc_A94983: FLdRfVar var_88
  loc_A94986: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A9498B: FLdRfVar var_88
  loc_A9498E: Erase
  loc_A9498F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C69364
  'Data Table: 4CB4F8
  loc_C68384: FLdPr Me
  loc_C68387: MemLdI2 bGenerado
  loc_C6838A: BranchF loc_C6838E
  loc_C6838D: ExitProcHresult
  loc_C6838E: LitVarStr var_94, "Generando reporte..."
  loc_C68393: PopAdLdVar
  loc_C68394: FLdPr Me
  loc_C68397: VCallAd Control_ID_statusBar
  loc_C6839A: FStAdFunc var_A8
  loc_C6839D: FLdPr var_A8
  loc_C683A0: LateIdSt
  loc_C683A5: FFree1Ad var_A8
  loc_C683A8: LitI4 &HB
  loc_C683AD: CI2I4
  loc_C683AE: FLdPr Me
  loc_C683B1: Me.MousePointer = from_stack_1
  loc_C683B6: LitI2_Byte 0
  loc_C683B8: PopTmpLdAd2 var_B2
  loc_C683BB: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C683C0: FLdPr Me
  loc_C683C3: MemLdStr global_104
  loc_C683C6: LitStr vbNullString
  loc_C683C9: NeStr
  loc_C683CB: BranchF loc_C683D1
  loc_C683CE: Branch loc_C6933B
  loc_C683D1: LitI2_Byte 0
  loc_C683D3: PopTmpLdAd2 var_B2
  loc_C683D6: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C683DB: FLdPr Me
  loc_C683DE: MemLdStr global_104
  loc_C683E1: LitStr vbNullString
  loc_C683E4: NeStr
  loc_C683E6: BranchF loc_C683EC
  loc_C683E9: Branch loc_C6933B
  loc_C683EC: FLdRfVar var_B2
  loc_C683EF: FLdPr Me
  loc_C683F2: VCallAd Control_ID_OptAnual
  loc_C683F5: FStAdFunc var_A8
  loc_C683F8: FLdPr var_A8
  loc_C683FB:  = Me.Value
  loc_C68400: FLdI2 var_B2
  loc_C68403: LitI2_Byte &HFF
  loc_C68405: EqI2
  loc_C68406: FFree1Ad var_A8
  loc_C68409: BranchF loc_C68412
  loc_C6840C: LitStr " AND TipoBole = 'Anual'"
  loc_C6840F: FStStrCopy var_B0
  loc_C68412: FLdRfVar var_B2
  loc_C68415: FLdPr Me
  loc_C68418: VCallAd Control_ID_OptBime
  loc_C6841B: FStAdFunc var_A8
  loc_C6841E: FLdPr var_A8
  loc_C68421:  = Me.Value
  loc_C68426: FLdI2 var_B2
  loc_C68429: LitI2_Byte &HFF
  loc_C6842B: EqI2
  loc_C6842C: FFree1Ad var_A8
  loc_C6842F: BranchF loc_C68438
  loc_C68432: LitStr " AND TipoBole = 'Bimestral'"
  loc_C68435: FStStrCopy var_B0
  loc_C68438: FLdRfVar var_B2
  loc_C6843B: FLdPr Me
  loc_C6843E: VCallAd Control_ID_OptAmbas
  loc_C68441: FStAdFunc var_A8
  loc_C68444: FLdPr var_A8
  loc_C68447:  = Me.Value
  loc_C6844C: FLdI2 var_B2
  loc_C6844F: LitI2_Byte &HFF
  loc_C68451: EqI2
  loc_C68452: FFree1Ad var_A8
  loc_C68455: BranchF loc_C6845E
  loc_C68458: LitStr vbNullString
  loc_C6845B: FStStrCopy var_B0
  loc_C6845E: FLdRfVar var_B2
  loc_C68461: FLdPr Me
  loc_C68464: VCallAd Control_ID_OptBanelco
  loc_C68467: FStAdFunc var_A8
  loc_C6846A: FLdPr var_A8
  loc_C6846D:  = Me.Value
  loc_C68472: FLdI2 var_B2
  loc_C68475: LitI2_Byte &HFF
  loc_C68477: EqI2
  loc_C68478: FFree1Ad var_A8
  loc_C6847B: BranchF loc_C68C33
  loc_C6847E: FLdPr Me
  loc_C68481: MemLdRfVar from_stack_1.global_92
  loc_C68484: NewIfNullAd
  loc_C68487: FStAd var_B8 
  loc_C6848B: LitI2_Byte 0
  loc_C6848D: CR8I2
  loc_C6848E: FLdPr Me
  loc_C68491: MemStFPR8 global_108
  loc_C68494: FLdPr Me
  loc_C68497: VCallAd Control_ID_DesdeMsk
  loc_C6849A: FStAdFunc var_A8
  loc_C6849D: FLdPr var_A8
  loc_C684A0: LateIdLdVar var_E8 DispID_15 0
  loc_C684A7: PopAd
  loc_C684A9: FLdPr Me
  loc_C684AC: VCallAd Control_ID_HastaMsk
  loc_C684AF: FStAdFunc var_118
  loc_C684B2: FLdPr var_118
  loc_C684B5: LateIdLdVar var_128 DispID_15 0
  loc_C684BC: PopAd
  loc_C684BE: LitStr " SELECT boleto.PeriBole, boleto.NumeBole, concat(LPAD(boleto.NumeBole,8,'0'),boleto.PeriBole) MensPanta, TotaBole, IF(detabole.codifapa=0,boleto.CodiOfic,5) as CodiOfic, "
  loc_C684C1: LitStr " cast(rpad(IF(detabole.CodiFapa=0,lpad(detabole.CuenCtct,6,'0'),lpad(detabole.CodiFapa,6,'0')),18,' ') as char) as CuenCtct,"
  loc_C684C4: ConcatStr
  loc_C684C5: FStStrNoPop var_BC
  loc_C684C8: LitStr " detabole.CuenCtct as CuenCtctBarra, cast(rpad(concat(boleto.PeriBole,boleto.NumeBole),20,' ') as char) as NumeBoleStr, FeveBole, cast(replace(lpad(TotaBole,12,'0'),'.','') as char) as TotaBoleStr, detabole.CodiConc, concepto.DetaConc, detabole.CodiFapa, detabole.BimeCtct CuotDefa, 0 CacuFapa,"
  loc_C684CB: ConcatStr
  loc_C684CC: FStStrNoPop var_C0
  loc_C684CF: LitStr " cast(replace(lpad(TotaBole,12,'0'),'.','') as char) as TotaBoleSeguStr,"
  loc_C684D2: ConcatStr
  loc_C684D3: FStStrNoPop var_C4
  loc_C684D6: LitStr " IF(detabole.CodiFapa=0,(SELECT SUM(DebeCtct)-SUM(CredCtct) as saldo FROM ctacte"
  loc_C684D9: ConcatStr
  loc_C684DA: FStStrNoPop var_C8
  loc_C684DD: LitStr " WHERE ctacte.CodiOfic = detabole.CodiOfic AND ctacte.CuenCtct = detabole.CuenCtct AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct),1) as Saldo"
  loc_C684E0: ConcatStr
  loc_C684E1: FStStrNoPop var_CC
  loc_C684E4: LitStr " FROM boleto"
  loc_C684E7: ConcatStr
  loc_C684E8: FStStrNoPop var_D0
  loc_C684EB: LitStr " INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole"
  loc_C684EE: ConcatStr
  loc_C684EF: FStStrNoPop var_D4
  loc_C684F2: LitStr " INNER JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc"
  loc_C684F5: ConcatStr
  loc_C684F6: FStStrNoPop var_D8
  loc_C684F9: LitStr " WHERE FeveBole between "
  loc_C684FC: ConcatStr
  loc_C684FD: FStStrNoPop var_10C
  loc_C68500: LitI4 1
  loc_C68505: LitI4 1
  loc_C6850A: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_C6850F: FStVarCopyObj var_108
  loc_C68512: FLdRfVar var_108
  loc_C68515: FLdRfVar var_E8
  loc_C68518: CStrVarTmp
  loc_C68519: CVarStr var_F8
  loc_C6851C: ImpAdCallI2 Format$(, )
  loc_C68521: FStStrNoPop var_110
  loc_C68524: ConcatStr
  loc_C68525: FStStrNoPop var_114
  loc_C68528: LitStr " AND "
  loc_C6852B: ConcatStr
  loc_C6852C: FStStrNoPop var_14C
  loc_C6852F: LitI4 1
  loc_C68534: LitI4 1
  loc_C68539: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_C6853E: FStVarCopyObj var_148
  loc_C68541: FLdRfVar var_148
  loc_C68544: FLdRfVar var_128
  loc_C68547: CStrVarTmp
  loc_C68548: CVarStr var_138
  loc_C6854B: ImpAdCallI2 Format$(, )
  loc_C68550: FStStrNoPop var_150
  loc_C68553: ConcatStr
  loc_C68554: FStStrNoPop var_154
  loc_C68557: LitStr " AND boleto.EstaBole = 'Emitido' AND detabole.CuenCtct <> '' AND boleto.CodiTili > 0 AND boleto.NumeLiqu > 0 "
  loc_C6855A: ConcatStr
  loc_C6855B: FStStrNoPop var_158
  loc_C6855E: LitStr " AND boleto.CodiOfic = "
  loc_C68561: ConcatStr
  loc_C68562: FStStrNoPop var_15C
  loc_C68565: ImpAdLdUI1
  loc_C68569: CStrI2
  loc_C6856B: FStStrNoPop var_160
  loc_C6856E: ConcatStr
  loc_C6856F: FStStrNoPop var_164
  loc_C68572: ILdRf var_B0
  loc_C68575: ConcatStr
  loc_C68576: FStStrNoPop var_168
  loc_C68579: LitStr " GROUP BY boleto.PeriBole, boleto.NumeBole"
  loc_C6857C: ConcatStr
  loc_C6857D: FStStrNoPop var_16C
  loc_C68580: LitStr " HAVING Saldo > 0"
  loc_C68583: ConcatStr
  loc_C68584: FStStrNoPop var_170
  loc_C68587: LitStr " ORDER BY boleto.PeriBole, boleto.NumeBole"
  loc_C6858A: ConcatStr
  loc_C6858B: FStStrNoPop var_174
  loc_C6858E: FLdPr var_B8
  loc_C68591: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C68596: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_C685C5: FFreeAd var_A8 = ""
  loc_C685CC: FFreeVar var_E8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = ""
  loc_C685DB: FLdRfVar var_178
  loc_C685DE: FLdPr var_B8
  loc_C685E1: from_stack_1 = clsboleto.RecordCount
  loc_C685E6: ILdRf var_178
  loc_C685E9: LitI4 0
  loc_C685EE: EqI4
  loc_C685EF: BranchF loc_C6860F
  loc_C685F2: LitI4 0
  loc_C685F7: LitI4 0
  loc_C685FC: FLdPr Me
  loc_C685FF: MemLdRfVar from_stack_1.global_96
  loc_C68602: Redim
  loc_C6860C: Branch loc_C68C2D
  loc_C6860F: LitI4 0
  loc_C68614: FLdRfVar var_178
  loc_C68617: FLdPr var_B8
  loc_C6861A: from_stack_1 = clsboleto.RecordCount
  loc_C6861F: ILdRf var_178
  loc_C68622: FLdPr Me
  loc_C68625: MemLdRfVar from_stack_1.global_96
  loc_C68628: Redim
  loc_C68632: FLdPr var_B8
  loc_C68635: Call clsboleto.MoveFirst()
  loc_C6863A: FLdRfVar var_178
  loc_C6863D: FLdPr var_B8
  loc_C68640: from_stack_1 = clsboleto.RecordCount
  loc_C68645: ILdRf var_178
  loc_C68648: CR8I4
  loc_C68649: CVarR4
  loc_C6864D: PopAdLdVar
  loc_C6864E: FLdPrThis
  loc_C6864F: VCallAd Control_ID_Pbar
  loc_C68652: FStAdFunc var_A8
  loc_C68655: FLdPr var_A8
  loc_C68658: LateIdSt
  loc_C6865D: FFree1Ad var_A8
  loc_C68660: LitVar_TRUE var_94
  loc_C68663: PopAdLdVar
  loc_C68664: FLdPrThis
  loc_C68665: VCallAd Control_ID_Pbar
  loc_C68668: FStAdFunc var_A8
  loc_C6866B: FLdPr var_A8
  loc_C6866E: LateIdSt
  loc_C68673: FFree1Ad var_A8
  loc_C68676: LitI4 1
  loc_C6867B: FLdPr Me
  loc_C6867E: MemLdRfVar from_stack_1.global_100
  loc_C68681: FLdPr Me
  loc_C68684: MemLdStr global_96
  loc_C68687: LitI2_Byte 1
  loc_C68689: FnUBound
  loc_C6868B: ForI4 var_180
  loc_C68691: FLdPr Me
  loc_C68694: MemLdStr global_100
  loc_C68697: CR8I4
  loc_C68698: CVarR4
  loc_C6869C: PopAdLdVar
  loc_C6869D: FLdPrThis
  loc_C6869E: VCallAd Control_ID_Pbar
  loc_C686A1: FStAdFunc var_A8
  loc_C686A4: FLdPr var_A8
  loc_C686A7: LateIdSt
  loc_C686AC: FFree1Ad var_A8
  loc_C686AF: FLdRfVar var_B2
  loc_C686B2: FLdPr var_B8
  loc_C686B5: from_stack_1 = clsboleto.CodiOfic
  loc_C686BA: FLdRfVar var_BC
  loc_C686BD: FLdPr var_B8
  loc_C686C0: from_stack_1 = clsboleto.CuenCtct
  loc_C686C5: LitI2_Byte 0
  loc_C686C7: LitVar_Missing var_F8
  loc_C686CA: LitI2_Byte 0
  loc_C686CC: FLdI2 var_B2
  loc_C686CF: CStrUI1
  loc_C686D1: FStStrNoPop var_C0
  loc_C686D4: ILdRf var_BC
  loc_C686D7: ConcatStr
  loc_C686D8: CVarStr var_E8
  loc_C686DB: PopAdLdVar
  loc_C686DC: FLdPr Me
  loc_C686DF: MemLdStr global_100
  loc_C686E2: FLdPr Me
  loc_C686E5: MemLdStr global_96
  loc_C686E8: AryLock
  loc_C686EB: Ary1LdPr
  loc_C686EC: MemLdRfVar from_stack_1.global_0
  loc_C686EF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C686F4: AryUnlock
  loc_C686F7: FFreeStr var_C0 = ""
  loc_C686FE: FFreeVar var_E8 = ""
  loc_C68705: FLdRfVar var_BC
  loc_C68708: FLdPr var_B8
  loc_C6870B: from_stack_1 = clsboleto.NumeBoleStr
  loc_C68710: LitI2_Byte 0
  loc_C68712: LitVar_Missing var_F8
  loc_C68715: LitI2_Byte 0
  loc_C68717: FLdZeroAd var_BC
  loc_C6871A: CVarStr var_E8
  loc_C6871D: PopAdLdVar
  loc_C6871E: FLdPr Me
  loc_C68721: MemLdStr global_100
  loc_C68724: FLdPr Me
  loc_C68727: MemLdStr global_96
  loc_C6872A: AryLock
  loc_C6872D: Ary1LdPr
  loc_C6872E: MemLdRfVar from_stack_1.global_4
  loc_C68731: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68736: AryUnlock
  loc_C68739: FFreeVar var_E8 = ""
  loc_C68740: FLdRfVar var_E8
  loc_C68743: FLdPr var_B8
  loc_C68746: from_stack_1 = clsboleto.FeveBole
  loc_C6874B: LitI4 1
  loc_C68750: LitI4 1
  loc_C68755: LitVarStr var_94, "yyyymmdd"
  loc_C6875A: FStVarCopyObj var_F8
  loc_C6875D: FLdRfVar var_F8
  loc_C68760: FLdRfVar var_E8
  loc_C68763: ImpAdCallI2 Format$(, )
  loc_C68768: FStStr var_BC
  loc_C6876B: LitI2_Byte 0
  loc_C6876D: LitVar_Missing var_128
  loc_C68770: LitI2_Byte 0
  loc_C68772: FLdZeroAd var_BC
  loc_C68775: CVarStr var_108
  loc_C68778: PopAdLdVar
  loc_C68779: FLdPr Me
  loc_C6877C: MemLdStr global_100
  loc_C6877F: FLdPr Me
  loc_C68782: MemLdStr global_96
  loc_C68785: AryLock
  loc_C68788: Ary1LdPr
  loc_C68789: MemLdRfVar from_stack_1.global_8
  loc_C6878C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68791: AryUnlock
  loc_C68794: FFree1Str var_BC
  loc_C68797: FFreeVar var_E8 = "": var_F8 = "": var_108 = ""
  loc_C687A2: FLdRfVar var_188
  loc_C687A5: LitVarStr var_94, "TotaBoleStr"
  loc_C687AA: PopAdLdVar
  loc_C687AB: FLdRfVar var_118
  loc_C687AE: FLdRfVar var_A8
  loc_C687B1: FLdPr var_B8
  loc_C687B4: from_stack_1v = clsboleto.RsFrmGet()
  loc_C687B9: FLdPr var_A8
  loc_C687BC:  = Me.Fields
  loc_C687C1: FLdPr var_118
  loc_C687C4: from_stack_2 = Me.Item(from_stack_1)
  loc_C687C9: LitI2_Byte 0
  loc_C687CB: LitVar_Missing var_F8
  loc_C687CE: LitI2_Byte 0
  loc_C687D0: FLdZeroAd var_188
  loc_C687D3: CVarAd
  loc_C687D7: PopAdLdVar
  loc_C687D8: FLdPr Me
  loc_C687DB: MemLdStr global_100
  loc_C687DE: FLdPr Me
  loc_C687E1: MemLdStr global_96
  loc_C687E4: AryLock
  loc_C687E7: Ary1LdPr
  loc_C687E8: MemLdRfVar from_stack_1.global_12
  loc_C687EB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C687F0: AryUnlock
  loc_C687F3: FFreeAd var_A8 = ""
  loc_C687FA: FFreeVar var_E8 = ""
  loc_C68801: FLdRfVar var_188
  loc_C68804: LitVarStr var_94, "TotaBoleSeguStr"
  loc_C68809: PopAdLdVar
  loc_C6880A: FLdRfVar var_118
  loc_C6880D: FLdRfVar var_A8
  loc_C68810: FLdPr var_B8
  loc_C68813: from_stack_1v = clsboleto.RsFrmGet()
  loc_C68818: FLdPr var_A8
  loc_C6881B:  = Me.Fields
  loc_C68820: FLdPr var_118
  loc_C68823: from_stack_2 = Me.Item(from_stack_1)
  loc_C68828: LitI2_Byte 0
  loc_C6882A: LitVar_Missing var_F8
  loc_C6882D: LitI2_Byte 0
  loc_C6882F: FLdZeroAd var_188
  loc_C68832: CVarAd
  loc_C68836: PopAdLdVar
  loc_C68837: FLdPr Me
  loc_C6883A: MemLdStr global_100
  loc_C6883D: FLdPr Me
  loc_C68840: MemLdStr global_96
  loc_C68843: AryLock
  loc_C68846: Ary1LdPr
  loc_C68847: MemLdRfVar from_stack_1.global_16
  loc_C6884A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C6884F: AryUnlock
  loc_C68852: FFreeAd var_A8 = ""
  loc_C68859: FFreeVar var_E8 = ""
  loc_C68860: FLdRfVar var_E8
  loc_C68863: FLdRfVar var_188
  loc_C68866: LitVarStr var_94, "PeriBole"
  loc_C6886B: PopAdLdVar
  loc_C6886C: FLdRfVar var_118
  loc_C6886F: FLdRfVar var_A8
  loc_C68872: FLdPr var_B8
  loc_C68875: from_stack_1v = clsboleto.RsFrmGet()
  loc_C6887A: FLdPr var_A8
  loc_C6887D:  = Me.Fields
  loc_C68882: FLdPr var_118
  loc_C68885: from_stack_2 = Me.Item(from_stack_1)
  loc_C6888A: FLdPr var_188
  loc_C6888D:  = Me.Value
  loc_C68892: FLdRfVar var_F8
  loc_C68895: FLdRfVar var_194
  loc_C68898: LitVarStr var_A4, "NumeBole"
  loc_C6889D: PopAdLdVar
  loc_C6889E: FLdRfVar var_190
  loc_C688A1: FLdRfVar var_18C
  loc_C688A4: FLdPr var_B8
  loc_C688A7: from_stack_1v = clsboleto.RsFrmGet()
  loc_C688AC: FLdPr var_18C
  loc_C688AF:  = Me.Fields
  loc_C688B4: FLdPr var_190
  loc_C688B7: from_stack_2 = Me.Item(from_stack_1)
  loc_C688BC: FLdPr var_194
  loc_C688BF:  = Me.Value
  loc_C688C4: FLdRfVar var_108
  loc_C688C7: FLdRfVar var_1B0
  loc_C688CA: LitVarStr var_1AC, "CuotDefa"
  loc_C688CF: PopAdLdVar
  loc_C688D0: FLdRfVar var_19C
  loc_C688D3: FLdRfVar var_198
  loc_C688D6: FLdPr var_B8
  loc_C688D9: from_stack_1v = clsboleto.RsFrmGet()
  loc_C688DE: FLdPr var_198
  loc_C688E1:  = Me.Fields
  loc_C688E6: FLdPr var_19C
  loc_C688E9: from_stack_2 = Me.Item(from_stack_1)
  loc_C688EE: FLdPr var_1B0
  loc_C688F1:  = Me.Value
  loc_C688F6: FLdRfVar var_128
  loc_C688F9: FLdRfVar var_1CC
  loc_C688FC: LitVarStr var_1C8, "CuenCtctBarra"
  loc_C68901: PopAdLdVar
  loc_C68902: FLdRfVar var_1B8
  loc_C68905: FLdRfVar var_1B4
  loc_C68908: FLdPr var_B8
  loc_C6890B: from_stack_1v = clsboleto.RsFrmGet()
  loc_C68910: FLdPr var_1B4
  loc_C68913:  = Me.Fields
  loc_C68918: FLdPr var_1B8
  loc_C6891B: from_stack_2 = Me.Item(from_stack_1)
  loc_C68920: FLdPr var_1CC
  loc_C68923:  = Me.Value
  loc_C68928: FLdRfVar var_138
  loc_C6892B: FLdRfVar var_1E8
  loc_C6892E: LitVarStr var_1E4, "CodiOfic"
  loc_C68933: PopAdLdVar
  loc_C68934: FLdRfVar var_1D4
  loc_C68937: FLdRfVar var_1D0
  loc_C6893A: FLdPr var_B8
  loc_C6893D: from_stack_1v = clsboleto.RsFrmGet()
  loc_C68942: FLdPr var_1D0
  loc_C68945:  = Me.Fields
  loc_C6894A: FLdPr var_1D4
  loc_C6894D: from_stack_2 = Me.Item(from_stack_1)
  loc_C68952: FLdPr var_1E8
  loc_C68955:  = Me.Value
  loc_C6895A: FLdRfVar var_148
  loc_C6895D: FLdRfVar var_204
  loc_C68960: LitVarStr var_200, "TotaBole"
  loc_C68965: PopAdLdVar
  loc_C68966: FLdRfVar var_1F0
  loc_C68969: FLdRfVar var_1EC
  loc_C6896C: FLdPr var_B8
  loc_C6896F: from_stack_1v = clsboleto.RsFrmGet()
  loc_C68974: FLdPr var_1EC
  loc_C68977:  = Me.Fields
  loc_C6897C: FLdPr var_1F0
  loc_C6897F: from_stack_2 = Me.Item(from_stack_1)
  loc_C68984: FLdPr var_204
  loc_C68987:  = Me.Value
  loc_C6898C: FLdRfVar var_230
  loc_C6898F: FLdRfVar var_220
  loc_C68992: LitVarStr var_21C, "FeveBole"
  loc_C68997: PopAdLdVar
  loc_C68998: FLdRfVar var_20C
  loc_C6899B: FLdRfVar var_208
  loc_C6899E: FLdPr var_B8
  loc_C689A1: from_stack_1v = clsboleto.RsFrmGet()
  loc_C689A6: FLdPr var_208
  loc_C689A9:  = Me.Fields
  loc_C689AE: FLdPr var_20C
  loc_C689B1: from_stack_2 = Me.Item(from_stack_1)
  loc_C689B6: FLdPr var_220
  loc_C689B9:  = Me.Value
  loc_C689BE: FLdRfVar var_230
  loc_C689C1: CStrVarTmp
  loc_C689C2: FStStrNoPop var_D0
  loc_C689C5: FLdRfVar var_148
  loc_C689C8: CStrVarTmp
  loc_C689C9: FStStrNoPop var_CC
  loc_C689CC: FLdRfVar var_138
  loc_C689CF: CUI1Var
  loc_C689D1: FLdRfVar var_128
  loc_C689D4: CStrVarTmp
  loc_C689D5: FStStrNoPop var_C8
  loc_C689D8: FLdRfVar var_108
  loc_C689DB: CStrVarTmp
  loc_C689DC: FStStrNoPop var_C4
  loc_C689DF: FLdRfVar var_F8
  loc_C689E2: CStrVarTmp
  loc_C689E3: FStStrNoPop var_C0
  loc_C689E6: FLdRfVar var_E8
  loc_C689E9: CStrVarTmp
  loc_C689EA: FStStrNoPop var_BC
  loc_C689ED: ImpAdCallI2  = Proc_57_39_B45150(, , , )
  loc_C689F2: PopTmpLdAdStr var_178
  loc_C689F5: FLdPr Me
  loc_C689F8: MemLdStr global_100
  loc_C689FB: FLdPr Me
  loc_C689FE: MemLdStr global_96
  loc_C68A01: Ary1LdPr
  loc_C68A02: MemLdRfVar from_stack_1.global_24
  loc_C68A05: StAryMove
  loc_C68A07: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_C68A16: FFreeAd var_A8 = "": var_118 = "": var_18C = "": var_190 = "": var_198 = "": var_19C = "": var_1B4 = "": var_1B8 = "": var_1D0 = "": var_1D4 = "": var_1EC = "": var_1F0 = "": var_208 = "": var_20C = "": var_188 = "": var_194 = "": var_1B0 = "": var_1CC = "": var_1E8 = "": var_204 = ""
  loc_C68A43: FFreeVar var_E8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = "": var_148 = ""
  loc_C68A54: FLdRfVar var_188
  loc_C68A57: LitVarStr var_94, "MensPanta"
  loc_C68A5C: PopAdLdVar
  loc_C68A5D: FLdRfVar var_118
  loc_C68A60: FLdRfVar var_A8
  loc_C68A63: FLdPr var_B8
  loc_C68A66: from_stack_1v = clsboleto.RsFrmGet()
  loc_C68A6B: FLdPr var_A8
  loc_C68A6E:  = Me.Fields
  loc_C68A73: FLdPr var_118
  loc_C68A76: from_stack_2 = Me.Item(from_stack_1)
  loc_C68A7B: LitI2_Byte 0
  loc_C68A7D: LitVar_Missing var_F8
  loc_C68A80: LitI2_Byte 0
  loc_C68A82: FLdZeroAd var_188
  loc_C68A85: CVarAd
  loc_C68A89: PopAdLdVar
  loc_C68A8A: FLdPr Me
  loc_C68A8D: MemLdStr global_100
  loc_C68A90: FLdPr Me
  loc_C68A93: MemLdStr global_96
  loc_C68A96: AryLock
  loc_C68A99: Ary1LdPr
  loc_C68A9A: MemLdRfVar from_stack_1.global_28
  loc_C68A9D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68AA2: AryUnlock
  loc_C68AA5: FFreeAd var_A8 = ""
  loc_C68AAC: FFreeVar var_E8 = ""
  loc_C68AB3: FLdRfVar var_188
  loc_C68AB6: LitVarStr var_94, "MensPanta"
  loc_C68ABB: PopAdLdVar
  loc_C68ABC: FLdRfVar var_118
  loc_C68ABF: FLdRfVar var_A8
  loc_C68AC2: FLdPr var_B8
  loc_C68AC5: from_stack_1v = clsboleto.RsFrmGet()
  loc_C68ACA: FLdPr var_A8
  loc_C68ACD:  = Me.Fields
  loc_C68AD2: FLdPr var_118
  loc_C68AD5: from_stack_2 = Me.Item(from_stack_1)
  loc_C68ADA: LitI2_Byte 0
  loc_C68ADC: LitVar_Missing var_F8
  loc_C68ADF: LitI2_Byte 0
  loc_C68AE1: FLdZeroAd var_188
  loc_C68AE4: CVarAd
  loc_C68AE8: PopAdLdVar
  loc_C68AE9: FLdPr Me
  loc_C68AEC: MemLdStr global_100
  loc_C68AEF: FLdPr Me
  loc_C68AF2: MemLdStr global_96
  loc_C68AF5: AryLock
  loc_C68AF8: Ary1LdPr
  loc_C68AF9: MemLdRfVar from_stack_1.global_32
  loc_C68AFC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68B01: AryUnlock
  loc_C68B04: FFreeAd var_A8 = ""
  loc_C68B0B: FFreeVar var_E8 = ""
  loc_C68B12: FLdRfVar var_B2
  loc_C68B15: FLdPr var_B8
  loc_C68B18: from_stack_1 = clsboleto.CuotDefa
  loc_C68B1D: LitI2_Byte 0
  loc_C68B1F: LitVar_Missing var_E8
  loc_C68B22: LitI2_Byte 0
  loc_C68B24: FLdI2 var_B2
  loc_C68B27: CVarI2 var_94
  loc_C68B2A: PopAdLdVar
  loc_C68B2B: FLdPr Me
  loc_C68B2E: MemLdStr global_100
  loc_C68B31: FLdPr Me
  loc_C68B34: MemLdStr global_96
  loc_C68B37: AryLock
  loc_C68B3A: Ary1LdPr
  loc_C68B3B: MemLdRfVar from_stack_1.global_36
  loc_C68B3E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68B43: AryUnlock
  loc_C68B46: FFree1Var var_E8 = ""
  loc_C68B49: FLdRfVar var_B2
  loc_C68B4C: FLdPr var_B8
  loc_C68B4F: from_stack_1 = clsboleto.CacuFapa
  loc_C68B54: LitI2_Byte 0
  loc_C68B56: LitVar_Missing var_E8
  loc_C68B59: LitI2_Byte 0
  loc_C68B5B: FLdI2 var_B2
  loc_C68B5E: CVarI2 var_94
  loc_C68B61: PopAdLdVar
  loc_C68B62: FLdPr Me
  loc_C68B65: MemLdStr global_100
  loc_C68B68: FLdPr Me
  loc_C68B6B: MemLdStr global_96
  loc_C68B6E: AryLock
  loc_C68B71: Ary1LdPr
  loc_C68B72: MemLdRfVar from_stack_1.global_40
  loc_C68B75: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68B7A: AryUnlock
  loc_C68B7D: FFree1Var var_E8 = ""
  loc_C68B80: LitI2_Byte 0
  loc_C68B82: LitVar_Missing var_E8
  loc_C68B85: LitI2_Byte 0
  loc_C68B87: LitVarStr var_94, "0"
  loc_C68B8C: PopAdLdVar
  loc_C68B8D: FLdPr Me
  loc_C68B90: MemLdStr global_100
  loc_C68B93: FLdPr Me
  loc_C68B96: MemLdStr global_96
  loc_C68B99: AryLock
  loc_C68B9C: Ary1LdPr
  loc_C68B9D: MemLdRfVar from_stack_1.global_44
  loc_C68BA0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68BA5: AryUnlock
  loc_C68BA8: FFree1Var var_E8 = ""
  loc_C68BAB: FLdRfVar var_23C
  loc_C68BAE: FLdPr var_B8
  loc_C68BB1: from_stack_1 = clsboleto.TotaBole
  loc_C68BB6: LitI4 2
  loc_C68BBB: FLdPr Me
  loc_C68BBE: MemLdRfVar from_stack_1.global_108
  loc_C68BC1: CVarRef
  loc_C68BC6: FLdRfVar var_E8
  loc_C68BC9: ImpAdCallFPR4  = Round(, )
  loc_C68BCE: FLdRfVar var_E8
  loc_C68BD1: LitI4 2
  loc_C68BD6: FLdFPR8 var_23C
  loc_C68BD9: CVarR8
  loc_C68BDD: FLdRfVar var_108
  loc_C68BE0: ImpAdCallFPR4  = Round(, )
  loc_C68BE5: FLdRfVar var_108
  loc_C68BE8: AddVar var_128
  loc_C68BEC: CR4Var
  loc_C68BED: FLdPr Me
  loc_C68BF0: MemStFPR8 global_108
  loc_C68BF3: FFreeVar var_F8 = "": var_E8 = "": var_108 = ""
  loc_C68BFE: LitI2_Byte 1
  loc_C68C00: PopTmpLdAd2 var_B2
  loc_C68C03: FLdPr var_B8
  loc_C68C06: Call clsboleto.Move(from_stack_1v)
  loc_C68C0B: FLdPr Me
  loc_C68C0E: MemLdRfVar from_stack_1.global_100
  loc_C68C11: NextI4 var_180, loc_C68691
  loc_C68C16: LitVar_FALSE
  loc_C68C1A: PopAdLdVar
  loc_C68C1B: FLdPrThis
  loc_C68C1C: VCallAd Control_ID_Pbar
  loc_C68C1F: FStAdFunc var_A8
  loc_C68C22: FLdPr var_A8
  loc_C68C25: LateIdSt
  loc_C68C2A: FFree1Ad var_A8
  loc_C68C2D: LitNothing
  loc_C68C2F: FStAd var_B8 
  loc_C68C33: FLdRfVar var_B2
  loc_C68C36: FLdPr Me
  loc_C68C39: VCallAd Control_ID_OptLink
  loc_C68C3C: FStAdFunc var_A8
  loc_C68C3F: FLdPr var_A8
  loc_C68C42:  = Me.Value
  loc_C68C47: FLdI2 var_B2
  loc_C68C4A: LitI2_Byte &HFF
  loc_C68C4C: EqI2
  loc_C68C4D: FFree1Ad var_A8
  loc_C68C50: BranchF loc_C69333
  loc_C68C53: FLdPr Me
  loc_C68C56: MemLdRfVar from_stack_1.global_92
  loc_C68C59: NewIfNullAd
  loc_C68C5C: FStAd var_240 
  loc_C68C60: LitI2_Byte 0
  loc_C68C62: CR8I2
  loc_C68C63: FLdPr Me
  loc_C68C66: MemStFPR8 global_108
  loc_C68C69: LitI2_Byte 0
  loc_C68C6B: CR8I2
  loc_C68C6C: FLdPr Me
  loc_C68C6F: MemStFPR8 global_116
  loc_C68C72: FLdPr Me
  loc_C68C75: VCallAd Control_ID_DesdeMsk
  loc_C68C78: FStAdFunc var_A8
  loc_C68C7B: FLdPr var_A8
  loc_C68C7E: LateIdLdVar var_E8 DispID_15 0
  loc_C68C85: PopAd
  loc_C68C87: FLdPr Me
  loc_C68C8A: VCallAd Control_ID_HastaMsk
  loc_C68C8D: FStAdFunc var_118
  loc_C68C90: FLdPr var_118
  loc_C68C93: LateIdLdVar var_128 DispID_15 0
  loc_C68C9A: PopAd
  loc_C68C9C: LitStr "SELECT cast(concat(lpad(detabole.BimeCtct,3,'00'),mid(detabole.PeriCtct,3,2)) as char) Periodo, boleto.TipoBole, boleto.PeriBole, boleto.NumeBole, TotaBole, IF(detabole.codifapa=0,boleto.CodiOfic,5) as CodiOfic,"
  loc_C68C9F: LitStr " CONCAT(boleto.CodiOfic, LPAD(detabole.CuenCtct,12,'0')) AS CuenCtct,"
  loc_C68CA2: ConcatStr
  loc_C68CA3: FStStrNoPop var_BC
  loc_C68CA6: LitStr " cast(concat(boleto.PeriBole,lpad(boleto.NumeBole,8,'00000000')) as char) as NumeBoleStr, FeveBole,"
  loc_C68CA9: ConcatStr
  loc_C68CAA: FStStrNoPop var_C0
  loc_C68CAD: LitStr " cast(replace(lpad(TotaBole,13,'0'),'.','') as char) as TotaBoleStr,"
  loc_C68CB0: ConcatStr
  loc_C68CB1: FStStrNoPop var_C4
  loc_C68CB4: LitStr " IF(boleto.CodiTili>0 AND boleto.NumeLiqu>0,cast(replace(lpad(TotaBole + DecaBole + ExenBole,13,'0'),'.','') as char),cast(replace(lpad(TotaBole,13,'0'),'.','') as char)) as TotaBoleSeguStr,"
  loc_C68CB7: ConcatStr
  loc_C68CB8: FStStrNoPop var_C8
  loc_C68CBB: LitStr " IF(boleto.CodiTili>0 AND boleto.NumeLiqu>0,TotaBole + DecaBole + ExenBole,TotaBole) as TotaBole2,"
  loc_C68CBE: ConcatStr
  loc_C68CBF: FStStrNoPop var_CC
  loc_C68CC2: LitStr " detabole.CodiConc, concepto.DetaConc, detabole.CodiFapa, detabole.CuotDefa, 0 CacuFapa,"
  loc_C68CC5: ConcatStr
  loc_C68CC6: FStStrNoPop var_D0
  loc_C68CC9: LitStr " IF(detabole.CodiFapa=0,(SELECT SUM(DebeCtct)-SUM(CredCtct) as saldo FROM ctacte WHERE ctacte.CodiOfic = detabole.CodiOfic AND ctacte.CuenCtct = detabole.CuenCtct"
  loc_C68CCC: ConcatStr
  loc_C68CCD: FStStrNoPop var_D4
  loc_C68CD0: LitStr " AND ctacte.PeriCtct = detabole.PeriCtct AND ctacte.BimeCtct = detabole.BimeCtct AND ctacte.NumeCtct = detabole.NumeCtct),1) as Saldo"
  loc_C68CD3: ConcatStr
  loc_C68CD4: FStStrNoPop var_D8
  loc_C68CD7: LitStr " FROM boleto"
  loc_C68CDA: ConcatStr
  loc_C68CDB: FStStrNoPop var_10C
  loc_C68CDE: LitStr " INNER JOIN detabole ON detabole.PeriBole = boleto.PeriBole AND detabole.NumeBole = boleto.NumeBole"
  loc_C68CE1: ConcatStr
  loc_C68CE2: FStStrNoPop var_110
  loc_C68CE5: LitStr " INNER JOIN concepto ON concepto.PeriInfo = detabole.PeriInfo AND concepto.CodiConc = detabole.CodiConc"
  loc_C68CE8: ConcatStr
  loc_C68CE9: FStStrNoPop var_114
  loc_C68CEC: LitStr " WHERE FeveBole between "
  loc_C68CEF: ConcatStr
  loc_C68CF0: FStStrNoPop var_14C
  loc_C68CF3: LitI4 1
  loc_C68CF8: LitI4 1
  loc_C68CFD: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_C68D02: FStVarCopyObj var_108
  loc_C68D05: FLdRfVar var_108
  loc_C68D08: FLdRfVar var_E8
  loc_C68D0B: CStrVarTmp
  loc_C68D0C: CVarStr var_F8
  loc_C68D0F: ImpAdCallI2 Format$(, )
  loc_C68D14: FStStrNoPop var_150
  loc_C68D17: ConcatStr
  loc_C68D18: FStStrNoPop var_154
  loc_C68D1B: LitStr " AND "
  loc_C68D1E: ConcatStr
  loc_C68D1F: FStStrNoPop var_158
  loc_C68D22: LitI4 1
  loc_C68D27: LitI4 1
  loc_C68D2C: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_C68D31: FStVarCopyObj var_148
  loc_C68D34: FLdRfVar var_148
  loc_C68D37: FLdRfVar var_128
  loc_C68D3A: CStrVarTmp
  loc_C68D3B: CVarStr var_138
  loc_C68D3E: ImpAdCallI2 Format$(, )
  loc_C68D43: FStStrNoPop var_15C
  loc_C68D46: ConcatStr
  loc_C68D47: FStStrNoPop var_160
  loc_C68D4A: LitStr " AND boleto.EstaBole = 'Emitido' AND detabole.CuenCtct <> '' AND boleto.CodiTili > 0 AND boleto.NumeLiqu > 0 "
  loc_C68D4D: ConcatStr
  loc_C68D4E: FStStrNoPop var_164
  loc_C68D51: LitStr " AND boleto.CodiOfic = "
  loc_C68D54: ConcatStr
  loc_C68D55: FStStrNoPop var_168
  loc_C68D58: ImpAdLdUI1
  loc_C68D5C: CStrI2
  loc_C68D5E: FStStrNoPop var_16C
  loc_C68D61: ConcatStr
  loc_C68D62: FStStrNoPop var_170
  loc_C68D65: ILdRf var_B0
  loc_C68D68: ConcatStr
  loc_C68D69: FStStrNoPop var_174
  loc_C68D6C: LitStr " GROUP BY boleto.PeriBole, boleto.NumeBole"
  loc_C68D6F: ConcatStr
  loc_C68D70: FStStrNoPop var_244
  loc_C68D73: LitStr " HAVING Saldo > 0"
  loc_C68D76: ConcatStr
  loc_C68D77: FStStrNoPop var_248
  loc_C68D7A: LitStr " ORDER BY boleto.PeriBole, boleto.NumeBole"
  loc_C68D7D: ConcatStr
  loc_C68D7E: FStStrNoPop var_24C
  loc_C68D81: FLdPr var_240
  loc_C68D84: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C68D89: FFreeStr var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_10C = "": var_110 = "": var_114 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_244 = "": var_248 = ""
  loc_C68DBE: FFreeAd var_A8 = ""
  loc_C68DC5: FFreeVar var_E8 = "": var_F8 = "": var_108 = "": var_128 = "": var_138 = ""
  loc_C68DD4: FLdRfVar var_178
  loc_C68DD7: FLdPr var_240
  loc_C68DDA: from_stack_1 = clsboleto.RecordCount
  loc_C68DDF: ILdRf var_178
  loc_C68DE2: LitI4 0
  loc_C68DE7: EqI4
  loc_C68DE8: BranchF loc_C68E08
  loc_C68DEB: LitI4 0
  loc_C68DF0: LitI4 0
  loc_C68DF5: FLdPr Me
  loc_C68DF8: MemLdRfVar from_stack_1.global_96
  loc_C68DFB: Redim
  loc_C68E05: Branch loc_C6932D
  loc_C68E08: FLdRfVar var_B2
  loc_C68E0B: FLdPr Me
  loc_C68E0E: VCallAd Control_ID_OptLink
  loc_C68E11: FStAdFunc var_A8
  loc_C68E14: FLdPr var_A8
  loc_C68E17:  = Me.Value
  loc_C68E1C: FLdI2 var_B2
  loc_C68E1F: LitI2_Byte &HFF
  loc_C68E21: EqI2
  loc_C68E22: FFree1Ad var_A8
  loc_C68E25: BranchF loc_C6932D
  loc_C68E28: LitI4 0
  loc_C68E2D: FLdRfVar var_178
  loc_C68E30: FLdPr var_240
  loc_C68E33: from_stack_1 = clsboleto.RecordCount
  loc_C68E38: ILdRf var_178
  loc_C68E3B: FLdPr Me
  loc_C68E3E: MemLdRfVar from_stack_1.global_96
  loc_C68E41: Redim
  loc_C68E4B: FLdPr var_240
  loc_C68E4E: Call clsboleto.MoveFirst()
  loc_C68E53: FLdRfVar var_178
  loc_C68E56: FLdPr var_240
  loc_C68E59: from_stack_1 = clsboleto.RecordCount
  loc_C68E5E: ILdRf var_178
  loc_C68E61: CR8I4
  loc_C68E62: CVarR4
  loc_C68E66: PopAdLdVar
  loc_C68E67: FLdPrThis
  loc_C68E68: VCallAd Control_ID_Pbar
  loc_C68E6B: FStAdFunc var_A8
  loc_C68E6E: FLdPr var_A8
  loc_C68E71: LateIdSt
  loc_C68E76: FFree1Ad var_A8
  loc_C68E79: LitVar_TRUE var_94
  loc_C68E7C: PopAdLdVar
  loc_C68E7D: FLdPrThis
  loc_C68E7E: VCallAd Control_ID_Pbar
  loc_C68E81: FStAdFunc var_A8
  loc_C68E84: FLdPr var_A8
  loc_C68E87: LateIdSt
  loc_C68E8C: FFree1Ad var_A8
  loc_C68E8F: LitI4 1
  loc_C68E94: FLdPr Me
  loc_C68E97: MemLdRfVar from_stack_1.global_100
  loc_C68E9A: FLdPr Me
  loc_C68E9D: MemLdStr global_96
  loc_C68EA0: LitI2_Byte 1
  loc_C68EA2: FnUBound
  loc_C68EA4: ForI4 var_254
  loc_C68EAA: FLdPr Me
  loc_C68EAD: MemLdStr global_100
  loc_C68EB0: CR8I4
  loc_C68EB1: CVarR4
  loc_C68EB5: PopAdLdVar
  loc_C68EB6: FLdPrThis
  loc_C68EB7: VCallAd Control_ID_Pbar
  loc_C68EBA: FStAdFunc var_A8
  loc_C68EBD: FLdPr var_A8
  loc_C68EC0: LateIdSt
  loc_C68EC5: FFree1Ad var_A8
  loc_C68EC8: FLdRfVar var_BC
  loc_C68ECB: FLdPr var_240
  loc_C68ECE: from_stack_1 = clsboleto.CuenCtct
  loc_C68ED3: LitI2_Byte 0
  loc_C68ED5: LitVar_Missing var_F8
  loc_C68ED8: LitI2_Byte 0
  loc_C68EDA: FLdZeroAd var_BC
  loc_C68EDD: CVarStr var_E8
  loc_C68EE0: PopAdLdVar
  loc_C68EE1: FLdPr Me
  loc_C68EE4: MemLdStr global_100
  loc_C68EE7: FLdPr Me
  loc_C68EEA: MemLdStr global_96
  loc_C68EED: AryLock
  loc_C68EF0: Ary1LdPr
  loc_C68EF1: MemLdRfVar from_stack_1.global_0
  loc_C68EF4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68EF9: AryUnlock
  loc_C68EFC: FFreeVar var_E8 = ""
  loc_C68F03: FLdRfVar var_BC
  loc_C68F06: FLdPr var_240
  loc_C68F09: from_stack_1 = clsboleto.NumeBoleStr
  loc_C68F0E: LitI2_Byte 0
  loc_C68F10: LitVar_Missing var_F8
  loc_C68F13: LitI2_Byte 0
  loc_C68F15: FLdZeroAd var_BC
  loc_C68F18: CVarStr var_E8
  loc_C68F1B: PopAdLdVar
  loc_C68F1C: FLdPr Me
  loc_C68F1F: MemLdStr global_100
  loc_C68F22: FLdPr Me
  loc_C68F25: MemLdStr global_96
  loc_C68F28: AryLock
  loc_C68F2B: Ary1LdPr
  loc_C68F2C: MemLdRfVar from_stack_1.global_4
  loc_C68F2F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68F34: AryUnlock
  loc_C68F37: FFreeVar var_E8 = ""
  loc_C68F3E: FLdRfVar var_E8
  loc_C68F41: FLdPr var_240
  loc_C68F44: from_stack_1 = clsboleto.FeveBole
  loc_C68F49: LitI4 1
  loc_C68F4E: LitI4 1
  loc_C68F53: LitVarStr var_94, "yymmdd"
  loc_C68F58: FStVarCopyObj var_F8
  loc_C68F5B: FLdRfVar var_F8
  loc_C68F5E: FLdRfVar var_E8
  loc_C68F61: ImpAdCallI2 Format$(, )
  loc_C68F66: FStStr var_BC
  loc_C68F69: LitI2_Byte 0
  loc_C68F6B: LitVar_Missing var_128
  loc_C68F6E: LitI2_Byte 0
  loc_C68F70: FLdZeroAd var_BC
  loc_C68F73: CVarStr var_108
  loc_C68F76: PopAdLdVar
  loc_C68F77: FLdPr Me
  loc_C68F7A: MemLdStr global_100
  loc_C68F7D: FLdPr Me
  loc_C68F80: MemLdStr global_96
  loc_C68F83: AryLock
  loc_C68F86: Ary1LdPr
  loc_C68F87: MemLdRfVar from_stack_1.global_8
  loc_C68F8A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68F8F: AryUnlock
  loc_C68F92: FFree1Str var_BC
  loc_C68F95: FFreeVar var_E8 = "": var_F8 = "": var_108 = ""
  loc_C68FA0: FLdRfVar var_188
  loc_C68FA3: LitVarStr var_94, "TotaBoleStr"
  loc_C68FA8: PopAdLdVar
  loc_C68FA9: FLdRfVar var_118
  loc_C68FAC: FLdRfVar var_A8
  loc_C68FAF: FLdPr var_240
  loc_C68FB2: from_stack_1v = clsboleto.RsFrmGet()
  loc_C68FB7: FLdPr var_A8
  loc_C68FBA:  = Me.Fields
  loc_C68FBF: FLdPr var_118
  loc_C68FC2: from_stack_2 = Me.Item(from_stack_1)
  loc_C68FC7: LitI2_Byte 0
  loc_C68FC9: LitVar_Missing var_F8
  loc_C68FCC: LitI2_Byte 0
  loc_C68FCE: FLdZeroAd var_188
  loc_C68FD1: CVarAd
  loc_C68FD5: PopAdLdVar
  loc_C68FD6: FLdPr Me
  loc_C68FD9: MemLdStr global_100
  loc_C68FDC: FLdPr Me
  loc_C68FDF: MemLdStr global_96
  loc_C68FE2: AryLock
  loc_C68FE5: Ary1LdPr
  loc_C68FE6: MemLdRfVar from_stack_1.global_12
  loc_C68FE9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C68FEE: AryUnlock
  loc_C68FF1: FFreeAd var_A8 = ""
  loc_C68FF8: FFreeVar var_E8 = ""
  loc_C68FFF: FLdRfVar var_188
  loc_C69002: LitVarStr var_94, "TotaBoleSeguStr"
  loc_C69007: PopAdLdVar
  loc_C69008: FLdRfVar var_118
  loc_C6900B: FLdRfVar var_A8
  loc_C6900E: FLdPr var_240
  loc_C69011: from_stack_1v = clsboleto.RsFrmGet()
  loc_C69016: FLdPr var_A8
  loc_C69019:  = Me.Fields
  loc_C6901E: FLdPr var_118
  loc_C69021: from_stack_2 = Me.Item(from_stack_1)
  loc_C69026: LitI2_Byte 0
  loc_C69028: LitVar_Missing var_F8
  loc_C6902B: LitI2_Byte 0
  loc_C6902D: FLdZeroAd var_188
  loc_C69030: CVarAd
  loc_C69034: PopAdLdVar
  loc_C69035: FLdPr Me
  loc_C69038: MemLdStr global_100
  loc_C6903B: FLdPr Me
  loc_C6903E: MemLdStr global_96
  loc_C69041: AryLock
  loc_C69044: Ary1LdPr
  loc_C69045: MemLdRfVar from_stack_1.global_16
  loc_C69048: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C6904D: AryUnlock
  loc_C69050: FFreeAd var_A8 = ""
  loc_C69057: FFreeVar var_E8 = ""
  loc_C6905E: FLdRfVar var_188
  loc_C69061: LitVarStr var_94, "NumeBoleStr"
  loc_C69066: PopAdLdVar
  loc_C69067: FLdRfVar var_118
  loc_C6906A: FLdRfVar var_A8
  loc_C6906D: FLdPr var_240
  loc_C69070: from_stack_1v = clsboleto.RsFrmGet()
  loc_C69075: FLdPr var_A8
  loc_C69078:  = Me.Fields
  loc_C6907D: FLdPr var_118
  loc_C69080: from_stack_2 = Me.Item(from_stack_1)
  loc_C69085: LitI2_Byte 0
  loc_C69087: LitVar_Missing var_F8
  loc_C6908A: LitI2_Byte 0
  loc_C6908C: FLdZeroAd var_188
  loc_C6908F: CVarAd
  loc_C69093: PopAdLdVar
  loc_C69094: FLdPr Me
  loc_C69097: MemLdStr global_100
  loc_C6909A: FLdPr Me
  loc_C6909D: MemLdStr global_96
  loc_C690A0: AryLock
  loc_C690A3: Ary1LdPr
  loc_C690A4: MemLdRfVar from_stack_1.global_20
  loc_C690A7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C690AC: AryUnlock
  loc_C690AF: FFreeAd var_A8 = ""
  loc_C690B6: FFreeVar var_E8 = ""
  loc_C690BD: LitI2_Byte 0
  loc_C690BF: LitVar_Missing var_E8
  loc_C690C2: LitI2_Byte 0
  loc_C690C4: LitVarStr var_94, vbNullString
  loc_C690C9: PopAdLdVar
  loc_C690CA: FLdPr Me
  loc_C690CD: MemLdStr global_100
  loc_C690D0: FLdPr Me
  loc_C690D3: MemLdStr global_96
  loc_C690D6: AryLock
  loc_C690D9: Ary1LdPr
  loc_C690DA: MemLdRfVar from_stack_1.global_28
  loc_C690DD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C690E2: AryUnlock
  loc_C690E5: FFree1Var var_E8 = ""
  loc_C690E8: LitI2_Byte 0
  loc_C690EA: LitVar_Missing var_E8
  loc_C690ED: LitI2_Byte 0
  loc_C690EF: LitVarStr var_94, vbNullString
  loc_C690F4: PopAdLdVar
  loc_C690F5: FLdPr Me
  loc_C690F8: MemLdStr global_100
  loc_C690FB: FLdPr Me
  loc_C690FE: MemLdStr global_96
  loc_C69101: AryLock
  loc_C69104: Ary1LdPr
  loc_C69105: MemLdRfVar from_stack_1.global_32
  loc_C69108: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C6910D: AryUnlock
  loc_C69110: FFree1Var var_E8 = ""
  loc_C69113: FLdRfVar var_B2
  loc_C69116: FLdPr var_240
  loc_C69119: from_stack_1 = clsboleto.CuotDefa
  loc_C6911E: LitI2_Byte 0
  loc_C69120: LitVar_Missing var_E8
  loc_C69123: LitI2_Byte 0
  loc_C69125: FLdI2 var_B2
  loc_C69128: CVarI2 var_94
  loc_C6912B: PopAdLdVar
  loc_C6912C: FLdPr Me
  loc_C6912F: MemLdStr global_100
  loc_C69132: FLdPr Me
  loc_C69135: MemLdStr global_96
  loc_C69138: AryLock
  loc_C6913B: Ary1LdPr
  loc_C6913C: MemLdRfVar from_stack_1.global_36
  loc_C6913F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C69144: AryUnlock
  loc_C69147: FFree1Var var_E8 = ""
  loc_C6914A: FLdRfVar var_B2
  loc_C6914D: FLdPr var_240
  loc_C69150: from_stack_1 = clsboleto.CacuFapa
  loc_C69155: LitI2_Byte 0
  loc_C69157: LitVar_Missing var_E8
  loc_C6915A: LitI2_Byte 0
  loc_C6915C: FLdI2 var_B2
  loc_C6915F: CVarI2 var_94
  loc_C69162: PopAdLdVar
  loc_C69163: FLdPr Me
  loc_C69166: MemLdStr global_100
  loc_C69169: FLdPr Me
  loc_C6916C: MemLdStr global_96
  loc_C6916F: AryLock
  loc_C69172: Ary1LdPr
  loc_C69173: MemLdRfVar from_stack_1.global_40
  loc_C69176: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C6917B: AryUnlock
  loc_C6917E: FFree1Var var_E8 = ""
  loc_C69181: FLdRfVar var_188
  loc_C69184: LitVarStr var_94, "Periodo"
  loc_C69189: PopAdLdVar
  loc_C6918A: FLdRfVar var_118
  loc_C6918D: FLdRfVar var_A8
  loc_C69190: FLdPr var_240
  loc_C69193: from_stack_1v = clsboleto.RsFrmGet()
  loc_C69198: FLdPr var_A8
  loc_C6919B:  = Me.Fields
  loc_C691A0: FLdPr var_118
  loc_C691A3: from_stack_2 = Me.Item(from_stack_1)
  loc_C691A8: LitI2_Byte 0
  loc_C691AA: LitVar_Missing var_F8
  loc_C691AD: LitI2_Byte 0
  loc_C691AF: FLdZeroAd var_188
  loc_C691B2: CVarAd
  loc_C691B6: PopAdLdVar
  loc_C691B7: FLdPr Me
  loc_C691BA: MemLdStr global_100
  loc_C691BD: FLdPr Me
  loc_C691C0: MemLdStr global_96
  loc_C691C3: AryLock
  loc_C691C6: Ary1LdPr
  loc_C691C7: MemLdRfVar from_stack_1.global_44
  loc_C691CA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C691CF: AryUnlock
  loc_C691D2: FFreeAd var_A8 = ""
  loc_C691D9: FFreeVar var_E8 = ""
  loc_C691E0: FLdRfVar var_188
  loc_C691E3: LitVarStr var_94, "TipoBole"
  loc_C691E8: PopAdLdVar
  loc_C691E9: FLdRfVar var_118
  loc_C691EC: FLdRfVar var_A8
  loc_C691EF: FLdPr var_240
  loc_C691F2: from_stack_1v = clsboleto.RsFrmGet()
  loc_C691F7: FLdPr var_A8
  loc_C691FA:  = Me.Fields
  loc_C691FF: FLdPr var_118
  loc_C69202: from_stack_2 = Me.Item(from_stack_1)
  loc_C69207: LitI2_Byte 0
  loc_C69209: LitVar_Missing var_F8
  loc_C6920C: LitI2_Byte 0
  loc_C6920E: FLdZeroAd var_188
  loc_C69211: CVarAd
  loc_C69215: PopAdLdVar
  loc_C69216: FLdPr Me
  loc_C69219: MemLdStr global_100
  loc_C6921C: FLdPr Me
  loc_C6921F: MemLdStr global_96
  loc_C69222: AryLock
  loc_C69225: Ary1LdPr
  loc_C69226: MemLdRfVar from_stack_1.global_48
  loc_C69229: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C6922E: AryUnlock
  loc_C69231: FFreeAd var_A8 = ""
  loc_C69238: FFreeVar var_E8 = ""
  loc_C6923F: FLdRfVar var_23C
  loc_C69242: FLdPr var_240
  loc_C69245: from_stack_1 = clsboleto.TotaBole
  loc_C6924A: LitI4 2
  loc_C6924F: FLdPr Me
  loc_C69252: MemLdRfVar from_stack_1.global_108
  loc_C69255: CVarRef
  loc_C6925A: FLdRfVar var_E8
  loc_C6925D: ImpAdCallFPR4  = Round(, )
  loc_C69262: FLdRfVar var_E8
  loc_C69265: LitI4 2
  loc_C6926A: FLdFPR8 var_23C
  loc_C6926D: CVarR8
  loc_C69271: FLdRfVar var_108
  loc_C69274: ImpAdCallFPR4  = Round(, )
  loc_C69279: FLdRfVar var_108
  loc_C6927C: AddVar var_128
  loc_C69280: CR4Var
  loc_C69281: FLdPr Me
  loc_C69284: MemStFPR8 global_108
  loc_C69287: FFreeVar var_F8 = "": var_E8 = "": var_108 = ""
  loc_C69292: FLdRfVar var_E8
  loc_C69295: FLdRfVar var_188
  loc_C69298: LitVarStr var_94, "TotaBole2"
  loc_C6929D: PopAdLdVar
  loc_C6929E: FLdRfVar var_118
  loc_C692A1: FLdRfVar var_A8
  loc_C692A4: FLdPr var_240
  loc_C692A7: from_stack_1v = clsboleto.RsFrmGet()
  loc_C692AC: FLdPr var_A8
  loc_C692AF:  = Me.Fields
  loc_C692B4: FLdPr var_118
  loc_C692B7: from_stack_2 = Me.Item(from_stack_1)
  loc_C692BC: FLdPr var_188
  loc_C692BF:  = Me.Value
  loc_C692C4: LitI4 2
  loc_C692C9: FLdPr Me
  loc_C692CC: MemLdFPR8 global_116
  loc_C692CF: CVarR8
  loc_C692D3: FLdRfVar var_E8
  loc_C692D6: AddVar var_F8
  loc_C692DA: FLdRfVar var_108
  loc_C692DD: ImpAdCallFPR4  = Round(, )
  loc_C692E2: FLdRfVar var_108
  loc_C692E5: CR4Var
  loc_C692E6: FLdPr Me
  loc_C692E9: MemStFPR8 global_116
  loc_C692EC: FFreeAd var_A8 = "": var_118 = ""
  loc_C692F5: FFreeVar var_E8 = "": var_F8 = ""
  loc_C692FE: LitI2_Byte 1
  loc_C69300: PopTmpLdAd2 var_B2
  loc_C69303: FLdPr var_240
  loc_C69306: Call clsboleto.Move(from_stack_1v)
  loc_C6930B: FLdPr Me
  loc_C6930E: MemLdRfVar from_stack_1.global_100
  loc_C69311: NextI4 var_254, loc_C68EAA
  loc_C69316: LitVar_FALSE
  loc_C6931A: PopAdLdVar
  loc_C6931B: FLdPrThis
  loc_C6931C: VCallAd Control_ID_Pbar
  loc_C6931F: FStAdFunc var_A8
  loc_C69322: FLdPr var_A8
  loc_C69325: LateIdSt
  loc_C6932A: FFree1Ad var_A8
  loc_C6932D: LitNothing
  loc_C6932F: FStAd var_240 
  loc_C69333: LitI2_Byte &HFF
  loc_C69335: FLdPr Me
  loc_C69338: MemStI2 bGenerado
  loc_C6933B: LitI4 0
  loc_C69340: CI2I4
  loc_C69341: FLdPr Me
  loc_C69344: Me.MousePointer = from_stack_1
  loc_C69349: LitVarStr var_94, vbNullString
  loc_C6934E: PopAdLdVar
  loc_C6934F: FLdPr Me
  loc_C69352: VCallAd Control_ID_statusBar
  loc_C69355: FStAdFunc var_A8
  loc_C69358: FLdPr var_A8
  loc_C6935B: LateIdSt
  loc_C69360: FFree1Ad var_A8
  loc_C69363: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'C671E8
  'Data Table: 4CB4F8
  loc_C661F4: LitI2_Byte 0
  loc_C661F6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C661FB: FStFPR8 var_138
  loc_C661FE: LitStr "0000000"
  loc_C66201: FLdRfVar var_100
  loc_C66204: StFixedStr
  loc_C66207: LitStr "0000000000000000"
  loc_C6620A: FLdRfVar var_120
  loc_C6620D: StFixedStr
  loc_C66210: LitStr "0000000000"
  loc_C66213: FLdRfVar var_214
  loc_C66216: StFixedStr
  loc_C66219: FLdRfVar var_23E
  loc_C6621C: FLdPr Me
  loc_C6621F: VCallAd Control_ID_OptBanelco
  loc_C66222: FStAdFunc var_23C
  loc_C66225: FLdPr var_23C
  loc_C66228:  = Me.Value
  loc_C6622D: FLdI2 var_23E
  loc_C66230: LitI2_Byte &HFF
  loc_C66232: EqI2
  loc_C66233: FFree1Ad var_23C
  loc_C66236: BranchF loc_C66792
  loc_C66239: LitStr "1038"
  loc_C6623C: FLdRfVar var_140
  loc_C6623F: StFixedStr
  loc_C66242: LitI2_Byte 0
  loc_C66244: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C66249: FStFPR8 var_2C8
  loc_C6624C: ImpAdCallI2 Proc_272_19_A53E30()
  loc_C66251: FStStrNoPop var_244
  loc_C66254: LitStr "\FAC"
  loc_C66257: ConcatStr
  loc_C66258: FStStrNoPop var_248
  loc_C6625B: FLdRfVar var_140
  loc_C6625E: LdFixedStr
  loc_C66261: FStStrNoPop var_24C
  loc_C66264: ConcatStr
  loc_C66265: FStStrNoPop var_250
  loc_C66268: LitStr "."
  loc_C6626B: ConcatStr
  loc_C6626C: CVarStr var_2B0
  loc_C6626F: LitI4 1
  loc_C66274: LitI4 1
  loc_C66279: LitVarStr var_280, "ddmmyy"
  loc_C6627E: FStVarCopyObj var_290
  loc_C66281: FLdRfVar var_290
  loc_C66284: FLdFPR8 var_2C8
  loc_C66287: CVarDate var_270
  loc_C6628B: FLdRfVar var_2A0
  loc_C6628E: ImpAdCallFPR4  = Format(, )
  loc_C66293: FLdRfVar var_2A0
  loc_C66296: ConcatVar var_2C0
  loc_C6629A: CStrVarTmp
  loc_C6629B: ImpAdStStr MemVar_D93030
  loc_C6629F: FFreeStr var_244 = "": var_248 = "": var_24C = ""
  loc_C662AA: FFreeVar var_270 = "": var_290 = "": var_2B0 = "": var_2A0 = ""
  loc_C662B7: ImpAdLdI4 MemVar_D93030
  loc_C662BA: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_C662BF: FLdRfVar var_23C
  loc_C662C2: LitI2_Byte 0
  loc_C662C4: LitI2_Byte &HFF
  loc_C662C6: ImpAdLdI4 MemVar_D93030
  loc_C662C9: FLdPr Me
  loc_C662CC: MemLdRfVar from_stack_1.global_56
  loc_C662CF: NewIfNullPr IFileSystem3
  loc_C662D2: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C662D7: ILdRf var_23C
  loc_C662DA: FLdPr Me
  loc_C662DD: MemStVarAd
  loc_C662E1: FFree1Ad var_23C
  loc_C662E4: LitI2_Byte 0
  loc_C662E6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C662EB: FStFPR8 var_2C8
  loc_C662EE: LitStr "0400"
  loc_C662F1: FLdRfVar var_140
  loc_C662F4: LdFixedStr
  loc_C662F7: FStStrNoPop var_244
  loc_C662FA: ConcatStr
  loc_C662FB: FStStrNoPop var_248
  loc_C662FE: LitI4 1
  loc_C66303: LitI4 1
  loc_C66308: LitVarStr var_280, "yyyymmdd"
  loc_C6630D: FStVarCopyObj var_290
  loc_C66310: FLdRfVar var_290
  loc_C66313: FLdFPR8 var_2C8
  loc_C66316: CVarDate var_270
  loc_C6631A: ImpAdCallI2 Format$(, )
  loc_C6631F: FStStrNoPop var_24C
  loc_C66322: ConcatStr
  loc_C66323: FStStrNoPop var_250
  loc_C66326: LitStr "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  loc_C66329: ConcatStr
  loc_C6632A: CVarStr var_2A0
  loc_C6632D: PopAdLdVar
  loc_C6632E: FLdPr Me
  loc_C66331: MemLdRfVar from_stack_1.global_76
  loc_C66334: LdPrVar
  loc_C66336: LateMemCall
  loc_C6633C: FFreeStr var_244 = "": var_248 = "": var_24C = ""
  loc_C66347: FFreeVar var_270 = "": var_290 = ""
  loc_C66350: LitI4 1
  loc_C66355: FLdPr Me
  loc_C66358: MemLdRfVar from_stack_1.global_100
  loc_C6635B: FLdPr Me
  loc_C6635E: MemLdStr global_96
  loc_C66361: LitI2_Byte 1
  loc_C66363: FnUBound
  loc_C66365: ForI4 var_2E0
  loc_C6636B: FLdPr Me
  loc_C6636E: MemLdStr global_100
  loc_C66371: FLdPr Me
  loc_C66374: MemLdStr global_96
  loc_C66377: AryLock
  loc_C6637A: Ary1LdRf
  loc_C6637B: FStR4 var_2E8
  loc_C6637E: LitVarI2 var_270, 1
  loc_C66383: LitI4 1
  loc_C66388: FMemLdRf unk_4CB211
  loc_C6638D: CVarRef
  loc_C66392: FLdRfVar var_290
  loc_C66395: ImpAdCallFPR4  = Mid(, , )
  loc_C6639A: FLdRfVar var_290
  loc_C6639D: FStVar var_2F8
  loc_C663A1: FFree1Var var_270 = ""
  loc_C663A4: FLdRfVar var_2F8
  loc_C663A7: LitVarI2 var_260, 1
  loc_C663AC: HardType
  loc_C663AD: EqVarBool
  loc_C663AF: BranchF loc_C663D0
  loc_C663B2: LitStr "PAGO FACTURA"
  loc_C663B5: FMemLdR4 var_2E8(28)
  loc_C663BA: ConcatStr
  loc_C663BB: FLdRfVar var_D4
  loc_C663BE: StFixedStrFree
  loc_C663C2: FMemLdR4 var_2E8(28)
  loc_C663C7: FLdRfVar var_F2
  loc_C663CA: StFixedStr
  loc_C663CD: Branch loc_C664B0
  loc_C663D0: FLdRfVar var_2F8
  loc_C663D3: LitVarI2 var_260, 2
  loc_C663D8: HardType
  loc_C663D9: EqVarBool
  loc_C663DB: BranchF loc_C663FC
  loc_C663DE: LitStr "PAGO FACTURA"
  loc_C663E1: FMemLdR4 var_2E8(28)
  loc_C663E6: ConcatStr
  loc_C663E7: FLdRfVar var_D4
  loc_C663EA: StFixedStrFree
  loc_C663EE: FMemLdR4 var_2E8(28)
  loc_C663F3: FLdRfVar var_F2
  loc_C663F6: StFixedStr
  loc_C663F9: Branch loc_C664B0
  loc_C663FC: FLdRfVar var_2F8
  loc_C663FF: LitVarI2 var_260, 3
  loc_C66404: HardType
  loc_C66405: EqVarBool
  loc_C66407: BranchF loc_C66428
  loc_C6640A: LitStr "PAGO FACTURA"
  loc_C6640D: FMemLdR4 var_2E8(28)
  loc_C66412: ConcatStr
  loc_C66413: FLdRfVar var_D4
  loc_C66416: StFixedStrFree
  loc_C6641A: FMemLdR4 var_2E8(28)
  loc_C6641F: FLdRfVar var_F2
  loc_C66422: StFixedStr
  loc_C66425: Branch loc_C664B0
  loc_C66428: FLdRfVar var_2F8
  loc_C6642B: LitVarI2 var_260, 4
  loc_C66430: HardType
  loc_C66431: EqVarBool
  loc_C66433: BranchF loc_C66454
  loc_C66436: LitStr "PAGO FACTURA"
  loc_C66439: FMemLdR4 var_2E8(28)
  loc_C6643E: ConcatStr
  loc_C6643F: FLdRfVar var_D4
  loc_C66442: StFixedStrFree
  loc_C66446: FMemLdR4 var_2E8(28)
  loc_C6644B: FLdRfVar var_F2
  loc_C6644E: StFixedStr
  loc_C66451: Branch loc_C664B0
  loc_C66454: FLdRfVar var_2F8
  loc_C66457: LitVarI2 var_260, 5
  loc_C6645C: HardType
  loc_C6645D: EqVarBool
  loc_C6645F: BranchF loc_C664B0
  loc_C66462: LitStr "PLAN DE PAGO CUOTA "
  loc_C66465: FMemLdR4 var_2E8(36)
  loc_C6646A: ConcatStr
  loc_C6646B: FStStrNoPop var_244
  loc_C6646E: LitStr " DE "
  loc_C66471: ConcatStr
  loc_C66472: FStStrNoPop var_248
  loc_C66475: FMemLdR4 var_2E8(40)
  loc_C6647A: ConcatStr
  loc_C6647B: FLdRfVar var_D4
  loc_C6647E: StFixedStrFree
  loc_C66482: FFreeStr var_244 = ""
  loc_C66489: LitStr "CUOTA "
  loc_C6648C: FMemLdR4 var_2E8(36)
  loc_C66491: ConcatStr
  loc_C66492: FStStrNoPop var_244
  loc_C66495: LitStr " DE "
  loc_C66498: ConcatStr
  loc_C66499: FStStrNoPop var_248
  loc_C6649C: FMemLdR4 var_2E8(40)
  loc_C664A1: ConcatStr
  loc_C664A2: FLdRfVar var_F2
  loc_C664A5: StFixedStrFree
  loc_C664A9: FFreeStr var_244 = ""
  loc_C664B0: LitVarI2 var_270, 4
  loc_C664B5: LitI4 1
  loc_C664BA: FMemLdRf unk_4CB211
  loc_C664BF: CVarRef
  loc_C664C4: FLdRfVar var_290
  loc_C664C7: ImpAdCallFPR4  = Mid(, , )
  loc_C664CC: LitVarI2 var_2A0, 2
  loc_C664D1: LitI4 5
  loc_C664D6: FMemLdRf unk_4CB211
  loc_C664DB: CVarRef
  loc_C664E0: FLdRfVar var_2B0
  loc_C664E3: ImpAdCallFPR4  = Mid(, , )
  loc_C664E8: LitI2_Byte 0
  loc_C664EA: FLdRfVar var_2B0
  loc_C664ED: LitVarI2 var_318, 1
  loc_C664F2: AddVar var_2C0
  loc_C664F6: CI2Var
  loc_C664F7: FLdRfVar var_290
  loc_C664FA: CI2Var
  loc_C664FB: FLdRfVar var_328
  loc_C664FE: ImpAdCallFPR4  = DateSerial(, , )
  loc_C66503: LitI4 1
  loc_C66508: LitI4 1
  loc_C6650D: LitVarStr var_338, "yyyymmdd"
  loc_C66512: FStVarCopyObj var_348
  loc_C66515: FLdRfVar var_348
  loc_C66518: FLdRfVar var_328
  loc_C6651B: FLdRfVar var_358
  loc_C6651E: ImpAdCallFPR4  = Format(, )
  loc_C66523: FLdRfVar var_358
  loc_C66526: CStrVarTmp
  loc_C66527: FLdRfVar var_130
  loc_C6652A: StFixedStrFree
  loc_C6652E: FFreeVar var_270 = "": var_2A0 = "": var_2B0 = "": var_290 = "": var_2C0 = "": var_328 = "": var_348 = ""
  loc_C66541: LitI4 0
  loc_C66546: FMemLdR4 var_2E8(24)
  loc_C6654B: Ary1LdI4
  loc_C6654C: LitStr "                            "
  loc_C6654F: ConcatStr
  loc_C66550: FLdRfVar var_1B8
  loc_C66553: StFixedStrFree
  loc_C66557: LitStr "5"
  loc_C6655A: FMemLdR4 var_2E8(0)
  loc_C6655F: ConcatStr
  loc_C66560: FStStrNoPop var_244
  loc_C66563: FMemLdR4 var_2E8(4)
  loc_C66568: ConcatStr
  loc_C66569: FStStrNoPop var_248
  loc_C6656C: LitStr "0"
  loc_C6656F: ConcatStr
  loc_C66570: FStStrNoPop var_24C
  loc_C66573: FMemLdR4 var_2E8(8)
  loc_C66578: ConcatStr
  loc_C66579: FStStrNoPop var_250
  loc_C6657C: FMemLdR4 var_2E8(12)
  loc_C66581: ConcatStr
  loc_C66582: FStStrNoPop var_35C
  loc_C66585: LitStr "000000000000000000000000000000000000000000000000000000000"
  loc_C66588: ConcatStr
  loc_C66589: FStStrNoPop var_360
  loc_C6658C: FMemLdR4 var_2E8(0)
  loc_C66591: ConcatStr
  loc_C66592: FStStrNoPop var_364
  loc_C66595: FLdRfVar var_D4
  loc_C66598: LdFixedStr
  loc_C6659B: FStStrNoPop var_368
  loc_C6659E: ConcatStr
  loc_C6659F: FStStrNoPop var_36C
  loc_C665A2: FLdRfVar var_F2
  loc_C665A5: LdFixedStr
  loc_C665A8: FStStrNoPop var_370
  loc_C665AB: ConcatStr
  loc_C665AC: FStStrNoPop var_374
  loc_C665AF: FLdRfVar var_1B8
  loc_C665B2: LdFixedStr
  loc_C665B5: FStStrNoPop var_378
  loc_C665B8: ConcatStr
  loc_C665B9: FStStrNoPop var_37C
  loc_C665BC: LitStr "00000000000000000000000000000"
  loc_C665BF: ConcatStr
  loc_C665C0: CVarStr var_270
  loc_C665C3: PopAdLdVar
  loc_C665C4: FLdPr Me
  loc_C665C7: MemLdRfVar from_stack_1.global_76
  loc_C665CA: LdPrVar
  loc_C665CC: LateMemCall
  loc_C665D2: FFreeStr var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = ""
  loc_C665EF: FFree1Var var_270 = ""
  loc_C665F2: LitI4 0
  loc_C665F7: FStR4 var_2E8
  loc_C665FA: AryUnlock
  loc_C665FD: FLdPr Me
  loc_C66600: MemLdRfVar from_stack_1.global_100
  loc_C66603: NextI4 var_2E0, loc_C6636B
  loc_C66608: FLdPr Me
  loc_C6660B: MemLdStr global_96
  loc_C6660E: LitI2_Byte 1
  loc_C66610: FnUBound
  loc_C66612: CStrI4
  loc_C66614: FLdRfVar var_100
  loc_C66617: StFixedStrRFree
  loc_C6661B: LitI4 0
  loc_C66620: LitI4 -1
  loc_C66625: LitI4 1
  loc_C6662A: LitStr "0"
  loc_C6662D: LitStr " "
  loc_C66630: FLdRfVar var_100
  loc_C66633: LdFixedStr
  loc_C66636: FStStrNoPop var_244
  loc_C66639: ImpAdCallI2 Replace(, , , , , )
  loc_C6663E: FStStr var_248
  loc_C66641: ILdRf var_244
  loc_C66644: FLdRfVar var_100
  loc_C66647: StFixedStr
  loc_C6664A: FLdZeroAd var_248
  loc_C6664D: FLdRfVar var_100
  loc_C66650: StFixedStrFree
  loc_C66654: FFree1Str var_244
  loc_C66657: LitI4 1
  loc_C6665C: LitI4 1
  loc_C66661: LitVarStr var_280, "0.00"
  loc_C66666: FStVarCopyObj var_270
  loc_C66669: FLdRfVar var_270
  loc_C6666C: FLdPr Me
  loc_C6666F: MemLdRfVar from_stack_1.global_108
  loc_C66672: CVarRef
  loc_C66677: FLdRfVar var_290
  loc_C6667A: ImpAdCallFPR4  = Format(, )
  loc_C6667F: LitI4 0
  loc_C66684: LitI4 -1
  loc_C66689: LitI4 1
  loc_C6668E: LitStr vbNullString
  loc_C66691: LitStr ","
  loc_C66694: FLdRfVar var_290
  loc_C66697: CStrVarVal var_244
  loc_C6669B: ImpAdCallI2 Replace(, , , , , )
  loc_C666A0: FLdRfVar var_120
  loc_C666A3: StFixedStrRFree
  loc_C666A7: FFree1Str var_244
  loc_C666AA: FFreeVar var_270 = ""
  loc_C666B1: LitI4 0
  loc_C666B6: LitI4 -1
  loc_C666BB: LitI4 1
  loc_C666C0: LitStr "0"
  loc_C666C3: LitStr " "
  loc_C666C6: FLdRfVar var_120
  loc_C666C9: LdFixedStr
  loc_C666CC: FStStrNoPop var_244
  loc_C666CF: ImpAdCallI2 Replace(, , , , , )
  loc_C666D4: FStStr var_248
  loc_C666D7: ILdRf var_244
  loc_C666DA: FLdRfVar var_120
  loc_C666DD: StFixedStr
  loc_C666E0: FLdZeroAd var_248
  loc_C666E3: FLdRfVar var_120
  loc_C666E6: StFixedStrFree
  loc_C666EA: FFree1Str var_244
  loc_C666ED: LitI2_Byte 0
  loc_C666EF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C666F4: FStFPR8 var_2C8
  loc_C666F7: LitStr "9400"
  loc_C666FA: FLdRfVar var_140
  loc_C666FD: LdFixedStr
  loc_C66700: FStStrNoPop var_244
  loc_C66703: ConcatStr
  loc_C66704: FStStrNoPop var_248
  loc_C66707: LitI4 1
  loc_C6670C: LitI4 1
  loc_C66711: LitVarStr var_280, "yyyymmdd"
  loc_C66716: FStVarCopyObj var_290
  loc_C66719: FLdRfVar var_290
  loc_C6671C: FLdFPR8 var_2C8
  loc_C6671F: CVarDate var_270
  loc_C66723: ImpAdCallI2 Format$(, )
  loc_C66728: FStStrNoPop var_24C
  loc_C6672B: ConcatStr
  loc_C6672C: FStStrNoPop var_250
  loc_C6672F: FLdRfVar var_100
  loc_C66732: LdFixedStr
  loc_C66735: FStStrNoPop var_35C
  loc_C66738: ConcatStr
  loc_C66739: FStStrNoPop var_360
  loc_C6673C: LitStr "0000000"
  loc_C6673F: ConcatStr
  loc_C66740: FStStrNoPop var_364
  loc_C66743: FLdRfVar var_120
  loc_C66746: LdFixedStr
  loc_C66749: FStStrNoPop var_368
  loc_C6674C: ConcatStr
  loc_C6674D: FStStrNoPop var_36C
  loc_C66750: LitStr "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
  loc_C66753: ConcatStr
  loc_C66754: CVarStr var_2A0
  loc_C66757: PopAdLdVar
  loc_C66758: FLdPr Me
  loc_C6675B: MemLdRfVar from_stack_1.global_76
  loc_C6675E: LdPrVar
  loc_C66760: LateMemCall
  loc_C66766: FFreeStr var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = ""
  loc_C6677B: FFreeVar var_270 = "": var_290 = ""
  loc_C66784: FLdPr Me
  loc_C66787: MemLdRfVar from_stack_1.global_76
  loc_C6678A: LdPrVar
  loc_C6678C: LateMemCall
  loc_C66792: FLdRfVar var_23E
  loc_C66795: FLdPr Me
  loc_C66798: VCallAd Control_ID_OptLink
  loc_C6679B: FStAdFunc var_23C
  loc_C6679E: FLdPr var_23C
  loc_C667A1:  = Me.Value
  loc_C667A6: FLdI2 var_23E
  loc_C667A9: LitI2_Byte &HFF
  loc_C667AB: EqI2
  loc_C667AC: FFree1Ad var_23C
  loc_C667AF: BranchF loc_C671E6
  loc_C667B2: FLdRfVar var_138
  loc_C667B5: CVarRef
  loc_C667BA: FLdRfVar var_270
  loc_C667BD: ImpAdCallFPR4  = Month()
  loc_C667C2: FLdRfVar var_270
  loc_C667C5: FStVar var_38C
  loc_C667C9: FLdRfVar var_38C
  loc_C667CC: LitVarI2 var_260, 10
  loc_C667D1: HardType
  loc_C667D2: EqVarBool
  loc_C667D4: BranchF loc_C66825
  loc_C667D7: FLdRfVar var_138
  loc_C667DA: CVarRef
  loc_C667DF: FLdRfVar var_270
  loc_C667E2: ImpAdCallFPR4  = Day()
  loc_C667E7: LitVarStr var_2D8, "A"
  loc_C667EC: LitI4 1
  loc_C667F1: LitI4 1
  loc_C667F6: LitVarStr var_280, "00"
  loc_C667FB: FStVarCopyObj var_290
  loc_C667FE: FLdRfVar var_290
  loc_C66801: FLdRfVar var_270
  loc_C66804: FLdRfVar var_2A0
  loc_C66807: ImpAdCallFPR4  = Format(, )
  loc_C6680C: FLdRfVar var_2A0
  loc_C6680F: ConcatVar var_2B0
  loc_C66813: CStrVarTmp
  loc_C66814: FStStr var_1C8
  loc_C66817: FFreeVar var_270 = "": var_290 = "": var_2A0 = ""
  loc_C66822: Branch loc_C66942
  loc_C66825: FLdRfVar var_38C
  loc_C66828: LitVarI2 var_260, 11
  loc_C6682D: HardType
  loc_C6682E: EqVarBool
  loc_C66830: BranchF loc_C66881
  loc_C66833: FLdRfVar var_138
  loc_C66836: CVarRef
  loc_C6683B: FLdRfVar var_270
  loc_C6683E: ImpAdCallFPR4  = Day()
  loc_C66843: LitVarStr var_2D8, "B"
  loc_C66848: LitI4 1
  loc_C6684D: LitI4 1
  loc_C66852: LitVarStr var_280, "00"
  loc_C66857: FStVarCopyObj var_290
  loc_C6685A: FLdRfVar var_290
  loc_C6685D: FLdRfVar var_270
  loc_C66860: FLdRfVar var_2A0
  loc_C66863: ImpAdCallFPR4  = Format(, )
  loc_C66868: FLdRfVar var_2A0
  loc_C6686B: ConcatVar var_2B0
  loc_C6686F: CStrVarTmp
  loc_C66870: FStStr var_1C8
  loc_C66873: FFreeVar var_270 = "": var_290 = "": var_2A0 = ""
  loc_C6687E: Branch loc_C66942
  loc_C66881: FLdRfVar var_38C
  loc_C66884: LitVarI2 var_260, 12
  loc_C66889: HardType
  loc_C6688A: EqVarBool
  loc_C6688C: BranchF loc_C668DD
  loc_C6688F: FLdRfVar var_138
  loc_C66892: CVarRef
  loc_C66897: FLdRfVar var_270
  loc_C6689A: ImpAdCallFPR4  = Day()
  loc_C6689F: LitVarStr var_2D8, "C"
  loc_C668A4: LitI4 1
  loc_C668A9: LitI4 1
  loc_C668AE: LitVarStr var_280, "00"
  loc_C668B3: FStVarCopyObj var_290
  loc_C668B6: FLdRfVar var_290
  loc_C668B9: FLdRfVar var_270
  loc_C668BC: FLdRfVar var_2A0
  loc_C668BF: ImpAdCallFPR4  = Format(, )
  loc_C668C4: FLdRfVar var_2A0
  loc_C668C7: ConcatVar var_2B0
  loc_C668CB: CStrVarTmp
  loc_C668CC: FStStr var_1C8
  loc_C668CF: FFreeVar var_270 = "": var_290 = "": var_2A0 = ""
  loc_C668DA: Branch loc_C66942
  loc_C668DD: LitI2_Byte 0
  loc_C668DF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C668E4: CVarDate var_2A0
  loc_C668E8: FLdRfVar var_2B0
  loc_C668EB: ImpAdCallFPR4  = Day()
  loc_C668F0: LitI2_Byte 0
  loc_C668F2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C668F7: CVarDate var_270
  loc_C668FB: FLdRfVar var_290
  loc_C668FE: ImpAdCallFPR4  = Month()
  loc_C66903: FLdRfVar var_290
  loc_C66906: LitI4 1
  loc_C6690B: LitI4 1
  loc_C66910: LitVarStr var_2D8, "00"
  loc_C66915: FStVarCopyObj var_2C0
  loc_C66918: FLdRfVar var_2C0
  loc_C6691B: FLdRfVar var_2B0
  loc_C6691E: FLdRfVar var_328
  loc_C66921: ImpAdCallFPR4  = Format(, )
  loc_C66926: FLdRfVar var_328
  loc_C66929: ConcatVar var_348
  loc_C6692D: CStrVarTmp
  loc_C6692E: FStStr var_1C8
  loc_C66931: FFreeVar var_270 = "": var_2A0 = "": var_2B0 = "": var_2C0 = "": var_290 = "": var_328 = ""
  loc_C66942: ImpAdCallI2 Proc_272_19_A53E30()
  loc_C66947: FStStrNoPop var_244
  loc_C6694A: LitStr "\P450"
  loc_C6694D: ConcatStr
  loc_C6694E: FStStrNoPop var_248
  loc_C66951: ImpAdLdUI1
  loc_C66955: CStrI2
  loc_C66957: FStStrNoPop var_24C
  loc_C6695A: ConcatStr
  loc_C6695B: FStStrNoPop var_250
  loc_C6695E: ILdRf var_1C8
  loc_C66961: ConcatStr
  loc_C66962: ImpAdStStr MemVar_D93030
  loc_C66966: FFreeStr var_244 = "": var_248 = "": var_24C = ""
  loc_C66971: ImpAdLdI4 MemVar_D93030
  loc_C66974: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_C66979: FLdRfVar var_23C
  loc_C6697C: LitI2_Byte 0
  loc_C6697E: LitI2_Byte &HFF
  loc_C66980: ImpAdLdI4 MemVar_D93030
  loc_C66983: FLdPr Me
  loc_C66986: MemLdRfVar from_stack_1.global_56
  loc_C66989: NewIfNullPr IFileSystem3
  loc_C6698C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C66991: ILdRf var_23C
  loc_C66994: FLdPr Me
  loc_C66997: MemStVarAd
  loc_C6699B: FFree1Ad var_23C
  loc_C6699E: FLdRfVar var_138
  loc_C669A1: CVarRef
  loc_C669A6: FLdRfVar var_270
  loc_C669A9: ImpAdCallFPR4  = Year()
  loc_C669AE: FLdRfVar var_138
  loc_C669B1: CVarRef
  loc_C669B6: FLdRfVar var_2C0
  loc_C669B9: ImpAdCallFPR4  = Month()
  loc_C669BE: FLdRfVar var_138
  loc_C669C1: CVarRef
  loc_C669C6: FLdRfVar var_39C
  loc_C669C9: ImpAdCallFPR4  = Day()
  loc_C669CE: LitVarStr var_2D8, "HRFACTURACION450"
  loc_C669D3: LitVarI2 var_290, 2
  loc_C669D8: LitI4 3
  loc_C669DD: FLdRfVar var_270
  loc_C669E0: FLdRfVar var_2A0
  loc_C669E3: ImpAdCallFPR4  = Mid(, , )
  loc_C669E8: FLdRfVar var_2A0
  loc_C669EB: ConcatVar var_2B0
  loc_C669EF: LitI4 1
  loc_C669F4: LitI4 1
  loc_C669F9: LitVarStr var_318, "00"
  loc_C669FE: FStVarCopyObj var_328
  loc_C66A01: FLdRfVar var_328
  loc_C66A04: FLdRfVar var_2C0
  loc_C66A07: FLdRfVar var_348
  loc_C66A0A: ImpAdCallFPR4  = Format(, )
  loc_C66A0F: FLdRfVar var_348
  loc_C66A12: ConcatVar var_358
  loc_C66A16: LitI4 1
  loc_C66A1B: LitI4 1
  loc_C66A20: LitVarStr var_3AC, "00"
  loc_C66A25: FStVarCopyObj var_3BC
  loc_C66A28: FLdRfVar var_3BC
  loc_C66A2B: FLdRfVar var_39C
  loc_C66A2E: FLdRfVar var_3CC
  loc_C66A31: ImpAdCallFPR4  = Format(, )
  loc_C66A36: FLdRfVar var_3CC
  loc_C66A39: ConcatVar var_3DC
  loc_C66A3D: LitVarStr var_3EC, "00001"
  loc_C66A42: ConcatVar var_3FC
  loc_C66A46: LitVarStr var_40C, "                                                                                                        "
  loc_C66A4B: ConcatVar var_41C
  loc_C66A4F: PopAdLdVar
  loc_C66A50: FLdPr Me
  loc_C66A53: MemLdRfVar from_stack_1.global_76
  loc_C66A56: LdPrVar
  loc_C66A58: LateMemCall
  loc_C66A5E: FFreeVar var_270 = "": var_290 = "": var_2A0 = "": var_2C0 = "": var_328 = "": var_2B0 = "": var_348 = "": var_39C = "": var_3BC = "": var_358 = "": var_3CC = "": var_3DC = "": var_3FC = ""
  loc_C66A7D: LitI4 1
  loc_C66A82: FLdPr Me
  loc_C66A85: MemLdRfVar from_stack_1.global_100
  loc_C66A88: FLdPr Me
  loc_C66A8B: MemLdStr global_96
  loc_C66A8E: LitI2_Byte 1
  loc_C66A90: FnUBound
  loc_C66A92: ForI4 var_434
  loc_C66A98: FLdPr Me
  loc_C66A9B: MemLdStr global_100
  loc_C66A9E: FLdPr Me
  loc_C66AA1: MemLdStr global_96
  loc_C66AA4: AryLock
  loc_C66AA7: Ary1LdRf
  loc_C66AA8: FStR4 var_43C
  loc_C66AAB: FMemLdR4 var_43C(36)
  loc_C66AB0: CR8Str
  loc_C66AB2: LitI2_Byte 0
  loc_C66AB4: CR8I2
  loc_C66AB5: NeR8
  loc_C66AB6: BranchF loc_C66B29
  loc_C66AB9: LitI4 1
  loc_C66ABE: LitI4 1
  loc_C66AC3: LitVarStr var_280, "00"
  loc_C66AC8: FStVarCopyObj var_270
  loc_C66ACB: FLdRfVar var_270
  loc_C66ACE: FMemLdRf unk_4CB0BD
  loc_C66AD3: CVarRef
  loc_C66AD8: FLdRfVar var_290
  loc_C66ADB: ImpAdCallFPR4  = Format(, )
  loc_C66AE0: FLdRfVar var_290
  loc_C66AE3: LitI4 1
  loc_C66AE8: LitI4 1
  loc_C66AED: LitVarStr var_308, "000"
  loc_C66AF2: FStVarCopyObj var_2A0
  loc_C66AF5: FLdRfVar var_2A0
  loc_C66AF8: FMemLdRf unk_4CB0BD
  loc_C66AFD: CVarRef
  loc_C66B02: FLdRfVar var_2B0
  loc_C66B05: ImpAdCallFPR4  = Format(, )
  loc_C66B0A: FLdRfVar var_2B0
  loc_C66B0D: ConcatVar var_2C0
  loc_C66B11: CStrVarTmp
  loc_C66B12: FLdRfVar var_220
  loc_C66B15: StFixedStrFree
  loc_C66B19: FFreeVar var_270 = "": var_2A0 = "": var_290 = "": var_2B0 = ""
  loc_C66B26: Branch loc_C66BB4
  loc_C66B29: FMemLdR4 var_43C(48)
  loc_C66B2E: LitStr "Anual"
  loc_C66B31: EqStr
  loc_C66B33: BranchF loc_C66B6B
  loc_C66B36: LitI4 2
  loc_C66B3B: FMemLdRf unk_4CB0BD
  loc_C66B40: CVarRef
  loc_C66B45: FLdRfVar var_270
  loc_C66B48: ImpAdCallFPR4  = Right(, )
  loc_C66B4D: FLdRfVar var_270
  loc_C66B50: LitVarStr var_280, "999"
  loc_C66B55: ConcatVar var_290
  loc_C66B59: CStrVarTmp
  loc_C66B5A: FLdRfVar var_220
  loc_C66B5D: StFixedStrFree
  loc_C66B61: FFreeVar var_270 = ""
  loc_C66B68: Branch loc_C66BB4
  loc_C66B6B: LitI4 3
  loc_C66B70: FMemLdRf unk_4CB0BD
  loc_C66B75: CVarRef
  loc_C66B7A: FLdRfVar var_270
  loc_C66B7D: ImpAdCallFPR4  = Left(, )
  loc_C66B82: FLdRfVar var_270
  loc_C66B85: LitI4 2
  loc_C66B8A: FMemLdRf unk_4CB0BD
  loc_C66B8F: CVarRef
  loc_C66B94: FLdRfVar var_290
  loc_C66B97: ImpAdCallFPR4  = Right(, )
  loc_C66B9C: FLdRfVar var_290
  loc_C66B9F: ConcatVar var_2A0
  loc_C66BA3: CStrVarTmp
  loc_C66BA4: FLdRfVar var_220
  loc_C66BA7: StFixedStrFree
  loc_C66BAB: FFreeVar var_270 = "": var_290 = ""
  loc_C66BB4: LitVarI2 var_270, 1
  loc_C66BB9: LitI4 1
  loc_C66BBE: FMemLdRf unk_4CB0BD
  loc_C66BC3: CVarRef
  loc_C66BC8: FLdRfVar var_290
  loc_C66BCB: ImpAdCallFPR4  = Mid(, , )
  loc_C66BD0: FLdRfVar var_290
  loc_C66BD3: FStVar var_44C
  loc_C66BD7: FFree1Var var_270 = ""
  loc_C66BDA: FLdRfVar var_44C
  loc_C66BDD: LitVarI2 var_260, 1
  loc_C66BE2: HardType
  loc_C66BE3: EqVarBool
  loc_C66BE5: BranchF loc_C66BF1
  loc_C66BE8: LitStr "001"
  loc_C66BEB: FStStrCopy var_1CC
  loc_C66BEE: Branch loc_C66C4A
  loc_C66BF1: FLdRfVar var_44C
  loc_C66BF4: LitVarI2 var_260, 2
  loc_C66BF9: HardType
  loc_C66BFA: EqVarBool
  loc_C66BFC: BranchF loc_C66C08
  loc_C66BFF: LitStr "002"
  loc_C66C02: FStStrCopy var_1CC
  loc_C66C05: Branch loc_C66C4A
  loc_C66C08: FLdRfVar var_44C
  loc_C66C0B: LitVarI2 var_260, 3
  loc_C66C10: HardType
  loc_C66C11: EqVarBool
  loc_C66C13: BranchF loc_C66C1F
  loc_C66C16: LitStr "003"
  loc_C66C19: FStStrCopy var_1CC
  loc_C66C1C: Branch loc_C66C4A
  loc_C66C1F: FLdRfVar var_44C
  loc_C66C22: LitVarI2 var_260, 4
  loc_C66C27: HardType
  loc_C66C28: EqVarBool
  loc_C66C2A: BranchF loc_C66C36
  loc_C66C2D: LitStr "004"
  loc_C66C30: FStStrCopy var_1CC
  loc_C66C33: Branch loc_C66C4A
  loc_C66C36: FLdRfVar var_44C
  loc_C66C39: LitVarI2 var_260, 5
  loc_C66C3E: HardType
  loc_C66C3F: EqVarBool
  loc_C66C41: BranchF loc_C66C4A
  loc_C66C44: LitStr "005"
  loc_C66C47: FStStrCopy var_1CC
  loc_C66C4A: LitVarI2 var_2D8, 20
  loc_C66C4F: LitVarI2 var_270, 2
  loc_C66C54: LitI4 1
  loc_C66C59: FMemLdRf unk_4CB0BD
  loc_C66C5E: CVarRef
  loc_C66C63: FLdRfVar var_290
  loc_C66C66: ImpAdCallFPR4  = Mid(, , )
  loc_C66C6B: FLdRfVar var_290
  loc_C66C6E: ConcatVar var_2A0
  loc_C66C72: CI2Var
  loc_C66C73: FStI2 var_216
  loc_C66C76: FFreeVar var_270 = "": var_290 = ""
  loc_C66C7F: LitVarI2 var_270, 2
  loc_C66C84: LitI4 3
  loc_C66C89: FMemLdRf unk_4CB0BD
  loc_C66C8E: CVarRef
  loc_C66C93: FLdRfVar var_290
  loc_C66C96: ImpAdCallFPR4  = Mid(, , )
  loc_C66C9B: LitI2_Byte 0
  loc_C66C9D: FLdRfVar var_290
  loc_C66CA0: LitVarI2 var_2D8, 1
  loc_C66CA5: AddVar var_2A0
  loc_C66CA9: CI2Var
  loc_C66CAA: FLdI2 var_216
  loc_C66CAD: FLdRfVar var_2B0
  loc_C66CB0: ImpAdCallFPR4  = DateSerial(, , )
  loc_C66CB5: LitI4 1
  loc_C66CBA: LitI4 1
  loc_C66CBF: LitVarStr var_308, "yymmdd"
  loc_C66CC4: FStVarCopyObj var_2C0
  loc_C66CC7: FLdRfVar var_2C0
  loc_C66CCA: FLdRfVar var_2B0
  loc_C66CCD: ImpAdCallI2 Format$(, )
  loc_C66CD2: FLdRfVar var_1C4
  loc_C66CD5: StFixedStrFree
  loc_C66CD9: FFreeVar var_270 = "": var_290 = "": var_2A0 = "": var_2B0 = ""
  loc_C66CE6: FMemLdR4 var_43C(48)
  loc_C66CEB: LitStr "Anual"
  loc_C66CEE: EqStr
  loc_C66CF0: BranchF loc_C66D2F
  loc_C66CF3: LitVarStr var_2D8, "S"
  loc_C66CF8: LitVarI2 var_270, 2
  loc_C66CFD: LitI4 1
  loc_C66D02: FMemLdRf unk_4CB0BD
  loc_C66D07: CVarRef
  loc_C66D0C: FLdRfVar var_290
  loc_C66D0F: ImpAdCallFPR4  = Mid(, , )
  loc_C66D14: FLdRfVar var_290
  loc_C66D17: ConcatVar var_2A0
  loc_C66D1B: CStrVarTmp
  loc_C66D1C: FLdRfVar var_226
  loc_C66D1F: StFixedStrFree
  loc_C66D23: FFreeVar var_270 = "": var_290 = ""
  loc_C66D2C: Branch loc_C66D68
  loc_C66D2F: LitVarStr var_2D8, "N"
  loc_C66D34: LitVarI2 var_270, 2
  loc_C66D39: LitI4 1
  loc_C66D3E: FMemLdRf unk_4CB0BD
  loc_C66D43: CVarRef
  loc_C66D48: FLdRfVar var_290
  loc_C66D4B: ImpAdCallFPR4  = Mid(, , )
  loc_C66D50: FLdRfVar var_290
  loc_C66D53: ConcatVar var_2A0
  loc_C66D57: CStrVarTmp
  loc_C66D58: FLdRfVar var_226
  loc_C66D5B: StFixedStrFree
  loc_C66D5F: FFreeVar var_270 = "": var_290 = ""
  loc_C66D68: FLdRfVar var_220
  loc_C66D6B: LdFixedStr
  loc_C66D6E: FStStrNoPop var_244
  loc_C66D71: ILdRf var_1CC
  loc_C66D74: ConcatStr
  loc_C66D75: FStStrNoPop var_248
  loc_C66D78: FMemLdR4 var_43C(0)
  loc_C66D7D: ConcatStr
  loc_C66D7E: FStStrNoPop var_24C
  loc_C66D81: FMemLdR4 var_43C(8)
  loc_C66D86: ConcatStr
  loc_C66D87: FStStrNoPop var_250
  loc_C66D8A: FMemLdR4 var_43C(12)
  loc_C66D8F: ConcatStr
  loc_C66D90: FStStrNoPop var_35C
  loc_C66D93: LitStr "000000"
  loc_C66D96: ConcatStr
  loc_C66D97: FStStrNoPop var_360
  loc_C66D9A: LitStr "000000000000"
  loc_C66D9D: ConcatStr
  loc_C66D9E: FStStrNoPop var_364
  loc_C66DA1: LitStr "000000000000000000"
  loc_C66DA4: ConcatStr
  loc_C66DA5: FStStrNoPop var_368
  loc_C66DA8: FMemLdR4 var_43C(20)
  loc_C66DAD: ConcatStr
  loc_C66DAE: FStStrNoPop var_36C
  loc_C66DB1: LitStr "00000000000000000000000000000000000000"
  loc_C66DB4: ConcatStr
  loc_C66DB5: FStStrNoPop var_370
  loc_C66DB8: FLdRfVar var_226
  loc_C66DBB: LdFixedStr
  loc_C66DBE: FStStrNoPop var_374
  loc_C66DC1: ConcatStr
  loc_C66DC2: FStStrNoPop var_378
  loc_C66DC5: LitStr "   "
  loc_C66DC8: ConcatStr
  loc_C66DC9: CVarStr var_270
  loc_C66DCC: PopAdLdVar
  loc_C66DCD: FLdPr Me
  loc_C66DD0: MemLdRfVar from_stack_1.global_76
  loc_C66DD3: LdPrVar
  loc_C66DD5: LateMemCall
  loc_C66DDB: FFreeStr var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = ""
  loc_C66DF6: FFree1Var var_270 = ""
  loc_C66DF9: LitI4 0
  loc_C66DFE: FStR4 var_43C
  loc_C66E01: AryUnlock
  loc_C66E04: FLdPr Me
  loc_C66E07: MemLdRfVar from_stack_1.global_100
  loc_C66E0A: NextI4 var_434, loc_C66A98
  loc_C66E0F: FLdPr Me
  loc_C66E12: MemLdStr global_96
  loc_C66E15: LitI2_Byte 1
  loc_C66E17: FnUBound
  loc_C66E19: LitI4 2
  loc_C66E1E: AddI4
  loc_C66E1F: CStrI4
  loc_C66E21: FLdRfVar var_1DC
  loc_C66E24: StFixedStrRFree
  loc_C66E28: LitI4 0
  loc_C66E2D: LitI4 -1
  loc_C66E32: LitI4 1
  loc_C66E37: LitStr "0"
  loc_C66E3A: LitStr " "
  loc_C66E3D: FLdRfVar var_1DC
  loc_C66E40: LdFixedStr
  loc_C66E43: FStStrNoPop var_244
  loc_C66E46: ImpAdCallI2 Replace(, , , , , )
  loc_C66E4B: FStStr var_248
  loc_C66E4E: ILdRf var_244
  loc_C66E51: FLdRfVar var_1DC
  loc_C66E54: StFixedStr
  loc_C66E57: FLdZeroAd var_248
  loc_C66E5A: FLdRfVar var_1DC
  loc_C66E5D: StFixedStrFree
  loc_C66E61: FFree1Str var_244
  loc_C66E64: LitI4 1
  loc_C66E69: LitI4 1
  loc_C66E6E: LitVarStr var_280, "0.00"
  loc_C66E73: FStVarCopyObj var_270
  loc_C66E76: FLdRfVar var_270
  loc_C66E79: FLdPr Me
  loc_C66E7C: MemLdRfVar from_stack_1.global_108
  loc_C66E7F: CVarRef
  loc_C66E84: FLdRfVar var_290
  loc_C66E87: ImpAdCallFPR4  = Format(, )
  loc_C66E8C: LitI4 0
  loc_C66E91: LitI4 -1
  loc_C66E96: LitI4 1
  loc_C66E9B: LitStr vbNullString
  loc_C66E9E: LitStr ","
  loc_C66EA1: FLdRfVar var_290
  loc_C66EA4: CStrVarVal var_244
  loc_C66EA8: ImpAdCallI2 Replace(, , , , , )
  loc_C66EAD: FLdRfVar var_200
  loc_C66EB0: StFixedStrRFree
  loc_C66EB4: FFree1Str var_244
  loc_C66EB7: FFreeVar var_270 = ""
  loc_C66EBE: LitI4 0
  loc_C66EC3: LitI4 -1
  loc_C66EC8: LitI4 1
  loc_C66ECD: LitStr "0"
  loc_C66ED0: LitStr " "
  loc_C66ED3: FLdRfVar var_200
  loc_C66ED6: LdFixedStr
  loc_C66ED9: FStStrNoPop var_244
  loc_C66EDC: ImpAdCallI2 Replace(, , , , , )
  loc_C66EE1: FStStr var_248
  loc_C66EE4: ILdRf var_244
  loc_C66EE7: FLdRfVar var_200
  loc_C66EEA: StFixedStr
  loc_C66EED: FLdZeroAd var_248
  loc_C66EF0: FLdRfVar var_200
  loc_C66EF3: StFixedStrFree
  loc_C66EF7: FFree1Str var_244
  loc_C66EFA: LitStr "TRFACTURACION"
  loc_C66EFD: FLdRfVar var_1DC
  loc_C66F00: LdFixedStr
  loc_C66F03: FStStrNoPop var_244
  loc_C66F06: ConcatStr
  loc_C66F07: FStStrNoPop var_248
  loc_C66F0A: FLdRfVar var_200
  loc_C66F0D: LdFixedStr
  loc_C66F10: FStStrNoPop var_24C
  loc_C66F13: ConcatStr
  loc_C66F14: FStStrNoPop var_250
  loc_C66F17: LitStr "000000000000000000000000000000000000                                                        "
  loc_C66F1A: ConcatStr
  loc_C66F1B: CVarStr var_270
  loc_C66F1E: PopAdLdVar
  loc_C66F1F: FLdPr Me
  loc_C66F22: MemLdRfVar from_stack_1.global_76
  loc_C66F25: LdPrVar
  loc_C66F27: LateMemCall
  loc_C66F2D: FFreeStr var_244 = "": var_248 = "": var_24C = ""
  loc_C66F38: FFree1Var var_270 = ""
  loc_C66F3B: FLdPr Me
  loc_C66F3E: MemLdRfVar from_stack_1.global_76
  loc_C66F41: LdPrVar
  loc_C66F43: LateMemCall
  loc_C66F49: ImpAdCallI2 Proc_272_19_A53E30()
  loc_C66F4E: FStStrNoPop var_244
  loc_C66F51: LitStr "\C450"
  loc_C66F54: ConcatStr
  loc_C66F55: FStStrNoPop var_248
  loc_C66F58: ImpAdLdUI1
  loc_C66F5C: CStrI2
  loc_C66F5E: FStStrNoPop var_24C
  loc_C66F61: ConcatStr
  loc_C66F62: FStStrNoPop var_250
  loc_C66F65: ILdRf var_1C8
  loc_C66F68: ConcatStr
  loc_C66F69: ImpAdStStr MemVar_D93030
  loc_C66F6D: FFreeStr var_244 = "": var_248 = "": var_24C = ""
  loc_C66F78: FLdPr Me
  loc_C66F7B: VCallAd Control_ID_HastaMsk
  loc_C66F7E: FStAdFunc var_23C
  loc_C66F81: FLdPr var_23C
  loc_C66F84: LateIdLdVar var_270 DispID_15 0
  loc_C66F8B: PopAd
  loc_C66F8D: LitI4 1
  loc_C66F92: LitI4 1
  loc_C66F97: LitVarStr var_260, "yyyymmdd"
  loc_C66F9C: FStVarCopyObj var_2A0
  loc_C66F9F: FLdRfVar var_2A0
  loc_C66FA2: FLdRfVar var_270
  loc_C66FA5: CStrVarTmp
  loc_C66FA6: CVarStr var_290
  loc_C66FA9: ImpAdCallI2 Format$(, )
  loc_C66FAE: FLdRfVar var_236
  loc_C66FB1: StFixedStrFree
  loc_C66FB5: FFree1Ad var_23C
  loc_C66FB8: FFreeVar var_270 = "": var_290 = ""
  loc_C66FC1: ImpAdLdI4 MemVar_D93030
  loc_C66FC4: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_C66FC9: FLdPr Me
  loc_C66FCC: MemLdStr global_96
  loc_C66FCF: LitI2_Byte 1
  loc_C66FD1: FnUBound
  loc_C66FD3: LitI4 2
  loc_C66FD8: AddI4
  loc_C66FD9: LitI4 &H85
  loc_C66FDE: MulI4
  loc_C66FDF: CStrI4
  loc_C66FE1: FLdRfVar var_214
  loc_C66FE4: StFixedStrRFree
  loc_C66FE8: LitI4 0
  loc_C66FED: LitI4 -1
  loc_C66FF2: LitI4 1
  loc_C66FF7: LitStr "0"
  loc_C66FFA: LitStr " "
  loc_C66FFD: FLdRfVar var_214
  loc_C67000: LdFixedStr
  loc_C67003: FStStrNoPop var_244
  loc_C67006: ImpAdCallI2 Replace(, , , , , )
  loc_C6700B: FStStr var_248
  loc_C6700E: ILdRf var_244
  loc_C67011: FLdRfVar var_214
  loc_C67014: StFixedStr
  loc_C67017: FLdZeroAd var_248
  loc_C6701A: FLdRfVar var_214
  loc_C6701D: StFixedStrFree
  loc_C67021: FFree1Str var_244
  loc_C67024: FLdRfVar var_23C
  loc_C67027: LitI2_Byte 0
  loc_C67029: LitI2_Byte &HFF
  loc_C6702B: ImpAdLdI4 MemVar_D93030
  loc_C6702E: FLdPr Me
  loc_C67031: MemLdRfVar from_stack_1.global_56
  loc_C67034: NewIfNullPr IFileSystem3
  loc_C67037: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C6703C: ILdRf var_23C
  loc_C6703F: FLdPr Me
  loc_C67042: MemStVarAd
  loc_C67046: FFree1Ad var_23C
  loc_C67049: FLdRfVar var_138
  loc_C6704C: CVarRef
  loc_C67051: FLdRfVar var_2A0
  loc_C67054: ImpAdCallFPR4  = Month()
  loc_C67059: FLdRfVar var_138
  loc_C6705C: CVarRef
  loc_C67061: FLdRfVar var_348
  loc_C67064: ImpAdCallFPR4  = Day()
  loc_C67069: LitVarStr var_280, "HRPASCTRL"
  loc_C6706E: FLdRfVar var_138
  loc_C67071: CVarRef
  loc_C67076: FLdRfVar var_270
  loc_C67079: ImpAdCallFPR4  = Year()
  loc_C6707E: FLdRfVar var_270
  loc_C67081: ConcatVar var_290
  loc_C67085: LitI4 1
  loc_C6708A: LitI4 1
  loc_C6708F: LitVarStr var_308, "00"
  loc_C67094: FStVarCopyObj var_2B0
  loc_C67097: FLdRfVar var_2B0
  loc_C6709A: FLdRfVar var_2A0
  loc_C6709D: FLdRfVar var_2C0
  loc_C670A0: ImpAdCallFPR4  = Format(, )
  loc_C670A5: FLdRfVar var_2C0
  loc_C670A8: ConcatVar var_328
  loc_C670AC: LitI4 1
  loc_C670B1: LitI4 1
  loc_C670B6: LitVarStr var_338, "00"
  loc_C670BB: FStVarCopyObj var_358
  loc_C670BE: FLdRfVar var_358
  loc_C670C1: FLdRfVar var_348
  loc_C670C4: FLdRfVar var_39C
  loc_C670C7: ImpAdCallFPR4  = Format(, )
  loc_C670CC: FLdRfVar var_39C
  loc_C670CF: ConcatVar var_3BC
  loc_C670D3: LitVarStr var_3AC, "450"
  loc_C670D8: ConcatVar var_3CC
  loc_C670DC: LitVarStr var_3EC, "P450"
  loc_C670E1: ConcatVar var_3DC
  loc_C670E5: ImpAdLdUI1
  loc_C670E9: CVarUI1
  loc_C670ED: ConcatVar var_3FC
  loc_C670F1: ILdRf var_1C8
  loc_C670F4: CVarStr var_42C
  loc_C670F7: ConcatVar var_41C
  loc_C670FB: FLdRfVar var_214
  loc_C670FE: LdFixedStr
  loc_C67101: CVarStr var_45C
  loc_C67104: ConcatVar var_46C
  loc_C67108: LitVarStr var_47C, "                                     "
  loc_C6710D: ConcatVar var_48C
  loc_C67111: PopAdLdVar
  loc_C67112: FLdPr Me
  loc_C67115: MemLdRfVar from_stack_1.global_76
  loc_C67118: LdPrVar
  loc_C6711A: LateMemCall
  loc_C67120: FFreeVar var_270 = "": var_2A0 = "": var_2B0 = "": var_290 = "": var_2C0 = "": var_348 = "": var_358 = "": var_328 = "": var_39C = "": var_3BC = "": var_3CC = "": var_3DC = "": var_3FC = "": var_41C = "": var_45C = "": var_46C = ""
  loc_C67145: LitStr "LOTES00001"
  loc_C67148: FLdRfVar var_1DC
  loc_C6714B: LdFixedStr
  loc_C6714E: FStStrNoPop var_244
  loc_C67151: ConcatStr
  loc_C67152: FStStrNoPop var_248
  loc_C67155: FLdRfVar var_200
  loc_C67158: LdFixedStr
  loc_C6715B: FStStrNoPop var_24C
  loc_C6715E: ConcatStr
  loc_C6715F: FStStrNoPop var_250
  loc_C67162: LitStr "000000000000000000000000000000000000   "
  loc_C67165: ConcatStr
  loc_C67166: CVarStr var_270
  loc_C67169: PopAdLdVar
  loc_C6716A: FLdPr Me
  loc_C6716D: MemLdRfVar from_stack_1.global_76
  loc_C67170: LdPrVar
  loc_C67172: LateMemCall
  loc_C67178: FFreeStr var_244 = "": var_248 = "": var_24C = ""
  loc_C67183: FFree1Var var_270 = ""
  loc_C67186: LitStr "FINAL"
  loc_C67189: FLdRfVar var_1DC
  loc_C6718C: LdFixedStr
  loc_C6718F: FStStrNoPop var_244
  loc_C67192: ConcatStr
  loc_C67193: FStStrNoPop var_248
  loc_C67196: FLdRfVar var_200
  loc_C67199: LdFixedStr
  loc_C6719C: FStStrNoPop var_24C
  loc_C6719F: ConcatStr
  loc_C671A0: FStStrNoPop var_250
  loc_C671A3: LitStr "000000000000000000000000000000000000"
  loc_C671A6: ConcatStr
  loc_C671A7: FStStrNoPop var_35C
  loc_C671AA: FLdRfVar var_236
  loc_C671AD: LdFixedStr
  loc_C671B0: FStStrNoPop var_360
  loc_C671B3: ConcatStr
  loc_C671B4: CVarStr var_270
  loc_C671B7: PopAdLdVar
  loc_C671B8: FLdPr Me
  loc_C671BB: MemLdRfVar from_stack_1.global_76
  loc_C671BE: LdPrVar
  loc_C671C0: LateMemCall
  loc_C671C6: FFreeStr var_244 = "": var_248 = "": var_24C = "": var_250 = "": var_35C = ""
  loc_C671D5: FFree1Var var_270 = ""
  loc_C671D8: FLdPr Me
  loc_C671DB: MemLdRfVar from_stack_1.global_76
  loc_C671DE: LdPrVar
  loc_C671E0: LateMemCall
  loc_C671E6: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B3E760
  'Data Table: 4CB4F8
  loc_B3E438: FLdRfVar var_F8
  loc_B3E43B: LitI2_Byte 0
  loc_B3E43D: LitI2_Byte &HFF
  loc_B3E43F: ImpAdLdI4 MemVar_D93C84
  loc_B3E442: FLdPr Me
  loc_B3E445: MemLdRfVar from_stack_1.global_56
  loc_B3E448: NewIfNullPr IFileSystem3
  loc_B3E44B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B3E450: ILdRf var_F8
  loc_B3E453: FLdPr Me
  loc_B3E456: MemStVarAd
  loc_B3E45A: FFree1Ad var_F8
  loc_B3E45D: LitI2_Byte &HFF
  loc_B3E45F: ImpAdStI2 MemVar_D93C8A
  loc_B3E462: Call Proc_313_22_BBD20C()
  loc_B3E467: LitI4 1
  loc_B3E46C: FLdPr Me
  loc_B3E46F: MemLdRfVar from_stack_1.global_100
  loc_B3E472: FLdPr Me
  loc_B3E475: MemLdStr global_96
  loc_B3E478: LitI2_Byte 1
  loc_B3E47A: FnUBound
  loc_B3E47C: ForI4 var_100
  loc_B3E482: FLdPr Me
  loc_B3E485: MemLdStr global_100
  loc_B3E488: FLdPr Me
  loc_B3E48B: MemLdStr global_96
  loc_B3E48E: AryLock
  loc_B3E491: Ary1LdRf
  loc_B3E492: FStR4 var_108
  loc_B3E495: LitVarI2 var_138, 1
  loc_B3E49A: LitI4 1
  loc_B3E49F: FMemLdRf 0
  loc_B3E4A4: CVarRef
  loc_B3E4A9: FLdRfVar var_148
  loc_B3E4AC: ImpAdCallFPR4  = Mid(, , )
  loc_B3E4B1: FLdRfVar var_148
  loc_B3E4B4: FStVar var_158
  loc_B3E4B8: FFree1Var var_138 = ""
  loc_B3E4BB: FLdRfVar var_158
  loc_B3E4BE: LitVarI2 var_118, 1
  loc_B3E4C3: HardType
  loc_B3E4C4: EqVarBool
  loc_B3E4C6: BranchF loc_B3E4E2
  loc_B3E4C9: FMemLdR4 var_108(28)
  loc_B3E4CE: FLdRfVar var_D4
  loc_B3E4D1: StFixedStr
  loc_B3E4D4: FMemLdR4 var_108(28)
  loc_B3E4D9: FLdRfVar var_F2
  loc_B3E4DC: StFixedStr
  loc_B3E4DF: Branch loc_B3E5AB
  loc_B3E4E2: FLdRfVar var_158
  loc_B3E4E5: LitVarI2 var_118, 2
  loc_B3E4EA: HardType
  loc_B3E4EB: EqVarBool
  loc_B3E4ED: BranchF loc_B3E507
  loc_B3E4F0: FMemLdR4 var_108(28)
  loc_B3E4F5: FLdRfVar var_D4
  loc_B3E4F8: StFixedStr
  loc_B3E4FB: LitStr "COMERCIO"
  loc_B3E4FE: FLdRfVar var_F2
  loc_B3E501: StFixedStr
  loc_B3E504: Branch loc_B3E5AB
  loc_B3E507: FLdRfVar var_158
  loc_B3E50A: LitVarI2 var_118, 3
  loc_B3E50F: HardType
  loc_B3E510: EqVarBool
  loc_B3E512: BranchF loc_B3E52A
  loc_B3E515: LitStr "DEUDORES VARIOS"
  loc_B3E518: FLdRfVar var_D4
  loc_B3E51B: StFixedStr
  loc_B3E51E: LitStr "DEUDORES VARIOS"
  loc_B3E521: FLdRfVar var_F2
  loc_B3E524: StFixedStr
  loc_B3E527: Branch loc_B3E5AB
  loc_B3E52A: FLdRfVar var_158
  loc_B3E52D: LitVarI2 var_118, 4
  loc_B3E532: HardType
  loc_B3E533: EqVarBool
  loc_B3E535: BranchF loc_B3E54F
  loc_B3E538: FMemLdR4 var_108(28)
  loc_B3E53D: FLdRfVar var_D4
  loc_B3E540: StFixedStr
  loc_B3E543: LitStr "CEMENTERIO"
  loc_B3E546: FLdRfVar var_F2
  loc_B3E549: StFixedStr
  loc_B3E54C: Branch loc_B3E5AB
  loc_B3E54F: FLdRfVar var_158
  loc_B3E552: LitVarI2 var_118, 5
  loc_B3E557: HardType
  loc_B3E558: EqVarBool
  loc_B3E55A: BranchF loc_B3E5AB
  loc_B3E55D: LitStr "PLAN DE PAGO CUOTA "
  loc_B3E560: FMemLdR4 var_108(36)
  loc_B3E565: ConcatStr
  loc_B3E566: FStStrNoPop var_15C
  loc_B3E569: LitStr " de "
  loc_B3E56C: ConcatStr
  loc_B3E56D: FStStrNoPop var_160
  loc_B3E570: FMemLdR4 var_108(40)
  loc_B3E575: ConcatStr
  loc_B3E576: FLdRfVar var_D4
  loc_B3E579: StFixedStrFree
  loc_B3E57D: FFreeStr var_15C = ""
  loc_B3E584: LitStr "CUOTA "
  loc_B3E587: FMemLdR4 var_108(36)
  loc_B3E58C: ConcatStr
  loc_B3E58D: FStStrNoPop var_15C
  loc_B3E590: LitStr " de "
  loc_B3E593: ConcatStr
  loc_B3E594: FStStrNoPop var_160
  loc_B3E597: FMemLdR4 var_108(40)
  loc_B3E59C: ConcatStr
  loc_B3E59D: FLdRfVar var_F2
  loc_B3E5A0: StFixedStrFree
  loc_B3E5A4: FFreeStr var_15C = ""
  loc_B3E5AB: LitVarStr var_118, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3E5B0: PopAdLdVar
  loc_B3E5B1: FLdPr Me
  loc_B3E5B4: MemLdRfVar from_stack_1.global_60
  loc_B3E5B7: LdPrVar
  loc_B3E5B9: LateMemCall
  loc_B3E5BF: LitStr vbNullString
  loc_B3E5C2: LitI2_Byte 0
  loc_B3E5C4: LitI2_Byte 0
  loc_B3E5C6: LitI2_Byte 0
  loc_B3E5C8: LitStr "left"
  loc_B3E5CB: FMemLdR4 var_108(0)
  loc_B3E5D0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E5D5: CVarStr var_138
  loc_B3E5D8: PopAdLdVar
  loc_B3E5D9: FLdPr Me
  loc_B3E5DC: MemLdRfVar from_stack_1.global_60
  loc_B3E5DF: LdPrVar
  loc_B3E5E1: LateMemCall
  loc_B3E5E7: FFree1Var var_138 = ""
  loc_B3E5EA: LitStr vbNullString
  loc_B3E5ED: LitI2_Byte 0
  loc_B3E5EF: LitI2_Byte 0
  loc_B3E5F1: LitI2_Byte 0
  loc_B3E5F3: LitStr "left"
  loc_B3E5F6: FMemLdR4 var_108(4)
  loc_B3E5FB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E600: CVarStr var_138
  loc_B3E603: PopAdLdVar
  loc_B3E604: FLdPr Me
  loc_B3E607: MemLdRfVar from_stack_1.global_60
  loc_B3E60A: LdPrVar
  loc_B3E60C: LateMemCall
  loc_B3E612: FFree1Var var_138 = ""
  loc_B3E615: LitStr vbNullString
  loc_B3E618: LitI2_Byte 0
  loc_B3E61A: LitI2_Byte 0
  loc_B3E61C: LitI2_Byte 0
  loc_B3E61E: LitStr "left"
  loc_B3E621: FMemLdR4 var_108(8)
  loc_B3E626: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E62B: CVarStr var_138
  loc_B3E62E: PopAdLdVar
  loc_B3E62F: FLdPr Me
  loc_B3E632: MemLdRfVar from_stack_1.global_60
  loc_B3E635: LdPrVar
  loc_B3E637: LateMemCall
  loc_B3E63D: FFree1Var var_138 = ""
  loc_B3E640: LitStr vbNullString
  loc_B3E643: LitI2_Byte 0
  loc_B3E645: LitI2_Byte 0
  loc_B3E647: LitI2_Byte 0
  loc_B3E649: LitStr "left"
  loc_B3E64C: FMemLdR4 var_108(12)
  loc_B3E651: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E656: CVarStr var_138
  loc_B3E659: PopAdLdVar
  loc_B3E65A: FLdPr Me
  loc_B3E65D: MemLdRfVar from_stack_1.global_60
  loc_B3E660: LdPrVar
  loc_B3E662: LateMemCall
  loc_B3E668: FFree1Var var_138 = ""
  loc_B3E66B: LitStr vbNullString
  loc_B3E66E: LitI2_Byte 0
  loc_B3E670: LitI2_Byte 0
  loc_B3E672: LitI2_Byte 0
  loc_B3E674: LitStr "left"
  loc_B3E677: FMemLdR4 var_108(20)
  loc_B3E67C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E681: CVarStr var_138
  loc_B3E684: PopAdLdVar
  loc_B3E685: FLdPr Me
  loc_B3E688: MemLdRfVar from_stack_1.global_60
  loc_B3E68B: LdPrVar
  loc_B3E68D: LateMemCall
  loc_B3E693: FFree1Var var_138 = ""
  loc_B3E696: LitStr vbNullString
  loc_B3E699: LitI2_Byte 0
  loc_B3E69B: LitI2_Byte 0
  loc_B3E69D: LitI2_Byte 0
  loc_B3E69F: LitStr "left"
  loc_B3E6A2: FLdRfVar var_D4
  loc_B3E6A5: LdFixedStr
  loc_B3E6A8: FStStrNoPop var_15C
  loc_B3E6AB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E6B0: FStStr var_160
  loc_B3E6B3: ILdRf var_15C
  loc_B3E6B6: FLdRfVar var_D4
  loc_B3E6B9: StFixedStr
  loc_B3E6BC: FLdZeroAd var_160
  loc_B3E6BF: CVarStr var_138
  loc_B3E6C2: PopAdLdVar
  loc_B3E6C3: FLdPr Me
  loc_B3E6C6: MemLdRfVar from_stack_1.global_60
  loc_B3E6C9: LdPrVar
  loc_B3E6CB: LateMemCall
  loc_B3E6D1: FFree1Str var_15C
  loc_B3E6D4: FFree1Var var_138 = ""
  loc_B3E6D7: LitStr vbNullString
  loc_B3E6DA: LitI2_Byte 0
  loc_B3E6DC: LitI2_Byte 0
  loc_B3E6DE: LitI2_Byte 0
  loc_B3E6E0: LitStr "left"
  loc_B3E6E3: FLdRfVar var_F2
  loc_B3E6E6: LdFixedStr
  loc_B3E6E9: FStStrNoPop var_15C
  loc_B3E6EC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3E6F1: FStStr var_160
  loc_B3E6F4: ILdRf var_15C
  loc_B3E6F7: FLdRfVar var_F2
  loc_B3E6FA: StFixedStr
  loc_B3E6FD: FLdZeroAd var_160
  loc_B3E700: CVarStr var_138
  loc_B3E703: PopAdLdVar
  loc_B3E704: FLdPr Me
  loc_B3E707: MemLdRfVar from_stack_1.global_60
  loc_B3E70A: LdPrVar
  loc_B3E70C: LateMemCall
  loc_B3E712: FFree1Str var_15C
  loc_B3E715: FFree1Var var_138 = ""
  loc_B3E718: LitVarStr var_118, "     </tr>"
  loc_B3E71D: PopAdLdVar
  loc_B3E71E: FLdPr Me
  loc_B3E721: MemLdRfVar from_stack_1.global_60
  loc_B3E724: LdPrVar
  loc_B3E726: LateMemCall
  loc_B3E72C: LitI4 0
  loc_B3E731: FStR4 var_108
  loc_B3E734: AryUnlock
  loc_B3E737: FLdPr Me
  loc_B3E73A: MemLdRfVar from_stack_1.global_100
  loc_B3E73D: NextI4 var_100, loc_B3E482
  loc_B3E742: Call Proc_313_23_A0FF58()
  loc_B3E747: FLdPr Me
  loc_B3E74A: MemLdRfVar from_stack_1.global_60
  loc_B3E74D: LdPrVar
  loc_B3E74F: LateMemCall
  loc_B3E755: LitStr vbNullString
  loc_B3E758: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B3E75D: ExitProcHresult
  loc_B3E75E: CCyI2
End Sub

Private Function Proc_313_22_BBD20C() 'BBD20C
  'Data Table: 4CB4F8
  loc_BBCB68: LitVarStr var_98, "<html>"
  loc_BBCB6D: PopAdLdVar
  loc_BBCB6E: FLdPr Me
  loc_BBCB71: MemLdRfVar from_stack_1.global_60
  loc_BBCB74: LdPrVar
  loc_BBCB76: LateMemCall
  loc_BBCB7C: LitVarStr var_98, "<head>"
  loc_BBCB81: PopAdLdVar
  loc_BBCB82: FLdPr Me
  loc_BBCB85: MemLdRfVar from_stack_1.global_60
  loc_BBCB88: LdPrVar
  loc_BBCB8A: LateMemCall
  loc_BBCB90: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BBCB95: PopAdLdVar
  loc_BBCB96: FLdPr Me
  loc_BBCB99: MemLdRfVar from_stack_1.global_60
  loc_BBCB9C: LdPrVar
  loc_BBCB9E: LateMemCall
  loc_BBCBA4: LitStr "<title>"
  loc_BBCBA7: FLdRfVar var_AC
  loc_BBCBAA: FLdPr Me
  loc_BBCBAD:  = Me.Caption
  loc_BBCBB2: ILdRf var_AC
  loc_BBCBB5: ConcatStr
  loc_BBCBB6: FStStrNoPop var_B0
  loc_BBCBB9: LitStr "</title>"
  loc_BBCBBC: ConcatStr
  loc_BBCBBD: CVarStr var_C0
  loc_BBCBC0: PopAdLdVar
  loc_BBCBC1: FLdPr Me
  loc_BBCBC4: MemLdRfVar from_stack_1.global_60
  loc_BBCBC7: LdPrVar
  loc_BBCBC9: LateMemCall
  loc_BBCBCF: FFreeStr var_AC = ""
  loc_BBCBD6: FFree1Var var_C0 = ""
  loc_BBCBD9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BBCBDE: PopAdLdVar
  loc_BBCBDF: FLdPr Me
  loc_BBCBE2: MemLdRfVar from_stack_1.global_60
  loc_BBCBE5: LdPrVar
  loc_BBCBE7: LateMemCall
  loc_BBCBED: LitVarStr var_98, ".Titulo1 {"
  loc_BBCBF2: PopAdLdVar
  loc_BBCBF3: FLdPr Me
  loc_BBCBF6: MemLdRfVar from_stack_1.global_60
  loc_BBCBF9: LdPrVar
  loc_BBCBFB: LateMemCall
  loc_BBCC01: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBCC06: PopAdLdVar
  loc_BBCC07: FLdPr Me
  loc_BBCC0A: MemLdRfVar from_stack_1.global_60
  loc_BBCC0D: LdPrVar
  loc_BBCC0F: LateMemCall
  loc_BBCC15: LitVarStr var_98, " font-size: 18px;"
  loc_BBCC1A: PopAdLdVar
  loc_BBCC1B: FLdPr Me
  loc_BBCC1E: MemLdRfVar from_stack_1.global_60
  loc_BBCC21: LdPrVar
  loc_BBCC23: LateMemCall
  loc_BBCC29: LitVarStr var_98, " font-weight: bold;"
  loc_BBCC2E: PopAdLdVar
  loc_BBCC2F: FLdPr Me
  loc_BBCC32: MemLdRfVar from_stack_1.global_60
  loc_BBCC35: LdPrVar
  loc_BBCC37: LateMemCall
  loc_BBCC3D: LitVarStr var_98, "}"
  loc_BBCC42: PopAdLdVar
  loc_BBCC43: FLdPr Me
  loc_BBCC46: MemLdRfVar from_stack_1.global_60
  loc_BBCC49: LdPrVar
  loc_BBCC4B: LateMemCall
  loc_BBCC51: LitVarStr var_98, ".Titulo2 {"
  loc_BBCC56: PopAdLdVar
  loc_BBCC57: FLdPr Me
  loc_BBCC5A: MemLdRfVar from_stack_1.global_60
  loc_BBCC5D: LdPrVar
  loc_BBCC5F: LateMemCall
  loc_BBCC65: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBCC6A: PopAdLdVar
  loc_BBCC6B: FLdPr Me
  loc_BBCC6E: MemLdRfVar from_stack_1.global_60
  loc_BBCC71: LdPrVar
  loc_BBCC73: LateMemCall
  loc_BBCC79: LitVarStr var_98, " font-size: 14px;"
  loc_BBCC7E: PopAdLdVar
  loc_BBCC7F: FLdPr Me
  loc_BBCC82: MemLdRfVar from_stack_1.global_60
  loc_BBCC85: LdPrVar
  loc_BBCC87: LateMemCall
  loc_BBCC8D: LitVarStr var_98, " font-weight: bold;"
  loc_BBCC92: PopAdLdVar
  loc_BBCC93: FLdPr Me
  loc_BBCC96: MemLdRfVar from_stack_1.global_60
  loc_BBCC99: LdPrVar
  loc_BBCC9B: LateMemCall
  loc_BBCCA1: LitVarStr var_98, "}"
  loc_BBCCA6: PopAdLdVar
  loc_BBCCA7: FLdPr Me
  loc_BBCCAA: MemLdRfVar from_stack_1.global_60
  loc_BBCCAD: LdPrVar
  loc_BBCCAF: LateMemCall
  loc_BBCCB5: LitVarStr var_98, ".Normal {"
  loc_BBCCBA: PopAdLdVar
  loc_BBCCBB: FLdPr Me
  loc_BBCCBE: MemLdRfVar from_stack_1.global_60
  loc_BBCCC1: LdPrVar
  loc_BBCCC3: LateMemCall
  loc_BBCCC9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBCCCE: PopAdLdVar
  loc_BBCCCF: FLdPr Me
  loc_BBCCD2: MemLdRfVar from_stack_1.global_60
  loc_BBCCD5: LdPrVar
  loc_BBCCD7: LateMemCall
  loc_BBCCDD: LitVarStr var_98, " font-size: 12px;"
  loc_BBCCE2: PopAdLdVar
  loc_BBCCE3: FLdPr Me
  loc_BBCCE6: MemLdRfVar from_stack_1.global_60
  loc_BBCCE9: LdPrVar
  loc_BBCCEB: LateMemCall
  loc_BBCCF1: LitVarStr var_98, " font-style: normal;"
  loc_BBCCF6: PopAdLdVar
  loc_BBCCF7: FLdPr Me
  loc_BBCCFA: MemLdRfVar from_stack_1.global_60
  loc_BBCCFD: LdPrVar
  loc_BBCCFF: LateMemCall
  loc_BBCD05: LitVarStr var_98, " font-weight: normal;"
  loc_BBCD0A: PopAdLdVar
  loc_BBCD0B: FLdPr Me
  loc_BBCD0E: MemLdRfVar from_stack_1.global_60
  loc_BBCD11: LdPrVar
  loc_BBCD13: LateMemCall
  loc_BBCD19: LitVarStr var_98, " font-variant: normal;"
  loc_BBCD1E: PopAdLdVar
  loc_BBCD1F: FLdPr Me
  loc_BBCD22: MemLdRfVar from_stack_1.global_60
  loc_BBCD25: LdPrVar
  loc_BBCD27: LateMemCall
  loc_BBCD2D: LitVarStr var_98, "}"
  loc_BBCD32: PopAdLdVar
  loc_BBCD33: FLdPr Me
  loc_BBCD36: MemLdRfVar from_stack_1.global_60
  loc_BBCD39: LdPrVar
  loc_BBCD3B: LateMemCall
  loc_BBCD41: LitVarStr var_98, ".Encabezado {"
  loc_BBCD46: PopAdLdVar
  loc_BBCD47: FLdPr Me
  loc_BBCD4A: MemLdRfVar from_stack_1.global_60
  loc_BBCD4D: LdPrVar
  loc_BBCD4F: LateMemCall
  loc_BBCD55: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BBCD5A: PopAdLdVar
  loc_BBCD5B: FLdPr Me
  loc_BBCD5E: MemLdRfVar from_stack_1.global_60
  loc_BBCD61: LdPrVar
  loc_BBCD63: LateMemCall
  loc_BBCD69: LitVarStr var_98, " font-size: 11px;"
  loc_BBCD6E: PopAdLdVar
  loc_BBCD6F: FLdPr Me
  loc_BBCD72: MemLdRfVar from_stack_1.global_60
  loc_BBCD75: LdPrVar
  loc_BBCD77: LateMemCall
  loc_BBCD7D: LitVarStr var_98, " font-weight: bold;"
  loc_BBCD82: PopAdLdVar
  loc_BBCD83: FLdPr Me
  loc_BBCD86: MemLdRfVar from_stack_1.global_60
  loc_BBCD89: LdPrVar
  loc_BBCD8B: LateMemCall
  loc_BBCD91: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BBCD96: PopAdLdVar
  loc_BBCD97: FLdPr Me
  loc_BBCD9A: MemLdRfVar from_stack_1.global_60
  loc_BBCD9D: LdPrVar
  loc_BBCD9F: LateMemCall
  loc_BBCDA5: LitVarStr var_98, "}"
  loc_BBCDAA: PopAdLdVar
  loc_BBCDAB: FLdPr Me
  loc_BBCDAE: MemLdRfVar from_stack_1.global_60
  loc_BBCDB1: LdPrVar
  loc_BBCDB3: LateMemCall
  loc_BBCDB9: LitVarStr var_98, ".LineaDato {"
  loc_BBCDBE: PopAdLdVar
  loc_BBCDBF: FLdPr Me
  loc_BBCDC2: MemLdRfVar from_stack_1.global_60
  loc_BBCDC5: LdPrVar
  loc_BBCDC7: LateMemCall
  loc_BBCDCD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBCDD2: PopAdLdVar
  loc_BBCDD3: FLdPr Me
  loc_BBCDD6: MemLdRfVar from_stack_1.global_60
  loc_BBCDD9: LdPrVar
  loc_BBCDDB: LateMemCall
  loc_BBCDE1: LitVarStr var_98, " font-size: 10px;"
  loc_BBCDE6: PopAdLdVar
  loc_BBCDE7: FLdPr Me
  loc_BBCDEA: MemLdRfVar from_stack_1.global_60
  loc_BBCDED: LdPrVar
  loc_BBCDEF: LateMemCall
  loc_BBCDF5: LitVarStr var_98, "}"
  loc_BBCDFA: PopAdLdVar
  loc_BBCDFB: FLdPr Me
  loc_BBCDFE: MemLdRfVar from_stack_1.global_60
  loc_BBCE01: LdPrVar
  loc_BBCE03: LateMemCall
  loc_BBCE09: LitVarStr var_98, ".Totales {"
  loc_BBCE0E: PopAdLdVar
  loc_BBCE0F: FLdPr Me
  loc_BBCE12: MemLdRfVar from_stack_1.global_60
  loc_BBCE15: LdPrVar
  loc_BBCE17: LateMemCall
  loc_BBCE1D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBCE22: PopAdLdVar
  loc_BBCE23: FLdPr Me
  loc_BBCE26: MemLdRfVar from_stack_1.global_60
  loc_BBCE29: LdPrVar
  loc_BBCE2B: LateMemCall
  loc_BBCE31: LitVarStr var_98, " font-size: 12px;"
  loc_BBCE36: PopAdLdVar
  loc_BBCE37: FLdPr Me
  loc_BBCE3A: MemLdRfVar from_stack_1.global_60
  loc_BBCE3D: LdPrVar
  loc_BBCE3F: LateMemCall
  loc_BBCE45: LitVarStr var_98, " font-weight: bold;"
  loc_BBCE4A: PopAdLdVar
  loc_BBCE4B: FLdPr Me
  loc_BBCE4E: MemLdRfVar from_stack_1.global_60
  loc_BBCE51: LdPrVar
  loc_BBCE53: LateMemCall
  loc_BBCE59: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BBCE5E: PopAdLdVar
  loc_BBCE5F: FLdPr Me
  loc_BBCE62: MemLdRfVar from_stack_1.global_60
  loc_BBCE65: LdPrVar
  loc_BBCE67: LateMemCall
  loc_BBCE6D: LitVarStr var_98, "}"
  loc_BBCE72: PopAdLdVar
  loc_BBCE73: FLdPr Me
  loc_BBCE76: MemLdRfVar from_stack_1.global_60
  loc_BBCE79: LdPrVar
  loc_BBCE7B: LateMemCall
  loc_BBCE81: LitVarStr var_98, ".SubTotales {"
  loc_BBCE86: PopAdLdVar
  loc_BBCE87: FLdPr Me
  loc_BBCE8A: MemLdRfVar from_stack_1.global_60
  loc_BBCE8D: LdPrVar
  loc_BBCE8F: LateMemCall
  loc_BBCE95: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBCE9A: PopAdLdVar
  loc_BBCE9B: FLdPr Me
  loc_BBCE9E: MemLdRfVar from_stack_1.global_60
  loc_BBCEA1: LdPrVar
  loc_BBCEA3: LateMemCall
  loc_BBCEA9: LitVarStr var_98, " font-size: 10px;"
  loc_BBCEAE: PopAdLdVar
  loc_BBCEAF: FLdPr Me
  loc_BBCEB2: MemLdRfVar from_stack_1.global_60
  loc_BBCEB5: LdPrVar
  loc_BBCEB7: LateMemCall
  loc_BBCEBD: LitVarStr var_98, " font-weight: bold;"
  loc_BBCEC2: PopAdLdVar
  loc_BBCEC3: FLdPr Me
  loc_BBCEC6: MemLdRfVar from_stack_1.global_60
  loc_BBCEC9: LdPrVar
  loc_BBCECB: LateMemCall
  loc_BBCED1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BBCED6: PopAdLdVar
  loc_BBCED7: FLdPr Me
  loc_BBCEDA: MemLdRfVar from_stack_1.global_60
  loc_BBCEDD: LdPrVar
  loc_BBCEDF: LateMemCall
  loc_BBCEE5: LitVarStr var_98, "}"
  loc_BBCEEA: PopAdLdVar
  loc_BBCEEB: FLdPr Me
  loc_BBCEEE: MemLdRfVar from_stack_1.global_60
  loc_BBCEF1: LdPrVar
  loc_BBCEF3: LateMemCall
  loc_BBCEF9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BBCEFE: PopAdLdVar
  loc_BBCEFF: FLdPr Me
  loc_BBCF02: MemLdRfVar from_stack_1.global_60
  loc_BBCF05: LdPrVar
  loc_BBCF07: LateMemCall
  loc_BBCF0D: LitVarStr var_98, "</style>"
  loc_BBCF12: PopAdLdVar
  loc_BBCF13: FLdPr Me
  loc_BBCF16: MemLdRfVar from_stack_1.global_60
  loc_BBCF19: LdPrVar
  loc_BBCF1B: LateMemCall
  loc_BBCF21: LitI4 0
  loc_BBCF26: FStStrCopy var_B0
  loc_BBCF29: FLdRfVar var_B0
  loc_BBCF2C: LitI4 0
  loc_BBCF31: FStStrCopy var_AC
  loc_BBCF34: FLdRfVar var_AC
  loc_BBCF37: LitI2_Byte &HFF
  loc_BBCF39: PopTmpLdAd2 var_C2
  loc_BBCF3C: FLdPr Me
  loc_BBCF3F: MemLdRfVar from_stack_1.global_60
  loc_BBCF42: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BBCF47: FFreeStr var_AC = ""
  loc_BBCF4E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BBCF53: PopAdLdVar
  loc_BBCF54: FLdPr Me
  loc_BBCF57: MemLdRfVar from_stack_1.global_60
  loc_BBCF5A: LdPrVar
  loc_BBCF5C: LateMemCall
  loc_BBCF62: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BBCF67: PopAdLdVar
  loc_BBCF68: FLdPr Me
  loc_BBCF6B: MemLdRfVar from_stack_1.global_60
  loc_BBCF6E: LdPrVar
  loc_BBCF70: LateMemCall
  loc_BBCF76: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BBCF79: LitI2_Byte &H5F
  loc_BBCF7B: CStrUI1
  loc_BBCF7D: FStStrNoPop var_AC
  loc_BBCF80: ConcatStr
  loc_BBCF81: FStStrNoPop var_B0
  loc_BBCF84: LitStr """ height="""
  loc_BBCF87: ConcatStr
  loc_BBCF88: FStStrNoPop var_C8
  loc_BBCF8B: LitI2_Byte &H3C
  loc_BBCF8D: CStrUI1
  loc_BBCF8F: FStStrNoPop var_CC
  loc_BBCF92: ConcatStr
  loc_BBCF93: FStStrNoPop var_D0
  loc_BBCF96: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BBCF99: ConcatStr
  loc_BBCF9A: FStStrNoPop var_D4
  loc_BBCF9D: LitStr "Municipalidad de Guaymallén"
  loc_BBCFA0: ConcatStr
  loc_BBCFA1: FStStrNoPop var_D8
  loc_BBCFA4: LitStr "</p>"
  loc_BBCFA7: ConcatStr
  loc_BBCFA8: CVarStr var_C0
  loc_BBCFAB: PopAdLdVar
  loc_BBCFAC: FLdPr Me
  loc_BBCFAF: MemLdRfVar from_stack_1.global_60
  loc_BBCFB2: LdPrVar
  loc_BBCFB4: LateMemCall
  loc_BBCFBA: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BBCFCB: FFree1Var var_C0 = ""
  loc_BBCFCE: LitStr "    <p>"
  loc_BBCFD1: FLdRfVar var_AC
  loc_BBCFD4: FLdPr Me
  loc_BBCFD7:  = Me.Caption
  loc_BBCFDC: ILdRf var_AC
  loc_BBCFDF: ConcatStr
  loc_BBCFE0: FStStrNoPop var_B0
  loc_BBCFE3: LitStr "</p></th>"
  loc_BBCFE6: ConcatStr
  loc_BBCFE7: CVarStr var_C0
  loc_BBCFEA: PopAdLdVar
  loc_BBCFEB: FLdPr Me
  loc_BBCFEE: MemLdRfVar from_stack_1.global_60
  loc_BBCFF1: LdPrVar
  loc_BBCFF3: LateMemCall
  loc_BBCFF9: FFreeStr var_AC = ""
  loc_BBD000: FFree1Var var_C0 = ""
  loc_BBD003: LitVarStr var_98, "  </tr>"
  loc_BBD008: PopAdLdVar
  loc_BBD009: FLdPr Me
  loc_BBD00C: MemLdRfVar from_stack_1.global_60
  loc_BBD00F: LdPrVar
  loc_BBD011: LateMemCall
  loc_BBD017: LitVarStr var_98, "  <tr>"
  loc_BBD01C: PopAdLdVar
  loc_BBD01D: FLdPr Me
  loc_BBD020: MemLdRfVar from_stack_1.global_60
  loc_BBD023: LdPrVar
  loc_BBD025: LateMemCall
  loc_BBD02B: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BBD030: PopAdLdVar
  loc_BBD031: FLdPr Me
  loc_BBD034: MemLdRfVar from_stack_1.global_60
  loc_BBD037: LdPrVar
  loc_BBD039: LateMemCall
  loc_BBD03F: LitVarStr var_98, "  </tr>"
  loc_BBD044: PopAdLdVar
  loc_BBD045: FLdPr Me
  loc_BBD048: MemLdRfVar from_stack_1.global_60
  loc_BBD04B: LdPrVar
  loc_BBD04D: LateMemCall
  loc_BBD053: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BBD058: PopAdLdVar
  loc_BBD059: FLdPr Me
  loc_BBD05C: MemLdRfVar from_stack_1.global_60
  loc_BBD05F: LdPrVar
  loc_BBD061: LateMemCall
  loc_BBD067: LitStr "    <td align=""left"" valign=""top""><strong>Desde Fecha: </strong>"
  loc_BBD06A: FLdPr Me
  loc_BBD06D: VCallAd Control_ID_DesdeMsk
  loc_BBD070: FStAdFunc var_DC
  loc_BBD073: FLdPr var_DC
  loc_BBD076: LateIdLdVar var_C0 DispID_15 0
  loc_BBD07D: CStrVarTmp
  loc_BBD07E: FStStrNoPop var_AC
  loc_BBD081: ConcatStr
  loc_BBD082: FStStrNoPop var_B0
  loc_BBD085: LitStr "</td>"
  loc_BBD088: ConcatStr
  loc_BBD089: CVarStr var_EC
  loc_BBD08C: PopAdLdVar
  loc_BBD08D: FLdPr Me
  loc_BBD090: MemLdRfVar from_stack_1.global_60
  loc_BBD093: LdPrVar
  loc_BBD095: LateMemCall
  loc_BBD09B: FFreeStr var_AC = ""
  loc_BBD0A2: FFree1Ad var_DC
  loc_BBD0A5: FFreeVar var_C0 = ""
  loc_BBD0AC: LitStr "    <td align=""center"" valign=""top""><strong>Hasta Fecha: </strong>"
  loc_BBD0AF: FLdPr Me
  loc_BBD0B2: VCallAd Control_ID_HastaMsk
  loc_BBD0B5: FStAdFunc var_DC
  loc_BBD0B8: FLdPr var_DC
  loc_BBD0BB: LateIdLdVar var_C0 DispID_15 0
  loc_BBD0C2: CStrVarTmp
  loc_BBD0C3: FStStrNoPop var_AC
  loc_BBD0C6: ConcatStr
  loc_BBD0C7: FStStrNoPop var_B0
  loc_BBD0CA: LitStr "</td>"
  loc_BBD0CD: ConcatStr
  loc_BBD0CE: CVarStr var_EC
  loc_BBD0D1: PopAdLdVar
  loc_BBD0D2: FLdPr Me
  loc_BBD0D5: MemLdRfVar from_stack_1.global_60
  loc_BBD0D8: LdPrVar
  loc_BBD0DA: LateMemCall
  loc_BBD0E0: FFreeStr var_AC = ""
  loc_BBD0E7: FFree1Ad var_DC
  loc_BBD0EA: FFreeVar var_C0 = ""
  loc_BBD0F1: LitVarStr var_98, "  </tr>"
  loc_BBD0F6: PopAdLdVar
  loc_BBD0F7: FLdPr Me
  loc_BBD0FA: MemLdRfVar from_stack_1.global_60
  loc_BBD0FD: LdPrVar
  loc_BBD0FF: LateMemCall
  loc_BBD105: LitVarStr var_98, "</table>"
  loc_BBD10A: PopAdLdVar
  loc_BBD10B: FLdPr Me
  loc_BBD10E: MemLdRfVar from_stack_1.global_60
  loc_BBD111: LdPrVar
  loc_BBD113: LateMemCall
  loc_BBD119: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BBD11E: PopAdLdVar
  loc_BBD11F: FLdPr Me
  loc_BBD122: MemLdRfVar from_stack_1.global_60
  loc_BBD125: LdPrVar
  loc_BBD127: LateMemCall
  loc_BBD12D: LitVarStr var_98, "  <thead>"
  loc_BBD132: PopAdLdVar
  loc_BBD133: FLdPr Me
  loc_BBD136: MemLdRfVar from_stack_1.global_60
  loc_BBD139: LdPrVar
  loc_BBD13B: LateMemCall
  loc_BBD141: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BBD146: PopAdLdVar
  loc_BBD147: FLdPr Me
  loc_BBD14A: MemLdRfVar from_stack_1.global_60
  loc_BBD14D: LdPrVar
  loc_BBD14F: LateMemCall
  loc_BBD155: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_BBD15A: PopAdLdVar
  loc_BBD15B: FLdPr Me
  loc_BBD15E: MemLdRfVar from_stack_1.global_60
  loc_BBD161: LdPrVar
  loc_BBD163: LateMemCall
  loc_BBD169: LitVarStr var_98, "    <th>Boleto</th>"
  loc_BBD16E: PopAdLdVar
  loc_BBD16F: FLdPr Me
  loc_BBD172: MemLdRfVar from_stack_1.global_60
  loc_BBD175: LdPrVar
  loc_BBD177: LateMemCall
  loc_BBD17D: LitVarStr var_98, "    <th>Fecha Venc.</th>"
  loc_BBD182: PopAdLdVar
  loc_BBD183: FLdPr Me
  loc_BBD186: MemLdRfVar from_stack_1.global_60
  loc_BBD189: LdPrVar
  loc_BBD18B: LateMemCall
  loc_BBD191: LitVarStr var_98, "    <th>Total</th>"
  loc_BBD196: PopAdLdVar
  loc_BBD197: FLdPr Me
  loc_BBD19A: MemLdRfVar from_stack_1.global_60
  loc_BBD19D: LdPrVar
  loc_BBD19F: LateMemCall
  loc_BBD1A5: LitVarStr var_98, "    <th>Código de Barra</th>"
  loc_BBD1AA: PopAdLdVar
  loc_BBD1AB: FLdPr Me
  loc_BBD1AE: MemLdRfVar from_stack_1.global_60
  loc_BBD1B1: LdPrVar
  loc_BBD1B3: LateMemCall
  loc_BBD1B9: LitVarStr var_98, "    <th>Mensaje Pantalla</th>"
  loc_BBD1BE: PopAdLdVar
  loc_BBD1BF: FLdPr Me
  loc_BBD1C2: MemLdRfVar from_stack_1.global_60
  loc_BBD1C5: LdPrVar
  loc_BBD1C7: LateMemCall
  loc_BBD1CD: LitVarStr var_98, "    <th>Mensaje Ticket</th>"
  loc_BBD1D2: PopAdLdVar
  loc_BBD1D3: FLdPr Me
  loc_BBD1D6: MemLdRfVar from_stack_1.global_60
  loc_BBD1D9: LdPrVar
  loc_BBD1DB: LateMemCall
  loc_BBD1E1: LitVarStr var_98, "  </tr>"
  loc_BBD1E6: PopAdLdVar
  loc_BBD1E7: FLdPr Me
  loc_BBD1EA: MemLdRfVar from_stack_1.global_60
  loc_BBD1ED: LdPrVar
  loc_BBD1EF: LateMemCall
  loc_BBD1F5: LitVarStr var_98, "  </thead>"
  loc_BBD1FA: PopAdLdVar
  loc_BBD1FB: FLdPr Me
  loc_BBD1FE: MemLdRfVar from_stack_1.global_60
  loc_BBD201: LdPrVar
  loc_BBD203: LateMemCall
  loc_BBD209: ExitProcHresult
End Function

Private Function Proc_313_23_A0FF58() 'A0FF58
  'Data Table: 4CB4F8
  loc_A0FF18: LitVarStr var_94, "</table>"
  loc_A0FF1D: PopAdLdVar
  loc_A0FF1E: FLdPr Me
  loc_A0FF21: MemLdRfVar from_stack_1.global_60
  loc_A0FF24: LdPrVar
  loc_A0FF26: LateMemCall
  loc_A0FF2C: LitVarStr var_94, "</body>"
  loc_A0FF31: PopAdLdVar
  loc_A0FF32: FLdPr Me
  loc_A0FF35: MemLdRfVar from_stack_1.global_60
  loc_A0FF38: LdPrVar
  loc_A0FF3A: LateMemCall
  loc_A0FF40: LitVarStr var_94, "</html>"
  loc_A0FF45: PopAdLdVar
  loc_A0FF46: FLdPr Me
  loc_A0FF49: MemLdRfVar from_stack_1.global_60
  loc_A0FF4C: LdPrVar
  loc_A0FF4E: LateMemCall
  loc_A0FF54: ExitProcHresult
End Function
