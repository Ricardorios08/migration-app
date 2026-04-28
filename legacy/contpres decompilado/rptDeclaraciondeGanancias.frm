VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptDeclaraciondeGanancias
  Caption = "Archivo para SICORE 9 GANANCIAS"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptDeclaraciondeGanancias.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9000
  ClientHeight = 6210
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4680
    Width = 3015
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5955
    Width = 9000
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptDeclaraciondeGanancias.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 4920
    Width = 735
    Height = 615
    TabIndex = 24
    Cancel = -1  'True
    Picture = "rptDeclaraciondeGanancias.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptDeclaraciondeGanancias.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4680
    Width = 3015
    Height = 1095
    TabIndex = 20
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7935
    Height = 4455
    TabIndex = 1
    Begin VB.Frame Frame5
      Caption = " Certificados Con / Sin devolución"
      Left = 240
      Top = 2640
      Width = 5535
      Height = 1455
      TabIndex = 12
      Begin VB.OptionButton optTodos
        Caption = "TODOS"
        Left = 480
        Top = 600
        Width = 1575
        Height = 375
        TabIndex = 25
        Value = 255
        CausesValidation = 0   'False
      End
      Begin VB.OptionButton optConDevolucion
        Caption = "CON Devolución"
        Left = 3000
        Top = 840
        Width = 1575
        Height = 375
        TabIndex = 14
        CausesValidation = 0   'False
      End
      Begin VB.OptionButton optSinDevolucion
        Caption = "SIN Devolución"
        Left = 3000
        Top = 360
        Width = 1575
        Height = 375
        TabIndex = 13
        CausesValidation = 0   'False
      End
    End
    Begin VB.Frame Frame4
      Caption = " Fecha "
      Left = 240
      Top = 840
      Width = 5535
      Height = 1455
      TabIndex = 3
      Begin VB.OptionButton OptionPago
        Caption = "de Pago"
        Left = 3360
        Top = 360
        Width = 1095
        Height = 255
        TabIndex = 10
      End
      Begin VB.OptionButton OptionFepaLine
        Caption = "de Pago efectivo"
        Left = 3360
        Top = 840
        Width = 1815
        Height = 255
        TabIndex = 11
      End
      Begin VB.CommandButton HastaCmd
        Left = 2010
        Top = 810
        Width = 375
        Height = 375
        TabIndex = 9
        Picture = "rptDeclaraciondeGanancias.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton DesdeCmd
        Left = 2010
        Top = 285
        Width = 375
        Height = 375
        TabIndex = 6
        Picture = "rptDeclaraciondeGanancias.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox MskDesde
        Left = 885
        Top = 330
        Width = 1095
        Height = 285
        TabIndex = 5
        OleObjectBlob = "rptDeclaraciondeGanancias.frx":1684
      End
      Begin MSMask.MaskEdBox MskHasta
        Left = 885
        Top = 855
        Width = 1095
        Height = 285
        TabIndex = 8
        OleObjectBlob = "rptDeclaraciondeGanancias.frx":170C
      End
      Begin VB.Label Label3
        Caption = "Hasta:"
        Left = 285
        Top = 855
        Width = 465
        Height = 195
        TabIndex = 7
        AutoSize = -1  'True
      End
      Begin VB.Label Label4
        Caption = "Desde:"
        Left = 240
        Top = 330
        Width = 510
        Height = 195
        TabIndex = 4
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6120
      Top = 2160
      Width = 1335
      Height = 495
      TabIndex = 23
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 0
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 360
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 2
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 5160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptDeclaraciondeGanancias.frx":1794
  End
End

Attribute VB_Name = "rptDeclaraciondeGanancias"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_005D69C4
  bStruc(280) As Byte ' String fields: 16
End Type

Private Type UDT_2_005D6A68
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdPrevia_Click() '95BBE4
  'Data Table: 4A3740
  loc_95BBCC: ILdRf Me
  loc_95BBCF: CastAd
  loc_95BBD2: FStAdFunc var_88
  loc_95BBD5: FLdRfVar var_88
  loc_95BBD8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95BBDD: FFree1Ad var_88
  loc_95BBE0: ExitProcHresult
  loc_95BBE3: EqI4
End Sub

Private Sub cmdSalir_Click() '977E40
  'Data Table: 4A3740
  loc_977E10: LitVarStr var_94, "Cerrando..."
  loc_977E15: PopAdLdVar
  loc_977E16: FLdPr Me
  loc_977E19: VCallAd Control_ID_statusBar
  loc_977E1C: FStAdFunc var_A8
  loc_977E1F: FLdPr var_A8
  loc_977E22: LateIdSt
  loc_977E27: FFree1Ad var_A8
  loc_977E2A: ILdRf Me
  loc_977E2D: FStAdNoPop
  loc_977E31: ImpAdLdRf MemVar_C44F9C
  loc_977E34: NewIfNullPr Me
  loc_977E37: Me.Global.Unload from_stack_1
  loc_977E3C: FFree1Ad var_A8
  loc_977E3F: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() '980180
  'Data Table: 4A3740
  loc_98014C: LitVar_Missing var_A4
  loc_98014F: PopAdLdVar
  loc_980150: LitVarI4
  loc_980158: PopAdLdVar
  loc_980159: ImpAdLdRf MemVar_C3D9A8
  loc_98015C: NewIfNullPr frmCalendario
  loc_98015F: frmCalendario.Show from_stack_1, from_stack_2
  loc_980164: ImpAdLdRf MemVar_C3D038
  loc_980167: CDargRef
  loc_98016B: FLdPr Me
  loc_98016E: VCallAd Control_ID_MskDesde
  loc_980171: FStAdFunc var_A8
  loc_980174: FLdPr var_A8
  loc_980177: LateIdSt
  loc_98017C: FFree1Ad var_A8
  loc_98017F: ExitProcHresult
End Sub

Private Sub HastaCmd_Click() '9800B0
  'Data Table: 4A3740
  loc_98007C: LitVar_Missing var_A4
  loc_98007F: PopAdLdVar
  loc_980080: LitVarI4
  loc_980088: PopAdLdVar
  loc_980089: ImpAdLdRf MemVar_C3D9A8
  loc_98008C: NewIfNullPr frmCalendario
  loc_98008F: frmCalendario.Show from_stack_1, from_stack_2
  loc_980094: ImpAdLdRf MemVar_C3D038
  loc_980097: CDargRef
  loc_98009B: FLdPr Me
  loc_98009E: VCallAd Control_ID_MskHasta
  loc_9800A1: FStAdFunc var_A8
  loc_9800A4: FLdPr var_A8
  loc_9800A7: LateIdSt
  loc_9800AC: FFree1Ad var_A8
  loc_9800AF: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95BC7C
  'Data Table: 4A3740
  loc_95BC64: ILdRf Me
  loc_95BC67: CastAd
  loc_95BC6A: FStAdFunc var_88
  loc_95BC6D: FLdRfVar var_88
  loc_95BC70: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95BC75: FFree1Ad var_88
  loc_95BC78: ExitProcHresult
  loc_95BC79: CStrVarTmp
  loc_95BC7A: FStStrNoPop var_37F0
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988984
  'Data Table: 4A3740
  loc_98894C: FLdPr Me
  loc_98894F: VCallAd Control_ID_statusBar
  loc_988952: FStAdFunc var_88
  loc_988955: FLdPr var_88
  loc_988958: LateIdLdVar var_98 DispID_1 0
  loc_98895F: CStrVarTmp
  loc_988960: CVarStr var_A8
  loc_988963: PopAdLdVar
  loc_988964: FLdPr Me
  loc_988967: VCallAd Control_ID_statusBar
  loc_98896A: FStAdFunc var_BC
  loc_98896D: FLdPr var_BC
  loc_988970: LateIdSt
  loc_988975: FFreeAd var_88 = ""
  loc_98897C: FFreeVar var_98 = ""
  loc_988983: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '95C0A4
  'Data Table: 4A3740
  loc_95C08C: LitI2_Byte 0
  loc_95C08E: ILdRf Me
  loc_95C091: CastAd
  loc_95C094: FStAdFunc var_88
  loc_95C097: FLdRfVar var_88
  loc_95C09A: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_95C09F: FFree1Ad var_88
  loc_95C0A2: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B008C
  'Data Table: 4A3740
  loc_9AFFF0: FLdPr Me
  loc_9AFFF3: VCallAd Control_ID_MskDesde
  loc_9AFFF6: FStAdFunc var_88
  loc_9AFFF9: FLdPr var_88
  loc_9AFFFC: LateIdLdVar var_98 DispID_15 0
  loc_9B0003: PopAd
  loc_9B0005: FLdPr Me
  loc_9B0008: VCallAd Control_ID_MskDesde
  loc_9B000B: FStAdFunc var_AC
  loc_9B000E: LitI2_Byte &HFF
  loc_9B0010: PopTmpLdAd2 var_A2
  loc_9B0013: FLdZeroAd var_AC
  loc_9B0016: FStAdFunc var_A0
  loc_9B0019: FLdRfVar var_A0
  loc_9B001C: LitStr vbNullString
  loc_9B001F: LitI2_Byte 0
  loc_9B0021: LitI2_Byte 0
  loc_9B0023: FLdRfVar var_98
  loc_9B0026: CStrVarTmp
  loc_9B0027: FStStrNoPop var_9C
  loc_9B002A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B002F: FStStrNoPop var_A8
  loc_9B0032: FLdPr Me
  loc_9B0035: MemStStrCopy
  loc_9B0039: FFreeStr var_9C = ""
  loc_9B0040: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0049: FFree1Var var_98 = ""
  loc_9B004C: FLdPr Me
  loc_9B004F: VCallAd Control_ID_MskDesde
  loc_9B0052: FStAdFunc var_B0
  loc_9B0055: LitNothing
  loc_9B0057: CastAd
  loc_9B005A: FStAdFunc var_AC
  loc_9B005D: FLdRfVar var_AC
  loc_9B0060: FLdZeroAd var_B0
  loc_9B0063: FStAdFuncNoPop
  loc_9B0066: CastAd
  loc_9B0069: FStAdFunc var_A0
  loc_9B006C: FLdRfVar var_A0
  loc_9B006F: FLdPr Me
  loc_9B0072: MemLdRfVar from_stack_1.global_124
  loc_9B0075: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B007A: IStI2 arg_C
  loc_9B007D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0088: ExitProcHresult
  loc_9B0089: StAryRecCopy
End Function

Private Sub mskHasta_UnknownEvent_0 '94FDA0
  'Data Table: 4A3740
  loc_94FD8C: FLdPr Me
  loc_94FD8F: VCallAd Control_ID_MskHasta
  loc_94FD92: CVarAd
  loc_94FD96: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FD9B: FFree1Var var_94 = ""
  loc_94FD9E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B0174
  'Data Table: 4A3740
  loc_9B00D8: FLdPr Me
  loc_9B00DB: VCallAd Control_ID_MskDesde
  loc_9B00DE: FStAdFunc var_88
  loc_9B00E1: FLdPr var_88
  loc_9B00E4: LateIdLdVar var_98 DispID_15 0
  loc_9B00EB: PopAd
  loc_9B00ED: FLdPr Me
  loc_9B00F0: VCallAd Control_ID_MskHasta
  loc_9B00F3: FStAdFunc var_AC
  loc_9B00F6: LitI2_Byte &HFF
  loc_9B00F8: PopTmpLdAd2 var_A2
  loc_9B00FB: FLdZeroAd var_AC
  loc_9B00FE: FStAdFunc var_A0
  loc_9B0101: FLdRfVar var_A0
  loc_9B0104: LitStr vbNullString
  loc_9B0107: LitI2_Byte 0
  loc_9B0109: LitI2_Byte 0
  loc_9B010B: FLdRfVar var_98
  loc_9B010E: CStrVarTmp
  loc_9B010F: FStStrNoPop var_9C
  loc_9B0112: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0117: FStStrNoPop var_A8
  loc_9B011A: FLdPr Me
  loc_9B011D: MemStStrCopy
  loc_9B0121: FFreeStr var_9C = ""
  loc_9B0128: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0131: FFree1Var var_98 = ""
  loc_9B0134: FLdPr Me
  loc_9B0137: VCallAd Control_ID_MskHasta
  loc_9B013A: FStAdFunc var_B0
  loc_9B013D: LitNothing
  loc_9B013F: CastAd
  loc_9B0142: FStAdFunc var_AC
  loc_9B0145: FLdRfVar var_AC
  loc_9B0148: FLdZeroAd var_B0
  loc_9B014B: FStAdFuncNoPop
  loc_9B014E: CastAd
  loc_9B0151: FStAdFunc var_A0
  loc_9B0154: FLdRfVar var_A0
  loc_9B0157: FLdPr Me
  loc_9B015A: MemLdRfVar from_stack_1.global_124
  loc_9B015D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0162: IStI2 arg_C
  loc_9B0165: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0170: ExitProcHresult
End Function

Private Sub cmdNueva_Click() '9D78C0
  'Data Table: 4A3740
  loc_9D77C8: LitI2_Byte 0
  loc_9D77CA: FLdPr Me
  loc_9D77CD: MemStI2 bGenerado
  loc_9D77D0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D77D5: ImpAdLdI2 MemVar_C3D064
  loc_9D77D8: CStrUI1
  loc_9D77DA: FStStrNoPop var_88
  loc_9D77DD: FLdPr Me
  loc_9D77E0: VCallAd Control_ID_cboPeriodo
  loc_9D77E3: FStAdFunc var_8C
  loc_9D77E6: FLdPr var_8C
  loc_9D77E9: Me.Text = from_stack_1
  loc_9D77EE: FFree1Str var_88
  loc_9D77F1: FFree1Ad var_8C
  loc_9D77F4: LitI2_Byte 1
  loc_9D77F6: LitI2_Byte 1
  loc_9D77F8: ImpAdLdI2 MemVar_C3D064
  loc_9D77FB: FLdRfVar var_9C
  loc_9D77FE: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D7803: FLdRfVar var_9C
  loc_9D7806: CStrVarTmp
  loc_9D7807: CVarStr var_AC
  loc_9D780A: PopAdLdVar
  loc_9D780B: FLdPr Me
  loc_9D780E: VCallAd Control_ID_MskDesde
  loc_9D7811: FStAdFunc var_8C
  loc_9D7814: FLdPr var_8C
  loc_9D7817: LateIdSt
  loc_9D781C: FFree1Ad var_8C
  loc_9D781F: FFreeVar var_9C = ""
  loc_9D7826: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D7829: CStrDate
  loc_9D782B: CVarStr var_9C
  loc_9D782E: PopAdLdVar
  loc_9D782F: FLdPr Me
  loc_9D7832: VCallAd Control_ID_MskHasta
  loc_9D7835: FStAdFunc var_8C
  loc_9D7838: FLdPr var_8C
  loc_9D783B: LateIdSt
  loc_9D7840: FFree1Ad var_8C
  loc_9D7843: FFree1Var var_9C = ""
  loc_9D7846: FLdRfVar var_BE
  loc_9D7849: FLdPr Me
  loc_9D784C: VCallAd Control_ID_OptionPago
  loc_9D784F: FStAdFunc var_8C
  loc_9D7852: FLdPr var_8C
  loc_9D7855:  = Me.Value
  loc_9D785A: FLdI2 var_BE
  loc_9D785D: CI4UI1
  loc_9D785E: LitI4 0
  loc_9D7863: EqI4
  loc_9D7864: FLdRfVar var_C6
  loc_9D7867: FLdPr Me
  loc_9D786A: VCallAd Control_ID_OptionFepaLine
  loc_9D786D: FStAdFunc var_C4
  loc_9D7870: FLdPr var_C4
  loc_9D7873:  = Me.Value
  loc_9D7878: FLdI2 var_C6
  loc_9D787B: CI4UI1
  loc_9D787C: LitI4 0
  loc_9D7881: EqI4
  loc_9D7882: AndI4
  loc_9D7883: FFreeAd var_8C = ""
  loc_9D788A: BranchF loc_9D78A3
  loc_9D788D: LitI2_Byte &HFF
  loc_9D788F: FLdPr Me
  loc_9D7892: VCallAd Control_ID_OptionPago
  loc_9D7895: FStAdFunc var_8C
  loc_9D7898: FLdPr var_8C
  loc_9D789B: Me.Value = from_stack_1b
  loc_9D78A0: FFree1Ad var_8C
  loc_9D78A3: Call HabilitarCriterio()
  loc_9D78A8: ILdRf Me
  loc_9D78AB: CastAd
  loc_9D78AE: FStAdFunc var_8C
  loc_9D78B1: FLdRfVar var_8C
  loc_9D78B4: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D78B9: FFree1Ad var_8C
  loc_9D78BC: ExitProcHresult
  loc_9D78BD: FLdPr arg_F00
End Sub

Private Sub cmdPdf_Click() '95BD14
  'Data Table: 4A3740
  loc_95BCFC: LitI2_Byte 0
  loc_95BCFE: ILdRf Me
  loc_95BD01: CastAd
  loc_95BD04: FStAdFunc var_88
  loc_95BD07: FLdRfVar var_88
  loc_95BD0A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95BD0F: FFree1Ad var_88
  loc_95BD12: ExitProcHresult
End Sub

Private Sub Form_Load() '9CD608
  'Data Table: 4A3740
  loc_9CD530: LitI2_Byte &HFF
  loc_9CD532: ImpAdStI2 MemVar_C3D840
  loc_9CD535: ILdRf Me
  loc_9CD538: CastAd
  loc_9CD53B: FStAdFunc var_90
  loc_9CD53E: FLdRfVar var_90
  loc_9CD541: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CD546: FFree1Ad var_90
  loc_9CD549: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CD54C: FLdRfVar var_8C
  loc_9CD54F: NewIfNullPr clsperiodo
  loc_9CD552: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CD557: FLdRfVar var_94
  loc_9CD55A: FLdRfVar var_8C
  loc_9CD55D: NewIfNullPr clsperiodo
  loc_9CD560: from_stack_1 = clsperiodo.RecordCount
  loc_9CD565: ILdRf var_94
  loc_9CD568: LitI4 0
  loc_9CD56D: GtI4
  loc_9CD56E: BranchF loc_9CD601
  loc_9CD571: FLdRfVar var_8C
  loc_9CD574: NewIfNullPr clsperiodo
  loc_9CD577: Call clsperiodo.MoveFirst()
  loc_9CD57C: FLdRfVar var_96
  loc_9CD57F: FLdRfVar var_8C
  loc_9CD582: NewIfNullPr clsperiodo
  loc_9CD585: from_stack_1 = clsperiodo.EOF
  loc_9CD58A: FLdI2 var_96
  loc_9CD58D: NotI4
  loc_9CD58E: BranchF loc_9CD601
  loc_9CD591: LitVar_Missing var_D4
  loc_9CD594: PopAdLdVar
  loc_9CD595: FLdRfVar var_C0
  loc_9CD598: FLdRfVar var_B0
  loc_9CD59B: LitVarStr var_AC, "PeriInfo"
  loc_9CD5A0: PopAdLdVar
  loc_9CD5A1: FLdRfVar var_9C
  loc_9CD5A4: FLdRfVar var_90
  loc_9CD5A7: FLdRfVar var_8C
  loc_9CD5AA: NewIfNullPr clsperiodo
  loc_9CD5AD: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CD5B2: FLdPr var_90
  loc_9CD5B5:  = Me.Fields
  loc_9CD5BA: FLdPr var_9C
  loc_9CD5BD: from_stack_2 = Me.Item(from_stack_1)
  loc_9CD5C2: FLdPr var_B0
  loc_9CD5C5:  = Me.Value
  loc_9CD5CA: FLdRfVar var_C0
  loc_9CD5CD: CStrVarTmp
  loc_9CD5CE: FStStrNoPop var_C4
  loc_9CD5D1: FLdPr Me
  loc_9CD5D4: VCallAd Control_ID_cboPeriodo
  loc_9CD5D7: FStAdFunc var_D8
  loc_9CD5DA: FLdPr var_D8
  loc_9CD5DD: Me.AddItem from_stack_1, from_stack_2
  loc_9CD5E2: FFree1Str var_C4
  loc_9CD5E5: FFreeAd var_90 = "": var_9C = "": var_B0 = ""
  loc_9CD5F0: FFree1Var var_C0 = ""
  loc_9CD5F3: FLdRfVar var_8C
  loc_9CD5F6: NewIfNullPr clsperiodo
  loc_9CD5F9: Call clsperiodo.MoveSiguiente()
  loc_9CD5FE: Branch loc_9CD57C
  loc_9CD601: Call cmdNueva_Click()
  loc_9CD606: ExitProcHresult
  loc_9CD607: LitI2_Byte &HC8
End Sub

Private Sub Form_Unload(Cancel As Integer) '95C188
  'Data Table: 4A3740
  loc_95C170: FLdPr Me
  loc_95C173: VCallAd Control_ID_wbbReporte
  loc_95C176: FStAdFunc var_88
  loc_95C179: FLdRfVar var_88
  loc_95C17C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95C181: FFree1Ad var_88
  loc_95C184: ExitProcHresult
End Sub

Public Function htmFileGet() '4A49DC
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4A49EB
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4A49FA
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4A4A09
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A4A18
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9D1968
  'Data Table: 4A3740
  loc_9D18A4: LitI4 0
  loc_9D18A9: LitI4 9
  loc_9D18AE: FLdRfVar var_88
  loc_9D18B1: Redim
  loc_9D18BB: FLdPr Me
  loc_9D18BE: VCallAd Control_ID_cboPeriodo
  loc_9D18C1: CVarAd
  loc_9D18C5: ParmAry1St
  loc_9D18CB: FLdPr Me
  loc_9D18CE: VCallAd Control_ID_MskDesde
  loc_9D18D1: CVarAd
  loc_9D18D5: ParmAry1St
  loc_9D18DB: FLdPr Me
  loc_9D18DE: VCallAd Control_ID_DesdeCmd
  loc_9D18E1: CVarAd
  loc_9D18E5: ParmAry1St
  loc_9D18EB: FLdPr Me
  loc_9D18EE: VCallAd Control_ID_MskHasta
  loc_9D18F1: CVarAd
  loc_9D18F5: ParmAry1St
  loc_9D18FB: FLdPr Me
  loc_9D18FE: VCallAd Control_ID_HastaCmd
  loc_9D1901: CVarAd
  loc_9D1905: ParmAry1St
  loc_9D190B: FLdPr Me
  loc_9D190E: VCallAd Control_ID_OptionPago
  loc_9D1911: CVarAd
  loc_9D1915: ParmAry1St
  loc_9D191B: FLdPr Me
  loc_9D191E: VCallAd Control_ID_OptionFepaLine
  loc_9D1921: CVarAd
  loc_9D1925: ParmAry1St
  loc_9D192B: FLdPr Me
  loc_9D192E: VCallAd Control_ID_optTodos
  loc_9D1931: CVarAd
  loc_9D1935: ParmAry1St
  loc_9D193B: FLdPr Me
  loc_9D193E: VCallAd Control_ID_optSinDevolucion
  loc_9D1941: CVarAd
  loc_9D1945: ParmAry1St
  loc_9D194B: FLdPr Me
  loc_9D194E: VCallAd Control_ID_optConDevolucion
  loc_9D1951: CVarAd
  loc_9D1955: ParmAry1St
  loc_9D195B: FLdRfVar var_88
  loc_9D195E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9D1963: FLdRfVar var_88
  loc_9D1966: Erase
  loc_9D1967: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'ACAA00
  'Data Table: 4A3740
  loc_ACA428: LitStr vbNullString
  loc_ACA42B: FLdPr Me
  loc_ACA42E: MemStStrCopy
  loc_ACA432: LitI2_Byte 0
  loc_ACA434: PopTmpLdAd2 var_96
  loc_ACA437: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_ACA43C: FLdPr Me
  loc_ACA43F: MemLdStr global_124
  loc_ACA442: LitStr vbNullString
  loc_ACA445: NeStr
  loc_ACA447: BranchF loc_ACA44D
  loc_ACA44A: Branch loc_ACA974
  loc_ACA44D: LitI2_Byte 0
  loc_ACA44F: PopTmpLdAd2 var_96
  loc_ACA452: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_ACA457: FLdPr Me
  loc_ACA45A: MemLdStr global_124
  loc_ACA45D: LitStr vbNullString
  loc_ACA460: NeStr
  loc_ACA462: BranchF loc_ACA468
  loc_ACA465: Branch loc_ACA974
  loc_ACA468: OnErrorGoto loc_ACA99D
  loc_ACA46B: FLdPr Me
  loc_ACA46E: MemLdI2 bGenerado
  loc_ACA471: BranchF loc_ACA475
  loc_ACA474: ExitProcHresult
  loc_ACA475: LitVarStr var_A8, "Generando reporte..."
  loc_ACA47A: PopAdLdVar
  loc_ACA47B: FLdPr Me
  loc_ACA47E: VCallAd Control_ID_statusBar
  loc_ACA481: FStAdFunc var_BC
  loc_ACA484: FLdPr var_BC
  loc_ACA487: LateIdSt
  loc_ACA48C: FFree1Ad var_BC
  loc_ACA48F: LitI4 &HB
  loc_ACA494: CI2I4
  loc_ACA495: FLdPr Me
  loc_ACA498: Me.MousePointer = from_stack_1
  loc_ACA49D: FLdRfVar var_96
  loc_ACA4A0: FLdPr Me
  loc_ACA4A3: VCallAd Control_ID_OptionPago
  loc_ACA4A6: FStAdFunc var_BC
  loc_ACA4A9: FLdPr var_BC
  loc_ACA4AC:  = Me.Value
  loc_ACA4B1: FLdI2 var_96
  loc_ACA4B4: LitI2_Byte &HFF
  loc_ACA4B6: EqI2
  loc_ACA4B7: FFree1Ad var_BC
  loc_ACA4BA: BranchF loc_ACA4C6
  loc_ACA4BD: LitStr "FechCaja"
  loc_ACA4C0: FStStrCopy var_90
  loc_ACA4C3: Branch loc_ACA4EC
  loc_ACA4C6: FLdRfVar var_96
  loc_ACA4C9: FLdPr Me
  loc_ACA4CC: VCallAd Control_ID_OptionFepaLine
  loc_ACA4CF: FStAdFunc var_BC
  loc_ACA4D2: FLdPr var_BC
  loc_ACA4D5:  = Me.Value
  loc_ACA4DA: FLdI2 var_96
  loc_ACA4DD: LitI2_Byte &HFF
  loc_ACA4DF: EqI2
  loc_ACA4E0: FFree1Ad var_BC
  loc_ACA4E3: BranchF loc_ACA4EC
  loc_ACA4E6: LitStr "Date(FepaLine)"
  loc_ACA4E9: FStStrCopy var_90
  loc_ACA4EC: FLdRfVar var_96
  loc_ACA4EF: FLdPr Me
  loc_ACA4F2: VCallAd Control_ID_optTodos
  loc_ACA4F5: FStAdFunc var_BC
  loc_ACA4F8: FLdPr var_BC
  loc_ACA4FB:  = Me.Value
  loc_ACA500: FLdI2 var_96
  loc_ACA503: LitI2_Byte &HFF
  loc_ACA505: EqI2
  loc_ACA506: FFree1Ad var_BC
  loc_ACA509: BranchF loc_ACA515
  loc_ACA50C: LitStr vbNullString
  loc_ACA50F: FStStrCopy var_94
  loc_ACA512: Branch loc_ACA564
  loc_ACA515: FLdRfVar var_96
  loc_ACA518: FLdPr Me
  loc_ACA51B: VCallAd Control_ID_optSinDevolucion
  loc_ACA51E: FStAdFunc var_BC
  loc_ACA521: FLdPr var_BC
  loc_ACA524:  = Me.Value
  loc_ACA529: FLdI2 var_96
  loc_ACA52C: LitI2_Byte &HFF
  loc_ACA52E: EqI2
  loc_ACA52F: FFree1Ad var_BC
  loc_ACA532: BranchF loc_ACA53E
  loc_ACA535: LitStr " AND lqn.NumeDebi = 0 "
  loc_ACA538: FStStrCopy var_94
  loc_ACA53B: Branch loc_ACA564
  loc_ACA53E: FLdRfVar var_96
  loc_ACA541: FLdPr Me
  loc_ACA544: VCallAd Control_ID_optConDevolucion
  loc_ACA547: FStAdFunc var_BC
  loc_ACA54A: FLdPr var_BC
  loc_ACA54D:  = Me.Value
  loc_ACA552: FLdI2 var_96
  loc_ACA555: LitI2_Byte &HFF
  loc_ACA557: EqI2
  loc_ACA558: FFree1Ad var_BC
  loc_ACA55B: BranchF loc_ACA564
  loc_ACA55E: LitStr " AND lqn.NumeDebi > 0 "
  loc_ACA561: FStStrCopy var_94
  loc_ACA564: FLdPr Me
  loc_ACA567: MemLdRfVar from_stack_1.global_72
  loc_ACA56A: NewIfNullAd
  loc_ACA56D: FStAd var_C0 
  loc_ACA571: FLdPr Me
  loc_ACA574: VCallAd Control_ID_MskDesde
  loc_ACA577: FStAdFunc var_BC
  loc_ACA57A: FLdPr var_BC
  loc_ACA57D: LateIdLdVar var_EC DispID_15 0
  loc_ACA584: PopAd
  loc_ACA586: FLdPr Me
  loc_ACA589: VCallAd Control_ID_MskHasta
  loc_ACA58C: FStAdFunc var_11C
  loc_ACA58F: FLdPr var_11C
  loc_ACA592: LateIdLdVar var_12C DispID_15 0
  loc_ACA599: PopAd
  loc_ACA59B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_ACA59E: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_ACA5A1: ConcatStr
  loc_ACA5A2: FStStrNoPop var_C4
  loc_ACA5A5: LitStr " SELECT lqn.*, IFNULL(ch.CodiBanc,0) CodiBanc"
  loc_ACA5A8: ConcatStr
  loc_ACA5A9: FStStrNoPop var_C8
  loc_ACA5AC: LitStr ", IFNULL(Count(Distinct ch.CodiBanc),0) impura"
  loc_ACA5AF: ConcatStr
  loc_ACA5B0: FStStrNoPop var_CC
  loc_ACA5B3: LitStr " FROM liquidaneto lqn"
  loc_ACA5B6: ConcatStr
  loc_ACA5B7: FStStrNoPop var_D0
  loc_ACA5BA: LitStr " LEFT JOIN cheque ch ON ch.PeriInfo = lqn.PeriInfo AND ch.ExpeImpu = lqn.ExpeImpu AND ch.NumeLiqu = lqn.NumeLiqu AND ch.CucuPers = lqn.CucuPers"
  loc_ACA5BD: ConcatStr
  loc_ACA5BE: FStStrNoPop var_D4
  loc_ACA5C1: LitStr " WHERE "
  loc_ACA5C4: ConcatStr
  loc_ACA5C5: FStStrNoPop var_D8
  loc_ACA5C8: ILdRf var_90
  loc_ACA5CB: ConcatStr
  loc_ACA5CC: FStStrNoPop var_DC
  loc_ACA5CF: LitStr " BETWEEN "
  loc_ACA5D2: ConcatStr
  loc_ACA5D3: FStStrNoPop var_110
  loc_ACA5D6: LitI4 1
  loc_ACA5DB: LitI4 1
  loc_ACA5E0: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_ACA5E5: FStVarCopyObj var_10C
  loc_ACA5E8: FLdRfVar var_10C
  loc_ACA5EB: FLdRfVar var_EC
  loc_ACA5EE: CStrVarTmp
  loc_ACA5EF: CVarStr var_FC
  loc_ACA5F2: ImpAdCallI2 Format$(, )
  loc_ACA5F7: FStStrNoPop var_114
  loc_ACA5FA: ConcatStr
  loc_ACA5FB: FStStrNoPop var_118
  loc_ACA5FE: LitStr " AND "
  loc_ACA601: ConcatStr
  loc_ACA602: FStStrNoPop var_150
  loc_ACA605: LitI4 1
  loc_ACA60A: LitI4 1
  loc_ACA60F: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_ACA614: FStVarCopyObj var_14C
  loc_ACA617: FLdRfVar var_14C
  loc_ACA61A: FLdRfVar var_12C
  loc_ACA61D: CStrVarTmp
  loc_ACA61E: CVarStr var_13C
  loc_ACA621: ImpAdCallI2 Format$(, )
  loc_ACA626: FStStrNoPop var_154
  loc_ACA629: ConcatStr
  loc_ACA62A: FStStrNoPop var_158
  loc_ACA62D: LitStr " AND lqn.CodiRete = "
  loc_ACA630: ConcatStr
  loc_ACA631: FStStrNoPop var_15C
  loc_ACA634: LitI2_Byte 2
  loc_ACA636: CStrI2
  loc_ACA638: FStStrNoPop var_160
  loc_ACA63B: ConcatStr
  loc_ACA63C: FStStrNoPop var_164
  loc_ACA63F: ILdRf var_94
  loc_ACA642: ConcatStr
  loc_ACA643: FStStrNoPop var_168
  loc_ACA646: LitStr " GROUP BY lqn.PeriInfo, lqn.ExpeImpu, lqn.NumeLiqu, lqn.CucuPers;"
  loc_ACA649: ConcatStr
  loc_ACA64A: FStStrNoPop var_16C
  loc_ACA64D: FLdPr var_C0
  loc_ACA650: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_ACA655: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_ACA67C: FFreeAd var_BC = ""
  loc_ACA683: FFreeVar var_EC = "": var_FC = "": var_10C = "": var_12C = "": var_13C = ""
  loc_ACA692: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_ACA695: LitStr " CREATE TEMPORARY TABLE tmovi2"
  loc_ACA698: ConcatStr
  loc_ACA699: FStStrNoPop var_C4
  loc_ACA69C: LitStr " SELECT * FROM tmovi;"
  loc_ACA69F: ConcatStr
  loc_ACA6A0: FStStrNoPop var_C8
  loc_ACA6A3: FLdPr var_C0
  loc_ACA6A6: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_ACA6AB: FFreeStr var_C4 = ""
  loc_ACA6B2: LitStr "SELECT tmovi.*, IFNULL(DetaBanc,'') DetaBanc, DetaProv"
  loc_ACA6B5: LitStr ", IF(DecrPers='','sin registrar',DecrPers) DecrPers, NumeFact, Sum(ImpoImpu) ImpoImpu, BaseEsca"
  loc_ACA6B8: ConcatStr
  loc_ACA6B9: FStStrNoPop var_C4
  loc_ACA6BC: LitStr ", Round((Sum(ImpoImpu)/BaseEsca),2) MontImpo, AlicEsca"
  loc_ACA6BF: ConcatStr
  loc_ACA6C0: FStStrNoPop var_C8
  loc_ACA6C3: LitStr " FROM tmovi"
  loc_ACA6C6: ConcatStr
  loc_ACA6C7: FStStrNoPop var_CC
  loc_ACA6CA: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = tmovi.PeriInfo AND l.ExpeImpu = tmovi.ExpeImpu AND l.NumeLiqu = tmovi.NumeLiqu AND TipoLiqu = 2"
  loc_ACA6CD: ConcatStr
  loc_ACA6CE: FStStrNoPop var_D0
  loc_ACA6D1: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmovi.CucuPers"
  loc_ACA6D4: ConcatStr
  loc_ACA6D5: FStStrNoPop var_D4
  loc_ACA6D8: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = tmovi.CucuPers"
  loc_ACA6DB: ConcatStr
  loc_ACA6DC: FStStrNoPop var_D8
  loc_ACA6DF: LitStr " INNER JOIN escalas ON escalas.PeriInfo = tmovi.PeriInfo AND escalas.FechEsca = tmovi.FechEsca AND escalas.CodiRete = tmovi.CodiRete AND escalas.CodiDere = tmovi.CodiDere AND escalas.CodiEsca = tmovi.CodiEsca"
  loc_ACA6E2: ConcatStr
  loc_ACA6E3: FStStrNoPop var_DC
  loc_ACA6E6: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = tmovi.PeriInfo AND ld.ExpeImpu = tmovi.ExpeImpu AND ld.NumeLiqu = tmovi.NumeLiqu AND ld.CucuPers = tmovi.CucuPers"
  loc_ACA6E9: ConcatStr
  loc_ACA6EA: FStStrNoPop var_110
  loc_ACA6ED: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = tmovi.PeriInfo AND retenciones.CodiRete = tmovi.CodiRete"
  loc_ACA6F0: ConcatStr
  loc_ACA6F1: FStStrNoPop var_114
  loc_ACA6F4: LitStr " LEFT JOIN banco ON banco.PeriInfo = tmovi.PeriInfo AND banco.CodiBanc = tmovi.CodiBanc"
  loc_ACA6F7: ConcatStr
  loc_ACA6F8: FStStrNoPop var_118
  loc_ACA6FB: LitStr " GROUP BY tmovi.PeriInfo, tmovi.ExpeImpu, tmovi.NumeLiqu, tmovi.CucuPers"
  loc_ACA6FE: ConcatStr
  loc_ACA6FF: FStStr var_8C
  loc_ACA702: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_110 = "": var_114 = ""
  loc_ACA719: ILdRf var_8C
  loc_ACA71C: LitStr " UNION ALL "
  loc_ACA71F: ConcatStr
  loc_ACA720: FStStr var_8C
  loc_ACA723: ILdRf var_8C
  loc_ACA726: LitStr "SELECT tmovi2.*, IFNULL(DetaBanc,'') DetaBanc, DetaProv"
  loc_ACA729: ConcatStr
  loc_ACA72A: FStStrNoPop var_C4
  loc_ACA72D: LitStr ", IF(DecrPers='','sin registrar',DecrPers) DecrPers, NumeFact, Sum(LiquImpu) ImpoImpu, BaseEsca"
  loc_ACA730: ConcatStr
  loc_ACA731: FStStrNoPop var_C8
  loc_ACA734: LitStr ", Round((Sum(LiquImpu)/BaseEsca),2) MontImpo, AlicEsca"
  loc_ACA737: ConcatStr
  loc_ACA738: FStStrNoPop var_CC
  loc_ACA73B: LitStr " FROM tmovi2"
  loc_ACA73E: ConcatStr
  loc_ACA73F: FStStrNoPop var_D0
  loc_ACA742: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = tmovi2.PeriInfo AND l.ExpeImpu = tmovi2.ExpeImpu AND l.NumeLiqu = tmovi2.NumeLiqu AND TipoLiqu = 1"
  loc_ACA745: ConcatStr
  loc_ACA746: FStStrNoPop var_D4
  loc_ACA749: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmovi2.CucuPers"
  loc_ACA74C: ConcatStr
  loc_ACA74D: FStStrNoPop var_D8
  loc_ACA750: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = tmovi2.CucuPers"
  loc_ACA753: ConcatStr
  loc_ACA754: FStStrNoPop var_DC
  loc_ACA757: LitStr " INNER JOIN escalas ON escalas.PeriInfo = tmovi2.PeriInfo AND escalas.FechEsca = tmovi2.FechEsca AND escalas.CodiRete = tmovi2.CodiRete AND escalas.CodiDere = tmovi2.CodiDere AND escalas.CodiEsca = tmovi2.CodiEsca"
  loc_ACA75A: ConcatStr
  loc_ACA75B: FStStrNoPop var_110
  loc_ACA75E: LitStr " INNER JOIN imputacion i ON i.PeriInfo = tmovi2.PeriInfo AND i.ExpeImpu = tmovi2.ExpeImpu AND i.NumeLiqu = tmovi2.NumeLiqu AND i.CucuPers = tmovi2.CucuPers AND LiquImpu != 0"
  loc_ACA761: ConcatStr
  loc_ACA762: FStStrNoPop var_114
  loc_ACA765: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = tmovi2.PeriInfo AND retenciones.CodiRete = tmovi2.CodiRete"
  loc_ACA768: ConcatStr
  loc_ACA769: FStStrNoPop var_118
  loc_ACA76C: LitStr " LEFT JOIN banco ON banco.PeriInfo = tmovi2.PeriInfo AND banco.CodiBanc = tmovi2.CodiBanc"
  loc_ACA76F: ConcatStr
  loc_ACA770: FStStrNoPop var_150
  loc_ACA773: LitStr " GROUP BY tmovi2.PeriInfo, tmovi2.ExpeImpu, tmovi2.NumeLiqu, tmovi2.CucuPers"
  loc_ACA776: ConcatStr
  loc_ACA777: FStStr var_8C
  loc_ACA77A: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_110 = "": var_114 = "": var_118 = ""
  loc_ACA793: ILdRf var_8C
  loc_ACA796: LitStr " ORDER BY impura, CodiBanc, CucuPers, ExpeImpu, NumeLiqu"
  loc_ACA799: ConcatStr
  loc_ACA79A: FStStr var_8C
  loc_ACA79D: ILdRf var_8C
  loc_ACA7A0: FLdPr var_C0
  loc_ACA7A3: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_ACA7A8: FLdRfVar var_170
  loc_ACA7AB: FLdPr var_C0
  loc_ACA7AE: from_stack_1 = clsliquidacion.RecordCount
  loc_ACA7B3: ILdRf var_170
  loc_ACA7B6: LitI4 1
  loc_ACA7BB: LtI4
  loc_ACA7BC: BranchF loc_ACA7CF
  loc_ACA7BF: LitI4 0
  loc_ACA7C4: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_ACA7C7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ACA7CC: Branch loc_ACA974
  loc_ACA7CF: LitI4 0
  loc_ACA7D4: LitI4 0
  loc_ACA7D9: FLdPr Me
  loc_ACA7DC: MemLdRfVar from_stack_1.global_100
  loc_ACA7DF: Redim
  loc_ACA7E9: LitI2_Byte 0
  loc_ACA7EB: LitVar_Missing var_EC
  loc_ACA7EE: LitI2_Byte &HFF
  loc_ACA7F0: LitVarI2 var_A8, 0
  loc_ACA7F5: PopAdLdVar
  loc_ACA7F6: FLdPr Me
  loc_ACA7F9: MemLdRfVar from_stack_1.global_116
  loc_ACA7FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACA801: FFree1Var var_EC = ""
  loc_ACA804: LitI2_Byte 0
  loc_ACA806: FLdPr Me
  loc_ACA809: MemStI2 global_104
  loc_ACA80C: LitI2_Byte 0
  loc_ACA80E: FLdPr Me
  loc_ACA811: MemStI2 global_108
  loc_ACA814: FLdPr var_C0
  loc_ACA817: Call clsliquidacion.MoveFirst()
  loc_ACA81C: Call Proc_177_24_A42AC8()
  loc_ACA821: FLdRfVar var_96
  loc_ACA824: FLdPr var_C0
  loc_ACA827: from_stack_1 = clsliquidacion.EOF
  loc_ACA82C: FLdI2 var_96
  loc_ACA82F: NotI4
  loc_ACA830: BranchF loc_ACA913
  loc_ACA833: FLdRfVar var_EC
  loc_ACA836: FLdRfVar var_174
  loc_ACA839: LitVarStr var_A8, "impura"
  loc_ACA83E: PopAdLdVar
  loc_ACA83F: FLdRfVar var_11C
  loc_ACA842: FLdRfVar var_BC
  loc_ACA845: FLdPr var_C0
  loc_ACA848: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_ACA84D: FLdPr var_BC
  loc_ACA850:  = Me.Fields
  loc_ACA855: FLdPr var_11C
  loc_ACA858: from_stack_2 = Me.Item(from_stack_1)
  loc_ACA85D: FLdPr var_174
  loc_ACA860:  = Me.Value
  loc_ACA865: FLdRfVar var_EC
  loc_ACA868: LitVarI2 var_B8, 1
  loc_ACA86D: HardType
  loc_ACA86E: EqVarBool
  loc_ACA870: FFreeAd var_BC = "": var_11C = ""
  loc_ACA879: FFree1Var var_EC = ""
  loc_ACA87C: BranchF loc_ACA8EA
  loc_ACA87F: FLdRfVar var_EC
  loc_ACA882: FLdRfVar var_174
  loc_ACA885: LitVarStr var_A8, "CodiBanc"
  loc_ACA88A: PopAdLdVar
  loc_ACA88B: FLdRfVar var_11C
  loc_ACA88E: FLdRfVar var_BC
  loc_ACA891: FLdPr var_C0
  loc_ACA894: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_ACA899: FLdPr var_BC
  loc_ACA89C:  = Me.Fields
  loc_ACA8A1: FLdPr var_11C
  loc_ACA8A4: from_stack_2 = Me.Item(from_stack_1)
  loc_ACA8A9: FLdPr var_174
  loc_ACA8AC:  = Me.Value
  loc_ACA8B1: FLdRfVar var_EC
  loc_ACA8B4: FLdPr Me
  loc_ACA8B7: MemLdI2 global_104
  loc_ACA8BA: CI4UI1
  loc_ACA8BB: FLdPr Me
  loc_ACA8BE: MemLdStr global_100
  loc_ACA8C1: Ary1LdPr
  loc_ACA8C2: MemLdStr global_0
  loc_ACA8C5: CVarStr var_B8
  loc_ACA8C8: HardType
  loc_ACA8C9: NeVarBool
  loc_ACA8CB: FFreeAd var_BC = "": var_11C = ""
  loc_ACA8D4: FFree1Var var_EC = ""
  loc_ACA8D7: BranchF loc_ACA8E2
  loc_ACA8DA: Call Proc_177_24_A42AC8()
  loc_ACA8DF: Branch loc_ACA8E7
  loc_ACA8E2: Call Proc_177_25_AEFD88()
  loc_ACA8E7: Branch loc_ACA910
  loc_ACA8EA: FLdPr Me
  loc_ACA8ED: MemLdI2 global_104
  loc_ACA8F0: CI4UI1
  loc_ACA8F1: FLdPr Me
  loc_ACA8F4: MemLdStr global_100
  loc_ACA8F7: Ary1LdPr
  loc_ACA8F8: MemLdStr global_0
  loc_ACA8FB: LitStr vbNullString
  loc_ACA8FE: NeStr
  loc_ACA900: BranchF loc_ACA90B
  loc_ACA903: Call Proc_177_24_A42AC8()
  loc_ACA908: Branch loc_ACA910
  loc_ACA90B: Call Proc_177_25_AEFD88()
  loc_ACA910: Branch loc_ACA821
  loc_ACA913: LitNothing
  loc_ACA915: FStAd var_C0 
  loc_ACA919: LitI2_Byte 1
  loc_ACA91B: FLdPr Me
  loc_ACA91E: MemLdRfVar from_stack_1.global_104
  loc_ACA921: FLdPr Me
  loc_ACA924: MemLdStr global_100
  loc_ACA927: LitI2_Byte 1
  loc_ACA929: FnUBound
  loc_ACA92B: CI2I4
  loc_ACA92C: ForI2 var_178
  loc_ACA932: LitI2_Byte 0
  loc_ACA934: FLdPr Me
  loc_ACA937: MemLdRfVar from_stack_1.global_116
  loc_ACA93A: CVarRef
  loc_ACA93F: LitI2_Byte &HFF
  loc_ACA941: FLdPr Me
  loc_ACA944: MemLdI2 global_104
  loc_ACA947: CI4UI1
  loc_ACA948: FLdPr Me
  loc_ACA94B: MemLdStr global_100
  loc_ACA94E: Ary1LdPr
  loc_ACA94F: MemLdStr global_12
  loc_ACA952: CVarStr var_A8
  loc_ACA955: PopAdLdVar
  loc_ACA956: FLdPr Me
  loc_ACA959: MemLdRfVar from_stack_1.global_120
  loc_ACA95C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_ACA961: FLdPr Me
  loc_ACA964: MemLdRfVar from_stack_1.global_104
  loc_ACA967: NextI2 var_178, loc_ACA932
  loc_ACA96C: LitI2_Byte &HFF
  loc_ACA96E: FLdPr Me
  loc_ACA971: MemStI2 bGenerado
  loc_ACA974: LitI4 0
  loc_ACA979: CI2I4
  loc_ACA97A: FLdPr Me
  loc_ACA97D: Me.MousePointer = from_stack_1
  loc_ACA982: LitVarStr var_A8, vbNullString
  loc_ACA987: PopAdLdVar
  loc_ACA988: FLdPr Me
  loc_ACA98B: VCallAd Control_ID_statusBar
  loc_ACA98E: FStAdFunc var_BC
  loc_ACA991: FLdPr var_BC
  loc_ACA994: LateIdSt
  loc_ACA999: FFree1Ad var_BC
  loc_ACA99C: ExitProcHresult
  loc_ACA99D: LitI4 0
  loc_ACA9A2: LitStr "Error "
  loc_ACA9A5: FLdRfVar var_170
  loc_ACA9A8: ImpAdCallI2 Err 'rtcErrObj
  loc_ACA9AD: FStAdFunc var_BC
  loc_ACA9B0: FLdPr var_BC
  loc_ACA9B3:  = Err.Number
  loc_ACA9B8: ILdRf var_170
  loc_ACA9BB: CStrI4
  loc_ACA9BD: FStStrNoPop var_C4
  loc_ACA9C0: ConcatStr
  loc_ACA9C1: FStStrNoPop var_C8
  loc_ACA9C4: LitStr ": "
  loc_ACA9C7: ConcatStr
  loc_ACA9C8: FStStrNoPop var_D0
  loc_ACA9CB: FLdRfVar var_CC
  loc_ACA9CE: ImpAdCallI2 Err 'rtcErrObj
  loc_ACA9D3: FStAdFunc var_11C
  loc_ACA9D6: FLdPr var_11C
  loc_ACA9D9:  = Err.Description
  loc_ACA9DE: ILdRf var_CC
  loc_ACA9E1: ConcatStr
  loc_ACA9E2: FStStrNoPop var_D4
  loc_ACA9E5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_ACA9EA: FFreeStr var_C4 = "": var_C8 = "": var_D0 = "": var_CC = ""
  loc_ACA9F7: FFreeAd var_BC = ""
  loc_ACA9FE: ExitProcHresult
  loc_ACA9FF: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A3B254
  'Data Table: 4A3740
  loc_A3B088: FLdRfVar var_88
  loc_A3B08B: LitI2_Byte 0
  loc_A3B08D: LitI2_Byte &HFF
  loc_A3B08F: ImpAdLdI4 MemVar_C3D05C
  loc_A3B092: FLdPr Me
  loc_A3B095: MemLdRfVar from_stack_1.global_80
  loc_A3B098: NewIfNullPr IFileSystem3
  loc_A3B09B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A3B0A0: ILdRf var_88
  loc_A3B0A3: FLdPr Me
  loc_A3B0A6: MemStVarAd
  loc_A3B0AA: FFree1Ad var_88
  loc_A3B0AD: LitI2_Byte 1
  loc_A3B0AF: FLdPr Me
  loc_A3B0B2: MemLdRfVar from_stack_1.global_104
  loc_A3B0B5: FLdPr Me
  loc_A3B0B8: MemLdStr global_100
  loc_A3B0BB: LitI2_Byte 1
  loc_A3B0BD: FnUBound
  loc_A3B0BF: CI2I4
  loc_A3B0C0: ForI2 var_8C
  loc_A3B0C6: LitI2_Byte 1
  loc_A3B0C8: FLdPr Me
  loc_A3B0CB: MemLdRfVar from_stack_1.global_106
  loc_A3B0CE: FLdPr Me
  loc_A3B0D1: MemLdI2 global_104
  loc_A3B0D4: CI4UI1
  loc_A3B0D5: FLdPr Me
  loc_A3B0D8: MemLdStr global_100
  loc_A3B0DB: Ary1LdPr
  loc_A3B0DC: MemLdStr global_8
  loc_A3B0DF: LitI2_Byte 1
  loc_A3B0E1: FnUBound
  loc_A3B0E3: CI2I4
  loc_A3B0E4: ForI2 var_90
  loc_A3B0EA: FLdPr Me
  loc_A3B0ED: MemLdI2 global_106
  loc_A3B0F0: CI4UI1
  loc_A3B0F1: FLdPr Me
  loc_A3B0F4: MemLdI2 global_104
  loc_A3B0F7: CI4UI1
  loc_A3B0F8: FLdPr Me
  loc_A3B0FB: MemLdStr global_100
  loc_A3B0FE: AryLock
  loc_A3B101: Ary1LdPr
  loc_A3B102: MemLdStr global_8
  loc_A3B105: AryLock
  loc_A3B108: Ary1LdRf
  loc_A3B109: FStR4 var_9C
  loc_A3B10C: LitStr "01"
  loc_A3B10F: FMemLdRf unk_4A36A5
  loc_A3B114: LdFixedStr
  loc_A3B117: FStStrNoPop var_A0
  loc_A3B11A: ConcatStr
  loc_A3B11B: FStStrNoPop var_A4
  loc_A3B11E: FMemLdRf unk_4A36A5
  loc_A3B123: LdFixedStr
  loc_A3B126: FStStrNoPop var_A8
  loc_A3B129: ConcatStr
  loc_A3B12A: FStStrNoPop var_AC
  loc_A3B12D: FMemLdRf unk_4A36A5
  loc_A3B132: LdFixedStr
  loc_A3B135: FStStrNoPop var_B0
  loc_A3B138: ConcatStr
  loc_A3B139: FStStrNoPop var_B4
  loc_A3B13C: LitStr "0217"
  loc_A3B13F: ConcatStr
  loc_A3B140: FStStrNoPop var_B8
  loc_A3B143: LitStr "07"
  loc_A3B146: ConcatStr
  loc_A3B147: FStStrNoPop var_BC
  loc_A3B14A: LitStr "8"
  loc_A3B14D: ConcatStr
  loc_A3B14E: FStStrNoPop var_C0
  loc_A3B151: LitStr "1"
  loc_A3B154: ConcatStr
  loc_A3B155: FStStrNoPop var_C4
  loc_A3B158: FMemLdRf unk_4A36A5
  loc_A3B15D: LdFixedStr
  loc_A3B160: FStStrNoPop var_C8
  loc_A3B163: ConcatStr
  loc_A3B164: FStStrNoPop var_CC
  loc_A3B167: FMemLdRf unk_4A36A5
  loc_A3B16C: LdFixedStr
  loc_A3B16F: FStStrNoPop var_D0
  loc_A3B172: ConcatStr
  loc_A3B173: FStStrNoPop var_D4
  loc_A3B176: LitStr "01"
  loc_A3B179: ConcatStr
  loc_A3B17A: FStStrNoPop var_D8
  loc_A3B17D: LitStr "0"
  loc_A3B180: ConcatStr
  loc_A3B181: FStStrNoPop var_DC
  loc_A3B184: FMemLdRf unk_4A36A5
  loc_A3B189: LdFixedStr
  loc_A3B18C: FStStrNoPop var_E0
  loc_A3B18F: ConcatStr
  loc_A3B190: FStStrNoPop var_E4
  loc_A3B193: LitStr "  0,00"
  loc_A3B196: ConcatStr
  loc_A3B197: FStStrNoPop var_E8
  loc_A3B19A: LitStr "          "
  loc_A3B19D: ConcatStr
  loc_A3B19E: FStStrNoPop var_EC
  loc_A3B1A1: FMemLdRf unk_4A36A5
  loc_A3B1A6: LdFixedStr
  loc_A3B1A9: FStStrNoPop var_F0
  loc_A3B1AC: ConcatStr
  loc_A3B1AD: FStStrNoPop var_F4
  loc_A3B1B0: FMemLdRf unk_4A36A5
  loc_A3B1B5: LdFixedStr
  loc_A3B1B8: FStStrNoPop var_F8
  loc_A3B1BB: ConcatStr
  loc_A3B1BC: FStStrNoPop var_FC
  loc_A3B1BF: LitStr "         "
  loc_A3B1C2: ConcatStr
  loc_A3B1C3: FStStrNoPop var_100
  loc_A3B1C6: FMemLdRf unk_4A36A5
  loc_A3B1CB: LdFixedStr
  loc_A3B1CE: FStStrNoPop var_104
  loc_A3B1D1: ConcatStr
  loc_A3B1D2: CVarStr var_114
  loc_A3B1D5: PopAdLdVar
  loc_A3B1D6: FLdPr Me
  loc_A3B1D9: MemLdRfVar from_stack_1.global_84
  loc_A3B1DC: LdPrVar
  loc_A3B1DE: LateMemCall
  loc_A3B1E4: FFreeStr var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_A3B21B: FFree1Var var_114 = ""
  loc_A3B21E: LitI4 0
  loc_A3B223: FStR4 var_9C
  loc_A3B226: AryUnlock
  loc_A3B229: AryUnlock
  loc_A3B22C: FLdPr Me
  loc_A3B22F: MemLdRfVar from_stack_1.global_106
  loc_A3B232: NextI2 var_90, loc_A3B0EA
  loc_A3B237: FLdPr Me
  loc_A3B23A: MemLdRfVar from_stack_1.global_104
  loc_A3B23D: NextI2 var_8C, loc_A3B0C6
  loc_A3B242: FLdPr Me
  loc_A3B245: MemLdRfVar from_stack_1.global_84
  loc_A3B248: LdPrVar
  loc_A3B24A: LateMemCall
  loc_A3B250: ExitProcHresult
  loc_A3B251: FLdPr var_1B0
End Sub

Public Sub GeneraHTML() 'ABD4DC
  'Data Table: 4A3740
  loc_ABCF44: FLdRfVar var_88
  loc_ABCF47: LitI2_Byte 0
  loc_ABCF49: LitI2_Byte &HFF
  loc_ABCF4B: ImpAdLdI4 MemVar_C3D83C
  loc_ABCF4E: FLdPr Me
  loc_ABCF51: MemLdRfVar from_stack_1.global_80
  loc_ABCF54: NewIfNullPr IFileSystem3
  loc_ABCF57: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ABCF5C: ILdRf var_88
  loc_ABCF5F: FLdPr Me
  loc_ABCF62: MemStVarAd
  loc_ABCF66: FFree1Ad var_88
  loc_ABCF69: Call Proc_177_26_AA7884()
  loc_ABCF6E: LitI2_Byte 1
  loc_ABCF70: FLdPr Me
  loc_ABCF73: MemLdRfVar from_stack_1.global_104
  loc_ABCF76: FLdPr Me
  loc_ABCF79: MemLdStr global_100
  loc_ABCF7C: LitI2_Byte 1
  loc_ABCF7E: FnUBound
  loc_ABCF80: CI2I4
  loc_ABCF81: ForI2 var_8C
  loc_ABCF87: FLdPr Me
  loc_ABCF8A: MemLdI2 global_104
  loc_ABCF8D: CI4UI1
  loc_ABCF8E: FLdPr Me
  loc_ABCF91: MemLdStr global_100
  loc_ABCF94: AryLock
  loc_ABCF97: Ary1LdRf
  loc_ABCF98: FStR4 var_94
  loc_ABCF9B: LitVarStr var_A4, "  <tr class=""Encabezado2"">"
  loc_ABCFA0: PopAdLdVar
  loc_ABCFA1: FLdPr Me
  loc_ABCFA4: MemLdRfVar from_stack_1.htmFile
  loc_ABCFA7: LdPrVar
  loc_ABCFA9: LateMemCall
  loc_ABCFAF: LitStr "   <td align=""left"" colspan=""9"">"
  loc_ABCFB2: FMemLdR4 var_94(0)
  loc_ABCFB7: ConcatStr
  loc_ABCFB8: CVarStr var_104
  loc_ABCFBB: LitVarStr var_D4, vbNullString
  loc_ABCFC0: FStVarCopyObj var_E4
  loc_ABCFC3: FLdRfVar var_E4
  loc_ABCFC6: LitVarStr var_B4, " - "
  loc_ABCFCB: FStVarCopyObj var_C4
  loc_ABCFCE: FLdRfVar var_C4
  loc_ABCFD1: FMemLdR4 var_94(0)
  loc_ABCFD6: LitStr vbNullString
  loc_ABCFD9: NeStr
  loc_ABCFDB: CVarBoolI2 var_A4
  loc_ABCFDF: FLdRfVar var_F4
  loc_ABCFE2: ImpAdCallFPR4  = IIf(, , )
  loc_ABCFE7: FLdRfVar var_F4
  loc_ABCFEA: ConcatVar var_114
  loc_ABCFEE: FMemLdR4 var_94(4)
  loc_ABCFF3: CVarStr var_124
  loc_ABCFF6: ConcatVar var_134
  loc_ABCFFA: LitVarStr var_144, "</td>"
  loc_ABCFFF: ConcatVar var_154
  loc_ABD003: PopAdLdVar
  loc_ABD004: FLdPr Me
  loc_ABD007: MemLdRfVar from_stack_1.htmFile
  loc_ABD00A: LdPrVar
  loc_ABD00C: LateMemCall
  loc_ABD012: FFreeVar var_A4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_F4 = "": var_114 = "": var_134 = ""
  loc_ABD025: LitI4 0
  loc_ABD02A: LitStr "Totales"
  loc_ABD02D: LitI2_Byte 0
  loc_ABD02F: LitStr "right"
  loc_ABD032: FMemLdR4 var_94(12)
  loc_ABD037: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD03C: CVarStr var_C4
  loc_ABD03F: PopAdLdVar
  loc_ABD040: FLdPr Me
  loc_ABD043: MemLdRfVar from_stack_1.htmFile
  loc_ABD046: LdPrVar
  loc_ABD048: LateMemCall
  loc_ABD04E: FFree1Var var_C4 = ""
  loc_ABD051: LitVarStr var_A4, "     </tr>"
  loc_ABD056: PopAdLdVar
  loc_ABD057: FLdPr Me
  loc_ABD05A: MemLdRfVar from_stack_1.htmFile
  loc_ABD05D: LdPrVar
  loc_ABD05F: LateMemCall
  loc_ABD065: LitI2_Byte 1
  loc_ABD067: FLdPr Me
  loc_ABD06A: MemLdRfVar from_stack_1.global_106
  loc_ABD06D: FMemLdR4 var_94(8)
  loc_ABD072: LitI2_Byte 1
  loc_ABD074: FnUBound
  loc_ABD076: CI2I4
  loc_ABD077: ForI2 var_168
  loc_ABD07D: FLdPr Me
  loc_ABD080: MemLdI2 global_106
  loc_ABD083: CI4UI1
  loc_ABD084: FMemLdR4 var_94(8)
  loc_ABD089: AryLock
  loc_ABD08C: Ary1LdRf
  loc_ABD08D: FStR4 var_170
  loc_ABD090: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ABD095: PopAdLdVar
  loc_ABD096: FLdPr Me
  loc_ABD099: MemLdRfVar from_stack_1.htmFile
  loc_ABD09C: LdPrVar
  loc_ABD09E: LateMemCall
  loc_ABD0A4: FMemLdRf ext_4010A8
  loc_ABD0A9: LdFixedStr
  loc_ABD0AC: PopTmpLdAdStr
  loc_ABD0B0: CVarRef
  loc_ABD0B5: FLdRfVar var_C4
  loc_ABD0B8: ImpAdCallFPR4  = Trim()
  loc_ABD0BD: ILdRf var_178
  loc_ABD0C0: FMemLdRf ext_4010A8
  loc_ABD0C5: StFixedStr
  loc_ABD0C8: LitI4 0
  loc_ABD0CD: LitI4 0
  loc_ABD0D2: LitI2_Byte 0
  loc_ABD0D4: LitStr "left"
  loc_ABD0D7: FMemLdRf ext_4010A8
  loc_ABD0DC: LdFixedStr
  loc_ABD0DF: FStStrNoPop var_174
  loc_ABD0E2: LitStr " ("
  loc_ABD0E5: ConcatStr
  loc_ABD0E6: CVarStr var_E4
  loc_ABD0E9: FLdRfVar var_C4
  loc_ABD0EC: ConcatVar var_F4
  loc_ABD0F0: LitVarStr var_B4, ")"
  loc_ABD0F5: ConcatVar var_104
  loc_ABD0F9: CStrVarVal var_17C
  loc_ABD0FD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD102: CVarStr var_114
  loc_ABD105: PopAdLdVar
  loc_ABD106: FLdPr Me
  loc_ABD109: MemLdRfVar from_stack_1.htmFile
  loc_ABD10C: LdPrVar
  loc_ABD10E: LateMemCall
  loc_ABD114: FFreeStr var_174 = "": var_178 = ""
  loc_ABD11D: FFreeVar var_E4 = "": var_C4 = "": var_F4 = "": var_104 = ""
  loc_ABD12A: LitI4 0
  loc_ABD12F: LitI4 0
  loc_ABD134: LitI2_Byte 0
  loc_ABD136: LitStr "center"
  loc_ABD139: FMemLdRf ext_4010A8
  loc_ABD13E: LdFixedStr
  loc_ABD141: FStStrNoPop var_174
  loc_ABD144: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD149: FStStr var_178
  loc_ABD14C: ILdRf var_174
  loc_ABD14F: FMemLdRf ext_4010A8
  loc_ABD154: StFixedStr
  loc_ABD157: FLdZeroAd var_178
  loc_ABD15A: CVarStr var_C4
  loc_ABD15D: PopAdLdVar
  loc_ABD15E: FLdPr Me
  loc_ABD161: MemLdRfVar from_stack_1.htmFile
  loc_ABD164: LdPrVar
  loc_ABD166: LateMemCall
  loc_ABD16C: FFree1Str var_174
  loc_ABD16F: FFree1Var var_C4 = ""
  loc_ABD172: FMemLdR4 var_170(236)
  loc_ABD177: ImpAdCallI2 Trim$()
  loc_ABD17C: FStStr var_178
  loc_ABD17F: LitI4 0
  loc_ABD184: LitI4 0
  loc_ABD189: LitI2_Byte 0
  loc_ABD18B: LitStr "left"
  loc_ABD18E: FLdZeroAd var_178
  loc_ABD191: FStStrNoPop var_174
  loc_ABD194: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD199: CVarStr var_C4
  loc_ABD19C: PopAdLdVar
  loc_ABD19D: FLdPr Me
  loc_ABD1A0: MemLdRfVar from_stack_1.htmFile
  loc_ABD1A3: LdPrVar
  loc_ABD1A5: LateMemCall
  loc_ABD1AB: FFreeStr var_174 = ""
  loc_ABD1B2: FFree1Var var_C4 = ""
  loc_ABD1B5: FMemLdR4 var_170(240)
  loc_ABD1BA: ImpAdCallI2 Trim$()
  loc_ABD1BF: FStStr var_178
  loc_ABD1C2: LitI4 0
  loc_ABD1C7: LitI4 0
  loc_ABD1CC: LitI2_Byte 0
  loc_ABD1CE: LitStr "left"
  loc_ABD1D1: FLdZeroAd var_178
  loc_ABD1D4: FStStrNoPop var_174
  loc_ABD1D7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD1DC: CVarStr var_C4
  loc_ABD1DF: PopAdLdVar
  loc_ABD1E0: FLdPr Me
  loc_ABD1E3: MemLdRfVar from_stack_1.htmFile
  loc_ABD1E6: LdPrVar
  loc_ABD1E8: LateMemCall
  loc_ABD1EE: FFreeStr var_174 = ""
  loc_ABD1F5: FFree1Var var_C4 = ""
  loc_ABD1F8: LitI4 0
  loc_ABD1FD: LitI4 0
  loc_ABD202: LitI2_Byte 0
  loc_ABD204: LitStr "center"
  loc_ABD207: FMemLdRf ext_4010A8
  loc_ABD20C: LdFixedStr
  loc_ABD20F: FStStrNoPop var_174
  loc_ABD212: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD217: FStStr var_178
  loc_ABD21A: ILdRf var_174
  loc_ABD21D: FMemLdRf ext_4010A8
  loc_ABD222: StFixedStr
  loc_ABD225: FLdZeroAd var_178
  loc_ABD228: CVarStr var_C4
  loc_ABD22B: PopAdLdVar
  loc_ABD22C: FLdPr Me
  loc_ABD22F: MemLdRfVar from_stack_1.htmFile
  loc_ABD232: LdPrVar
  loc_ABD234: LateMemCall
  loc_ABD23A: FFree1Str var_174
  loc_ABD23D: FFree1Var var_C4 = ""
  loc_ABD240: LitI4 0
  loc_ABD245: LitI4 0
  loc_ABD24A: LitI2_Byte 0
  loc_ABD24C: LitStr "center"
  loc_ABD24F: FMemLdR4 var_170(244)
  loc_ABD254: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD259: CVarStr var_C4
  loc_ABD25C: PopAdLdVar
  loc_ABD25D: FLdPr Me
  loc_ABD260: MemLdRfVar from_stack_1.htmFile
  loc_ABD263: LdPrVar
  loc_ABD265: LateMemCall
  loc_ABD26B: FFree1Var var_C4 = ""
  loc_ABD26E: LitI4 0
  loc_ABD273: LitI4 0
  loc_ABD278: LitI2_Byte 0
  loc_ABD27A: LitStr "right"
  loc_ABD27D: FMemLdRf ext_4010A8
  loc_ABD282: LdFixedStr
  loc_ABD285: FStStrNoPop var_174
  loc_ABD288: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD28D: FStStr var_178
  loc_ABD290: ILdRf var_174
  loc_ABD293: FMemLdRf ext_4010A8
  loc_ABD298: StFixedStr
  loc_ABD29B: FLdZeroAd var_178
  loc_ABD29E: CVarStr var_C4
  loc_ABD2A1: PopAdLdVar
  loc_ABD2A2: FLdPr Me
  loc_ABD2A5: MemLdRfVar from_stack_1.htmFile
  loc_ABD2A8: LdPrVar
  loc_ABD2AA: LateMemCall
  loc_ABD2B0: FFree1Str var_174
  loc_ABD2B3: FFree1Var var_C4 = ""
  loc_ABD2B6: FMemLdRf ext_4010A8
  loc_ABD2BB: LdFixedStr
  loc_ABD2BE: FStStrNoPop var_174
  loc_ABD2C1: ImpAdCallI2 Proc_261_59_995350()
  loc_ABD2C6: FStStr var_178
  loc_ABD2C9: ILdRf var_174
  loc_ABD2CC: FMemLdRf ext_4010A8
  loc_ABD2D1: StFixedStr
  loc_ABD2D4: LitI4 -1
  loc_ABD2D9: LitI4 0
  loc_ABD2DE: LitI4 -1
  loc_ABD2E3: LitI4 2
  loc_ABD2E8: FLdZeroAd var_178
  loc_ABD2EB: CVarStr var_C4
  loc_ABD2EE: ImpAdCallI2 FormatNumber(, , , , )
  loc_ABD2F3: FStStr var_180
  loc_ABD2F6: LitI4 0
  loc_ABD2FB: LitI4 0
  loc_ABD300: LitI2_Byte 0
  loc_ABD302: LitStr "right"
  loc_ABD305: FLdZeroAd var_180
  loc_ABD308: FStStrNoPop var_17C
  loc_ABD30B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD310: CVarStr var_E4
  loc_ABD313: PopAdLdVar
  loc_ABD314: FLdPr Me
  loc_ABD317: MemLdRfVar from_stack_1.htmFile
  loc_ABD31A: LdPrVar
  loc_ABD31C: LateMemCall
  loc_ABD322: FFreeStr var_174 = "": var_17C = ""
  loc_ABD32B: FFreeVar var_C4 = ""
  loc_ABD332: LitI4 0
  loc_ABD337: LitI4 0
  loc_ABD33C: LitI2_Byte 0
  loc_ABD33E: LitStr "right"
  loc_ABD341: FMemLdRf ext_4010A8
  loc_ABD346: LdFixedStr
  loc_ABD349: FStStrNoPop var_174
  loc_ABD34C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD351: FStStr var_178
  loc_ABD354: ILdRf var_174
  loc_ABD357: FMemLdRf ext_4010A8
  loc_ABD35C: StFixedStr
  loc_ABD35F: FLdZeroAd var_178
  loc_ABD362: CVarStr var_C4
  loc_ABD365: PopAdLdVar
  loc_ABD366: FLdPr Me
  loc_ABD369: MemLdRfVar from_stack_1.htmFile
  loc_ABD36C: LdPrVar
  loc_ABD36E: LateMemCall
  loc_ABD374: FFree1Str var_174
  loc_ABD377: FFree1Var var_C4 = ""
  loc_ABD37A: FMemLdRf ext_4010A8
  loc_ABD37F: LdFixedStr
  loc_ABD382: FStStrNoPop var_174
  loc_ABD385: ImpAdCallI2 Proc_261_59_995350()
  loc_ABD38A: FStStr var_178
  loc_ABD38D: ILdRf var_174
  loc_ABD390: FMemLdRf ext_4010A8
  loc_ABD395: StFixedStr
  loc_ABD398: LitI4 -1
  loc_ABD39D: LitI4 0
  loc_ABD3A2: LitI4 -1
  loc_ABD3A7: LitI4 2
  loc_ABD3AC: FLdZeroAd var_178
  loc_ABD3AF: CVarStr var_C4
  loc_ABD3B2: ImpAdCallI2 FormatNumber(, , , , )
  loc_ABD3B7: FStStr var_180
  loc_ABD3BA: LitI4 0
  loc_ABD3BF: LitI4 0
  loc_ABD3C4: LitI2_Byte 0
  loc_ABD3C6: LitStr "right"
  loc_ABD3C9: FLdZeroAd var_180
  loc_ABD3CC: FStStrNoPop var_17C
  loc_ABD3CF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABD3D4: CVarStr var_E4
  loc_ABD3D7: PopAdLdVar
  loc_ABD3D8: FLdPr Me
  loc_ABD3DB: MemLdRfVar from_stack_1.htmFile
  loc_ABD3DE: LdPrVar
  loc_ABD3E0: LateMemCall
  loc_ABD3E6: FFreeStr var_174 = "": var_17C = ""
  loc_ABD3EF: FFreeVar var_C4 = ""
  loc_ABD3F6: LitI4 0
  loc_ABD3FB: FStR4 var_170
  loc_ABD3FE: AryUnlock
  loc_ABD401: FLdPr Me
  loc_ABD404: MemLdRfVar from_stack_1.global_106
  loc_ABD407: NextI2 var_168, loc_ABD07D
  loc_ABD40C: LitI4 0
  loc_ABD411: FStR4 var_94
  loc_ABD414: AryUnlock
  loc_ABD417: FLdPr Me
  loc_ABD41A: MemLdRfVar from_stack_1.global_104
  loc_ABD41D: NextI2 var_8C, loc_ABCF87
  loc_ABD422: LitVarStr var_A4, "</table>"
  loc_ABD427: PopAdLdVar
  loc_ABD428: FLdPr Me
  loc_ABD42B: MemLdRfVar from_stack_1.htmFile
  loc_ABD42E: LdPrVar
  loc_ABD430: LateMemCall
  loc_ABD436: LitVarStr var_A4, "<br>"
  loc_ABD43B: PopAdLdVar
  loc_ABD43C: FLdPr Me
  loc_ABD43F: MemLdRfVar from_stack_1.htmFile
  loc_ABD442: LdPrVar
  loc_ABD444: LateMemCall
  loc_ABD44A: LitVarStr var_A4, "<table align=""center"">"
  loc_ABD44F: PopAdLdVar
  loc_ABD450: FLdPr Me
  loc_ABD453: MemLdRfVar from_stack_1.htmFile
  loc_ABD456: LdPrVar
  loc_ABD458: LateMemCall
  loc_ABD45E: LitVarStr var_A4, "<tr>"
  loc_ABD463: PopAdLdVar
  loc_ABD464: FLdPr Me
  loc_ABD467: MemLdRfVar from_stack_1.htmFile
  loc_ABD46A: LdPrVar
  loc_ABD46C: LateMemCall
  loc_ABD472: LitVarStr var_A4, "<th align=""right"" class=""Normal"">Monto total retenido: </th>"
  loc_ABD477: PopAdLdVar
  loc_ABD478: FLdPr Me
  loc_ABD47B: MemLdRfVar from_stack_1.htmFile
  loc_ABD47E: LdPrVar
  loc_ABD480: LateMemCall
  loc_ABD486: LitStr "<th align=""left"" class=""Totales"">"
  loc_ABD489: FLdPr Me
  loc_ABD48C: MemLdStr global_116
  loc_ABD48F: ConcatStr
  loc_ABD490: FStStrNoPop var_174
  loc_ABD493: LitStr "</th>"
  loc_ABD496: ConcatStr
  loc_ABD497: CVarStr var_C4
  loc_ABD49A: PopAdLdVar
  loc_ABD49B: FLdPr Me
  loc_ABD49E: MemLdRfVar from_stack_1.htmFile
  loc_ABD4A1: LdPrVar
  loc_ABD4A3: LateMemCall
  loc_ABD4A9: FFree1Str var_174
  loc_ABD4AC: FFree1Var var_C4 = ""
  loc_ABD4AF: LitVarStr var_A4, "</tr>"
  loc_ABD4B4: PopAdLdVar
  loc_ABD4B5: FLdPr Me
  loc_ABD4B8: MemLdRfVar from_stack_1.htmFile
  loc_ABD4BB: LdPrVar
  loc_ABD4BD: LateMemCall
  loc_ABD4C3: Call Proc_177_27_981EB0()
  loc_ABD4C8: FLdPr Me
  loc_ABD4CB: MemLdRfVar from_stack_1.htmFile
  loc_ABD4CE: LdPrVar
  loc_ABD4D0: LateMemCall
  loc_ABD4D6: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ABD4DB: ExitProcHresult
End Sub

Private Function Proc_177_23_94FE30() '94FE30
  'Data Table: 4A3740
  loc_94FE1C: FLdPr Me
  loc_94FE1F: VCallAd Control_ID_MskDesde
  loc_94FE22: CVarAd
  loc_94FE26: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FE2B: FFree1Var var_94 = ""
  loc_94FE2E: ExitProcHresult
End Function

Private Function Proc_177_24_A42AC8() 'A42AC8
  'Data Table: 4A3740
  loc_A42868: FLdPr Me
  loc_A4286B: MemLdI2 global_104
  loc_A4286E: LitI2_Byte 1
  loc_A42870: AddI2
  loc_A42871: FLdPr Me
  loc_A42874: MemStI2 global_104
  loc_A42877: LitI2_Byte 0
  loc_A42879: FLdPr Me
  loc_A4287C: MemStI2 global_106
  loc_A4287F: LitI4 0
  loc_A42884: FLdPr Me
  loc_A42887: MemLdI2 global_104
  loc_A4288A: CI4UI1
  loc_A4288B: FLdPr Me
  loc_A4288E: MemLdRfVar from_stack_1.global_100
  loc_A42891: RedimPreserve
  loc_A4289B: FLdRfVar var_B0
  loc_A4289E: FLdRfVar var_A0
  loc_A428A1: LitVarStr var_9C, "impura"
  loc_A428A6: PopAdLdVar
  loc_A428A7: FLdRfVar var_8C
  loc_A428AA: FLdRfVar var_88
  loc_A428AD: FLdPr Me
  loc_A428B0: MemLdRfVar from_stack_1.global_72
  loc_A428B3: NewIfNullPr clsliquidacion
  loc_A428B6: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_A428BB: FLdPr var_88
  loc_A428BE:  = Me.Fields
  loc_A428C3: FLdPr var_8C
  loc_A428C6: from_stack_2 = Me.Item(from_stack_1)
  loc_A428CB: FLdPr var_A0
  loc_A428CE:  = Me.Value
  loc_A428D3: FLdRfVar var_B0
  loc_A428D6: FnCByteVar
  loc_A428D8: CI2UI1
  loc_A428DA: LitI2_Byte 0
  loc_A428DC: EqI2
  loc_A428DD: FFreeAd var_88 = "": var_8C = ""
  loc_A428E6: FFree1Var var_B0 = ""
  loc_A428E9: BranchF loc_A42947
  loc_A428EC: LitI2_Byte 0
  loc_A428EE: LitVar_Missing var_B0
  loc_A428F1: LitI2_Byte 0
  loc_A428F3: LitVarStr var_9C, vbNullString
  loc_A428F8: PopAdLdVar
  loc_A428F9: FLdPr Me
  loc_A428FC: MemLdI2 global_104
  loc_A428FF: CI4UI1
  loc_A42900: FLdPr Me
  loc_A42903: MemLdStr global_100
  loc_A42906: AryLock
  loc_A42909: Ary1LdPr
  loc_A4290A: MemLdRfVar from_stack_1.global_0
  loc_A4290D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A42912: AryUnlock
  loc_A42915: FFree1Var var_B0 = ""
  loc_A42918: LitI2_Byte 0
  loc_A4291A: LitVar_Missing var_B0
  loc_A4291D: LitI2_Byte 0
  loc_A4291F: LitVarStr var_9C, "BANCOS VARIOS ()"
  loc_A42924: PopAdLdVar
  loc_A42925: FLdPr Me
  loc_A42928: MemLdI2 global_104
  loc_A4292B: CI4UI1
  loc_A4292C: FLdPr Me
  loc_A4292F: MemLdStr global_100
  loc_A42932: AryLock
  loc_A42935: Ary1LdPr
  loc_A42936: MemLdRfVar from_stack_1.global_4
  loc_A42939: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4293E: AryUnlock
  loc_A42941: FFree1Var var_B0 = ""
  loc_A42944: Branch loc_A42ABF
  loc_A42947: FLdRfVar var_B0
  loc_A4294A: FLdRfVar var_A0
  loc_A4294D: LitVarStr var_9C, "impura"
  loc_A42952: PopAdLdVar
  loc_A42953: FLdRfVar var_8C
  loc_A42956: FLdRfVar var_88
  loc_A42959: FLdPr Me
  loc_A4295C: MemLdRfVar from_stack_1.global_72
  loc_A4295F: NewIfNullPr clsliquidacion
  loc_A42962: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_A42967: FLdPr var_88
  loc_A4296A:  = Me.Fields
  loc_A4296F: FLdPr var_8C
  loc_A42972: from_stack_2 = Me.Item(from_stack_1)
  loc_A42977: FLdPr var_A0
  loc_A4297A:  = Me.Value
  loc_A4297F: FLdRfVar var_B0
  loc_A42982: FnCByteVar
  loc_A42984: CI2UI1
  loc_A42986: LitI2_Byte 1
  loc_A42988: EqI2
  loc_A42989: FFreeAd var_88 = "": var_8C = ""
  loc_A42992: FFree1Var var_B0 = ""
  loc_A42995: BranchF loc_A42A67
  loc_A42998: FLdRfVar var_A0
  loc_A4299B: LitVarStr var_9C, "CodiBanc"
  loc_A429A0: PopAdLdVar
  loc_A429A1: FLdRfVar var_8C
  loc_A429A4: FLdRfVar var_88
  loc_A429A7: FLdPr Me
  loc_A429AA: MemLdRfVar from_stack_1.global_72
  loc_A429AD: NewIfNullPr clsliquidacion
  loc_A429B0: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_A429B5: FLdPr var_88
  loc_A429B8:  = Me.Fields
  loc_A429BD: FLdPr var_8C
  loc_A429C0: from_stack_2 = Me.Item(from_stack_1)
  loc_A429C5: LitI2_Byte 0
  loc_A429C7: LitVar_Missing var_D4
  loc_A429CA: LitI2_Byte 0
  loc_A429CC: FLdZeroAd var_A0
  loc_A429CF: CVarAd
  loc_A429D3: PopAdLdVar
  loc_A429D4: FLdPr Me
  loc_A429D7: MemLdI2 global_104
  loc_A429DA: CI4UI1
  loc_A429DB: FLdPr Me
  loc_A429DE: MemLdStr global_100
  loc_A429E1: AryLock
  loc_A429E4: Ary1LdPr
  loc_A429E5: MemLdRfVar from_stack_1.global_0
  loc_A429E8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A429ED: AryUnlock
  loc_A429F0: FFreeAd var_88 = ""
  loc_A429F7: FFreeVar var_B0 = ""
  loc_A429FE: FLdRfVar var_A0
  loc_A42A01: LitVarStr var_9C, "DetaBanc"
  loc_A42A06: PopAdLdVar
  loc_A42A07: FLdRfVar var_8C
  loc_A42A0A: FLdRfVar var_88
  loc_A42A0D: FLdPr Me
  loc_A42A10: MemLdRfVar from_stack_1.global_72
  loc_A42A13: NewIfNullPr clsliquidacion
  loc_A42A16: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_A42A1B: FLdPr var_88
  loc_A42A1E:  = Me.Fields
  loc_A42A23: FLdPr var_8C
  loc_A42A26: from_stack_2 = Me.Item(from_stack_1)
  loc_A42A2B: LitI2_Byte 0
  loc_A42A2D: LitVar_Missing var_D4
  loc_A42A30: LitI2_Byte 0
  loc_A42A32: FLdZeroAd var_A0
  loc_A42A35: CVarAd
  loc_A42A39: PopAdLdVar
  loc_A42A3A: FLdPr Me
  loc_A42A3D: MemLdI2 global_104
  loc_A42A40: CI4UI1
  loc_A42A41: FLdPr Me
  loc_A42A44: MemLdStr global_100
  loc_A42A47: AryLock
  loc_A42A4A: Ary1LdPr
  loc_A42A4B: MemLdRfVar from_stack_1.global_4
  loc_A42A4E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A42A53: AryUnlock
  loc_A42A56: FFreeAd var_88 = ""
  loc_A42A5D: FFreeVar var_B0 = ""
  loc_A42A64: Branch loc_A42ABF
  loc_A42A67: LitI2_Byte 0
  loc_A42A69: LitVar_Missing var_B0
  loc_A42A6C: LitI2_Byte 0
  loc_A42A6E: LitVarStr var_9C, vbNullString
  loc_A42A73: PopAdLdVar
  loc_A42A74: FLdPr Me
  loc_A42A77: MemLdI2 global_104
  loc_A42A7A: CI4UI1
  loc_A42A7B: FLdPr Me
  loc_A42A7E: MemLdStr global_100
  loc_A42A81: AryLock
  loc_A42A84: Ary1LdPr
  loc_A42A85: MemLdRfVar from_stack_1.global_0
  loc_A42A88: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A42A8D: AryUnlock
  loc_A42A90: FFree1Var var_B0 = ""
  loc_A42A93: LitI2_Byte 0
  loc_A42A95: LitVar_Missing var_B0
  loc_A42A98: LitI2_Byte 0
  loc_A42A9A: LitVarStr var_9C, "BANCOS VARIOS"
  loc_A42A9F: PopAdLdVar
  loc_A42AA0: FLdPr Me
  loc_A42AA3: MemLdI2 global_104
  loc_A42AA6: CI4UI1
  loc_A42AA7: FLdPr Me
  loc_A42AAA: MemLdStr global_100
  loc_A42AAD: AryLock
  loc_A42AB0: Ary1LdPr
  loc_A42AB1: MemLdRfVar from_stack_1.global_4
  loc_A42AB4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A42AB9: AryUnlock
  loc_A42ABC: FFree1Var var_B0 = ""
  loc_A42ABF: Call Proc_177_25_AEFD88()
  loc_A42AC4: ExitProcHresult
End Function

Private Function Proc_177_25_AEFD88() 'AEFD88
  'Data Table: 4A3740
  loc_AEF660: FLdPr Me
  loc_AEF663: MemLdI2 global_108
  loc_AEF666: LitI2_Byte 1
  loc_AEF668: AddI2
  loc_AEF669: FLdPr Me
  loc_AEF66C: MemStI2 global_108
  loc_AEF66F: FLdPr Me
  loc_AEF672: MemLdI2 global_106
  loc_AEF675: LitI2_Byte 1
  loc_AEF677: AddI2
  loc_AEF678: FLdPr Me
  loc_AEF67B: MemStI2 global_106
  loc_AEF67E: LitI4 0
  loc_AEF683: FLdPr Me
  loc_AEF686: MemLdI2 global_106
  loc_AEF689: CI4UI1
  loc_AEF68A: FLdPr Me
  loc_AEF68D: MemLdI2 global_104
  loc_AEF690: CI4UI1
  loc_AEF691: FLdPr Me
  loc_AEF694: MemLdStr global_100
  loc_AEF697: Ary1LdPr
  loc_AEF698: MemLdRfVar from_stack_1.global_8
  loc_AEF69B: RedimPreserve
  loc_AEF6A5: FLdPr Me
  loc_AEF6A8: MemLdI2 global_106
  loc_AEF6AB: CI4UI1
  loc_AEF6AC: FLdPr Me
  loc_AEF6AF: MemLdI2 global_104
  loc_AEF6B2: CI4UI1
  loc_AEF6B3: FLdPr Me
  loc_AEF6B6: MemLdStr global_100
  loc_AEF6B9: AryLock
  loc_AEF6BC: Ary1LdPr
  loc_AEF6BD: MemLdStr global_8
  loc_AEF6C0: AryLock
  loc_AEF6C3: Ary1LdRf
  loc_AEF6C4: FStR4 var_90
  loc_AEF6C7: FLdRfVar var_BC
  loc_AEF6CA: FLdRfVar var_AC
  loc_AEF6CD: LitVarStr var_A8, "impura"
  loc_AEF6D2: PopAdLdVar
  loc_AEF6D3: FLdRfVar var_98
  loc_AEF6D6: FLdRfVar var_94
  loc_AEF6D9: FLdPr Me
  loc_AEF6DC: MemLdRfVar from_stack_1.global_72
  loc_AEF6DF: NewIfNullPr clsliquidacion
  loc_AEF6E2: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEF6E7: FLdPr var_94
  loc_AEF6EA:  = Me.Fields
  loc_AEF6EF: FLdPr var_98
  loc_AEF6F2: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF6F7: FLdPr var_AC
  loc_AEF6FA:  = Me.Value
  loc_AEF6FF: FLdRfVar var_BC
  loc_AEF702: CI2Var
  loc_AEF703: FMemStI2 var_90(276)
  loc_AEF708: FFreeAd var_94 = "": var_98 = ""
  loc_AEF711: FFree1Var var_BC = ""
  loc_AEF714: FLdRfVar var_BC
  loc_AEF717: FLdRfVar var_AC
  loc_AEF71A: LitVarStr var_A8, "ExpeImpu"
  loc_AEF71F: PopAdLdVar
  loc_AEF720: FLdRfVar var_98
  loc_AEF723: FLdRfVar var_94
  loc_AEF726: FLdPr Me
  loc_AEF729: MemLdRfVar from_stack_1.global_72
  loc_AEF72C: NewIfNullPr clsliquidacion
  loc_AEF72F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEF734: FLdPr var_94
  loc_AEF737:  = Me.Fields
  loc_AEF73C: FLdPr var_98
  loc_AEF73F: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF744: FLdPr var_AC
  loc_AEF747:  = Me.Value
  loc_AEF74C: FLdRfVar var_BC
  loc_AEF74F: CStrVarTmp
  loc_AEF750: FStStrNoPop var_C0
  loc_AEF753: FLdPr Me
  loc_AEF756: MemLdI2 global_106
  loc_AEF759: CI4UI1
  loc_AEF75A: FLdPr Me
  loc_AEF75D: MemLdI2 global_104
  loc_AEF760: CI4UI1
  loc_AEF761: FLdPr Me
  loc_AEF764: MemLdStr global_100
  loc_AEF767: Ary1LdPr
  loc_AEF768: MemLdStr global_8
  loc_AEF76B: Ary1LdPr
  loc_AEF76C: MemLdRfVar from_stack_1.global_0
  loc_AEF76F: StFixedStr
  loc_AEF772: FFree1Str var_C0
  loc_AEF775: FFreeAd var_94 = "": var_98 = ""
  loc_AEF77E: FFree1Var var_BC = ""
  loc_AEF781: FLdRfVar var_AC
  loc_AEF784: LitVarStr var_A8, "NumeLiqu"
  loc_AEF789: PopAdLdVar
  loc_AEF78A: FLdRfVar var_98
  loc_AEF78D: FLdRfVar var_94
  loc_AEF790: FLdPr Me
  loc_AEF793: MemLdRfVar from_stack_1.global_72
  loc_AEF796: NewIfNullPr clsliquidacion
  loc_AEF799: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEF79E: FLdPr var_94
  loc_AEF7A1:  = Me.Fields
  loc_AEF7A6: FLdPr var_98
  loc_AEF7A9: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF7AE: LitI2_Byte 0
  loc_AEF7B0: LitVar_Missing var_E0
  loc_AEF7B3: LitI2_Byte 0
  loc_AEF7B5: FLdZeroAd var_AC
  loc_AEF7B8: CVarAd
  loc_AEF7BC: PopAdLdVar
  loc_AEF7BD: FMemLdRf unk_4A36B1
  loc_AEF7C2: LdFixedStr
  loc_AEF7C5: PopTmpLdAdStr
  loc_AEF7C9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF7CE: ILdRf var_C0
  loc_AEF7D1: FMemLdRf unk_4A36B1
  loc_AEF7D6: StFixedStr
  loc_AEF7D9: FFree1Str var_C0
  loc_AEF7DC: FFreeAd var_94 = ""
  loc_AEF7E3: FFreeVar var_BC = ""
  loc_AEF7EA: FLdRfVar var_AC
  loc_AEF7ED: LitVarStr var_A8, "FechCaja"
  loc_AEF7F2: PopAdLdVar
  loc_AEF7F3: FLdRfVar var_98
  loc_AEF7F6: FLdRfVar var_94
  loc_AEF7F9: FLdPr Me
  loc_AEF7FC: MemLdRfVar from_stack_1.global_72
  loc_AEF7FF: NewIfNullPr clsliquidacion
  loc_AEF802: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEF807: FLdPr var_94
  loc_AEF80A:  = Me.Fields
  loc_AEF80F: FLdPr var_98
  loc_AEF812: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF817: LitI4 1
  loc_AEF81C: LitI4 1
  loc_AEF821: LitVarStr var_D0, "Short date"
  loc_AEF826: FStVarCopyObj var_E0
  loc_AEF829: FLdRfVar var_E0
  loc_AEF82C: FLdZeroAd var_AC
  loc_AEF82F: CVarAd
  loc_AEF833: ImpAdCallI2 Format$(, )
  loc_AEF838: FStStr var_114
  loc_AEF83B: LitI2_Byte 0
  loc_AEF83D: LitVar_Missing var_110
  loc_AEF840: LitI2_Byte 0
  loc_AEF842: FLdZeroAd var_114
  loc_AEF845: CVarStr var_F0
  loc_AEF848: PopAdLdVar
  loc_AEF849: FMemLdRf unk_4A36B1
  loc_AEF84E: LdFixedStr
  loc_AEF851: PopTmpLdAdStr
  loc_AEF855: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF85A: ILdRf var_C0
  loc_AEF85D: FMemLdRf unk_4A36B1
  loc_AEF862: StFixedStr
  loc_AEF865: FFreeStr var_C0 = ""
  loc_AEF86C: FFreeAd var_94 = ""
  loc_AEF873: FFreeVar var_BC = "": var_E0 = "": var_F0 = ""
  loc_AEF87E: FLdRfVar var_BC
  loc_AEF881: FLdRfVar var_AC
  loc_AEF884: LitVarStr var_A8, "NumeFact"
  loc_AEF889: PopAdLdVar
  loc_AEF88A: FLdRfVar var_98
  loc_AEF88D: FLdRfVar var_94
  loc_AEF890: FLdPr Me
  loc_AEF893: MemLdRfVar from_stack_1.global_72
  loc_AEF896: NewIfNullPr clsliquidacion
  loc_AEF899: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEF89E: FLdPr var_94
  loc_AEF8A1:  = Me.Fields
  loc_AEF8A6: FLdPr var_98
  loc_AEF8A9: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF8AE: FLdPr var_AC
  loc_AEF8B1:  = Me.Value
  loc_AEF8B6: LitVarI2 var_E0, 12
  loc_AEF8BB: LitI4 4
  loc_AEF8C0: FLdRfVar var_BC
  loc_AEF8C3: CStrVarTmp
  loc_AEF8C4: FStStrNoPop var_C0
  loc_AEF8C7: ImpAdCallI2 Mid$(, , )
  loc_AEF8CC: FStStr var_118
  loc_AEF8CF: LitI2_Byte 0
  loc_AEF8D1: LitVar_Missing var_110
  loc_AEF8D4: LitI2_Byte 0
  loc_AEF8D6: FLdZeroAd var_118
  loc_AEF8D9: CVarStr var_F0
  loc_AEF8DC: PopAdLdVar
  loc_AEF8DD: FMemLdRf unk_4A36B1
  loc_AEF8E2: LdFixedStr
  loc_AEF8E5: PopTmpLdAdStr
  loc_AEF8E9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF8EE: ILdRf var_114
  loc_AEF8F1: FMemLdRf unk_4A36B1
  loc_AEF8F6: StFixedStr
  loc_AEF8F9: FFreeStr var_C0 = "": var_114 = ""
  loc_AEF902: FFreeAd var_94 = "": var_98 = ""
  loc_AEF90B: FFreeVar var_BC = "": var_E0 = "": var_F0 = ""
  loc_AEF916: FLdRfVar var_AC
  loc_AEF919: LitVarStr var_A8, "ImpoImpu"
  loc_AEF91E: PopAdLdVar
  loc_AEF91F: FLdRfVar var_98
  loc_AEF922: FLdRfVar var_94
  loc_AEF925: FLdPr Me
  loc_AEF928: MemLdRfVar from_stack_1.global_72
  loc_AEF92B: NewIfNullPr clsliquidacion
  loc_AEF92E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEF933: FLdPr var_94
  loc_AEF936:  = Me.Fields
  loc_AEF93B: FLdPr var_98
  loc_AEF93E: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF943: LitI4 0
  loc_AEF948: LitI4 0
  loc_AEF94D: LitI4 -1
  loc_AEF952: LitI4 2
  loc_AEF957: FLdZeroAd var_AC
  loc_AEF95A: CVarAd
  loc_AEF95E: ImpAdCallI2 FormatNumber(, , , , )
  loc_AEF963: FStStrNoPop var_C0
  loc_AEF966: FMemLdRf unk_4A36B1
  loc_AEF96B: StFixedStrR
  loc_AEF96F: FFree1Str var_C0
  loc_AEF972: FFreeAd var_94 = ""
  loc_AEF979: FFree1Var var_BC = ""
  loc_AEF97C: FLdRfVar var_AC
  loc_AEF97F: LitVarStr var_A8, "MontImpo"
  loc_AEF984: PopAdLdVar
  loc_AEF985: FLdRfVar var_98
  loc_AEF988: FLdRfVar var_94
  loc_AEF98B: FLdPr Me
  loc_AEF98E: MemLdRfVar from_stack_1.global_72
  loc_AEF991: NewIfNullPr clsliquidacion
  loc_AEF994: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEF999: FLdPr var_94
  loc_AEF99C:  = Me.Fields
  loc_AEF9A1: FLdPr var_98
  loc_AEF9A4: from_stack_2 = Me.Item(from_stack_1)
  loc_AEF9A9: LitI2_Byte 0
  loc_AEF9AB: FLdPr Me
  loc_AEF9AE: MemLdRfVar from_stack_1.global_112
  loc_AEF9B1: CVarRef
  loc_AEF9B6: LitI2_Byte &HFF
  loc_AEF9B8: FLdZeroAd var_AC
  loc_AEF9BB: CVarAd
  loc_AEF9BF: PopAdLdVar
  loc_AEF9C0: FMemLdRf unk_4A36B1
  loc_AEF9C5: LdFixedStr
  loc_AEF9C8: PopTmpLdAdStr
  loc_AEF9CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEF9D1: ILdRf var_C0
  loc_AEF9D4: FMemLdRf unk_4A36B1
  loc_AEF9D9: StFixedStr
  loc_AEF9DC: FFree1Str var_C0
  loc_AEF9DF: FFreeAd var_94 = ""
  loc_AEF9E6: FFree1Var var_BC = ""
  loc_AEF9E9: LitI4 0
  loc_AEF9EE: LitI4 0
  loc_AEF9F3: LitI4 -1
  loc_AEF9F8: LitI4 2
  loc_AEF9FD: FMemLdRf unk_4A36B1
  loc_AEFA02: LdFixedStr
  loc_AEFA05: PopTmpLdAdStr
  loc_AEFA09: CVarRef
  loc_AEFA0E: ImpAdCallI2 FormatNumber(, , , , )
  loc_AEFA13: FStStr var_114
  loc_AEFA16: ILdRf var_C0
  loc_AEFA19: FMemLdRf unk_4A36B1
  loc_AEFA1E: StFixedStr
  loc_AEFA21: ILdRf var_114
  loc_AEFA24: FMemLdRf unk_4A36B1
  loc_AEFA29: StFixedStrR
  loc_AEFA2D: FFreeStr var_C0 = ""
  loc_AEFA34: FLdRfVar var_AC
  loc_AEFA37: LitVarStr var_A8, "ImpoLine"
  loc_AEFA3C: PopAdLdVar
  loc_AEFA3D: FLdRfVar var_98
  loc_AEFA40: FLdRfVar var_94
  loc_AEFA43: FLdPr Me
  loc_AEFA46: MemLdRfVar from_stack_1.global_72
  loc_AEFA49: NewIfNullPr clsliquidacion
  loc_AEFA4C: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEFA51: FLdPr var_94
  loc_AEFA54:  = Me.Fields
  loc_AEFA59: FLdPr var_98
  loc_AEFA5C: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFA61: LitI4 0
  loc_AEFA66: LitI4 0
  loc_AEFA6B: LitI4 -1
  loc_AEFA70: LitI4 2
  loc_AEFA75: FLdZeroAd var_AC
  loc_AEFA78: CVarAd
  loc_AEFA7C: ImpAdCallI2 FormatNumber(, , , , )
  loc_AEFA81: FStStrNoPop var_C0
  loc_AEFA84: FMemLdRf unk_4A36B1
  loc_AEFA89: StFixedStrR
  loc_AEFA8D: FFree1Str var_C0
  loc_AEFA90: FFreeAd var_94 = ""
  loc_AEFA97: FFree1Var var_BC = ""
  loc_AEFA9A: LitI2_Byte 0
  loc_AEFA9C: FLdPr Me
  loc_AEFA9F: MemLdI2 global_104
  loc_AEFAA2: CI4UI1
  loc_AEFAA3: FLdPr Me
  loc_AEFAA6: MemLdStr global_100
  loc_AEFAA9: AryLock
  loc_AEFAAC: Ary1LdPr
  loc_AEFAAD: MemLdRfVar from_stack_1.global_12
  loc_AEFAB0: CVarRef
  loc_AEFAB5: LitI2_Byte &HFF
  loc_AEFAB7: FMemLdRf unk_4A36B1
  loc_AEFABC: LdFixedStr
  loc_AEFABF: CVarStr var_BC
  loc_AEFAC2: PopAdLdVar
  loc_AEFAC3: FLdPr Me
  loc_AEFAC6: MemLdRfVar from_stack_1.global_120
  loc_AEFAC9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFACE: AryUnlock
  loc_AEFAD1: FFree1Var var_BC = ""
  loc_AEFAD4: LitStr "80"
  loc_AEFAD7: FMemLdRf unk_4A36B1
  loc_AEFADC: StFixedStr
  loc_AEFADF: FLdRfVar var_BC
  loc_AEFAE2: FLdRfVar var_AC
  loc_AEFAE5: LitVarStr var_A8, "CucuPers"
  loc_AEFAEA: PopAdLdVar
  loc_AEFAEB: FLdRfVar var_98
  loc_AEFAEE: FLdRfVar var_94
  loc_AEFAF1: FLdPr Me
  loc_AEFAF4: MemLdRfVar from_stack_1.global_72
  loc_AEFAF7: NewIfNullPr clsliquidacion
  loc_AEFAFA: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEFAFF: FLdPr var_94
  loc_AEFB02:  = Me.Fields
  loc_AEFB07: FLdPr var_98
  loc_AEFB0A: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFB0F: FLdPr var_AC
  loc_AEFB12:  = Me.Value
  loc_AEFB17: FLdRfVar var_BC
  loc_AEFB1A: CStrVarTmp
  loc_AEFB1B: FStStrNoPop var_C0
  loc_AEFB1E: FMemLdRf unk_4A36B1
  loc_AEFB23: StFixedStrR
  loc_AEFB27: FFree1Str var_C0
  loc_AEFB2A: FFreeAd var_94 = "": var_98 = ""
  loc_AEFB33: FFree1Var var_BC = ""
  loc_AEFB36: FLdRfVar var_AC
  loc_AEFB39: LitVarStr var_A8, "DetaProv"
  loc_AEFB3E: PopAdLdVar
  loc_AEFB3F: FLdRfVar var_98
  loc_AEFB42: FLdRfVar var_94
  loc_AEFB45: FLdPr Me
  loc_AEFB48: MemLdRfVar from_stack_1.global_72
  loc_AEFB4B: NewIfNullPr clsliquidacion
  loc_AEFB4E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEFB53: FLdPr var_94
  loc_AEFB56:  = Me.Fields
  loc_AEFB5B: FLdPr var_98
  loc_AEFB5E: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFB63: LitI2_Byte 0
  loc_AEFB65: LitVar_Missing var_E0
  loc_AEFB68: LitI2_Byte 0
  loc_AEFB6A: FLdZeroAd var_AC
  loc_AEFB6D: CVarAd
  loc_AEFB71: PopAdLdVar
  loc_AEFB72: FMemLdRf unk_4A36B1
  loc_AEFB77: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFB7C: FFreeAd var_94 = ""
  loc_AEFB83: FFreeVar var_BC = ""
  loc_AEFB8A: FLdRfVar var_AC
  loc_AEFB8D: LitVarStr var_A8, "DecrPers"
  loc_AEFB92: PopAdLdVar
  loc_AEFB93: FLdRfVar var_98
  loc_AEFB96: FLdRfVar var_94
  loc_AEFB99: FLdPr Me
  loc_AEFB9C: MemLdRfVar from_stack_1.global_72
  loc_AEFB9F: NewIfNullPr clsliquidacion
  loc_AEFBA2: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEFBA7: FLdPr var_94
  loc_AEFBAA:  = Me.Fields
  loc_AEFBAF: FLdPr var_98
  loc_AEFBB2: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFBB7: LitI2_Byte 0
  loc_AEFBB9: LitVar_Missing var_E0
  loc_AEFBBC: LitI2_Byte 0
  loc_AEFBBE: FLdZeroAd var_AC
  loc_AEFBC1: CVarAd
  loc_AEFBC5: PopAdLdVar
  loc_AEFBC6: FMemLdRf unk_4A36B1
  loc_AEFBCB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFBD0: FFreeAd var_94 = ""
  loc_AEFBD7: FFreeVar var_BC = ""
  loc_AEFBDE: FLdRfVar var_BC
  loc_AEFBE1: FLdRfVar var_AC
  loc_AEFBE4: LitVarStr var_A8, "NumeFact"
  loc_AEFBE9: PopAdLdVar
  loc_AEFBEA: FLdRfVar var_98
  loc_AEFBED: FLdRfVar var_94
  loc_AEFBF0: FLdPr Me
  loc_AEFBF3: MemLdRfVar from_stack_1.global_72
  loc_AEFBF6: NewIfNullPr clsliquidacion
  loc_AEFBF9: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEFBFE: FLdPr var_94
  loc_AEFC01:  = Me.Fields
  loc_AEFC06: FLdPr var_98
  loc_AEFC09: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFC0E: FLdPr var_AC
  loc_AEFC11:  = Me.Value
  loc_AEFC16: LitVarI2 var_E0, 3
  loc_AEFC1B: LitI4 1
  loc_AEFC20: FLdRfVar var_BC
  loc_AEFC23: CStrVarTmp
  loc_AEFC24: FStStrNoPop var_C0
  loc_AEFC27: ImpAdCallI2 Mid$(, , )
  loc_AEFC2C: CVarStr var_F0
  loc_AEFC2F: FLdRfVar var_110
  loc_AEFC32: ImpAdCallFPR4  = Ucase()
  loc_AEFC37: LitI2_Byte 0
  loc_AEFC39: LitVar_Missing var_12C
  loc_AEFC3C: LitI2_Byte 0
  loc_AEFC3E: FLdVar var_110
  loc_AEFC42: FMemLdRf unk_4A36B1
  loc_AEFC47: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFC4C: FFree1Str var_C0
  loc_AEFC4F: FFreeAd var_94 = "": var_98 = ""
  loc_AEFC58: FFreeVar var_BC = "": var_E0 = "": var_F0 = "": var_110 = ""
  loc_AEFC65: FLdRfVar var_AC
  loc_AEFC68: LitVarStr var_A8, "CertLine"
  loc_AEFC6D: PopAdLdVar
  loc_AEFC6E: FLdRfVar var_98
  loc_AEFC71: FLdRfVar var_94
  loc_AEFC74: FLdPr Me
  loc_AEFC77: MemLdRfVar from_stack_1.global_72
  loc_AEFC7A: NewIfNullPr clsliquidacion
  loc_AEFC7D: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEFC82: FLdPr var_94
  loc_AEFC85:  = Me.Fields
  loc_AEFC8A: FLdPr var_98
  loc_AEFC8D: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFC92: LitI4 1
  loc_AEFC97: LitI4 1
  loc_AEFC9C: LitVarStr var_D0, "00000000000000"
  loc_AEFCA1: FStVarCopyObj var_E0
  loc_AEFCA4: FLdRfVar var_E0
  loc_AEFCA7: FLdZeroAd var_AC
  loc_AEFCAA: CVarAd
  loc_AEFCAE: ImpAdCallI2 Format$(, )
  loc_AEFCB3: FStStrNoPop var_C0
  loc_AEFCB6: FMemLdRf unk_4A36B1
  loc_AEFCBB: StFixedStrR
  loc_AEFCBF: FFree1Str var_C0
  loc_AEFCC2: FFreeAd var_94 = ""
  loc_AEFCC9: FFreeVar var_BC = ""
  loc_AEFCD0: FLdRfVar var_AC
  loc_AEFCD3: LitVarStr var_A8, "AlicEsca"
  loc_AEFCD8: PopAdLdVar
  loc_AEFCD9: FLdRfVar var_98
  loc_AEFCDC: FLdRfVar var_94
  loc_AEFCDF: FLdPr Me
  loc_AEFCE2: MemLdRfVar from_stack_1.global_72
  loc_AEFCE5: NewIfNullPr clsliquidacion
  loc_AEFCE8: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AEFCED: FLdPr var_94
  loc_AEFCF0:  = Me.Fields
  loc_AEFCF5: FLdPr var_98
  loc_AEFCF8: from_stack_2 = Me.Item(from_stack_1)
  loc_AEFCFD: LitI4 1
  loc_AEFD02: LitI4 1
  loc_AEFD07: LitVarStr var_D0, "0.0000"
  loc_AEFD0C: FStVarCopyObj var_E0
  loc_AEFD0F: FLdRfVar var_E0
  loc_AEFD12: FLdZeroAd var_AC
  loc_AEFD15: CVarAd
  loc_AEFD19: ImpAdCallI2 Format$(, )
  loc_AEFD1E: FStStr var_114
  loc_AEFD21: LitI2_Byte 0
  loc_AEFD23: LitVar_Missing var_110
  loc_AEFD26: LitI2_Byte 0
  loc_AEFD28: FLdZeroAd var_114
  loc_AEFD2B: CVarStr var_F0
  loc_AEFD2E: PopAdLdVar
  loc_AEFD2F: FMemLdRf unk_4A36B1
  loc_AEFD34: LdFixedStr
  loc_AEFD37: PopTmpLdAdStr
  loc_AEFD3B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AEFD40: ILdRf var_C0
  loc_AEFD43: FMemLdRf unk_4A36B1
  loc_AEFD48: StFixedStr
  loc_AEFD4B: FFreeStr var_C0 = ""
  loc_AEFD52: FFreeAd var_94 = ""
  loc_AEFD59: FFreeVar var_BC = "": var_E0 = "": var_F0 = ""
  loc_AEFD64: LitI4 0
  loc_AEFD69: FStR4 var_90
  loc_AEFD6C: AryUnlock
  loc_AEFD6F: AryUnlock
  loc_AEFD72: LitI2_Byte 1
  loc_AEFD74: PopTmpLdAd2 var_12E
  loc_AEFD77: FLdPr Me
  loc_AEFD7A: MemLdRfVar from_stack_1.global_72
  loc_AEFD7D: NewIfNullPr clsliquidacion
  loc_AEFD80: Call clsliquidacion.Move(from_stack_1v)
  loc_AEFD85: ExitProcHresult
End Function

Private Function Proc_177_26_AA7884() 'AA7884
  'Data Table: 4A3740
  loc_AA737C: LitVarStr var_94, "<html>"
  loc_AA7381: PopAdLdVar
  loc_AA7382: FLdPr Me
  loc_AA7385: MemLdRfVar from_stack_1.htmFile
  loc_AA7388: LdPrVar
  loc_AA738A: LateMemCall
  loc_AA7390: LitVarStr var_94, "<head>"
  loc_AA7395: PopAdLdVar
  loc_AA7396: FLdPr Me
  loc_AA7399: MemLdRfVar from_stack_1.htmFile
  loc_AA739C: LdPrVar
  loc_AA739E: LateMemCall
  loc_AA73A4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA73A9: PopAdLdVar
  loc_AA73AA: FLdPr Me
  loc_AA73AD: MemLdRfVar from_stack_1.htmFile
  loc_AA73B0: LdPrVar
  loc_AA73B2: LateMemCall
  loc_AA73B8: LitStr "<title>"
  loc_AA73BB: FLdRfVar var_A8
  loc_AA73BE: FLdPr Me
  loc_AA73C1:  = Me.Caption
  loc_AA73C6: ILdRf var_A8
  loc_AA73C9: ConcatStr
  loc_AA73CA: FStStrNoPop var_AC
  loc_AA73CD: LitStr "</title>"
  loc_AA73D0: ConcatStr
  loc_AA73D1: CVarStr var_BC
  loc_AA73D4: PopAdLdVar
  loc_AA73D5: FLdPr Me
  loc_AA73D8: MemLdRfVar from_stack_1.htmFile
  loc_AA73DB: LdPrVar
  loc_AA73DD: LateMemCall
  loc_AA73E3: FFreeStr var_A8 = ""
  loc_AA73EA: FFree1Var var_BC = ""
  loc_AA73ED: LitStr vbNullString
  loc_AA73F0: ILdRf Me
  loc_AA73F3: CastAd
  loc_AA73F6: FStAdFunc var_C0
  loc_AA73F9: FLdRfVar var_C0
  loc_AA73FC: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AA7401: FFree1Ad var_C0
  loc_AA7404: LitI4 0
  loc_AA7409: FStStrCopy var_AC
  loc_AA740C: FLdRfVar var_AC
  loc_AA740F: LitI4 0
  loc_AA7414: FStStrCopy var_A8
  loc_AA7417: FLdRfVar var_A8
  loc_AA741A: LitI2_Byte &HFF
  loc_AA741C: PopTmpLdAd2 var_C2
  loc_AA741F: FLdPr Me
  loc_AA7422: MemLdRfVar from_stack_1.htmFile
  loc_AA7425: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA742A: FFreeStr var_A8 = ""
  loc_AA7431: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AA7436: PopAdLdVar
  loc_AA7437: FLdPr Me
  loc_AA743A: MemLdRfVar from_stack_1.htmFile
  loc_AA743D: LdPrVar
  loc_AA743F: LateMemCall
  loc_AA7445: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA744A: PopAdLdVar
  loc_AA744B: FLdPr Me
  loc_AA744E: MemLdRfVar from_stack_1.htmFile
  loc_AA7451: LdPrVar
  loc_AA7453: LateMemCall
  loc_AA7459: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AA745E: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA7463: FStVarCopyObj var_BC
  loc_AA7466: FLdRfVar var_BC
  loc_AA7469: FLdRfVar var_D4
  loc_AA746C: ImpAdCallFPR4  = Ucase()
  loc_AA7471: FLdRfVar var_D4
  loc_AA7474: ConcatVar var_E4
  loc_AA7478: PopAdLdVar
  loc_AA7479: FLdPr Me
  loc_AA747C: MemLdRfVar from_stack_1.htmFile
  loc_AA747F: LdPrVar
  loc_AA7481: LateMemCall
  loc_AA7487: FFreeVar var_BC = "": var_D4 = ""
  loc_AA7490: LitVarStr var_94, "    <p>Declaraci&oacute;n de Impuestos<br>Ganancias</p>"
  loc_AA7495: PopAdLdVar
  loc_AA7496: FLdPr Me
  loc_AA7499: MemLdRfVar from_stack_1.htmFile
  loc_AA749C: LdPrVar
  loc_AA749E: LateMemCall
  loc_AA74A4: LitVarStr var_94, "      <hr></th>"
  loc_AA74A9: PopAdLdVar
  loc_AA74AA: FLdPr Me
  loc_AA74AD: MemLdRfVar from_stack_1.htmFile
  loc_AA74B0: LdPrVar
  loc_AA74B2: LateMemCall
  loc_AA74B8: LitVarStr var_94, "  </tr>"
  loc_AA74BD: PopAdLdVar
  loc_AA74BE: FLdPr Me
  loc_AA74C1: MemLdRfVar from_stack_1.htmFile
  loc_AA74C4: LdPrVar
  loc_AA74C6: LateMemCall
  loc_AA74CC: FLdPr Me
  loc_AA74CF: VCallAd Control_ID_MskDesde
  loc_AA74D2: FStAdFunc var_C0
  loc_AA74D5: FLdPr var_C0
  loc_AA74D8: LateIdLdVar var_BC DispID_20 0
  loc_AA74DF: CStrVarTmp
  loc_AA74E0: FStStrNoPop var_A8
  loc_AA74E3: LitStr vbNullString
  loc_AA74E6: NeStr
  loc_AA74E8: FLdPr Me
  loc_AA74EB: VCallAd Control_ID_MskHasta
  loc_AA74EE: FStAdFunc var_F8
  loc_AA74F1: FLdPr var_F8
  loc_AA74F4: LateIdLdVar var_D4 DispID_20 0
  loc_AA74FB: CStrVarTmp
  loc_AA74FC: FStStrNoPop var_AC
  loc_AA74FF: LitStr vbNullString
  loc_AA7502: NeStr
  loc_AA7504: OrI4
  loc_AA7505: FFreeStr var_A8 = ""
  loc_AA750C: FFreeAd var_C0 = ""
  loc_AA7513: FFreeVar var_BC = ""
  loc_AA751A: BranchF loc_AA7706
  loc_AA751D: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AA7522: PopAdLdVar
  loc_AA7523: FLdPr Me
  loc_AA7526: MemLdRfVar from_stack_1.htmFile
  loc_AA7529: LdPrVar
  loc_AA752B: LateMemCall
  loc_AA7531: FLdRfVar var_C2
  loc_AA7534: FLdPr Me
  loc_AA7537: VCallAd Control_ID_OptionPago
  loc_AA753A: FStAdFunc var_C0
  loc_AA753D: FLdPr var_C0
  loc_AA7540:  = Me.Value
  loc_AA7545: LitVarStr var_108, "    <th align=""left"">Fecha de "
  loc_AA754A: LitVarStr var_F4, "Pago efectivo"
  loc_AA754F: FStVarCopyObj var_D4
  loc_AA7552: FLdRfVar var_D4
  loc_AA7555: LitVarStr var_A4, "Pago"
  loc_AA755A: FStVarCopyObj var_BC
  loc_AA755D: FLdRfVar var_BC
  loc_AA7560: FLdI2 var_C2
  loc_AA7563: CVarBoolI2 var_94
  loc_AA7567: FLdRfVar var_E4
  loc_AA756A: ImpAdCallFPR4  = IIf(, , )
  loc_AA756F: FLdRfVar var_E4
  loc_AA7572: ConcatVar var_118
  loc_AA7576: LitVarStr var_128, "</th>"
  loc_AA757B: ConcatVar var_138
  loc_AA757F: PopAdLdVar
  loc_AA7580: FLdPr Me
  loc_AA7583: MemLdRfVar from_stack_1.htmFile
  loc_AA7586: LdPrVar
  loc_AA7588: LateMemCall
  loc_AA758E: FFree1Ad var_C0
  loc_AA7591: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_E4 = "": var_118 = ""
  loc_AA75A0: FLdPr Me
  loc_AA75A3: VCallAd Control_ID_MskDesde
  loc_AA75A6: FStAdFunc var_C0
  loc_AA75A9: FLdPr var_C0
  loc_AA75AC: LateIdLdVar var_BC DispID_20 0
  loc_AA75B3: PopAd
  loc_AA75B5: FLdPr Me
  loc_AA75B8: VCallAd Control_ID_MskDesde
  loc_AA75BB: FStAdFunc var_F8
  loc_AA75BE: FLdPr var_F8
  loc_AA75C1: LateIdLdVar var_D4 DispID_15 0
  loc_AA75C8: PopAd
  loc_AA75CA: LitVarStr var_F4, "    <th align=""center"">"
  loc_AA75CF: LitVarStr var_A4, "&nbsp;"
  loc_AA75D4: FStVarCopyObj var_118
  loc_AA75D7: FLdRfVar var_118
  loc_AA75DA: LitStr "      Desde: <span class=""Normal"">"
  loc_AA75DD: FLdRfVar var_D4
  loc_AA75E0: CStrVarTmp
  loc_AA75E1: FStStrNoPop var_AC
  loc_AA75E4: ConcatStr
  loc_AA75E5: FStStrNoPop var_14C
  loc_AA75E8: LitStr "</span>"
  loc_AA75EB: ConcatStr
  loc_AA75EC: CVarStr var_E4
  loc_AA75EF: FLdRfVar var_BC
  loc_AA75F2: CStrVarTmp
  loc_AA75F3: FStStrNoPop var_A8
  loc_AA75F6: LitStr vbNullString
  loc_AA75F9: NeStr
  loc_AA75FB: CVarBoolI2 var_94
  loc_AA75FF: FLdRfVar var_138
  loc_AA7602: ImpAdCallFPR4  = IIf(, , )
  loc_AA7607: FLdRfVar var_138
  loc_AA760A: ConcatVar var_15C
  loc_AA760E: LitVarStr var_108, "</th>"
  loc_AA7613: ConcatVar var_16C
  loc_AA7617: PopAdLdVar
  loc_AA7618: FLdPr Me
  loc_AA761B: MemLdRfVar from_stack_1.htmFile
  loc_AA761E: LdPrVar
  loc_AA7620: LateMemCall
  loc_AA7626: FFreeStr var_A8 = "": var_AC = ""
  loc_AA762F: FFreeAd var_C0 = ""
  loc_AA7636: FFreeVar var_BC = "": var_D4 = "": var_94 = "": var_E4 = "": var_118 = "": var_138 = "": var_15C = ""
  loc_AA7649: FLdPr Me
  loc_AA764C: VCallAd Control_ID_MskDesde
  loc_AA764F: FStAdFunc var_C0
  loc_AA7652: FLdPr var_C0
  loc_AA7655: LateIdLdVar var_BC DispID_20 0
  loc_AA765C: PopAd
  loc_AA765E: FLdPr Me
  loc_AA7661: VCallAd Control_ID_MskHasta
  loc_AA7664: FStAdFunc var_F8
  loc_AA7667: FLdPr var_F8
  loc_AA766A: LateIdLdVar var_D4 DispID_15 0
  loc_AA7671: PopAd
  loc_AA7673: LitVarStr var_F4, "    <th align=""right"">"
  loc_AA7678: LitVarStr var_A4, "&nbsp;"
  loc_AA767D: FStVarCopyObj var_118
  loc_AA7680: FLdRfVar var_118
  loc_AA7683: LitStr "      Hasta: <span class=""Normal"">"
  loc_AA7686: FLdRfVar var_D4
  loc_AA7689: CStrVarTmp
  loc_AA768A: FStStrNoPop var_AC
  loc_AA768D: ConcatStr
  loc_AA768E: FStStrNoPop var_14C
  loc_AA7691: LitStr "</span>"
  loc_AA7694: ConcatStr
  loc_AA7695: CVarStr var_E4
  loc_AA7698: FLdRfVar var_BC
  loc_AA769B: CStrVarTmp
  loc_AA769C: FStStrNoPop var_A8
  loc_AA769F: LitStr vbNullString
  loc_AA76A2: NeStr
  loc_AA76A4: CVarBoolI2 var_94
  loc_AA76A8: FLdRfVar var_138
  loc_AA76AB: ImpAdCallFPR4  = IIf(, , )
  loc_AA76B0: FLdRfVar var_138
  loc_AA76B3: ConcatVar var_15C
  loc_AA76B7: LitVarStr var_108, "</th>"
  loc_AA76BC: ConcatVar var_16C
  loc_AA76C0: PopAdLdVar
  loc_AA76C1: FLdPr Me
  loc_AA76C4: MemLdRfVar from_stack_1.htmFile
  loc_AA76C7: LdPrVar
  loc_AA76C9: LateMemCall
  loc_AA76CF: FFreeStr var_A8 = "": var_AC = ""
  loc_AA76D8: FFreeAd var_C0 = ""
  loc_AA76DF: FFreeVar var_BC = "": var_D4 = "": var_94 = "": var_E4 = "": var_118 = "": var_138 = "": var_15C = ""
  loc_AA76F2: LitVarStr var_94, "  </tr>"
  loc_AA76F7: PopAdLdVar
  loc_AA76F8: FLdPr Me
  loc_AA76FB: MemLdRfVar from_stack_1.htmFile
  loc_AA76FE: LdPrVar
  loc_AA7700: LateMemCall
  loc_AA7706: LitVarStr var_94, "</table>"
  loc_AA770B: PopAdLdVar
  loc_AA770C: FLdPr Me
  loc_AA770F: MemLdRfVar from_stack_1.htmFile
  loc_AA7712: LdPrVar
  loc_AA7714: LateMemCall
  loc_AA771A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA771F: PopAdLdVar
  loc_AA7720: FLdPr Me
  loc_AA7723: MemLdRfVar from_stack_1.htmFile
  loc_AA7726: LdPrVar
  loc_AA7728: LateMemCall
  loc_AA772E: LitVarStr var_94, "  <THEAD>"
  loc_AA7733: PopAdLdVar
  loc_AA7734: FLdPr Me
  loc_AA7737: MemLdRfVar from_stack_1.htmFile
  loc_AA773A: LdPrVar
  loc_AA773C: LateMemCall
  loc_AA7742: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AA7747: PopAdLdVar
  loc_AA7748: FLdPr Me
  loc_AA774B: MemLdRfVar from_stack_1.htmFile
  loc_AA774E: LdPrVar
  loc_AA7750: LateMemCall
  loc_AA7756: LitVarStr var_94, "    <th rowspan=""2"">Expediente</th>"
  loc_AA775B: PopAdLdVar
  loc_AA775C: FLdPr Me
  loc_AA775F: MemLdRfVar from_stack_1.htmFile
  loc_AA7762: LdPrVar
  loc_AA7764: LateMemCall
  loc_AA776A: LitVarStr var_94, "    <th width=""10" & Chr(37) & """ rowspan=""2"">CUIT</th>"
  loc_AA776F: PopAdLdVar
  loc_AA7770: FLdPr Me
  loc_AA7773: MemLdRfVar from_stack_1.htmFile
  loc_AA7776: LdPrVar
  loc_AA7778: LateMemCall
  loc_AA777E: LitVarStr var_94, "    <th rowspan=""2"">Razón Social</th>"
  loc_AA7783: PopAdLdVar
  loc_AA7784: FLdPr Me
  loc_AA7787: MemLdRfVar from_stack_1.htmFile
  loc_AA778A: LdPrVar
  loc_AA778C: LateMemCall
  loc_AA7792: LitVarStr var_94, "    <th rowspan=""2"">Domicilio</th>"
  loc_AA7797: PopAdLdVar
  loc_AA7798: FLdPr Me
  loc_AA779B: MemLdRfVar from_stack_1.htmFile
  loc_AA779E: LdPrVar
  loc_AA77A0: LateMemCall
  loc_AA77A6: LitVarStr var_94, "    <th rowspan=""2"">Fecha Retención</th>"
  loc_AA77AB: PopAdLdVar
  loc_AA77AC: FLdPr Me
  loc_AA77AF: MemLdRfVar from_stack_1.htmFile
  loc_AA77B2: LdPrVar
  loc_AA77B4: LateMemCall
  loc_AA77BA: LitVarStr var_94, "    <th colspan=""2"">Comprobante</th>"
  loc_AA77BF: PopAdLdVar
  loc_AA77C0: FLdPr Me
  loc_AA77C3: MemLdRfVar from_stack_1.htmFile
  loc_AA77C6: LdPrVar
  loc_AA77C8: LateMemCall
  loc_AA77CE: LitVarStr var_94, "    <th rowspan=""2"">Monto Imponible</th>"
  loc_AA77D3: PopAdLdVar
  loc_AA77D4: FLdPr Me
  loc_AA77D7: MemLdRfVar from_stack_1.htmFile
  loc_AA77DA: LdPrVar
  loc_AA77DC: LateMemCall
  loc_AA77E2: LitVarStr var_94, "    <th rowspan=""2"">Alícuota</th>"
  loc_AA77E7: PopAdLdVar
  loc_AA77E8: FLdPr Me
  loc_AA77EB: MemLdRfVar from_stack_1.htmFile
  loc_AA77EE: LdPrVar
  loc_AA77F0: LateMemCall
  loc_AA77F6: LitVarStr var_94, "    <th rowspan=""2"">Monto Retenido</th>"
  loc_AA77FB: PopAdLdVar
  loc_AA77FC: FLdPr Me
  loc_AA77FF: MemLdRfVar from_stack_1.htmFile
  loc_AA7802: LdPrVar
  loc_AA7804: LateMemCall
  loc_AA780A: LitVarStr var_94, "  </tr>"
  loc_AA780F: PopAdLdVar
  loc_AA7810: FLdPr Me
  loc_AA7813: MemLdRfVar from_stack_1.htmFile
  loc_AA7816: LdPrVar
  loc_AA7818: LateMemCall
  loc_AA781E: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AA7823: PopAdLdVar
  loc_AA7824: FLdPr Me
  loc_AA7827: MemLdRfVar from_stack_1.htmFile
  loc_AA782A: LdPrVar
  loc_AA782C: LateMemCall
  loc_AA7832: LitVarStr var_94, "    <th>Tipo</th>"
  loc_AA7837: PopAdLdVar
  loc_AA7838: FLdPr Me
  loc_AA783B: MemLdRfVar from_stack_1.htmFile
  loc_AA783E: LdPrVar
  loc_AA7840: LateMemCall
  loc_AA7846: LitVarStr var_94, "    <th>Número</th>"
  loc_AA784B: PopAdLdVar
  loc_AA784C: FLdPr Me
  loc_AA784F: MemLdRfVar from_stack_1.htmFile
  loc_AA7852: LdPrVar
  loc_AA7854: LateMemCall
  loc_AA785A: LitVarStr var_94, "  </tr>"
  loc_AA785F: PopAdLdVar
  loc_AA7860: FLdPr Me
  loc_AA7863: MemLdRfVar from_stack_1.htmFile
  loc_AA7866: LdPrVar
  loc_AA7868: LateMemCall
  loc_AA786E: LitVarStr var_94, "  </THEAD>"
  loc_AA7873: PopAdLdVar
  loc_AA7874: FLdPr Me
  loc_AA7877: MemLdRfVar from_stack_1.htmFile
  loc_AA787A: LdPrVar
  loc_AA787C: LateMemCall
  loc_AA7882: ExitProcHresult
End Function

Private Function Proc_177_27_981EB0() '981EB0
  'Data Table: 4A3740
  loc_981E70: LitVarStr var_94, "</table>"
  loc_981E75: PopAdLdVar
  loc_981E76: FLdPr Me
  loc_981E79: MemLdRfVar from_stack_1.htmFile
  loc_981E7C: LdPrVar
  loc_981E7E: LateMemCall
  loc_981E84: LitVarStr var_94, "</body>"
  loc_981E89: PopAdLdVar
  loc_981E8A: FLdPr Me
  loc_981E8D: MemLdRfVar from_stack_1.htmFile
  loc_981E90: LdPrVar
  loc_981E92: LateMemCall
  loc_981E98: LitVarStr var_94, "</html>"
  loc_981E9D: PopAdLdVar
  loc_981E9E: FLdPr Me
  loc_981EA1: MemLdRfVar from_stack_1.htmFile
  loc_981EA4: LdPrVar
  loc_981EA6: LateMemCall
  loc_981EAC: ExitProcHresult
End Function
