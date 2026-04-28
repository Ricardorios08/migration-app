VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoXIV_mensual
  Caption = "Acuerdo 2988 - Anexo XIV"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoXIV_mensual.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9285
  ClientHeight = 3120
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2865
    Width = 9285
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptA2988AnexoXIV_mensual.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 600
    Width = 735
    Height = 615
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptA2988AnexoXIV_mensual.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoXIV_mensual.frx":0B9C
    Left = 240
    Top = 840
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1680
    Width = 5895
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 18
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1680
    Width = 3015
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1575
    TabIndex = 0
    Begin VB.OptionButton OptMensual
      Caption = "Mensual"
      Left = 3240
      Top = 480
      Width = 1335
      Height = 255
      TabIndex = 4
      Value = 255
    End
    Begin VB.OptionButton OptAcumulado
      Caption = "Acumulado"
      Left = 3240
      Top = 840
      Width = 1335
      Height = 255
      TabIndex = 5
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 960
      Width = 1575
      Height = 315
      TabIndex = 3
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4920
      Top = 600
      Width = 1935
      Height = 495
      TabIndex = 11
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1215
      Top = 480
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 720
      Top = 960
      Width = 345
      Height = 195
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 495
      Top = 480
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 720
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptA2988AnexoXIV_mensual.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoXIV_mensual"

Public htmFile As Variant
Public txtFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005BC120
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdTxt_Click() '98F63C
  'Data Table: 474DBC
  loc_98F5EC: FLdRfVar var_8A
  loc_98F5EF: FLdPr Me
  loc_98F5F2: VCallAd Control_ID_OptMensual
  loc_98F5F5: FStAdFunc var_88
  loc_98F5F8: FLdPr var_88
  loc_98F5FB:  = Me.Value
  loc_98F600: FLdI2 var_8A
  loc_98F603: LitI2_Byte &HFF
  loc_98F605: EqI2
  loc_98F606: FFree1Ad var_88
  loc_98F609: BranchF loc_98F61A
  loc_98F60C: LitStr "MovCtaExtraPrePatMes"
  loc_98F60F: FLdPr Me
  loc_98F612: Me.Tag = from_stack_1
  loc_98F617: Branch loc_98F625
  loc_98F61A: LitStr "MovCtaExtraPrePatAcu"
  loc_98F61D: FLdPr Me
  loc_98F620: Me.Tag = from_stack_1
  loc_98F625: LitI2_Byte 0
  loc_98F627: ILdRf Me
  loc_98F62A: CastAd
  loc_98F62D: FStAdFunc var_88
  loc_98F630: FLdRfVar var_88
  loc_98F633: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_98F638: FFree1Ad var_88
  loc_98F63B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98647C
  'Data Table: 474DBC
  loc_986444: FLdPr Me
  loc_986447: VCallAd Control_ID_statusBar
  loc_98644A: FStAdFunc var_88
  loc_98644D: FLdPr var_88
  loc_986450: LateIdLdVar var_98 DispID_1 0
  loc_986457: CStrVarTmp
  loc_986458: CVarStr var_A8
  loc_98645B: PopAdLdVar
  loc_98645C: FLdPr Me
  loc_98645F: VCallAd Control_ID_statusBar
  loc_986462: FStAdFunc var_BC
  loc_986465: FLdPr var_BC
  loc_986468: LateIdSt
  loc_98646D: FFreeAd var_88 = ""
  loc_986474: FFreeVar var_98 = ""
  loc_98647B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9D7B14
  'Data Table: 474DBC
  loc_9D7A40: FLdRfVar var_A6
  loc_9D7A43: FLdPr Me
  loc_9D7A46: VCallAd Control_ID_OptMensual
  loc_9D7A49: FStAdFunc var_A4
  loc_9D7A4C: FLdPr var_A4
  loc_9D7A4F:  = Me.Value
  loc_9D7A54: LitStr "Acuerdo 2988 Anexo XIV "
  loc_9D7A57: FLdRfVar var_8C
  loc_9D7A5A: FLdPr Me
  loc_9D7A5D: VCallAd Control_ID_cboMes
  loc_9D7A60: FStAdFunc var_88
  loc_9D7A63: FLdPr var_88
  loc_9D7A66:  = Me.Text
  loc_9D7A6B: ILdRf var_8C
  loc_9D7A6E: ConcatStr
  loc_9D7A6F: FStStrNoPop var_90
  loc_9D7A72: LitStr "-"
  loc_9D7A75: ConcatStr
  loc_9D7A76: FStStrNoPop var_9C
  loc_9D7A79: FLdRfVar var_98
  loc_9D7A7C: FLdPr Me
  loc_9D7A7F: VCallAd Control_ID_cboPeriodo
  loc_9D7A82: FStAdFunc var_94
  loc_9D7A85: FLdPr var_94
  loc_9D7A88:  = Me.Text
  loc_9D7A8D: ILdRf var_98
  loc_9D7A90: ConcatStr
  loc_9D7A91: FStStrNoPop var_A0
  loc_9D7A94: LitStr " "
  loc_9D7A97: ConcatStr
  loc_9D7A98: CVarStr var_118
  loc_9D7A9B: LitVarStr var_E8, "Acumulado"
  loc_9D7AA0: FStVarCopyObj var_F8
  loc_9D7AA3: FLdRfVar var_F8
  loc_9D7AA6: LitVarStr var_C8, "Mensual"
  loc_9D7AAB: FStVarCopyObj var_D8
  loc_9D7AAE: FLdRfVar var_D8
  loc_9D7AB1: FLdI2 var_A6
  loc_9D7AB4: LitI2_Byte &HFF
  loc_9D7AB6: EqI2
  loc_9D7AB7: CVarBoolI2 var_B8
  loc_9D7ABB: FLdRfVar var_108
  loc_9D7ABE: ImpAdCallFPR4  = IIf(, , )
  loc_9D7AC3: FLdRfVar var_108
  loc_9D7AC6: ConcatVar var_128
  loc_9D7ACA: CStrVarVal var_12C
  loc_9D7ACE: FLdPr Me
  loc_9D7AD1: Me.Tag = from_stack_1
  loc_9D7AD6: FFreeStr var_8C = "": var_90 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_9D7AE5: FFreeAd var_88 = "": var_94 = ""
  loc_9D7AEE: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_108 = ""
  loc_9D7AFD: LitI2_Byte 0
  loc_9D7AFF: ILdRf Me
  loc_9D7B02: CastAd
  loc_9D7B05: FStAdFunc var_88
  loc_9D7B08: FLdRfVar var_88
  loc_9D7B0B: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9D7B10: FFree1Ad var_88
  loc_9D7B13: ExitProcHresult
End Sub

Private Sub Form_Load() 'A0A4B4
  'Data Table: 474DBC
  loc_A0A358: LitI2_Byte &HFF
  loc_A0A35A: ImpAdStI2 MemVar_C3D840
  loc_A0A35D: ILdRf Me
  loc_A0A360: CastAd
  loc_A0A363: FStAdFunc var_8C
  loc_A0A366: FLdRfVar var_8C
  loc_A0A369: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A0A36E: FFree1Ad var_8C
  loc_A0A371: FLdRfVar var_88
  loc_A0A374: NewIfNullAd
  loc_A0A377: FStAd var_90 
  loc_A0A37B: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo;"
  loc_A0A37E: FLdPr var_90
  loc_A0A381: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A0A386: FLdRfVar var_94
  loc_A0A389: FLdPr var_90
  loc_A0A38C: from_stack_1 = clsperiodo.RecordCount
  loc_A0A391: ILdRf var_94
  loc_A0A394: LitI4 0
  loc_A0A399: GtI4
  loc_A0A39A: BranchF loc_A0A421
  loc_A0A39D: FLdPr var_90
  loc_A0A3A0: Call clsperiodo.MoveFirst()
  loc_A0A3A5: FLdRfVar var_96
  loc_A0A3A8: FLdPr var_90
  loc_A0A3AB: from_stack_1 = clsperiodo.EOF
  loc_A0A3B0: FLdI2 var_96
  loc_A0A3B3: NotI4
  loc_A0A3B4: BranchF loc_A0A421
  loc_A0A3B7: LitVar_Missing var_D4
  loc_A0A3BA: PopAdLdVar
  loc_A0A3BB: FLdRfVar var_C0
  loc_A0A3BE: FLdRfVar var_B0
  loc_A0A3C1: LitVarStr var_AC, "PeriInfo"
  loc_A0A3C6: PopAdLdVar
  loc_A0A3C7: FLdRfVar var_9C
  loc_A0A3CA: FLdRfVar var_8C
  loc_A0A3CD: FLdPr var_90
  loc_A0A3D0: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A0A3D5: FLdPr var_8C
  loc_A0A3D8:  = Me.Fields
  loc_A0A3DD: FLdPr var_9C
  loc_A0A3E0: from_stack_2 = Me.Item(from_stack_1)
  loc_A0A3E5: FLdPr var_B0
  loc_A0A3E8:  = Me.Value
  loc_A0A3ED: FLdRfVar var_C0
  loc_A0A3F0: CStrVarTmp
  loc_A0A3F1: FStStrNoPop var_C4
  loc_A0A3F4: FLdPr Me
  loc_A0A3F7: VCallAd Control_ID_cboPeriodo
  loc_A0A3FA: FStAdFunc var_D8
  loc_A0A3FD: FLdPr var_D8
  loc_A0A400: Me.AddItem from_stack_1, from_stack_2
  loc_A0A405: FFree1Str var_C4
  loc_A0A408: FFreeAd var_8C = "": var_9C = "": var_B0 = ""
  loc_A0A413: FFree1Var var_C0 = ""
  loc_A0A416: FLdPr var_90
  loc_A0A419: Call clsperiodo.MoveSiguiente()
  loc_A0A41E: Branch loc_A0A3A5
  loc_A0A421: LitNothing
  loc_A0A423: FStAd var_90 
  loc_A0A427: LitI2_Byte 1
  loc_A0A429: CUI1I2
  loc_A0A42B: FLdPr Me
  loc_A0A42E: MemLdRfVar from_stack_1.global_112
  loc_A0A431: LitI2_Byte &HC
  loc_A0A433: CUI1I2
  loc_A0A435: ForUI1 var_DC
  loc_A0A43B: LitVar_Missing var_AC
  loc_A0A43E: PopAdLdVar
  loc_A0A43F: LitI2_Byte 0
  loc_A0A441: FLdPr Me
  loc_A0A444: MemLdUI1 global_112
  loc_A0A448: CI4UI1
  loc_A0A449: ImpAdCallI2 MonthName(, )
  loc_A0A44E: FStStrNoPop var_C4
  loc_A0A451: FLdPr Me
  loc_A0A454: VCallAd Control_ID_cboMes
  loc_A0A457: FStAdFunc var_8C
  loc_A0A45A: FLdPr var_8C
  loc_A0A45D: Me.AddItem from_stack_1, from_stack_2
  loc_A0A462: FFree1Str var_C4
  loc_A0A465: FFree1Ad var_8C
  loc_A0A468: FLdPr Me
  loc_A0A46B: MemLdUI1 global_112
  loc_A0A46F: CI4UI1
  loc_A0A470: FLdRfVar var_96
  loc_A0A473: FLdPr Me
  loc_A0A476: VCallAd Control_ID_cboMes
  loc_A0A479: FStAdFunc var_8C
  loc_A0A47C: FLdPr var_8C
  loc_A0A47F:  = Me.NewIndex
  loc_A0A484: FLdI2 var_96
  loc_A0A487: FLdPr Me
  loc_A0A48A: VCallAd Control_ID_cboMes
  loc_A0A48D: FStAdFunc var_9C
  loc_A0A490: FLdPr var_9C
  loc_A0A493: Me.ItemData = from_stack_1
  loc_A0A498: FFreeAd var_8C = ""
  loc_A0A49F: FLdPr Me
  loc_A0A4A2: MemLdRfVar from_stack_1.global_112
  loc_A0A4A5: NextUI1
  loc_A0A4AB: Call cmdNueva_Click()
  loc_A0A4B0: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95D488
  'Data Table: 474DBC
  loc_95D470: FLdPr Me
  loc_95D473: VCallAd Control_ID_wbbReporte
  loc_95D476: FStAdFunc var_88
  loc_95D479: FLdRfVar var_88
  loc_95D47C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95D481: FFree1Ad var_88
  loc_95D484: ExitProcHresult
  loc_95D485: CRec2Uni arg_3AFF
End Sub

Private Sub cmdPredeterminada_Click() '95E5C0
  'Data Table: 474DBC
  loc_95E5A8: ILdRf Me
  loc_95E5AB: CastAd
  loc_95E5AE: FStAdFunc var_88
  loc_95E5B1: FLdRfVar var_88
  loc_95E5B4: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95E5B9: FFree1Ad var_88
  loc_95E5BC: ExitProcHresult
  loc_95E5BD: UMiCy
  loc_95E5BE: NewIfNullPr Me
End Sub

Private Sub cboMes_Validate(Cancel As Boolean) '9B7B64
  'Data Table: 474DBC
  loc_9B7ABC: FLdRfVar var_8C
  loc_9B7ABF: FLdPr Me
  loc_9B7AC2: VCallAd Control_ID_cboPeriodo
  loc_9B7AC5: FStAdFunc var_88
  loc_9B7AC8: FLdPr var_88
  loc_9B7ACB:  = Me.Text
  loc_9B7AD0: FLdRfVar var_92
  loc_9B7AD3: FLdPr Me
  loc_9B7AD6: VCallAd Control_ID_cboMes
  loc_9B7AD9: FStAdFunc var_90
  loc_9B7ADC: FLdPr var_90
  loc_9B7ADF:  = Me.ListIndex
  loc_9B7AE4: FLdRfVar var_9C
  loc_9B7AE7: FLdI2 var_92
  loc_9B7AEA: FLdPr Me
  loc_9B7AED: VCallAd Control_ID_cboMes
  loc_9B7AF0: FStAdFunc var_98
  loc_9B7AF3: FLdPr var_98
  loc_9B7AF6:  = Me.ItemData
  loc_9B7AFB: ILdRf var_9C
  loc_9B7AFE: CUI1I4
  loc_9B7B00: ILdRf var_8C
  loc_9B7B03: CI2Str
  loc_9B7B05: ImpAdCallI2 Proc_266_31_9BB10C(, )
  loc_9B7B0A: FStStrNoPop var_A0
  loc_9B7B0D: FLdPr Me
  loc_9B7B10: MemStStrCopy
  loc_9B7B14: FFreeStr var_8C = ""
  loc_9B7B1B: FFreeAd var_88 = "": var_90 = ""
  loc_9B7B24: FLdPr Me
  loc_9B7B27: VCallAd Control_ID_cboMes
  loc_9B7B2A: FStAdFunc var_A4
  loc_9B7B2D: LitNothing
  loc_9B7B2F: CastAd
  loc_9B7B32: FStAdFunc var_98
  loc_9B7B35: FLdRfVar var_98
  loc_9B7B38: FLdZeroAd var_A4
  loc_9B7B3B: FStAdFuncNoPop
  loc_9B7B3E: CastAd
  loc_9B7B41: FStAdFunc var_90
  loc_9B7B44: FLdRfVar var_90
  loc_9B7B47: FLdPr Me
  loc_9B7B4A: MemLdRfVar from_stack_1.global_116
  loc_9B7B4D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B7B52: IStI2 Cancel
  loc_9B7B55: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9B7B60: ExitProcHresult
  loc_9B7B61: MemLdRfVar from_stack_1.htmFile
End Sub

Private Sub cmdXLS_Click() '96B8AC
  'Data Table: 474DBC
  loc_96B890: LitI2_Byte &HFF
  loc_96B892: LitI2_Byte 0
  loc_96B894: ILdRf Me
  loc_96B897: CastAd
  loc_96B89A: FStAdFunc var_88
  loc_96B89D: FLdRfVar var_88
  loc_96B8A0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B8A5: FFree1Ad var_88
  loc_96B8A8: ExitProcHresult
  loc_96B8A9: ExitProcI2
  loc_96B8AA: Branch loc_96FC90
End Sub

Private Sub cmdPrevia_Click() '95F5C8
  'Data Table: 474DBC
  loc_95F5B0: ILdRf Me
  loc_95F5B3: CastAd
  loc_95F5B6: FStAdFunc var_88
  loc_95F5B9: FLdRfVar var_88
  loc_95F5BC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95F5C1: FFree1Ad var_88
  loc_95F5C4: ExitProcHresult
  loc_95F5C5: FnLenStr
  loc_95F5C6: FStStrNoPop cmdPrevia_Click400
End Sub

Private Sub cmdHtml_Click() '9569F4
  'Data Table: 474DBC
  loc_9569DC: ILdRf Me
  loc_9569DF: CastAd
  loc_9569E2: FStAdFunc var_88
  loc_9569E5: FLdRfVar var_88
  loc_9569E8: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_9569ED: FFree1Ad var_88
  loc_9569F0: ExitProcHresult
  loc_9569F1: NeI4
  loc_9569F2: NewIfNullAd
End Sub

Private Sub cmdNueva_Click() '9BF9B8
  'Data Table: 474DBC
  loc_9BF8FC: LitI2_Byte 0
  loc_9BF8FE: FLdPr Me
  loc_9BF901: MemStI2 bGenerado
  loc_9BF904: LitI2_Byte &HFF
  loc_9BF906: FLdPr Me
  loc_9BF909: MemStI2 bLogos
  loc_9BF90C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9BF911: ImpAdLdI2 MemVar_C3D064
  loc_9BF914: CStrUI1
  loc_9BF916: FStStrNoPop var_88
  loc_9BF919: FLdPr Me
  loc_9BF91C: VCallAd Control_ID_cboPeriodo
  loc_9BF91F: FStAdFunc var_8C
  loc_9BF922: FLdPr var_8C
  loc_9BF925: Me.Text = from_stack_1
  loc_9BF92A: FFree1Str var_88
  loc_9BF92D: FFree1Ad var_8C
  loc_9BF930: FLdRfVar var_88
  loc_9BF933: FLdPr Me
  loc_9BF936: VCallAd Control_ID_cboPeriodo
  loc_9BF939: FStAdFunc var_8C
  loc_9BF93C: FLdPr var_8C
  loc_9BF93F:  = Me.Text
  loc_9BF944: ILdRf var_88
  loc_9BF947: CI2Str
  loc_9BF949: ImpAdCallI2 Proc_259_2_9BA468()
  loc_9BF94E: CVarStr var_9C
  loc_9BF951: FLdRfVar var_AC
  loc_9BF954: ImpAdCallFPR4  = Month()
  loc_9BF959: FLdRfVar var_AC
  loc_9BF95C: LitVarI2 var_BC, 1
  loc_9BF961: SubVar var_CC
  loc_9BF965: CI2Var
  loc_9BF966: FLdPr Me
  loc_9BF969: VCallAd Control_ID_cboMes
  loc_9BF96C: FStAdFunc var_D0
  loc_9BF96F: FLdPr var_D0
  loc_9BF972: Me.ListIndex = from_stack_1
  loc_9BF977: FFree1Str var_88
  loc_9BF97A: FFreeAd var_8C = ""
  loc_9BF981: FFreeVar var_9C = ""
  loc_9BF988: LitI2_Byte &HFF
  loc_9BF98A: FLdPr Me
  loc_9BF98D: VCallAd Control_ID_OptMensual
  loc_9BF990: FStAdFunc var_8C
  loc_9BF993: FLdPr var_8C
  loc_9BF996: Me.Value = from_stack_1b
  loc_9BF99B: FFree1Ad var_8C
  loc_9BF99E: Call HabilitarCriterio()
  loc_9BF9A3: ILdRf Me
  loc_9BF9A6: CastAd
  loc_9BF9A9: FStAdFunc var_8C
  loc_9BF9AC: FLdRfVar var_8C
  loc_9BF9AF: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9BF9B4: FFree1Ad var_8C
  loc_9BF9B7: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9769F0
  'Data Table: 474DBC
  loc_9769C0: LitVarStr var_94, "Cerrando..."
  loc_9769C5: PopAdLdVar
  loc_9769C6: FLdPr Me
  loc_9769C9: VCallAd Control_ID_statusBar
  loc_9769CC: FStAdFunc var_A8
  loc_9769CF: FLdPr var_A8
  loc_9769D2: LateIdSt
  loc_9769D7: FFree1Ad var_A8
  loc_9769DA: ILdRf Me
  loc_9769DD: FStAdNoPop
  loc_9769E1: ImpAdLdRf MemVar_C44F9C
  loc_9769E4: NewIfNullPr Me
  loc_9769E7: Me.Global.Unload from_stack_1
  loc_9769EC: FFree1Ad var_A8
  loc_9769EF: ExitProcHresult
End Sub

Public Function htmFileGet() '475CCC
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '475CDB
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '475CEA
  htmFile = Value
End Sub

Public Function txtFileGet() '475CF9
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '475D08
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '475D17
  txtFile = Value
End Sub

Public Function bLogosGet() '475D26
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '475D35
  bLogos = Value
End Sub

Public Function bGeneradoGet() '475D44
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '475D53
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A117C
  'Data Table: 474DBC
  loc_9A1118: LitI4 0
  loc_9A111D: LitI4 3
  loc_9A1122: FLdRfVar var_88
  loc_9A1125: Redim
  loc_9A112F: FLdPr Me
  loc_9A1132: VCallAd Control_ID_cboPeriodo
  loc_9A1135: CVarAd
  loc_9A1139: ParmAry1St
  loc_9A113F: FLdPr Me
  loc_9A1142: VCallAd Control_ID_cboMes
  loc_9A1145: CVarAd
  loc_9A1149: ParmAry1St
  loc_9A114F: FLdPr Me
  loc_9A1152: VCallAd Control_ID_OptMensual
  loc_9A1155: CVarAd
  loc_9A1159: ParmAry1St
  loc_9A115F: FLdPr Me
  loc_9A1162: VCallAd Control_ID_OptAcumulado
  loc_9A1165: CVarAd
  loc_9A1169: ParmAry1St
  loc_9A116F: FLdRfVar var_88
  loc_9A1172: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A1177: FLdRfVar var_88
  loc_9A117A: Erase
  loc_9A117B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BC1D70
  'Data Table: 474DBC
  loc_BC0BE4: LitStr vbNullString
  loc_BC0BE7: FLdPr Me
  loc_BC0BEA: MemStStrCopy
  loc_BC0BEE: LitI2_Byte 0
  loc_BC0BF0: PopTmpLdAd2 var_9A
  loc_BC0BF3: Call cboMes_Validate(from_stack_1v)
  loc_BC0BF8: FLdPr Me
  loc_BC0BFB: MemLdStr global_116
  loc_BC0BFE: LitStr vbNullString
  loc_BC0C01: NeStr
  loc_BC0C03: BranchF loc_BC0C09
  loc_BC0C06: Branch loc_BC1D47
  loc_BC0C09: FLdPr Me
  loc_BC0C0C: MemLdI2 bGenerado
  loc_BC0C0F: BranchF loc_BC0C13
  loc_BC0C12: ExitProcHresult
  loc_BC0C13: LitVarStr var_AC, "Generando reporte..."
  loc_BC0C18: PopAdLdVar
  loc_BC0C19: FLdPr Me
  loc_BC0C1C: VCallAd Control_ID_statusBar
  loc_BC0C1F: FStAdFunc var_C0
  loc_BC0C22: FLdPr var_C0
  loc_BC0C25: LateIdSt
  loc_BC0C2A: FFree1Ad var_C0
  loc_BC0C2D: LitI4 &HB
  loc_BC0C32: CI2I4
  loc_BC0C33: FLdPr Me
  loc_BC0C36: Me.MousePointer = from_stack_1
  loc_BC0C3B: FLdRfVar var_C8
  loc_BC0C3E: FLdRfVar var_9A
  loc_BC0C41: FLdPr Me
  loc_BC0C44: VCallAd Control_ID_cboMes
  loc_BC0C47: FStAdFunc var_C0
  loc_BC0C4A: FLdPr var_C0
  loc_BC0C4D:  = Me.ListIndex
  loc_BC0C52: FLdI2 var_9A
  loc_BC0C55: FLdPr Me
  loc_BC0C58: VCallAd Control_ID_cboMes
  loc_BC0C5B: FStAdFunc var_C4
  loc_BC0C5E: FLdPr var_C4
  loc_BC0C61:  = Me.ItemData
  loc_BC0C66: ILdRf var_C8
  loc_BC0C69: CI2I4
  loc_BC0C6A: FLdPr Me
  loc_BC0C6D: MemStI2 global_106
  loc_BC0C70: FFreeAd var_C0 = ""
  loc_BC0C77: FLdRfVar var_CC
  loc_BC0C7A: FLdPr Me
  loc_BC0C7D: VCallAd Control_ID_cboPeriodo
  loc_BC0C80: FStAdFunc var_C0
  loc_BC0C83: FLdPr var_C0
  loc_BC0C86:  = Me.Text
  loc_BC0C8B: ILdRf var_CC
  loc_BC0C8E: CI2Str
  loc_BC0C90: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_BC0C95: CVarStr var_DC
  loc_BC0C98: FLdRfVar var_EC
  loc_BC0C9B: ImpAdCallFPR4  = Month()
  loc_BC0CA0: LitVarStr var_12C, "Definitivo"
  loc_BC0CA5: FStVarCopyObj var_13C
  loc_BC0CA8: FLdRfVar var_13C
  loc_BC0CAB: LitVarStr var_BC, "Provisorio"
  loc_BC0CB0: FStVarCopyObj var_11C
  loc_BC0CB3: FLdRfVar var_11C
  loc_BC0CB6: FLdPr Me
  loc_BC0CB9: MemLdI2 global_106
  loc_BC0CBC: CVarI2 var_AC
  loc_BC0CBF: HardType
  loc_BC0CC0: FLdRfVar var_EC
  loc_BC0CC3: GtVar var_FC
  loc_BC0CC7: FStVar var_10C
  loc_BC0CCB: FLdRfVar var_10C
  loc_BC0CCE: FLdRfVar var_14C
  loc_BC0CD1: ImpAdCallFPR4  = IIf(, , )
  loc_BC0CD6: FLdRfVar var_14C
  loc_BC0CD9: CStrVarTmp
  loc_BC0CDA: FStStrNoPop var_150
  loc_BC0CDD: FLdPr Me
  loc_BC0CE0: MemStStrCopy
  loc_BC0CE4: FFreeStr var_CC = ""
  loc_BC0CEB: FFree1Ad var_C0
  loc_BC0CEE: FFreeVar var_DC = "": var_EC = "": var_10C = "": var_11C = "": var_13C = ""
  loc_BC0CFD: LitStr "Municipalidad de Guaymallén"
  loc_BC0D00: FStStrCopy var_154
  loc_BC0D03: ILdRf var_154
  loc_BC0D06: LitStr "Municipalidad de Rivadavia"
  loc_BC0D09: EqStr
  loc_BC0D0B: BranchF loc_BC0D17
  loc_BC0D0E: LitStr "(1110,1120,1130,1140)"
  loc_BC0D11: FStStrCopy var_98
  loc_BC0D14: Branch loc_BC0D8C
  loc_BC0D17: ILdRf var_154
  loc_BC0D1A: LitStr "Municipalidad de Tupungato"
  loc_BC0D1D: EqStr
  loc_BC0D1F: BranchF loc_BC0D2B
  loc_BC0D22: LitStr "(1110,1120,1130)"
  loc_BC0D25: FStStrCopy var_98
  loc_BC0D28: Branch loc_BC0D8C
  loc_BC0D2B: ILdRf var_154
  loc_BC0D2E: LitStr "Municipalidad de Santa Rosa"
  loc_BC0D31: EqStr
  loc_BC0D33: BranchF loc_BC0D3F
  loc_BC0D36: LitStr "(1110,1120,1130,1140)"
  loc_BC0D39: FStStrCopy var_98
  loc_BC0D3C: Branch loc_BC0D8C
  loc_BC0D3F: ILdRf var_154
  loc_BC0D42: LitStr "Municipalidad de Malargüe"
  loc_BC0D45: EqStr
  loc_BC0D47: BranchF loc_BC0D53
  loc_BC0D4A: LitStr "(1110,1120,1130)"
  loc_BC0D4D: FStStrCopy var_98
  loc_BC0D50: Branch loc_BC0D8C
  loc_BC0D53: ILdRf var_154
  loc_BC0D56: LitStr "Municipalidad de Guaymallén"
  loc_BC0D59: EqStr
  loc_BC0D5B: BranchF loc_BC0D67
  loc_BC0D5E: LitStr "(1110,1120,1130)"
  loc_BC0D61: FStStrCopy var_98
  loc_BC0D64: Branch loc_BC0D8C
  loc_BC0D67: ILdRf var_154
  loc_BC0D6A: LitStr "Municipalidad de La Paz"
  loc_BC0D6D: EqStr
  loc_BC0D6F: BranchT loc_BC0D7D
  loc_BC0D72: ILdRf var_154
  loc_BC0D75: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_BC0D78: EqStr
  loc_BC0D7A: BranchF loc_BC0D86
  loc_BC0D7D: LitStr "(1110,1120,1130,1140)"
  loc_BC0D80: FStStrCopy var_98
  loc_BC0D83: Branch loc_BC0D8C
  loc_BC0D86: LitStr "(1110,1120,1130)"
  loc_BC0D89: FStStrCopy var_98
  loc_BC0D8C: LitStr "Municipalidad de Guaymallén"
  loc_BC0D8F: FStStrCopy var_158
  loc_BC0D92: ILdRf var_158
  loc_BC0D95: LitStr "Municipalidad de Maipú"
  loc_BC0D98: EqStr
  loc_BC0D9A: BranchF loc_BC0DE3
  loc_BC0D9D: LitStr "(CarePaco,CaerPaco)"
  loc_BC0DA0: FStStrCopy var_88
  loc_BC0DA3: LitStr "(1,2,3)"
  loc_BC0DA6: FStStrCopy var_8C
  loc_BC0DA9: FLdPr Me
  loc_BC0DAC: MemLdI2 global_106
  loc_BC0DAF: LitI2_Byte &HC
  loc_BC0DB1: EqI2
  loc_BC0DB2: FLdRfVar var_9A
  loc_BC0DB5: FLdPr Me
  loc_BC0DB8: VCallAd Control_ID_OptMensual
  loc_BC0DBB: FStAdFunc var_C0
  loc_BC0DBE: FLdPr var_C0
  loc_BC0DC1:  = Me.Value
  loc_BC0DC6: FLdI2 var_9A
  loc_BC0DC9: NotI4
  loc_BC0DCA: AndI4
  loc_BC0DCB: FFree1Ad var_C0
  loc_BC0DCE: BranchF loc_BC0DDA
  loc_BC0DD1: LitStr "('')"
  loc_BC0DD4: FStStrCopy var_90
  loc_BC0DD7: Branch loc_BC0DE0
  loc_BC0DDA: LitStr "(5,7,6,8)"
  loc_BC0DDD: FStStrCopy var_90
  loc_BC0DE0: Branch loc_BC10E1
  loc_BC0DE3: ILdRf var_158
  loc_BC0DE6: LitStr "Municipalidad de Tunuyán"
  loc_BC0DE9: EqStr
  loc_BC0DEB: BranchT loc_BC0DF9
  loc_BC0DEE: ILdRf var_158
  loc_BC0DF1: LitStr "Municipalidad de San Carlos"
  loc_BC0DF4: EqStr
  loc_BC0DF6: BranchF loc_BC0E3F
  loc_BC0DF9: LitStr "(CarePaco,CaerPaco)"
  loc_BC0DFC: FStStrCopy var_88
  loc_BC0DFF: LitStr "(1,2,3,4)"
  loc_BC0E02: FStStrCopy var_8C
  loc_BC0E05: FLdPr Me
  loc_BC0E08: MemLdI2 global_106
  loc_BC0E0B: LitI2_Byte &HC
  loc_BC0E0D: EqI2
  loc_BC0E0E: FLdRfVar var_9A
  loc_BC0E11: FLdPr Me
  loc_BC0E14: VCallAd Control_ID_OptMensual
  loc_BC0E17: FStAdFunc var_C0
  loc_BC0E1A: FLdPr var_C0
  loc_BC0E1D:  = Me.Value
  loc_BC0E22: FLdI2 var_9A
  loc_BC0E25: NotI4
  loc_BC0E26: AndI4
  loc_BC0E27: FFree1Ad var_C0
  loc_BC0E2A: BranchF loc_BC0E36
  loc_BC0E2D: LitStr "('')"
  loc_BC0E30: FStStrCopy var_90
  loc_BC0E33: Branch loc_BC0E3C
  loc_BC0E36: LitStr "(5,7,6,8)"
  loc_BC0E39: FStStrCopy var_90
  loc_BC0E3C: Branch loc_BC10E1
  loc_BC0E3F: ILdRf var_158
  loc_BC0E42: LitStr "Municipalidad de Malargüe"
  loc_BC0E45: EqStr
  loc_BC0E47: BranchT loc_BC0E55
  loc_BC0E4A: ILdRf var_158
  loc_BC0E4D: LitStr "Municipalidad de Tupungatooooo"
  loc_BC0E50: EqStr
  loc_BC0E52: BranchF loc_BC0E9B
  loc_BC0E55: LitStr "(TranPaco,CarePaco,CaerPaco)"
  loc_BC0E58: FStStrCopy var_88
  loc_BC0E5B: LitStr "(1,2,3,4)"
  loc_BC0E5E: FStStrCopy var_8C
  loc_BC0E61: FLdPr Me
  loc_BC0E64: MemLdI2 global_106
  loc_BC0E67: LitI2_Byte &HC
  loc_BC0E69: EqI2
  loc_BC0E6A: FLdRfVar var_9A
  loc_BC0E6D: FLdPr Me
  loc_BC0E70: VCallAd Control_ID_OptMensual
  loc_BC0E73: FStAdFunc var_C0
  loc_BC0E76: FLdPr var_C0
  loc_BC0E79:  = Me.Value
  loc_BC0E7E: FLdI2 var_9A
  loc_BC0E81: NotI4
  loc_BC0E82: AndI4
  loc_BC0E83: FFree1Ad var_C0
  loc_BC0E86: BranchF loc_BC0E92
  loc_BC0E89: LitStr "('')"
  loc_BC0E8C: FStStrCopy var_90
  loc_BC0E8F: Branch loc_BC0E98
  loc_BC0E92: LitStr "(5,7,6,8)"
  loc_BC0E95: FStStrCopy var_90
  loc_BC0E98: Branch loc_BC10E1
  loc_BC0E9B: ILdRf var_158
  loc_BC0E9E: LitStr "Municipalidad de Tupungato"
  loc_BC0EA1: EqStr
  loc_BC0EA3: BranchF loc_BC0EEC
  loc_BC0EA6: LitStr "(TranPaco,CarePaco,CaerPaco,ProvPaco)"
  loc_BC0EA9: FStStrCopy var_88
  loc_BC0EAC: LitStr "(1,2,3,4)"
  loc_BC0EAF: FStStrCopy var_8C
  loc_BC0EB2: FLdPr Me
  loc_BC0EB5: MemLdI2 global_106
  loc_BC0EB8: LitI2_Byte &HC
  loc_BC0EBA: EqI2
  loc_BC0EBB: FLdRfVar var_9A
  loc_BC0EBE: FLdPr Me
  loc_BC0EC1: VCallAd Control_ID_OptMensual
  loc_BC0EC4: FStAdFunc var_C0
  loc_BC0EC7: FLdPr var_C0
  loc_BC0ECA:  = Me.Value
  loc_BC0ECF: FLdI2 var_9A
  loc_BC0ED2: NotI4
  loc_BC0ED3: AndI4
  loc_BC0ED4: FFree1Ad var_C0
  loc_BC0ED7: BranchF loc_BC0EE3
  loc_BC0EDA: LitStr "('')"
  loc_BC0EDD: FStStrCopy var_90
  loc_BC0EE0: Branch loc_BC0EE9
  loc_BC0EE3: LitStr "(5,7,6,8)"
  loc_BC0EE6: FStStrCopy var_90
  loc_BC0EE9: Branch loc_BC10E1
  loc_BC0EEC: ILdRf var_158
  loc_BC0EEF: LitStr "Municipalidad de Lavalle"
  loc_BC0EF2: EqStr
  loc_BC0EF4: BranchT loc_BC0F0D
  loc_BC0EF7: ILdRf var_158
  loc_BC0EFA: LitStr "Municipalidad de Rivadavia"
  loc_BC0EFD: EqStr
  loc_BC0EFF: BranchT loc_BC0F0D
  loc_BC0F02: ILdRf var_158
  loc_BC0F05: LitStr "Municipalidad de General Alvear"
  loc_BC0F08: EqStr
  loc_BC0F0A: BranchF loc_BC0FD0
  loc_BC0F0D: LitStr "(CarePaco,CaerPaco)"
  loc_BC0F10: FStStrCopy var_88
  loc_BC0F13: LitStr "(1,2,3)"
  loc_BC0F16: FStStrCopy var_8C
  loc_BC0F19: FLdRfVar var_150
  loc_BC0F1C: FLdPr Me
  loc_BC0F1F: VCallAd Control_ID_cboPeriodo
  loc_BC0F22: FStAdFunc var_C4
  loc_BC0F25: FLdPr var_C4
  loc_BC0F28:  = Me.Text
  loc_BC0F2D: FLdPr Me
  loc_BC0F30: MemLdI2 global_106
  loc_BC0F33: LitI2_Byte &HC
  loc_BC0F35: EqI2
  loc_BC0F36: CVarBoolI2 var_AC
  loc_BC0F3A: FLdRfVar var_CC
  loc_BC0F3D: FLdPr Me
  loc_BC0F40: VCallAd Control_ID_cboPeriodo
  loc_BC0F43: FStAdFunc var_C0
  loc_BC0F46: FLdPr var_C0
  loc_BC0F49:  = Me.Text
  loc_BC0F4E: ILdRf var_CC
  loc_BC0F51: CI2Str
  loc_BC0F53: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_BC0F58: CVarStr var_EC
  loc_BC0F5B: HardType
  loc_BC0F5C: LitStr "31"
  loc_BC0F5F: CI2Str
  loc_BC0F61: LitStr "12"
  loc_BC0F64: CI2Str
  loc_BC0F66: ILdRf var_150
  loc_BC0F69: CI2Str
  loc_BC0F6B: FLdRfVar var_DC
  loc_BC0F6E: ImpAdCallFPR4  = DateSerial(, , )
  loc_BC0F73: FLdRfVar var_DC
  loc_BC0F76: EqVar var_FC
  loc_BC0F7A: AndVar var_10C
  loc_BC0F7E: FLdRfVar var_9A
  loc_BC0F81: FLdPr Me
  loc_BC0F84: VCallAd Control_ID_OptMensual
  loc_BC0F87: FStAdFunc var_15C
  loc_BC0F8A: FLdPr var_15C
  loc_BC0F8D:  = Me.Value
  loc_BC0F92: FLdI2 var_9A
  loc_BC0F95: NotI4
  loc_BC0F96: CVarBoolI2 var_BC
  loc_BC0F9A: AndVar var_11C
  loc_BC0F9E: CBoolVarNull
  loc_BC0FA0: FFreeStr var_CC = ""
  loc_BC0FA7: FFreeAd var_C0 = "": var_C4 = ""
  loc_BC0FB0: FFreeVar var_EC = "": var_DC = "": var_AC = ""
  loc_BC0FBB: BranchF loc_BC0FC7
  loc_BC0FBE: LitStr "('')"
  loc_BC0FC1: FStStrCopy var_90
  loc_BC0FC4: Branch loc_BC0FCD
  loc_BC0FC7: LitStr "(5,7,6,8)"
  loc_BC0FCA: FStStrCopy var_90
  loc_BC0FCD: Branch loc_BC10E1
  loc_BC0FD0: ILdRf var_158
  loc_BC0FD3: LitStr "Municipalidad de Guaymallén"
  loc_BC0FD6: EqStr
  loc_BC0FD8: BranchF loc_BC1021
  loc_BC0FDB: LitStr "(CarePaco,CaerPaco)"
  loc_BC0FDE: FStStrCopy var_88
  loc_BC0FE1: LitStr "(1,2,3)"
  loc_BC0FE4: FStStrCopy var_8C
  loc_BC0FE7: FLdPr Me
  loc_BC0FEA: MemLdI2 global_106
  loc_BC0FED: LitI2_Byte &HC
  loc_BC0FEF: EqI2
  loc_BC0FF0: FLdRfVar var_9A
  loc_BC0FF3: FLdPr Me
  loc_BC0FF6: VCallAd Control_ID_OptMensual
  loc_BC0FF9: FStAdFunc var_C0
  loc_BC0FFC: FLdPr var_C0
  loc_BC0FFF:  = Me.Value
  loc_BC1004: FLdI2 var_9A
  loc_BC1007: NotI4
  loc_BC1008: AndI4
  loc_BC1009: FFree1Ad var_C0
  loc_BC100C: BranchF loc_BC1018
  loc_BC100F: LitStr "(5,7,6,8)"
  loc_BC1012: FStStrCopy var_90
  loc_BC1015: Branch loc_BC101E
  loc_BC1018: LitStr "(5,7,6,8)"
  loc_BC101B: FStStrCopy var_90
  loc_BC101E: Branch loc_BC10E1
  loc_BC1021: LitStr "(TranPaco,CarePaco,CaerPaco)"
  loc_BC1024: FStStrCopy var_88
  loc_BC1027: LitStr "(1,2,3)"
  loc_BC102A: FStStrCopy var_8C
  loc_BC102D: FLdRfVar var_150
  loc_BC1030: FLdPr Me
  loc_BC1033: VCallAd Control_ID_cboPeriodo
  loc_BC1036: FStAdFunc var_C4
  loc_BC1039: FLdPr var_C4
  loc_BC103C:  = Me.Text
  loc_BC1041: FLdPr Me
  loc_BC1044: MemLdI2 global_106
  loc_BC1047: LitI2_Byte &HC
  loc_BC1049: EqI2
  loc_BC104A: CVarBoolI2 var_AC
  loc_BC104E: FLdRfVar var_CC
  loc_BC1051: FLdPr Me
  loc_BC1054: VCallAd Control_ID_cboPeriodo
  loc_BC1057: FStAdFunc var_C0
  loc_BC105A: FLdPr var_C0
  loc_BC105D:  = Me.Text
  loc_BC1062: ILdRf var_CC
  loc_BC1065: CI2Str
  loc_BC1067: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_BC106C: CVarStr var_EC
  loc_BC106F: HardType
  loc_BC1070: LitStr "31"
  loc_BC1073: CI2Str
  loc_BC1075: LitStr "12"
  loc_BC1078: CI2Str
  loc_BC107A: ILdRf var_150
  loc_BC107D: CI2Str
  loc_BC107F: FLdRfVar var_DC
  loc_BC1082: ImpAdCallFPR4  = DateSerial(, , )
  loc_BC1087: FLdRfVar var_DC
  loc_BC108A: EqVar var_FC
  loc_BC108E: AndVar var_10C
  loc_BC1092: FLdRfVar var_9A
  loc_BC1095: FLdPr Me
  loc_BC1098: VCallAd Control_ID_OptMensual
  loc_BC109B: FStAdFunc var_15C
  loc_BC109E: FLdPr var_15C
  loc_BC10A1:  = Me.Value
  loc_BC10A6: FLdI2 var_9A
  loc_BC10A9: NotI4
  loc_BC10AA: CVarBoolI2 var_BC
  loc_BC10AE: AndVar var_11C
  loc_BC10B2: CBoolVarNull
  loc_BC10B4: FFreeStr var_CC = ""
  loc_BC10BB: FFreeAd var_C0 = "": var_C4 = ""
  loc_BC10C4: FFreeVar var_EC = "": var_DC = "": var_AC = ""
  loc_BC10CF: BranchF loc_BC10DB
  loc_BC10D2: LitStr "('')"
  loc_BC10D5: FStStrCopy var_90
  loc_BC10D8: Branch loc_BC10E1
  loc_BC10DB: LitStr "(5,7,6,8)"
  loc_BC10DE: FStStrCopy var_90
  loc_BC10E1: FLdPr Me
  loc_BC10E4: MemLdRfVar from_stack_1.global_88
  loc_BC10E7: NewIfNullAd
  loc_BC10EA: FStAd var_160 
  loc_BC10EE: FLdRfVar var_CC
  loc_BC10F1: FLdPr Me
  loc_BC10F4: VCallAd Control_ID_cboPeriodo
  loc_BC10F7: FStAdFunc var_C0
  loc_BC10FA: FLdPr var_C0
  loc_BC10FD:  = Me.Text
  loc_BC1102: FLdRfVar var_9A
  loc_BC1105: FLdPr Me
  loc_BC1108: VCallAd Control_ID_OptMensual
  loc_BC110B: FStAdFunc var_C4
  loc_BC110E: FLdPr var_C4
  loc_BC1111:  = Me.Value
  loc_BC1116: LitVar_FALSE
  loc_BC111A: LitVar_TRUE var_DC
  loc_BC111D: FLdI2 var_9A
  loc_BC1120: LitI2_Byte &HFF
  loc_BC1122: EqI2
  loc_BC1123: CVarBoolI2 var_AC
  loc_BC1127: FLdRfVar var_FC
  loc_BC112A: ImpAdCallFPR4  = IIf(, , )
  loc_BC112F: FLdRfVar var_162
  loc_BC1132: ILdRf var_98
  loc_BC1135: FLdRfVar var_FC
  loc_BC1138: CBoolVar
  loc_BC113A: FLdPr Me
  loc_BC113D: MemLdI2 global_106
  loc_BC1140: ILdRf var_CC
  loc_BC1143: CI2Str
  loc_BC1145: FLdPr var_160
  loc_BC1148: from_stack_5v = clsbase.Anexos_IX_mensual(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BC114D: FLdI2 var_162
  loc_BC1150: NotI4
  loc_BC1151: FFree1Str var_CC
  loc_BC1154: FFreeAd var_C0 = ""
  loc_BC115B: FFreeVar var_AC = "": var_DC = "": var_EC = ""
  loc_BC1166: BranchF loc_BC116C
  loc_BC1169: Branch loc_BC1D47
  loc_BC116C: LitStr "Municipalidad de Guaymallén"
  loc_BC116F: LitStr "Municipalidad de General Alvear"
  loc_BC1172: EqStr
  loc_BC1174: BranchF loc_BC12D6
  loc_BC1177: LitStr "DROP TEMPORARY TABLE IF EXISTS tt;"
  loc_BC117A: LitStr " CREATE TEMPORARY TABLE tt"
  loc_BC117D: ConcatStr
  loc_BC117E: FStStrNoPop var_CC
  loc_BC1181: LitStr " SELECT * FROM tmovi"
  loc_BC1184: ConcatStr
  loc_BC1185: FStStrNoPop var_150
  loc_BC1188: LitStr " WHERE NOT (CodiCuco LIKE '31" & Chr(37) & "' OR CodiCuco LIKE '34" & Chr(37) & "');"
  loc_BC118B: ConcatStr
  loc_BC118C: FStStrNoPop var_168
  loc_BC118F: FLdPr var_160
  loc_BC1192: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC1197: FFreeStr var_CC = "": var_150 = ""
  loc_BC11A0: LitStr "INSERT INTO tt"
  loc_BC11A3: LitStr " SELECT PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD) SaldIniD, Sum(SaldIniH) SaldIniH, Sum(MoviEjeD) MoviEjeD, Sum(MoviEjeH) MoviEjeH, Sum(MoviFonD) MoviFonD, Sum(MoviFonH) MoviFonH, Sum(VarPatD) VarPatD, Sum(VarPatH) VarPatH, Sum(SaldFinaD) SaldFinaD, Sum(SaldFinaH) SaldFinaH"
  loc_BC11A6: ConcatStr
  loc_BC11A7: FStStrNoPop var_CC
  loc_BC11AA: LitStr " FROM tmovi"
  loc_BC11AD: ConcatStr
  loc_BC11AE: FStStrNoPop var_150
  loc_BC11B1: LitStr " WHERE (CodiCuco LIKE '31" & Chr(37) & "' OR CodiCuco LIKE '34" & Chr(37) & "');"
  loc_BC11B4: ConcatStr
  loc_BC11B5: FStStrNoPop var_168
  loc_BC11B8: FLdPr var_160
  loc_BC11BB: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC11C0: FFreeStr var_CC = "": var_150 = ""
  loc_BC11C9: LitStr "SELECT tt.PeriInfo, CodiCuco, DetaCuco, tt.CodiTicu, DetaTicu"
  loc_BC11CC: LitStr ", IF(SaldIniD>0,SaldIniD,0) SaldIniD, IF(SaldIniH>0,SaldIniH,0) SaldIniH"
  loc_BC11CF: ConcatStr
  loc_BC11D0: FStStrNoPop var_CC
  loc_BC11D3: LitStr ", MoviEjeD, MoviEjeH"
  loc_BC11D6: ConcatStr
  loc_BC11D7: FStStrNoPop var_150
  loc_BC11DA: LitStr ", MoviFonD, MoviFonH"
  loc_BC11DD: ConcatStr
  loc_BC11DE: FStStrNoPop var_168
  loc_BC11E1: LitStr ", VarPatD, VarPatH"
  loc_BC11E4: ConcatStr
  loc_BC11E5: FStStrNoPop var_16C
  loc_BC11E8: LitStr ", IF(SaldFinaD>0,SaldFinaD,0) SaldFinaD, IF(SaldFinaH>0,SaldFinaH,0) SaldFinaH"
  loc_BC11EB: ConcatStr
  loc_BC11EC: FStStrNoPop var_170
  loc_BC11EF: LitStr " FROM tt"
  loc_BC11F2: ConcatStr
  loc_BC11F3: FStStrNoPop var_174
  loc_BC11F6: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tt.PeriInfo"
  loc_BC11F9: ConcatStr
  loc_BC11FA: FStStrNoPop var_178
  loc_BC11FD: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = tt.CodiTicu"
  loc_BC1200: ConcatStr
  loc_BC1201: FStStrNoPop var_17C
  loc_BC1204: LitStr " WHERE Left(tt.CodiTicu,1) IN "
  loc_BC1207: ConcatStr
  loc_BC1208: FStStrNoPop var_180
  loc_BC120B: ILdRf var_8C
  loc_BC120E: ConcatStr
  loc_BC120F: FStStrNoPop var_184
  loc_BC1212: LitStr " AND tt.CodiCuco NOT IN "
  loc_BC1215: ConcatStr
  loc_BC1216: FStStrNoPop var_188
  loc_BC1219: ILdRf var_88
  loc_BC121C: ConcatStr
  loc_BC121D: FStStrNoPop var_18C
  loc_BC1220: LitStr " UNION ALL"
  loc_BC1223: ConcatStr
  loc_BC1224: FStStrNoPop var_190
  loc_BC1227: LitStr " SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, tmovi.CodiTicu, DetaTicu"
  loc_BC122A: ConcatStr
  loc_BC122B: FStStrNoPop var_194
  loc_BC122E: LitStr ", IF(Sum(SaldIniD-SaldIniH)>0,Sum(SaldIniD-SaldIniH),0) SaldIniD, IF(Sum(SaldIniH-SaldIniD)>0,Sum(SaldIniH-SaldIniD),0) SaldIniH"
  loc_BC1231: ConcatStr
  loc_BC1232: FStStrNoPop var_198
  loc_BC1235: LitStr ", IF(Sum(MoviFonD)-Sum(MoviFonH)>0,Sum(MoviFonD)-Sum(MoviFonH),0) MoviEjeD, IF(Sum(MoviFonH)-Sum(MoviFonD)>0,Sum(MoviFonH)-Sum(MoviFonD),0) MoviEjeH"
  loc_BC1238: ConcatStr
  loc_BC1239: FStStrNoPop var_19C
  loc_BC123C: LitStr ", 0 AS MoviFonD, 0 AS MoviFonH"
  loc_BC123F: ConcatStr
  loc_BC1240: FStStrNoPop var_1A0
  loc_BC1243: LitStr ", IF(Sum(MoviFonD)-Sum(MoviFonH)>0,Sum(MoviFonD)-Sum(MoviFonH),0) VarPatD, IF(Sum(MoviFonH)-Sum(MoviFonD)>0,Sum(MoviFonH)-Sum(MoviFonD),0) VarPatH"
  loc_BC1246: ConcatStr
  loc_BC1247: FStStrNoPop var_1A4
  loc_BC124A: LitStr ", IF(Sum(SaldIniD+MoviFonD-SaldIniH-MoviFonH)>0,Sum(SaldIniD+MoviFonD-SaldIniH-MoviFonH),0) AS SaldFinaD, IF(Sum(SaldIniH+MoviFonH-SaldIniD-MoviFonD)>0,Sum(SaldIniH+MoviFonH-SaldIniD-MoviFonD),0) SaldFinaH"
  loc_BC124D: ConcatStr
  loc_BC124E: FStStrNoPop var_1A8
  loc_BC1251: LitStr " FROM tmovi"
  loc_BC1254: ConcatStr
  loc_BC1255: FStStrNoPop var_1AC
  loc_BC1258: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_BC125B: ConcatStr
  loc_BC125C: FStStrNoPop var_1B0
  loc_BC125F: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = Concat(Left(tmovi.CodiTicu,1),'000')"
  loc_BC1262: ConcatStr
  loc_BC1263: FStStrNoPop var_1B4
  loc_BC1266: LitStr " WHERE Left(tmovi.CodiTicu,1) IN "
  loc_BC1269: ConcatStr
  loc_BC126A: FStStrNoPop var_1B8
  loc_BC126D: ILdRf var_90
  loc_BC1270: ConcatStr
  loc_BC1271: FStStrNoPop var_1BC
  loc_BC1274: LitStr " AND tmovi.CodiCuco NOT IN "
  loc_BC1277: ConcatStr
  loc_BC1278: FStStrNoPop var_1C0
  loc_BC127B: ILdRf var_88
  loc_BC127E: ConcatStr
  loc_BC127F: FStStrNoPop var_1C4
  loc_BC1282: LitStr " GROUP BY Left(tmovi.CodiTicu,1)"
  loc_BC1285: ConcatStr
  loc_BC1286: FStStrNoPop var_1C8
  loc_BC1289: LitStr " ORDER BY CodiCuco;"
  loc_BC128C: ConcatStr
  loc_BC128D: FStStrNoPop var_1CC
  loc_BC1290: FLdPr var_160
  loc_BC1293: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC1298: FFreeStr var_CC = "": var_150 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = ""
  loc_BC12D3: Branch loc_BC1555
  loc_BC12D6: LitStr "Municipalidad de Guaymallén"
  loc_BC12D9: LitStr "Municipalidad de Tupungato"
  loc_BC12DC: EqStr
  loc_BC12DE: BranchF loc_BC1440
  loc_BC12E1: LitStr "DROP TEMPORARY TABLE IF EXISTS tt;"
  loc_BC12E4: LitStr " CREATE TEMPORARY TABLE tt"
  loc_BC12E7: ConcatStr
  loc_BC12E8: FStStrNoPop var_CC
  loc_BC12EB: LitStr " SELECT * FROM tmovi"
  loc_BC12EE: ConcatStr
  loc_BC12EF: FStStrNoPop var_150
  loc_BC12F2: LitStr " WHERE NOT (CodiCuco LIKE '31" & Chr(37) & "' OR CodiCuco LIKE '33" & Chr(37) & "');"
  loc_BC12F5: ConcatStr
  loc_BC12F6: FStStrNoPop var_168
  loc_BC12F9: FLdPr var_160
  loc_BC12FC: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC1301: FFreeStr var_CC = "": var_150 = ""
  loc_BC130A: LitStr "INSERT INTO tt"
  loc_BC130D: LitStr " SELECT PeriInfo, CodiCuco, DetaCuco, CodiTicu, Sum(SaldIniD) SaldIniD, Sum(SaldIniH) SaldIniH, Sum(MoviEjeD) MoviEjeD, Sum(MoviEjeH) MoviEjeH, Sum(MoviFonD) MoviFonD, Sum(MoviFonH) MoviFonH, Sum(VarPatD) VarPatD, Sum(VarPatH) VarPatH, Sum(SaldFinaD) SaldFinaD, Sum(SaldFinaH) SaldFinaH"
  loc_BC1310: ConcatStr
  loc_BC1311: FStStrNoPop var_CC
  loc_BC1314: LitStr " FROM tmovi"
  loc_BC1317: ConcatStr
  loc_BC1318: FStStrNoPop var_150
  loc_BC131B: LitStr " WHERE (CodiCuco LIKE '31" & Chr(37) & "' OR CodiCuco LIKE '33" & Chr(37) & "');"
  loc_BC131E: ConcatStr
  loc_BC131F: FStStrNoPop var_168
  loc_BC1322: FLdPr var_160
  loc_BC1325: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC132A: FFreeStr var_CC = "": var_150 = ""
  loc_BC1333: LitStr "SELECT tt.PeriInfo, CodiCuco, DetaCuco, tt.CodiTicu, DetaTicu"
  loc_BC1336: LitStr ", IF(SaldIniD>0,SaldIniD,0) SaldIniD, IF(SaldIniH>0,SaldIniH,0) SaldIniH"
  loc_BC1339: ConcatStr
  loc_BC133A: FStStrNoPop var_CC
  loc_BC133D: LitStr ", MoviEjeD, MoviEjeH"
  loc_BC1340: ConcatStr
  loc_BC1341: FStStrNoPop var_150
  loc_BC1344: LitStr ", MoviFonD, MoviFonH"
  loc_BC1347: ConcatStr
  loc_BC1348: FStStrNoPop var_168
  loc_BC134B: LitStr ", VarPatD, VarPatH"
  loc_BC134E: ConcatStr
  loc_BC134F: FStStrNoPop var_16C
  loc_BC1352: LitStr ", IF(SaldFinaD>0,SaldFinaD,0) SaldFinaD, IF(SaldFinaH>0,SaldFinaH,0) SaldFinaH"
  loc_BC1355: ConcatStr
  loc_BC1356: FStStrNoPop var_170
  loc_BC1359: LitStr " FROM tt"
  loc_BC135C: ConcatStr
  loc_BC135D: FStStrNoPop var_174
  loc_BC1360: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tt.PeriInfo"
  loc_BC1363: ConcatStr
  loc_BC1364: FStStrNoPop var_178
  loc_BC1367: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = tt.CodiTicu"
  loc_BC136A: ConcatStr
  loc_BC136B: FStStrNoPop var_17C
  loc_BC136E: LitStr " WHERE Left(tt.CodiTicu,1) IN "
  loc_BC1371: ConcatStr
  loc_BC1372: FStStrNoPop var_180
  loc_BC1375: ILdRf var_8C
  loc_BC1378: ConcatStr
  loc_BC1379: FStStrNoPop var_184
  loc_BC137C: LitStr " AND tt.CodiCuco NOT IN "
  loc_BC137F: ConcatStr
  loc_BC1380: FStStrNoPop var_188
  loc_BC1383: ILdRf var_88
  loc_BC1386: ConcatStr
  loc_BC1387: FStStrNoPop var_18C
  loc_BC138A: LitStr " UNION ALL"
  loc_BC138D: ConcatStr
  loc_BC138E: FStStrNoPop var_190
  loc_BC1391: LitStr " SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, tmovi.CodiTicu, DetaTicu"
  loc_BC1394: ConcatStr
  loc_BC1395: FStStrNoPop var_194
  loc_BC1398: LitStr ", IF(Sum(SaldIniD-SaldIniH)>0,Sum(SaldIniD-SaldIniH),0) SaldIniD, IF(Sum(SaldIniH-SaldIniD)>0,Sum(SaldIniH-SaldIniD),0) SaldIniH"
  loc_BC139B: ConcatStr
  loc_BC139C: FStStrNoPop var_198
  loc_BC139F: LitStr ", IF(Sum(MoviFonD)-Sum(MoviFonH)>0,Sum(MoviFonD)-Sum(MoviFonH),0) MoviEjeD, IF(Sum(MoviFonH)-Sum(MoviFonD)>0,Sum(MoviFonH)-Sum(MoviFonD),0) MoviEjeH"
  loc_BC13A2: ConcatStr
  loc_BC13A3: FStStrNoPop var_19C
  loc_BC13A6: LitStr ", 0 AS MoviFonD, 0 AS MoviFonH"
  loc_BC13A9: ConcatStr
  loc_BC13AA: FStStrNoPop var_1A0
  loc_BC13AD: LitStr ", IF(Sum(MoviFonD)-Sum(MoviFonH)>0,Sum(MoviFonD)-Sum(MoviFonH),0) VarPatD, IF(Sum(MoviFonH)-Sum(MoviFonD)>0,Sum(MoviFonH)-Sum(MoviFonD),0) VarPatH"
  loc_BC13B0: ConcatStr
  loc_BC13B1: FStStrNoPop var_1A4
  loc_BC13B4: LitStr ", IF(Sum(SaldIniD+MoviFonD-SaldIniH-MoviFonH)>0,Sum(SaldIniD+MoviFonD-SaldIniH-MoviFonH),0) AS SaldFinaD, IF(Sum(SaldIniH+MoviFonH-SaldIniD-MoviFonD)>0,Sum(SaldIniH+MoviFonH-SaldIniD-MoviFonD),0) SaldFinaH"
  loc_BC13B7: ConcatStr
  loc_BC13B8: FStStrNoPop var_1A8
  loc_BC13BB: LitStr " FROM tmovi"
  loc_BC13BE: ConcatStr
  loc_BC13BF: FStStrNoPop var_1AC
  loc_BC13C2: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_BC13C5: ConcatStr
  loc_BC13C6: FStStrNoPop var_1B0
  loc_BC13C9: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = Concat(Left(tmovi.CodiTicu,1),'000')"
  loc_BC13CC: ConcatStr
  loc_BC13CD: FStStrNoPop var_1B4
  loc_BC13D0: LitStr " WHERE Left(tmovi.CodiTicu,1) IN "
  loc_BC13D3: ConcatStr
  loc_BC13D4: FStStrNoPop var_1B8
  loc_BC13D7: ILdRf var_90
  loc_BC13DA: ConcatStr
  loc_BC13DB: FStStrNoPop var_1BC
  loc_BC13DE: LitStr " AND tmovi.CodiCuco NOT IN "
  loc_BC13E1: ConcatStr
  loc_BC13E2: FStStrNoPop var_1C0
  loc_BC13E5: ILdRf var_88
  loc_BC13E8: ConcatStr
  loc_BC13E9: FStStrNoPop var_1C4
  loc_BC13EC: LitStr " GROUP BY Left(tmovi.CodiTicu,1)"
  loc_BC13EF: ConcatStr
  loc_BC13F0: FStStrNoPop var_1C8
  loc_BC13F3: LitStr " ORDER BY CodiCuco;"
  loc_BC13F6: ConcatStr
  loc_BC13F7: FStStrNoPop var_1CC
  loc_BC13FA: FLdPr var_160
  loc_BC13FD: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC1402: FFreeStr var_CC = "": var_150 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = ""
  loc_BC143D: Branch loc_BC1555
  loc_BC1440: LitStr "DROP TEMPORARY TABLE IF EXISTS tt; CREATE TEMPORARY TABLE tt SELECT * FROM tmovi;"
  loc_BC1443: FLdPr var_160
  loc_BC1446: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC144B: LitStr "SELECT tt.PeriInfo, CodiCuco, DetaCuco, tt.CodiTicu, DetaTicu"
  loc_BC144E: LitStr ", IF(SaldIniD>0,SaldIniD,0) SaldIniD, IF(SaldIniH>0,SaldIniH,0) SaldIniH"
  loc_BC1451: ConcatStr
  loc_BC1452: FStStrNoPop var_CC
  loc_BC1455: LitStr ", MoviEjeD, MoviEjeH"
  loc_BC1458: ConcatStr
  loc_BC1459: FStStrNoPop var_150
  loc_BC145C: LitStr ", MoviFonD, MoviFonH"
  loc_BC145F: ConcatStr
  loc_BC1460: FStStrNoPop var_168
  loc_BC1463: LitStr ", VarPatD, VarPatH"
  loc_BC1466: ConcatStr
  loc_BC1467: FStStrNoPop var_16C
  loc_BC146A: LitStr ", IF(SaldFinaD>0,SaldFinaD,0) SaldFinaD, IF(SaldFinaH>0,SaldFinaH,0) SaldFinaH"
  loc_BC146D: ConcatStr
  loc_BC146E: FStStrNoPop var_170
  loc_BC1471: LitStr " FROM tt"
  loc_BC1474: ConcatStr
  loc_BC1475: FStStrNoPop var_174
  loc_BC1478: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tt.PeriInfo"
  loc_BC147B: ConcatStr
  loc_BC147C: FStStrNoPop var_178
  loc_BC147F: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = tt.CodiTicu"
  loc_BC1482: ConcatStr
  loc_BC1483: FStStrNoPop var_17C
  loc_BC1486: LitStr " WHERE Left(tt.CodiTicu,1) IN "
  loc_BC1489: ConcatStr
  loc_BC148A: FStStrNoPop var_180
  loc_BC148D: ILdRf var_8C
  loc_BC1490: ConcatStr
  loc_BC1491: FStStrNoPop var_184
  loc_BC1494: LitStr " AND tt.CodiCuco NOT IN "
  loc_BC1497: ConcatStr
  loc_BC1498: FStStrNoPop var_188
  loc_BC149B: ILdRf var_88
  loc_BC149E: ConcatStr
  loc_BC149F: FStStrNoPop var_18C
  loc_BC14A2: LitStr " UNION ALL"
  loc_BC14A5: ConcatStr
  loc_BC14A6: FStStrNoPop var_190
  loc_BC14A9: LitStr " SELECT tmovi.PeriInfo, CodiCuco, DetaCuco, tmovi.CodiTicu, DetaTicu"
  loc_BC14AC: ConcatStr
  loc_BC14AD: FStStrNoPop var_194
  loc_BC14B0: LitStr ", IF(Sum(SaldIniD-SaldIniH)>0,Sum(SaldIniD-SaldIniH),0) SaldIniD, IF(Sum(SaldIniH-SaldIniD)>0,Sum(SaldIniH-SaldIniD),0) SaldIniH"
  loc_BC14B3: ConcatStr
  loc_BC14B4: FStStrNoPop var_198
  loc_BC14B7: LitStr ", IF(Sum(MoviEjeD)-Sum(MoviEjeH)>0,Sum(MoviEjeD)-Sum(MoviEjeH),0) MoviEjeD, IF(Sum(MoviEjeH)-Sum(MoviEjeD)>0,Sum(MoviEjeH)-Sum(MoviEjeD),0) MoviEjeH"
  loc_BC14BA: ConcatStr
  loc_BC14BB: FStStrNoPop var_19C
  loc_BC14BE: LitStr ", 0 AS MoviFonD, 0 AS MoviFonH"
  loc_BC14C1: ConcatStr
  loc_BC14C2: FStStrNoPop var_1A0
  loc_BC14C5: LitStr ", IF(Sum(MoviEjeD)-Sum(MoviEjeH)>0,Sum(MoviEjeD)-Sum(MoviEjeH),0) VarPatD, IF(Sum(MoviEjeH)-Sum(MoviEjeD)>0,Sum(MoviEjeH)-Sum(MoviEjeD),0) VarPatH"
  loc_BC14C8: ConcatStr
  loc_BC14C9: FStStrNoPop var_1A4
  loc_BC14CC: LitStr ", IF(Sum(SaldIniD+MoviEjeD-SaldIniH-MoviEjeH)>0,Sum(SaldIniD+MoviEjeD-SaldIniH-MoviEjeH),0) SaldFinaD, IF(Sum(SaldIniH+MoviEjeH-SaldIniD-MoviEjeD)>0,Sum(SaldIniH+MoviEjeH-SaldIniD-MoviEjeD),0) SaldFinaH"
  loc_BC14CF: ConcatStr
  loc_BC14D0: FStStrNoPop var_1A8
  loc_BC14D3: LitStr " FROM tmovi"
  loc_BC14D6: ConcatStr
  loc_BC14D7: FStStrNoPop var_1AC
  loc_BC14DA: LitStr " INNER JOIN paraconta p ON p.PeriInfo = tmovi.PeriInfo"
  loc_BC14DD: ConcatStr
  loc_BC14DE: FStStrNoPop var_1B0
  loc_BC14E1: LitStr " INNER JOIN tipocuco tc ON tc.CodiTicu = Concat(Left(tmovi.CodiTicu,1),'000')"
  loc_BC14E4: ConcatStr
  loc_BC14E5: FStStrNoPop var_1B4
  loc_BC14E8: LitStr " WHERE Left(tmovi.CodiTicu,1) IN "
  loc_BC14EB: ConcatStr
  loc_BC14EC: FStStrNoPop var_1B8
  loc_BC14EF: ILdRf var_90
  loc_BC14F2: ConcatStr
  loc_BC14F3: FStStrNoPop var_1BC
  loc_BC14F6: LitStr " AND tmovi.CodiCuco NOT IN "
  loc_BC14F9: ConcatStr
  loc_BC14FA: FStStrNoPop var_1C0
  loc_BC14FD: ILdRf var_88
  loc_BC1500: ConcatStr
  loc_BC1501: FStStrNoPop var_1C4
  loc_BC1504: LitStr " GROUP BY Left(tmovi.CodiTicu,1)"
  loc_BC1507: ConcatStr
  loc_BC1508: FStStrNoPop var_1C8
  loc_BC150B: LitStr " ORDER BY CodiCuco;"
  loc_BC150E: ConcatStr
  loc_BC150F: FStStrNoPop var_1CC
  loc_BC1512: FLdPr var_160
  loc_BC1515: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC151A: FFreeStr var_CC = "": var_150 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = ""
  loc_BC1555: FLdRfVar var_C8
  loc_BC1558: FLdPr var_160
  loc_BC155B: from_stack_1 = clsbase.RecordCount
  loc_BC1560: ILdRf var_C8
  loc_BC1563: LitI4 0
  loc_BC1568: EqI4
  loc_BC1569: BranchF loc_BC157C
  loc_BC156C: LitI4 0
  loc_BC1571: LitStr "No existen registros para el criterio especificado."
  loc_BC1574: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BC1579: Branch loc_BC1D47
  loc_BC157C: LitI4 0
  loc_BC1581: LitI4 1
  loc_BC1586: FLdPr Me
  loc_BC1589: MemLdRfVar from_stack_1.global_100
  loc_BC158C: Redim
  loc_BC1596: LitI4 0
  loc_BC159B: FLdRfVar var_C8
  loc_BC159E: FLdPr var_160
  loc_BC15A1: from_stack_1 = clsbase.RecordCount
  loc_BC15A6: ILdRf var_C8
  loc_BC15A9: FLdPr Me
  loc_BC15AC: MemLdRfVar from_stack_1.global_96
  loc_BC15AF: Redim
  loc_BC15B9: LitI2_Byte 1
  loc_BC15BB: FLdPr Me
  loc_BC15BE: MemLdRfVar from_stack_1.global_104
  loc_BC15C1: FLdPr Me
  loc_BC15C4: MemLdStr global_96
  loc_BC15C7: LitI2_Byte 1
  loc_BC15C9: FnUBound
  loc_BC15CB: CI2I4
  loc_BC15CC: ForI2 var_1D0
  loc_BC15D2: FLdRfVar var_DC
  loc_BC15D5: FLdRfVar var_15C
  loc_BC15D8: LitVarStr var_AC, "CodiTicu"
  loc_BC15DD: PopAdLdVar
  loc_BC15DE: FLdRfVar var_C4
  loc_BC15E1: FLdRfVar var_C0
  loc_BC15E4: FLdPr var_160
  loc_BC15E7: from_stack_1v = clsbase.RsFrmGet()
  loc_BC15EC: FLdPr var_C0
  loc_BC15EF:  = Me.Fields
  loc_BC15F4: FLdPr var_C4
  loc_BC15F7: from_stack_2 = Me.Item(from_stack_1)
  loc_BC15FC: FLdPr var_15C
  loc_BC15FF:  = Me.Value
  loc_BC1604: FLdRfVar var_FC
  loc_BC1607: FLdRfVar var_1DC
  loc_BC160A: LitVarStr var_12C, "CodiTicu"
  loc_BC160F: PopAdLdVar
  loc_BC1610: FLdRfVar var_1D8
  loc_BC1613: FLdRfVar var_1D4
  loc_BC1616: FLdPr var_160
  loc_BC1619: from_stack_1v = clsbase.RsFrmGet()
  loc_BC161E: FLdPr var_1D4
  loc_BC1621:  = Me.Fields
  loc_BC1626: FLdPr var_1D8
  loc_BC1629: from_stack_2 = Me.Item(from_stack_1)
  loc_BC162E: FLdPr var_1DC
  loc_BC1631:  = Me.Value
  loc_BC1636: FLdRfVar var_11C
  loc_BC1639: FLdRfVar var_208
  loc_BC163C: LitVarStr var_204, "CodiTicu"
  loc_BC1641: PopAdLdVar
  loc_BC1642: FLdRfVar var_1F4
  loc_BC1645: FLdRfVar var_1F0
  loc_BC1648: FLdPr var_160
  loc_BC164B: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1650: FLdPr var_1F0
  loc_BC1653:  = Me.Fields
  loc_BC1658: FLdPr var_1F4
  loc_BC165B: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1660: FLdPr var_208
  loc_BC1663:  = Me.Value
  loc_BC1668: FLdRfVar var_14C
  loc_BC166B: FLdRfVar var_234
  loc_BC166E: LitVarStr var_230, "CodiTicu"
  loc_BC1673: PopAdLdVar
  loc_BC1674: FLdRfVar var_220
  loc_BC1677: FLdRfVar var_21C
  loc_BC167A: FLdPr var_160
  loc_BC167D: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1682: FLdPr var_21C
  loc_BC1685:  = Me.Fields
  loc_BC168A: FLdPr var_220
  loc_BC168D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1692: FLdPr var_234
  loc_BC1695:  = Me.Value
  loc_BC169A: LitVarI2 var_EC, 1
  loc_BC169F: LitI4 1
  loc_BC16A4: FLdRfVar var_DC
  loc_BC16A7: CStrVarTmp
  loc_BC16A8: FStStrNoPop var_CC
  loc_BC16AB: ImpAdCallI2 Mid$(, , )
  loc_BC16B0: FStStrNoPop var_150
  loc_BC16B3: LitStr "5"
  loc_BC16B6: EqStr
  loc_BC16B8: LitVarI2 var_10C, 1
  loc_BC16BD: LitI4 1
  loc_BC16C2: FLdRfVar var_FC
  loc_BC16C5: CStrVarTmp
  loc_BC16C6: FStStrNoPop var_168
  loc_BC16C9: ImpAdCallI2 Mid$(, , )
  loc_BC16CE: FStStrNoPop var_16C
  loc_BC16D1: LitStr "6"
  loc_BC16D4: EqStr
  loc_BC16D6: OrI4
  loc_BC16D7: LitVarI2 var_13C, 1
  loc_BC16DC: LitI4 1
  loc_BC16E1: FLdRfVar var_11C
  loc_BC16E4: CStrVarTmp
  loc_BC16E5: FStStrNoPop var_170
  loc_BC16E8: ImpAdCallI2 Mid$(, , )
  loc_BC16ED: FStStrNoPop var_174
  loc_BC16F0: LitStr "7"
  loc_BC16F3: EqStr
  loc_BC16F5: OrI4
  loc_BC16F6: LitVarI2 var_254, 1
  loc_BC16FB: LitI4 1
  loc_BC1700: FLdRfVar var_14C
  loc_BC1703: CStrVarTmp
  loc_BC1704: FStStrNoPop var_178
  loc_BC1707: ImpAdCallI2 Mid$(, , )
  loc_BC170C: FStStrNoPop var_17C
  loc_BC170F: LitStr "8"
  loc_BC1712: EqStr
  loc_BC1714: OrI4
  loc_BC1715: FFreeStr var_CC = "": var_150 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = ""
  loc_BC1728: FFreeAd var_C0 = "": var_C4 = "": var_15C = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1F0 = "": var_1F4 = "": var_208 = "": var_21C = "": var_220 = ""
  loc_BC1743: FFreeVar var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_11C = "": var_13C = "": var_14C = ""
  loc_BC1756: BranchF loc_BC17E8
  loc_BC1759: LitI2_Byte 0
  loc_BC175B: LitVar_Missing var_DC
  loc_BC175E: LitI2_Byte 0
  loc_BC1760: LitVarStr var_AC, vbNullString
  loc_BC1765: PopAdLdVar
  loc_BC1766: FLdPr Me
  loc_BC1769: MemLdI2 global_104
  loc_BC176C: CI4UI1
  loc_BC176D: FLdPr Me
  loc_BC1770: MemLdStr global_96
  loc_BC1773: AryLock
  loc_BC1776: Ary1LdPr
  loc_BC1777: MemLdRfVar from_stack_1.global_0
  loc_BC177A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC177F: AryUnlock
  loc_BC1782: FFree1Var var_DC = ""
  loc_BC1785: FLdRfVar var_15C
  loc_BC1788: LitVarStr var_AC, "DetaTicu"
  loc_BC178D: PopAdLdVar
  loc_BC178E: FLdRfVar var_C4
  loc_BC1791: FLdRfVar var_C0
  loc_BC1794: FLdPr var_160
  loc_BC1797: from_stack_1v = clsbase.RsFrmGet()
  loc_BC179C: FLdPr var_C0
  loc_BC179F:  = Me.Fields
  loc_BC17A4: FLdPr var_C4
  loc_BC17A7: from_stack_2 = Me.Item(from_stack_1)
  loc_BC17AC: LitI2_Byte 0
  loc_BC17AE: LitVar_Missing var_EC
  loc_BC17B1: LitI2_Byte 0
  loc_BC17B3: FLdZeroAd var_15C
  loc_BC17B6: CVarAd
  loc_BC17BA: PopAdLdVar
  loc_BC17BB: FLdPr Me
  loc_BC17BE: MemLdI2 global_104
  loc_BC17C1: CI4UI1
  loc_BC17C2: FLdPr Me
  loc_BC17C5: MemLdStr global_96
  loc_BC17C8: AryLock
  loc_BC17CB: Ary1LdPr
  loc_BC17CC: MemLdRfVar from_stack_1.global_4
  loc_BC17CF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC17D4: AryUnlock
  loc_BC17D7: FFreeAd var_C0 = ""
  loc_BC17DE: FFreeVar var_DC = ""
  loc_BC17E5: Branch loc_BC18A8
  loc_BC17E8: FLdRfVar var_15C
  loc_BC17EB: LitVarStr var_AC, "CodiCuco"
  loc_BC17F0: PopAdLdVar
  loc_BC17F1: FLdRfVar var_C4
  loc_BC17F4: FLdRfVar var_C0
  loc_BC17F7: FLdPr var_160
  loc_BC17FA: from_stack_1v = clsbase.RsFrmGet()
  loc_BC17FF: FLdPr var_C0
  loc_BC1802:  = Me.Fields
  loc_BC1807: FLdPr var_C4
  loc_BC180A: from_stack_2 = Me.Item(from_stack_1)
  loc_BC180F: LitI2_Byte 0
  loc_BC1811: LitVar_Missing var_EC
  loc_BC1814: LitI2_Byte 0
  loc_BC1816: FLdZeroAd var_15C
  loc_BC1819: CVarAd
  loc_BC181D: PopAdLdVar
  loc_BC181E: FLdPr Me
  loc_BC1821: MemLdI2 global_104
  loc_BC1824: CI4UI1
  loc_BC1825: FLdPr Me
  loc_BC1828: MemLdStr global_96
  loc_BC182B: AryLock
  loc_BC182E: Ary1LdPr
  loc_BC182F: MemLdRfVar from_stack_1.global_0
  loc_BC1832: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1837: AryUnlock
  loc_BC183A: FFreeAd var_C0 = ""
  loc_BC1841: FFreeVar var_DC = ""
  loc_BC1848: FLdRfVar var_15C
  loc_BC184B: LitVarStr var_AC, "DetaCuco"
  loc_BC1850: PopAdLdVar
  loc_BC1851: FLdRfVar var_C4
  loc_BC1854: FLdRfVar var_C0
  loc_BC1857: FLdPr var_160
  loc_BC185A: from_stack_1v = clsbase.RsFrmGet()
  loc_BC185F: FLdPr var_C0
  loc_BC1862:  = Me.Fields
  loc_BC1867: FLdPr var_C4
  loc_BC186A: from_stack_2 = Me.Item(from_stack_1)
  loc_BC186F: LitI2_Byte 0
  loc_BC1871: LitVar_Missing var_EC
  loc_BC1874: LitI2_Byte 0
  loc_BC1876: FLdZeroAd var_15C
  loc_BC1879: CVarAd
  loc_BC187D: PopAdLdVar
  loc_BC187E: FLdPr Me
  loc_BC1881: MemLdI2 global_104
  loc_BC1884: CI4UI1
  loc_BC1885: FLdPr Me
  loc_BC1888: MemLdStr global_96
  loc_BC188B: AryLock
  loc_BC188E: Ary1LdPr
  loc_BC188F: MemLdRfVar from_stack_1.global_4
  loc_BC1892: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1897: AryUnlock
  loc_BC189A: FFreeAd var_C0 = ""
  loc_BC18A1: FFreeVar var_DC = ""
  loc_BC18A8: FLdRfVar var_15C
  loc_BC18AB: LitVarStr var_AC, "SaldInid"
  loc_BC18B0: PopAdLdVar
  loc_BC18B1: FLdRfVar var_C4
  loc_BC18B4: FLdRfVar var_C0
  loc_BC18B7: FLdPr var_160
  loc_BC18BA: from_stack_1v = clsbase.RsFrmGet()
  loc_BC18BF: FLdPr var_C0
  loc_BC18C2:  = Me.Fields
  loc_BC18C7: FLdPr var_C4
  loc_BC18CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BC18CF: LitI2_Byte 0
  loc_BC18D1: LitI4 1
  loc_BC18D6: FLdPr Me
  loc_BC18D9: MemLdStr global_100
  loc_BC18DC: AryLock
  loc_BC18DF: Ary1LdPr
  loc_BC18E0: MemLdRfVar from_stack_1.global_8
  loc_BC18E3: CVarRef
  loc_BC18E8: LitI2_Byte &HFF
  loc_BC18EA: FLdZeroAd var_15C
  loc_BC18ED: CVarAd
  loc_BC18F1: PopAdLdVar
  loc_BC18F2: FLdPr Me
  loc_BC18F5: MemLdI2 global_104
  loc_BC18F8: CI4UI1
  loc_BC18F9: FLdPr Me
  loc_BC18FC: MemLdStr global_96
  loc_BC18FF: AryLock
  loc_BC1902: Ary1LdPr
  loc_BC1903: MemLdRfVar from_stack_1.global_8
  loc_BC1906: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC190B: AryUnlock
  loc_BC190E: AryUnlock
  loc_BC1911: FFreeAd var_C0 = ""
  loc_BC1918: FFree1Var var_DC = ""
  loc_BC191B: FLdRfVar var_15C
  loc_BC191E: LitVarStr var_AC, "SaldInih"
  loc_BC1923: PopAdLdVar
  loc_BC1924: FLdRfVar var_C4
  loc_BC1927: FLdRfVar var_C0
  loc_BC192A: FLdPr var_160
  loc_BC192D: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1932: FLdPr var_C0
  loc_BC1935:  = Me.Fields
  loc_BC193A: FLdPr var_C4
  loc_BC193D: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1942: LitI2_Byte 0
  loc_BC1944: LitI4 1
  loc_BC1949: FLdPr Me
  loc_BC194C: MemLdStr global_100
  loc_BC194F: AryLock
  loc_BC1952: Ary1LdPr
  loc_BC1953: MemLdRfVar from_stack_1.global_12
  loc_BC1956: CVarRef
  loc_BC195B: LitI2_Byte &HFF
  loc_BC195D: FLdZeroAd var_15C
  loc_BC1960: CVarAd
  loc_BC1964: PopAdLdVar
  loc_BC1965: FLdPr Me
  loc_BC1968: MemLdI2 global_104
  loc_BC196B: CI4UI1
  loc_BC196C: FLdPr Me
  loc_BC196F: MemLdStr global_96
  loc_BC1972: AryLock
  loc_BC1975: Ary1LdPr
  loc_BC1976: MemLdRfVar from_stack_1.global_12
  loc_BC1979: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC197E: AryUnlock
  loc_BC1981: AryUnlock
  loc_BC1984: FFreeAd var_C0 = ""
  loc_BC198B: FFree1Var var_DC = ""
  loc_BC198E: FLdRfVar var_15C
  loc_BC1991: LitVarStr var_AC, "MoviEjed"
  loc_BC1996: PopAdLdVar
  loc_BC1997: FLdRfVar var_C4
  loc_BC199A: FLdRfVar var_C0
  loc_BC199D: FLdPr var_160
  loc_BC19A0: from_stack_1v = clsbase.RsFrmGet()
  loc_BC19A5: FLdPr var_C0
  loc_BC19A8:  = Me.Fields
  loc_BC19AD: FLdPr var_C4
  loc_BC19B0: from_stack_2 = Me.Item(from_stack_1)
  loc_BC19B5: LitI2_Byte 0
  loc_BC19B7: LitI4 1
  loc_BC19BC: FLdPr Me
  loc_BC19BF: MemLdStr global_100
  loc_BC19C2: AryLock
  loc_BC19C5: Ary1LdPr
  loc_BC19C6: MemLdRfVar from_stack_1.global_16
  loc_BC19C9: CVarRef
  loc_BC19CE: LitI2_Byte &HFF
  loc_BC19D0: FLdZeroAd var_15C
  loc_BC19D3: CVarAd
  loc_BC19D7: PopAdLdVar
  loc_BC19D8: FLdPr Me
  loc_BC19DB: MemLdI2 global_104
  loc_BC19DE: CI4UI1
  loc_BC19DF: FLdPr Me
  loc_BC19E2: MemLdStr global_96
  loc_BC19E5: AryLock
  loc_BC19E8: Ary1LdPr
  loc_BC19E9: MemLdRfVar from_stack_1.global_16
  loc_BC19EC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC19F1: AryUnlock
  loc_BC19F4: AryUnlock
  loc_BC19F7: FFreeAd var_C0 = ""
  loc_BC19FE: FFree1Var var_DC = ""
  loc_BC1A01: FLdRfVar var_15C
  loc_BC1A04: LitVarStr var_AC, "MoviEjeh"
  loc_BC1A09: PopAdLdVar
  loc_BC1A0A: FLdRfVar var_C4
  loc_BC1A0D: FLdRfVar var_C0
  loc_BC1A10: FLdPr var_160
  loc_BC1A13: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1A18: FLdPr var_C0
  loc_BC1A1B:  = Me.Fields
  loc_BC1A20: FLdPr var_C4
  loc_BC1A23: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1A28: LitI2_Byte 0
  loc_BC1A2A: LitI4 1
  loc_BC1A2F: FLdPr Me
  loc_BC1A32: MemLdStr global_100
  loc_BC1A35: AryLock
  loc_BC1A38: Ary1LdPr
  loc_BC1A39: MemLdRfVar from_stack_1.global_20
  loc_BC1A3C: CVarRef
  loc_BC1A41: LitI2_Byte &HFF
  loc_BC1A43: FLdZeroAd var_15C
  loc_BC1A46: CVarAd
  loc_BC1A4A: PopAdLdVar
  loc_BC1A4B: FLdPr Me
  loc_BC1A4E: MemLdI2 global_104
  loc_BC1A51: CI4UI1
  loc_BC1A52: FLdPr Me
  loc_BC1A55: MemLdStr global_96
  loc_BC1A58: AryLock
  loc_BC1A5B: Ary1LdPr
  loc_BC1A5C: MemLdRfVar from_stack_1.global_20
  loc_BC1A5F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1A64: AryUnlock
  loc_BC1A67: AryUnlock
  loc_BC1A6A: FFreeAd var_C0 = ""
  loc_BC1A71: FFree1Var var_DC = ""
  loc_BC1A74: FLdRfVar var_15C
  loc_BC1A77: LitVarStr var_AC, "MoviFond"
  loc_BC1A7C: PopAdLdVar
  loc_BC1A7D: FLdRfVar var_C4
  loc_BC1A80: FLdRfVar var_C0
  loc_BC1A83: FLdPr var_160
  loc_BC1A86: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1A8B: FLdPr var_C0
  loc_BC1A8E:  = Me.Fields
  loc_BC1A93: FLdPr var_C4
  loc_BC1A96: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1A9B: LitI2_Byte 0
  loc_BC1A9D: LitI4 1
  loc_BC1AA2: FLdPr Me
  loc_BC1AA5: MemLdStr global_100
  loc_BC1AA8: AryLock
  loc_BC1AAB: Ary1LdPr
  loc_BC1AAC: MemLdRfVar from_stack_1.global_24
  loc_BC1AAF: CVarRef
  loc_BC1AB4: LitI2_Byte &HFF
  loc_BC1AB6: FLdZeroAd var_15C
  loc_BC1AB9: CVarAd
  loc_BC1ABD: PopAdLdVar
  loc_BC1ABE: FLdPr Me
  loc_BC1AC1: MemLdI2 global_104
  loc_BC1AC4: CI4UI1
  loc_BC1AC5: FLdPr Me
  loc_BC1AC8: MemLdStr global_96
  loc_BC1ACB: AryLock
  loc_BC1ACE: Ary1LdPr
  loc_BC1ACF: MemLdRfVar from_stack_1.global_24
  loc_BC1AD2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1AD7: AryUnlock
  loc_BC1ADA: AryUnlock
  loc_BC1ADD: FFreeAd var_C0 = ""
  loc_BC1AE4: FFree1Var var_DC = ""
  loc_BC1AE7: FLdRfVar var_15C
  loc_BC1AEA: LitVarStr var_AC, "MoviFonh"
  loc_BC1AEF: PopAdLdVar
  loc_BC1AF0: FLdRfVar var_C4
  loc_BC1AF3: FLdRfVar var_C0
  loc_BC1AF6: FLdPr var_160
  loc_BC1AF9: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1AFE: FLdPr var_C0
  loc_BC1B01:  = Me.Fields
  loc_BC1B06: FLdPr var_C4
  loc_BC1B09: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1B0E: LitI2_Byte 0
  loc_BC1B10: LitI4 1
  loc_BC1B15: FLdPr Me
  loc_BC1B18: MemLdStr global_100
  loc_BC1B1B: AryLock
  loc_BC1B1E: Ary1LdPr
  loc_BC1B1F: MemLdRfVar from_stack_1.global_28
  loc_BC1B22: CVarRef
  loc_BC1B27: LitI2_Byte &HFF
  loc_BC1B29: FLdZeroAd var_15C
  loc_BC1B2C: CVarAd
  loc_BC1B30: PopAdLdVar
  loc_BC1B31: FLdPr Me
  loc_BC1B34: MemLdI2 global_104
  loc_BC1B37: CI4UI1
  loc_BC1B38: FLdPr Me
  loc_BC1B3B: MemLdStr global_96
  loc_BC1B3E: AryLock
  loc_BC1B41: Ary1LdPr
  loc_BC1B42: MemLdRfVar from_stack_1.global_28
  loc_BC1B45: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1B4A: AryUnlock
  loc_BC1B4D: AryUnlock
  loc_BC1B50: FFreeAd var_C0 = ""
  loc_BC1B57: FFree1Var var_DC = ""
  loc_BC1B5A: FLdRfVar var_15C
  loc_BC1B5D: LitVarStr var_AC, "VarPatD"
  loc_BC1B62: PopAdLdVar
  loc_BC1B63: FLdRfVar var_C4
  loc_BC1B66: FLdRfVar var_C0
  loc_BC1B69: FLdPr var_160
  loc_BC1B6C: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1B71: FLdPr var_C0
  loc_BC1B74:  = Me.Fields
  loc_BC1B79: FLdPr var_C4
  loc_BC1B7C: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1B81: LitI2_Byte 0
  loc_BC1B83: LitI4 1
  loc_BC1B88: FLdPr Me
  loc_BC1B8B: MemLdStr global_100
  loc_BC1B8E: AryLock
  loc_BC1B91: Ary1LdPr
  loc_BC1B92: MemLdRfVar from_stack_1.global_32
  loc_BC1B95: CVarRef
  loc_BC1B9A: LitI2_Byte &HFF
  loc_BC1B9C: FLdZeroAd var_15C
  loc_BC1B9F: CVarAd
  loc_BC1BA3: PopAdLdVar
  loc_BC1BA4: FLdPr Me
  loc_BC1BA7: MemLdI2 global_104
  loc_BC1BAA: CI4UI1
  loc_BC1BAB: FLdPr Me
  loc_BC1BAE: MemLdStr global_96
  loc_BC1BB1: AryLock
  loc_BC1BB4: Ary1LdPr
  loc_BC1BB5: MemLdRfVar from_stack_1.global_32
  loc_BC1BB8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1BBD: AryUnlock
  loc_BC1BC0: AryUnlock
  loc_BC1BC3: FFreeAd var_C0 = ""
  loc_BC1BCA: FFree1Var var_DC = ""
  loc_BC1BCD: FLdRfVar var_15C
  loc_BC1BD0: LitVarStr var_AC, "VarPatH"
  loc_BC1BD5: PopAdLdVar
  loc_BC1BD6: FLdRfVar var_C4
  loc_BC1BD9: FLdRfVar var_C0
  loc_BC1BDC: FLdPr var_160
  loc_BC1BDF: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1BE4: FLdPr var_C0
  loc_BC1BE7:  = Me.Fields
  loc_BC1BEC: FLdPr var_C4
  loc_BC1BEF: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1BF4: LitI2_Byte 0
  loc_BC1BF6: LitI4 1
  loc_BC1BFB: FLdPr Me
  loc_BC1BFE: MemLdStr global_100
  loc_BC1C01: AryLock
  loc_BC1C04: Ary1LdPr
  loc_BC1C05: MemLdRfVar from_stack_1.global_36
  loc_BC1C08: CVarRef
  loc_BC1C0D: LitI2_Byte &HFF
  loc_BC1C0F: FLdZeroAd var_15C
  loc_BC1C12: CVarAd
  loc_BC1C16: PopAdLdVar
  loc_BC1C17: FLdPr Me
  loc_BC1C1A: MemLdI2 global_104
  loc_BC1C1D: CI4UI1
  loc_BC1C1E: FLdPr Me
  loc_BC1C21: MemLdStr global_96
  loc_BC1C24: AryLock
  loc_BC1C27: Ary1LdPr
  loc_BC1C28: MemLdRfVar from_stack_1.global_36
  loc_BC1C2B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1C30: AryUnlock
  loc_BC1C33: AryUnlock
  loc_BC1C36: FFreeAd var_C0 = ""
  loc_BC1C3D: FFree1Var var_DC = ""
  loc_BC1C40: FLdRfVar var_15C
  loc_BC1C43: LitVarStr var_AC, "SaldFinaD"
  loc_BC1C48: PopAdLdVar
  loc_BC1C49: FLdRfVar var_C4
  loc_BC1C4C: FLdRfVar var_C0
  loc_BC1C4F: FLdPr var_160
  loc_BC1C52: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1C57: FLdPr var_C0
  loc_BC1C5A:  = Me.Fields
  loc_BC1C5F: FLdPr var_C4
  loc_BC1C62: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1C67: LitI2_Byte 0
  loc_BC1C69: LitI4 1
  loc_BC1C6E: FLdPr Me
  loc_BC1C71: MemLdStr global_100
  loc_BC1C74: AryLock
  loc_BC1C77: Ary1LdPr
  loc_BC1C78: MemLdRfVar from_stack_1.global_40
  loc_BC1C7B: CVarRef
  loc_BC1C80: LitI2_Byte &HFF
  loc_BC1C82: FLdZeroAd var_15C
  loc_BC1C85: CVarAd
  loc_BC1C89: PopAdLdVar
  loc_BC1C8A: FLdPr Me
  loc_BC1C8D: MemLdI2 global_104
  loc_BC1C90: CI4UI1
  loc_BC1C91: FLdPr Me
  loc_BC1C94: MemLdStr global_96
  loc_BC1C97: AryLock
  loc_BC1C9A: Ary1LdPr
  loc_BC1C9B: MemLdRfVar from_stack_1.global_40
  loc_BC1C9E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1CA3: AryUnlock
  loc_BC1CA6: AryUnlock
  loc_BC1CA9: FFreeAd var_C0 = ""
  loc_BC1CB0: FFree1Var var_DC = ""
  loc_BC1CB3: FLdRfVar var_15C
  loc_BC1CB6: LitVarStr var_AC, "SaldFinaH"
  loc_BC1CBB: PopAdLdVar
  loc_BC1CBC: FLdRfVar var_C4
  loc_BC1CBF: FLdRfVar var_C0
  loc_BC1CC2: FLdPr var_160
  loc_BC1CC5: from_stack_1v = clsbase.RsFrmGet()
  loc_BC1CCA: FLdPr var_C0
  loc_BC1CCD:  = Me.Fields
  loc_BC1CD2: FLdPr var_C4
  loc_BC1CD5: from_stack_2 = Me.Item(from_stack_1)
  loc_BC1CDA: LitI2_Byte 0
  loc_BC1CDC: LitI4 1
  loc_BC1CE1: FLdPr Me
  loc_BC1CE4: MemLdStr global_100
  loc_BC1CE7: AryLock
  loc_BC1CEA: Ary1LdPr
  loc_BC1CEB: MemLdRfVar from_stack_1.global_44
  loc_BC1CEE: CVarRef
  loc_BC1CF3: LitI2_Byte &HFF
  loc_BC1CF5: FLdZeroAd var_15C
  loc_BC1CF8: CVarAd
  loc_BC1CFC: PopAdLdVar
  loc_BC1CFD: FLdPr Me
  loc_BC1D00: MemLdI2 global_104
  loc_BC1D03: CI4UI1
  loc_BC1D04: FLdPr Me
  loc_BC1D07: MemLdStr global_96
  loc_BC1D0A: AryLock
  loc_BC1D0D: Ary1LdPr
  loc_BC1D0E: MemLdRfVar from_stack_1.global_44
  loc_BC1D11: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC1D16: AryUnlock
  loc_BC1D19: AryUnlock
  loc_BC1D1C: FFreeAd var_C0 = ""
  loc_BC1D23: FFree1Var var_DC = ""
  loc_BC1D26: FLdPr var_160
  loc_BC1D29: Call clsbase.MoveSiguiente()
  loc_BC1D2E: FLdPr Me
  loc_BC1D31: MemLdRfVar from_stack_1.global_104
  loc_BC1D34: NextI2 var_1D0, loc_BC15D2
  loc_BC1D39: LitNothing
  loc_BC1D3B: FStAd var_160 
  loc_BC1D3F: LitI2_Byte &HFF
  loc_BC1D41: FLdPr Me
  loc_BC1D44: MemStI2 bGenerado
  loc_BC1D47: LitI4 0
  loc_BC1D4C: CI2I4
  loc_BC1D4D: FLdPr Me
  loc_BC1D50: Me.MousePointer = from_stack_1
  loc_BC1D55: LitVarStr var_AC, vbNullString
  loc_BC1D5A: PopAdLdVar
  loc_BC1D5B: FLdPr Me
  loc_BC1D5E: VCallAd Control_ID_statusBar
  loc_BC1D61: FStAdFunc var_C0
  loc_BC1D64: FLdPr var_C0
  loc_BC1D67: LateIdSt
  loc_BC1D6C: FFree1Ad var_C0
  loc_BC1D6F: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A859B8
  'Data Table: 474DBC
  loc_A85618: FLdRfVar var_8E
  loc_A8561B: FLdPr Me
  loc_A8561E: VCallAd Control_ID_OptMensual
  loc_A85621: FStAdFunc var_8C
  loc_A85624: FLdPr var_8C
  loc_A85627:  = Me.Value
  loc_A8562C: FLdI2 var_8E
  loc_A8562F: LitI2_Byte &HFF
  loc_A85631: EqI2
  loc_A85632: FFree1Ad var_8C
  loc_A85635: BranchF loc_A856AE
  loc_A85638: FLdRfVar var_8E
  loc_A8563B: FLdPr Me
  loc_A8563E: VCallAd Control_ID_cboMes
  loc_A85641: FStAdFunc var_98
  loc_A85644: FLdPr var_98
  loc_A85647:  = Me.ListIndex
  loc_A8564C: FLdRfVar var_94
  loc_A8564F: FLdPr Me
  loc_A85652: VCallAd Control_ID_cboPeriodo
  loc_A85655: FStAdFunc var_8C
  loc_A85658: FLdPr var_8C
  loc_A8565B:  = Me.Text
  loc_A85660: FLdZeroAd var_94
  loc_A85663: CVarStr var_F8
  loc_A85666: LitI4 1
  loc_A8566B: LitI4 1
  loc_A85670: LitVarStr var_C8, "00"
  loc_A85675: FStVarCopyObj var_D8
  loc_A85678: FLdRfVar var_D8
  loc_A8567B: FLdI2 var_8E
  loc_A8567E: LitI2_Byte 1
  loc_A85680: AddI2
  loc_A85681: CVarI2 var_B8
  loc_A85684: FLdRfVar var_E8
  loc_A85687: ImpAdCallFPR4  = Format(, )
  loc_A8568C: FLdRfVar var_E8
  loc_A8568F: ConcatVar var_108
  loc_A85693: CStrVarTmp
  loc_A85694: FStStr var_88
  loc_A85697: FFreeAd var_8C = ""
  loc_A8569E: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = ""
  loc_A856AB: Branch loc_A8574C
  loc_A856AE: LitStr "Municipalidad de Guaymallén"
  loc_A856B1: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_A856B4: EqStr
  loc_A856B6: BranchF loc_A8572F
  loc_A856B9: FLdRfVar var_8E
  loc_A856BC: FLdPr Me
  loc_A856BF: VCallAd Control_ID_cboMes
  loc_A856C2: FStAdFunc var_98
  loc_A856C5: FLdPr var_98
  loc_A856C8:  = Me.ListIndex
  loc_A856CD: FLdRfVar var_94
  loc_A856D0: FLdPr Me
  loc_A856D3: VCallAd Control_ID_cboPeriodo
  loc_A856D6: FStAdFunc var_8C
  loc_A856D9: FLdPr var_8C
  loc_A856DC:  = Me.Text
  loc_A856E1: FLdZeroAd var_94
  loc_A856E4: CVarStr var_F8
  loc_A856E7: LitI4 1
  loc_A856EC: LitI4 1
  loc_A856F1: LitVarStr var_C8, "00"
  loc_A856F6: FStVarCopyObj var_D8
  loc_A856F9: FLdRfVar var_D8
  loc_A856FC: FLdI2 var_8E
  loc_A856FF: LitI2_Byte 1
  loc_A85701: AddI2
  loc_A85702: CVarI2 var_B8
  loc_A85705: FLdRfVar var_E8
  loc_A85708: ImpAdCallFPR4  = Format(, )
  loc_A8570D: FLdRfVar var_E8
  loc_A85710: ConcatVar var_108
  loc_A85714: CStrVarTmp
  loc_A85715: FStStr var_88
  loc_A85718: FFreeAd var_8C = ""
  loc_A8571F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = ""
  loc_A8572C: Branch loc_A8574C
  loc_A8572F: FLdRfVar var_94
  loc_A85732: FLdPr Me
  loc_A85735: VCallAd Control_ID_cboPeriodo
  loc_A85738: FStAdFunc var_8C
  loc_A8573B: FLdPr var_8C
  loc_A8573E:  = Me.Text
  loc_A85743: FLdZeroAd var_94
  loc_A85746: FStStr var_88
  loc_A85749: FFree1Ad var_8C
  loc_A8574C: FLdRfVar var_8C
  loc_A8574F: LitI2_Byte 0
  loc_A85751: LitI2_Byte &HFF
  loc_A85753: ImpAdLdI4 MemVar_C3D05C
  loc_A85756: FLdPr Me
  loc_A85759: MemLdRfVar from_stack_1.global_92
  loc_A8575C: NewIfNullPr IFileSystem3
  loc_A8575F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A85764: ILdRf var_8C
  loc_A85767: FLdPr Me
  loc_A8576A: MemStVarAd
  loc_A8576E: FFree1Ad var_8C
  loc_A85771: LitVarStr var_A8, "PeriodoPresenta|ExpID|CuentaCod|CuentaDet|SaldoIniD|SaldoIniH|MovEjeD|MovEjeH|MovFondoD|MovFondoH|VarPatrimonioD|VarPatrimonioH|SaldoFinalD|SaldoFinalH"
  loc_A85776: LitI4 &HD
  loc_A8577B: FLdRfVar var_B8
  loc_A8577E: ImpAdCallFPR4  = Chr()
  loc_A85783: FLdRfVar var_B8
  loc_A85786: ConcatVar var_D8
  loc_A8578A: LitI4 &HA
  loc_A8578F: FLdRfVar var_E8
  loc_A85792: ImpAdCallFPR4  = Chr()
  loc_A85797: FLdRfVar var_E8
  loc_A8579A: ConcatVar var_F8
  loc_A8579E: PopAdLdVar
  loc_A8579F: FLdPr Me
  loc_A857A2: MemLdRfVar from_stack_1.txtFile
  loc_A857A5: LdPrVar
  loc_A857A7: LateMemCall
  loc_A857AD: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_A857B8: LitI2_Byte 1
  loc_A857BA: FLdPr Me
  loc_A857BD: MemLdRfVar from_stack_1.global_104
  loc_A857C0: FLdPr Me
  loc_A857C3: MemLdStr global_96
  loc_A857C6: LitI2_Byte 1
  loc_A857C8: FnUBound
  loc_A857CA: CI2I4
  loc_A857CB: ForI2 var_10C
  loc_A857D1: FLdPr Me
  loc_A857D4: MemLdI2 global_104
  loc_A857D7: CI4UI1
  loc_A857D8: FLdPr Me
  loc_A857DB: MemLdStr global_96
  loc_A857DE: AryLock
  loc_A857E1: Ary1LdRf
  loc_A857E2: FStR4 var_114
  loc_A857E5: ILdRf var_88
  loc_A857E8: LitStr "|"
  loc_A857EB: ConcatStr
  loc_A857EC: FStStrNoPop var_94
  loc_A857EF: LitStr "eee-2022-060204"
  loc_A857F2: ConcatStr
  loc_A857F3: FStStrNoPop var_118
  loc_A857F6: LitStr "|"
  loc_A857F9: ConcatStr
  loc_A857FA: FStStrNoPop var_11C
  loc_A857FD: FMemLdR4 var_114(0)
  loc_A85802: ConcatStr
  loc_A85803: FStStrNoPop var_120
  loc_A85806: LitStr "|"
  loc_A85809: ConcatStr
  loc_A8580A: FStStrNoPop var_124
  loc_A8580D: FMemLdR4 var_114(4)
  loc_A85812: ConcatStr
  loc_A85813: FStStrNoPop var_128
  loc_A85816: LitStr "|"
  loc_A85819: ConcatStr
  loc_A8581A: FStStrNoPop var_12C
  loc_A8581D: FMemLdR4 var_114(8)
  loc_A85822: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A85827: FStStrNoPop var_130
  loc_A8582A: ConcatStr
  loc_A8582B: FStStrNoPop var_134
  loc_A8582E: LitStr "|"
  loc_A85831: ConcatStr
  loc_A85832: FStStrNoPop var_138
  loc_A85835: FMemLdR4 var_114(12)
  loc_A8583A: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A8583F: FStStrNoPop var_13C
  loc_A85842: ConcatStr
  loc_A85843: FStStrNoPop var_140
  loc_A85846: LitStr "|"
  loc_A85849: ConcatStr
  loc_A8584A: FStStrNoPop var_144
  loc_A8584D: FMemLdR4 var_114(16)
  loc_A85852: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A85857: FStStrNoPop var_148
  loc_A8585A: ConcatStr
  loc_A8585B: FStStrNoPop var_14C
  loc_A8585E: LitStr "|"
  loc_A85861: ConcatStr
  loc_A85862: FStStrNoPop var_150
  loc_A85865: FMemLdR4 var_114(20)
  loc_A8586A: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A8586F: FStStrNoPop var_154
  loc_A85872: ConcatStr
  loc_A85873: FStStrNoPop var_158
  loc_A85876: LitStr "|"
  loc_A85879: ConcatStr
  loc_A8587A: FStStrNoPop var_15C
  loc_A8587D: FMemLdR4 var_114(24)
  loc_A85882: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A85887: FStStrNoPop var_160
  loc_A8588A: ConcatStr
  loc_A8588B: FStStrNoPop var_164
  loc_A8588E: LitStr "|"
  loc_A85891: ConcatStr
  loc_A85892: FStStrNoPop var_168
  loc_A85895: FMemLdR4 var_114(28)
  loc_A8589A: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A8589F: FStStrNoPop var_16C
  loc_A858A2: ConcatStr
  loc_A858A3: FStStrNoPop var_170
  loc_A858A6: LitStr "|"
  loc_A858A9: ConcatStr
  loc_A858AA: FStStrNoPop var_174
  loc_A858AD: FMemLdR4 var_114(32)
  loc_A858B2: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A858B7: FStStrNoPop var_178
  loc_A858BA: ConcatStr
  loc_A858BB: FStStrNoPop var_17C
  loc_A858BE: LitStr "|"
  loc_A858C1: ConcatStr
  loc_A858C2: FStStrNoPop var_180
  loc_A858C5: FMemLdR4 var_114(36)
  loc_A858CA: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A858CF: FStStrNoPop var_184
  loc_A858D2: ConcatStr
  loc_A858D3: FStStrNoPop var_188
  loc_A858D6: LitStr "|"
  loc_A858D9: ConcatStr
  loc_A858DA: FStStrNoPop var_18C
  loc_A858DD: FMemLdR4 var_114(40)
  loc_A858E2: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A858E7: FStStrNoPop var_190
  loc_A858EA: ConcatStr
  loc_A858EB: FStStrNoPop var_194
  loc_A858EE: LitStr "|"
  loc_A858F1: ConcatStr
  loc_A858F2: FStStrNoPop var_198
  loc_A858F5: FMemLdR4 var_114(44)
  loc_A858FA: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A858FF: FStStrNoPop var_19C
  loc_A85902: ConcatStr
  loc_A85903: CVarStr var_D8
  loc_A85906: LitI4 &HD
  loc_A8590B: FLdRfVar var_B8
  loc_A8590E: ImpAdCallFPR4  = Chr()
  loc_A85913: FLdRfVar var_B8
  loc_A85916: ConcatVar var_E8
  loc_A8591A: LitI4 &HA
  loc_A8591F: FLdRfVar var_F8
  loc_A85922: ImpAdCallFPR4  = Chr()
  loc_A85927: FLdRfVar var_F8
  loc_A8592A: ConcatVar var_108
  loc_A8592E: PopAdLdVar
  loc_A8592F: FLdPr Me
  loc_A85932: MemLdRfVar from_stack_1.txtFile
  loc_A85935: LdPrVar
  loc_A85937: LateMemCall
  loc_A8593D: FFreeStr var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_94 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_A85986: FFreeVar var_D8 = "": var_B8 = "": var_E8 = "": var_F8 = ""
  loc_A85993: LitI4 0
  loc_A85998: FStR4 var_114
  loc_A8599B: AryUnlock
  loc_A8599E: FLdPr Me
  loc_A859A1: MemLdRfVar from_stack_1.global_104
  loc_A859A4: NextI2 var_10C, loc_A857D1
  loc_A859A9: FLdPr Me
  loc_A859AC: MemLdRfVar from_stack_1.txtFile
  loc_A859AF: LdPrVar
  loc_A859B1: LateMemCall
  loc_A859B7: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94F6E4
  'Data Table: 474DBC
  loc_94F6CC: LitI2_Byte 0
  loc_94F6CE: FLdPr Me
  loc_94F6D1: MemStI2 bLogos
  loc_94F6D4: Call GeneraHTML()
  loc_94F6D9: LitI2_Byte &HFF
  loc_94F6DB: FLdPr Me
  loc_94F6DE: MemStI2 bLogos
  loc_94F6E1: ExitProcHresult
  loc_94F6E2: Branch loc_953ACC
End Sub

Public Sub GeneraHTML() 'AA2380
  'Data Table: 474DBC
  loc_AA1E84: FLdRfVar var_88
  loc_AA1E87: LitI2_Byte 0
  loc_AA1E89: LitI2_Byte &HFF
  loc_AA1E8B: ImpAdLdI4 MemVar_C3D83C
  loc_AA1E8E: FLdPr Me
  loc_AA1E91: MemLdRfVar from_stack_1.global_92
  loc_AA1E94: NewIfNullPr IFileSystem3
  loc_AA1E97: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AA1E9C: ILdRf var_88
  loc_AA1E9F: FLdPr Me
  loc_AA1EA2: MemStVarAd
  loc_AA1EA6: FFree1Ad var_88
  loc_AA1EA9: from_stack_1v = Proc_157_27_AA6858()
  loc_AA1EAE: LitI2_Byte 1
  loc_AA1EB0: FLdPr Me
  loc_AA1EB3: MemLdRfVar from_stack_1.global_104
  loc_AA1EB6: FLdPr Me
  loc_AA1EB9: MemLdStr global_96
  loc_AA1EBC: LitI2_Byte 1
  loc_AA1EBE: FnUBound
  loc_AA1EC0: CI2I4
  loc_AA1EC1: ForI2 var_8C
  loc_AA1EC7: FLdPr Me
  loc_AA1ECA: MemLdI2 global_104
  loc_AA1ECD: CI4UI1
  loc_AA1ECE: FLdPr Me
  loc_AA1ED1: MemLdStr global_96
  loc_AA1ED4: AryLock
  loc_AA1ED7: Ary1LdRf
  loc_AA1ED8: FStR4 var_94
  loc_AA1EDB: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA1EE0: PopAdLdVar
  loc_AA1EE1: FLdPr Me
  loc_AA1EE4: MemLdRfVar from_stack_1.htmFile
  loc_AA1EE7: LdPrVar
  loc_AA1EE9: LateMemCall
  loc_AA1EEF: LitI4 0
  loc_AA1EF4: LitI4 0
  loc_AA1EF9: LitI2_Byte 0
  loc_AA1EFB: LitStr "right"
  loc_AA1EFE: FMemLdR4 var_94(0)
  loc_AA1F03: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA1F08: CVarStr var_C4
  loc_AA1F0B: PopAdLdVar
  loc_AA1F0C: FLdPr Me
  loc_AA1F0F: MemLdRfVar from_stack_1.htmFile
  loc_AA1F12: LdPrVar
  loc_AA1F14: LateMemCall
  loc_AA1F1A: FFree1Var var_C4 = ""
  loc_AA1F1D: LitI4 0
  loc_AA1F22: LitI4 0
  loc_AA1F27: LitI2_Byte 0
  loc_AA1F29: LitStr "left"
  loc_AA1F2C: FMemLdR4 var_94(4)
  loc_AA1F31: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA1F36: CVarStr var_C4
  loc_AA1F39: PopAdLdVar
  loc_AA1F3A: FLdPr Me
  loc_AA1F3D: MemLdRfVar from_stack_1.htmFile
  loc_AA1F40: LdPrVar
  loc_AA1F42: LateMemCall
  loc_AA1F48: FFree1Var var_C4 = ""
  loc_AA1F4B: LitI4 0
  loc_AA1F50: LitI4 0
  loc_AA1F55: LitI2_Byte 0
  loc_AA1F57: LitStr "right"
  loc_AA1F5A: FMemLdR4 var_94(8)
  loc_AA1F5F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA1F64: CVarStr var_C4
  loc_AA1F67: PopAdLdVar
  loc_AA1F68: FLdPr Me
  loc_AA1F6B: MemLdRfVar from_stack_1.htmFile
  loc_AA1F6E: LdPrVar
  loc_AA1F70: LateMemCall
  loc_AA1F76: FFree1Var var_C4 = ""
  loc_AA1F79: LitI4 0
  loc_AA1F7E: LitI4 0
  loc_AA1F83: LitI2_Byte 0
  loc_AA1F85: LitStr "right"
  loc_AA1F88: FMemLdR4 var_94(12)
  loc_AA1F8D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA1F92: CVarStr var_C4
  loc_AA1F95: PopAdLdVar
  loc_AA1F96: FLdPr Me
  loc_AA1F99: MemLdRfVar from_stack_1.htmFile
  loc_AA1F9C: LdPrVar
  loc_AA1F9E: LateMemCall
  loc_AA1FA4: FFree1Var var_C4 = ""
  loc_AA1FA7: LitI4 0
  loc_AA1FAC: LitI4 0
  loc_AA1FB1: LitI2_Byte 0
  loc_AA1FB3: LitStr "right"
  loc_AA1FB6: FMemLdR4 var_94(16)
  loc_AA1FBB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA1FC0: CVarStr var_C4
  loc_AA1FC3: PopAdLdVar
  loc_AA1FC4: FLdPr Me
  loc_AA1FC7: MemLdRfVar from_stack_1.htmFile
  loc_AA1FCA: LdPrVar
  loc_AA1FCC: LateMemCall
  loc_AA1FD2: FFree1Var var_C4 = ""
  loc_AA1FD5: LitI4 0
  loc_AA1FDA: LitI4 0
  loc_AA1FDF: LitI2_Byte 0
  loc_AA1FE1: LitStr "right"
  loc_AA1FE4: FMemLdR4 var_94(20)
  loc_AA1FE9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA1FEE: CVarStr var_C4
  loc_AA1FF1: PopAdLdVar
  loc_AA1FF2: FLdPr Me
  loc_AA1FF5: MemLdRfVar from_stack_1.htmFile
  loc_AA1FF8: LdPrVar
  loc_AA1FFA: LateMemCall
  loc_AA2000: FFree1Var var_C4 = ""
  loc_AA2003: LitI4 0
  loc_AA2008: LitI4 0
  loc_AA200D: LitI2_Byte 0
  loc_AA200F: LitStr "right"
  loc_AA2012: FMemLdR4 var_94(24)
  loc_AA2017: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA201C: CVarStr var_C4
  loc_AA201F: PopAdLdVar
  loc_AA2020: FLdPr Me
  loc_AA2023: MemLdRfVar from_stack_1.htmFile
  loc_AA2026: LdPrVar
  loc_AA2028: LateMemCall
  loc_AA202E: FFree1Var var_C4 = ""
  loc_AA2031: LitI4 0
  loc_AA2036: LitI4 0
  loc_AA203B: LitI2_Byte 0
  loc_AA203D: LitStr "right"
  loc_AA2040: FMemLdR4 var_94(28)
  loc_AA2045: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA204A: CVarStr var_C4
  loc_AA204D: PopAdLdVar
  loc_AA204E: FLdPr Me
  loc_AA2051: MemLdRfVar from_stack_1.htmFile
  loc_AA2054: LdPrVar
  loc_AA2056: LateMemCall
  loc_AA205C: FFree1Var var_C4 = ""
  loc_AA205F: LitI4 0
  loc_AA2064: LitI4 0
  loc_AA2069: LitI2_Byte 0
  loc_AA206B: LitStr "right"
  loc_AA206E: FMemLdR4 var_94(32)
  loc_AA2073: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2078: CVarStr var_C4
  loc_AA207B: PopAdLdVar
  loc_AA207C: FLdPr Me
  loc_AA207F: MemLdRfVar from_stack_1.htmFile
  loc_AA2082: LdPrVar
  loc_AA2084: LateMemCall
  loc_AA208A: FFree1Var var_C4 = ""
  loc_AA208D: LitI4 0
  loc_AA2092: LitI4 0
  loc_AA2097: LitI2_Byte 0
  loc_AA2099: LitStr "right"
  loc_AA209C: FMemLdR4 var_94(36)
  loc_AA20A1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA20A6: CVarStr var_C4
  loc_AA20A9: PopAdLdVar
  loc_AA20AA: FLdPr Me
  loc_AA20AD: MemLdRfVar from_stack_1.htmFile
  loc_AA20B0: LdPrVar
  loc_AA20B2: LateMemCall
  loc_AA20B8: FFree1Var var_C4 = ""
  loc_AA20BB: LitI4 0
  loc_AA20C0: LitI4 0
  loc_AA20C5: LitI2_Byte 0
  loc_AA20C7: LitStr "right"
  loc_AA20CA: FMemLdR4 var_94(40)
  loc_AA20CF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA20D4: CVarStr var_C4
  loc_AA20D7: PopAdLdVar
  loc_AA20D8: FLdPr Me
  loc_AA20DB: MemLdRfVar from_stack_1.htmFile
  loc_AA20DE: LdPrVar
  loc_AA20E0: LateMemCall
  loc_AA20E6: FFree1Var var_C4 = ""
  loc_AA20E9: LitI4 0
  loc_AA20EE: LitI4 0
  loc_AA20F3: LitI2_Byte 0
  loc_AA20F5: LitStr "right"
  loc_AA20F8: FMemLdR4 var_94(44)
  loc_AA20FD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2102: CVarStr var_C4
  loc_AA2105: PopAdLdVar
  loc_AA2106: FLdPr Me
  loc_AA2109: MemLdRfVar from_stack_1.htmFile
  loc_AA210C: LdPrVar
  loc_AA210E: LateMemCall
  loc_AA2114: FFree1Var var_C4 = ""
  loc_AA2117: LitVarStr var_A4, "     </tr>"
  loc_AA211C: PopAdLdVar
  loc_AA211D: FLdPr Me
  loc_AA2120: MemLdRfVar from_stack_1.htmFile
  loc_AA2123: LdPrVar
  loc_AA2125: LateMemCall
  loc_AA212B: LitI4 0
  loc_AA2130: FStR4 var_94
  loc_AA2133: AryUnlock
  loc_AA2136: FLdPr Me
  loc_AA2139: MemLdRfVar from_stack_1.global_104
  loc_AA213C: NextI2 var_8C, loc_AA1EC7
  loc_AA2141: LitI4 1
  loc_AA2146: FLdPr Me
  loc_AA2149: MemLdStr global_100
  loc_AA214C: AryLock
  loc_AA214F: Ary1LdRf
  loc_AA2150: FStR4 var_CC
  loc_AA2153: LitVarStr var_A4, " <tr class=""Totales"" align=""right"" valign=""top"">"
  loc_AA2158: PopAdLdVar
  loc_AA2159: FLdPr Me
  loc_AA215C: MemLdRfVar from_stack_1.htmFile
  loc_AA215F: LdPrVar
  loc_AA2161: LateMemCall
  loc_AA2167: LitVarStr var_A4, "   <th colspan=""2"">TOTALES</th>"
  loc_AA216C: PopAdLdVar
  loc_AA216D: FLdPr Me
  loc_AA2170: MemLdRfVar from_stack_1.htmFile
  loc_AA2173: LdPrVar
  loc_AA2175: LateMemCall
  loc_AA217B: LitI4 0
  loc_AA2180: LitI4 0
  loc_AA2185: LitI2_Byte 0
  loc_AA2187: LitStr "right"
  loc_AA218A: FMemLdR4 var_CC(8)
  loc_AA218F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2194: CVarStr var_C4
  loc_AA2197: PopAdLdVar
  loc_AA2198: FLdPr Me
  loc_AA219B: MemLdRfVar from_stack_1.htmFile
  loc_AA219E: LdPrVar
  loc_AA21A0: LateMemCall
  loc_AA21A6: FFree1Var var_C4 = ""
  loc_AA21A9: LitI4 0
  loc_AA21AE: LitI4 0
  loc_AA21B3: LitI2_Byte 0
  loc_AA21B5: LitStr "right"
  loc_AA21B8: FMemLdR4 var_CC(12)
  loc_AA21BD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA21C2: CVarStr var_C4
  loc_AA21C5: PopAdLdVar
  loc_AA21C6: FLdPr Me
  loc_AA21C9: MemLdRfVar from_stack_1.htmFile
  loc_AA21CC: LdPrVar
  loc_AA21CE: LateMemCall
  loc_AA21D4: FFree1Var var_C4 = ""
  loc_AA21D7: LitI4 0
  loc_AA21DC: LitI4 0
  loc_AA21E1: LitI2_Byte 0
  loc_AA21E3: LitStr "right"
  loc_AA21E6: FMemLdR4 var_CC(16)
  loc_AA21EB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA21F0: CVarStr var_C4
  loc_AA21F3: PopAdLdVar
  loc_AA21F4: FLdPr Me
  loc_AA21F7: MemLdRfVar from_stack_1.htmFile
  loc_AA21FA: LdPrVar
  loc_AA21FC: LateMemCall
  loc_AA2202: FFree1Var var_C4 = ""
  loc_AA2205: LitI4 0
  loc_AA220A: LitI4 0
  loc_AA220F: LitI2_Byte 0
  loc_AA2211: LitStr "right"
  loc_AA2214: FMemLdR4 var_CC(20)
  loc_AA2219: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA221E: CVarStr var_C4
  loc_AA2221: PopAdLdVar
  loc_AA2222: FLdPr Me
  loc_AA2225: MemLdRfVar from_stack_1.htmFile
  loc_AA2228: LdPrVar
  loc_AA222A: LateMemCall
  loc_AA2230: FFree1Var var_C4 = ""
  loc_AA2233: LitI4 0
  loc_AA2238: LitI4 0
  loc_AA223D: LitI2_Byte 0
  loc_AA223F: LitStr "right"
  loc_AA2242: FMemLdR4 var_CC(24)
  loc_AA2247: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA224C: CVarStr var_C4
  loc_AA224F: PopAdLdVar
  loc_AA2250: FLdPr Me
  loc_AA2253: MemLdRfVar from_stack_1.htmFile
  loc_AA2256: LdPrVar
  loc_AA2258: LateMemCall
  loc_AA225E: FFree1Var var_C4 = ""
  loc_AA2261: LitI4 0
  loc_AA2266: LitI4 0
  loc_AA226B: LitI2_Byte 0
  loc_AA226D: LitStr "right"
  loc_AA2270: FMemLdR4 var_CC(28)
  loc_AA2275: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA227A: CVarStr var_C4
  loc_AA227D: PopAdLdVar
  loc_AA227E: FLdPr Me
  loc_AA2281: MemLdRfVar from_stack_1.htmFile
  loc_AA2284: LdPrVar
  loc_AA2286: LateMemCall
  loc_AA228C: FFree1Var var_C4 = ""
  loc_AA228F: LitI4 0
  loc_AA2294: LitI4 0
  loc_AA2299: LitI2_Byte 0
  loc_AA229B: LitStr "right"
  loc_AA229E: FMemLdR4 var_CC(32)
  loc_AA22A3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA22A8: CVarStr var_C4
  loc_AA22AB: PopAdLdVar
  loc_AA22AC: FLdPr Me
  loc_AA22AF: MemLdRfVar from_stack_1.htmFile
  loc_AA22B2: LdPrVar
  loc_AA22B4: LateMemCall
  loc_AA22BA: FFree1Var var_C4 = ""
  loc_AA22BD: LitI4 0
  loc_AA22C2: LitI4 0
  loc_AA22C7: LitI2_Byte 0
  loc_AA22C9: LitStr "right"
  loc_AA22CC: FMemLdR4 var_CC(36)
  loc_AA22D1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA22D6: CVarStr var_C4
  loc_AA22D9: PopAdLdVar
  loc_AA22DA: FLdPr Me
  loc_AA22DD: MemLdRfVar from_stack_1.htmFile
  loc_AA22E0: LdPrVar
  loc_AA22E2: LateMemCall
  loc_AA22E8: FFree1Var var_C4 = ""
  loc_AA22EB: LitI4 0
  loc_AA22F0: LitI4 0
  loc_AA22F5: LitI2_Byte 0
  loc_AA22F7: LitStr "right"
  loc_AA22FA: FMemLdR4 var_CC(40)
  loc_AA22FF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2304: CVarStr var_C4
  loc_AA2307: PopAdLdVar
  loc_AA2308: FLdPr Me
  loc_AA230B: MemLdRfVar from_stack_1.htmFile
  loc_AA230E: LdPrVar
  loc_AA2310: LateMemCall
  loc_AA2316: FFree1Var var_C4 = ""
  loc_AA2319: LitI4 0
  loc_AA231E: LitI4 0
  loc_AA2323: LitI2_Byte 0
  loc_AA2325: LitStr "right"
  loc_AA2328: FMemLdR4 var_CC(44)
  loc_AA232D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA2332: CVarStr var_C4
  loc_AA2335: PopAdLdVar
  loc_AA2336: FLdPr Me
  loc_AA2339: MemLdRfVar from_stack_1.htmFile
  loc_AA233C: LdPrVar
  loc_AA233E: LateMemCall
  loc_AA2344: FFree1Var var_C4 = ""
  loc_AA2347: LitVarStr var_A4, "     </tr>"
  loc_AA234C: PopAdLdVar
  loc_AA234D: FLdPr Me
  loc_AA2350: MemLdRfVar from_stack_1.htmFile
  loc_AA2353: LdPrVar
  loc_AA2355: LateMemCall
  loc_AA235B: LitI4 0
  loc_AA2360: FStR4 var_CC
  loc_AA2363: AryUnlock
  loc_AA2366: Call Proc_157_28_9ED344()
  loc_AA236B: FLdPr Me
  loc_AA236E: MemLdRfVar from_stack_1.htmFile
  loc_AA2371: LdPrVar
  loc_AA2373: LateMemCall
  loc_AA2379: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AA237E: ExitProcHresult
End Sub

Private Function Proc_157_27_AA6858() 'AA6858
  'Data Table: 474DBC
  loc_AA6358: LitVarStr var_94, "<html>"
  loc_AA635D: PopAdLdVar
  loc_AA635E: FLdPr Me
  loc_AA6361: MemLdRfVar from_stack_1.htmFile
  loc_AA6364: LdPrVar
  loc_AA6366: LateMemCall
  loc_AA636C: LitVarStr var_94, "<head>"
  loc_AA6371: PopAdLdVar
  loc_AA6372: FLdPr Me
  loc_AA6375: MemLdRfVar from_stack_1.htmFile
  loc_AA6378: LdPrVar
  loc_AA637A: LateMemCall
  loc_AA6380: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA6385: PopAdLdVar
  loc_AA6386: FLdPr Me
  loc_AA6389: MemLdRfVar from_stack_1.htmFile
  loc_AA638C: LdPrVar
  loc_AA638E: LateMemCall
  loc_AA6394: LitStr "<title>"
  loc_AA6397: FLdRfVar var_A8
  loc_AA639A: FLdPr Me
  loc_AA639D:  = Me.Caption
  loc_AA63A2: ILdRf var_A8
  loc_AA63A5: ConcatStr
  loc_AA63A6: FStStrNoPop var_AC
  loc_AA63A9: LitStr " - "
  loc_AA63AC: ConcatStr
  loc_AA63AD: FStStrNoPop var_B0
  loc_AA63B0: LitStr "Municipalidad de Guaymallén"
  loc_AA63B3: ConcatStr
  loc_AA63B4: FStStrNoPop var_B4
  loc_AA63B7: LitStr "</title>"
  loc_AA63BA: ConcatStr
  loc_AA63BB: CVarStr var_C4
  loc_AA63BE: PopAdLdVar
  loc_AA63BF: FLdPr Me
  loc_AA63C2: MemLdRfVar from_stack_1.htmFile
  loc_AA63C5: LdPrVar
  loc_AA63C7: LateMemCall
  loc_AA63CD: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_AA63D8: FFree1Var var_C4 = ""
  loc_AA63DB: LitStr vbNullString
  loc_AA63DE: ILdRf Me
  loc_AA63E1: CastAd
  loc_AA63E4: FStAdFunc var_C8
  loc_AA63E7: FLdRfVar var_C8
  loc_AA63EA: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AA63EF: FFree1Ad var_C8
  loc_AA63F2: LitI4 0
  loc_AA63F7: FStStrCopy var_AC
  loc_AA63FA: FLdRfVar var_AC
  loc_AA63FD: LitI4 0
  loc_AA6402: FStStrCopy var_A8
  loc_AA6405: FLdRfVar var_A8
  loc_AA6408: LitI2_Byte &HFF
  loc_AA640A: PopTmpLdAd2 var_CA
  loc_AA640D: FLdPr Me
  loc_AA6410: MemLdRfVar from_stack_1.htmFile
  loc_AA6413: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA6418: FFreeStr var_A8 = ""
  loc_AA641F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_AA6424: PopAdLdVar
  loc_AA6425: FLdPr Me
  loc_AA6428: MemLdRfVar from_stack_1.htmFile
  loc_AA642B: LdPrVar
  loc_AA642D: LateMemCall
  loc_AA6433: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA6438: PopAdLdVar
  loc_AA6439: FLdPr Me
  loc_AA643C: MemLdRfVar from_stack_1.htmFile
  loc_AA643F: LdPrVar
  loc_AA6441: LateMemCall
  loc_AA6447: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AA644C: PopAdLdVar
  loc_AA644D: FLdPr Me
  loc_AA6450: MemLdRfVar from_stack_1.htmFile
  loc_AA6453: LdPrVar
  loc_AA6455: LateMemCall
  loc_AA645B: FLdPr Me
  loc_AA645E: MemLdI2 bLogos
  loc_AA6461: BranchF loc_AA6478
  loc_AA6464: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AA6469: PopAdLdVar
  loc_AA646A: FLdPr Me
  loc_AA646D: MemLdRfVar from_stack_1.htmFile
  loc_AA6470: LdPrVar
  loc_AA6472: LateMemCall
  loc_AA6478: LitVarStr var_94, "    <br>ACUERDO N&ordm; 2988 <br>"
  loc_AA647D: PopAdLdVar
  loc_AA647E: FLdPr Me
  loc_AA6481: MemLdRfVar from_stack_1.htmFile
  loc_AA6484: LdPrVar
  loc_AA6486: LateMemCall
  loc_AA648C: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO XIV: MOVIMIENTOS DE CUENTAS EXTRAPRESUPUESTARIAS Y PATRIMONIALES MENSUALES</span></p>"
  loc_AA6491: PopAdLdVar
  loc_AA6492: FLdPr Me
  loc_AA6495: MemLdRfVar from_stack_1.htmFile
  loc_AA6498: LdPrVar
  loc_AA649A: LateMemCall
  loc_AA64A0: LitVarStr var_94, "    </th>"
  loc_AA64A5: PopAdLdVar
  loc_AA64A6: FLdPr Me
  loc_AA64A9: MemLdRfVar from_stack_1.htmFile
  loc_AA64AC: LdPrVar
  loc_AA64AE: LateMemCall
  loc_AA64B4: LitVarStr var_94, "  </tr>"
  loc_AA64B9: PopAdLdVar
  loc_AA64BA: FLdPr Me
  loc_AA64BD: MemLdRfVar from_stack_1.htmFile
  loc_AA64C0: LdPrVar
  loc_AA64C2: LateMemCall
  loc_AA64C8: LitVarStr var_94, "  <tr>"
  loc_AA64CD: PopAdLdVar
  loc_AA64CE: FLdPr Me
  loc_AA64D1: MemLdRfVar from_stack_1.htmFile
  loc_AA64D4: LdPrVar
  loc_AA64D6: LateMemCall
  loc_AA64DC: LitVarStr var_94, "    <th>"
  loc_AA64E1: PopAdLdVar
  loc_AA64E2: FLdPr Me
  loc_AA64E5: MemLdRfVar from_stack_1.htmFile
  loc_AA64E8: LdPrVar
  loc_AA64EA: LateMemCall
  loc_AA64F0: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_AA64F3: LitStr "Municipalidad de Guaymallén"
  loc_AA64F6: ConcatStr
  loc_AA64F7: FStStrNoPop var_A8
  loc_AA64FA: LitStr "<br>"
  loc_AA64FD: ConcatStr
  loc_AA64FE: CVarStr var_C4
  loc_AA6501: PopAdLdVar
  loc_AA6502: FLdPr Me
  loc_AA6505: MemLdRfVar from_stack_1.htmFile
  loc_AA6508: LdPrVar
  loc_AA650A: LateMemCall
  loc_AA6510: FFree1Str var_A8
  loc_AA6513: FFree1Var var_C4 = ""
  loc_AA6516: LitStr "    Nomenclador: "
  loc_AA6519: LitStr "060204"
  loc_AA651C: ConcatStr
  loc_AA651D: FStStrNoPop var_A8
  loc_AA6520: LitStr "<br>"
  loc_AA6523: ConcatStr
  loc_AA6524: CVarStr var_C4
  loc_AA6527: PopAdLdVar
  loc_AA6528: FLdPr Me
  loc_AA652B: MemLdRfVar from_stack_1.htmFile
  loc_AA652E: LdPrVar
  loc_AA6530: LateMemCall
  loc_AA6536: FFree1Str var_A8
  loc_AA6539: FFree1Var var_C4 = ""
  loc_AA653C: LitStr "    Ejercicio: "
  loc_AA653F: FLdRfVar var_A8
  loc_AA6542: FLdPr Me
  loc_AA6545: VCallAd Control_ID_cboPeriodo
  loc_AA6548: FStAdFunc var_C8
  loc_AA654B: FLdPr var_C8
  loc_AA654E:  = Me.Text
  loc_AA6553: ILdRf var_A8
  loc_AA6556: ConcatStr
  loc_AA6557: FStStrNoPop var_AC
  loc_AA655A: LitStr "<br>"
  loc_AA655D: ConcatStr
  loc_AA655E: CVarStr var_C4
  loc_AA6561: PopAdLdVar
  loc_AA6562: FLdPr Me
  loc_AA6565: MemLdRfVar from_stack_1.htmFile
  loc_AA6568: LdPrVar
  loc_AA656A: LateMemCall
  loc_AA6570: FFreeStr var_A8 = ""
  loc_AA6577: FFree1Ad var_C8
  loc_AA657A: FFree1Var var_C4 = ""
  loc_AA657D: FLdRfVar var_CA
  loc_AA6580: FLdPr Me
  loc_AA6583: VCallAd Control_ID_OptMensual
  loc_AA6586: FStAdFunc var_D0
  loc_AA6589: FLdPr var_D0
  loc_AA658C:  = Me.Value
  loc_AA6591: LitStr "    Mes: "
  loc_AA6594: FLdRfVar var_A8
  loc_AA6597: FLdPr Me
  loc_AA659A: VCallAd Control_ID_cboMes
  loc_AA659D: FStAdFunc var_C8
  loc_AA65A0: FLdPr var_C8
  loc_AA65A3:  = Me.Text
  loc_AA65A8: ILdRf var_A8
  loc_AA65AB: ConcatStr
  loc_AA65AC: FStStrNoPop var_AC
  loc_AA65AF: LitStr " ("
  loc_AA65B2: ConcatStr
  loc_AA65B3: FStStrNoPop var_B0
  loc_AA65B6: FLdPr Me
  loc_AA65B9: MemLdStr global_108
  loc_AA65BC: ConcatStr
  loc_AA65BD: FStStrNoPop var_B4
  loc_AA65C0: LitStr ") - "
  loc_AA65C3: ConcatStr
  loc_AA65C4: CVarStr var_110
  loc_AA65C7: LitVarStr var_E0, "Acumulado"
  loc_AA65CC: FStVarCopyObj var_F0
  loc_AA65CF: FLdRfVar var_F0
  loc_AA65D2: LitVarStr var_A4, "Mensual"
  loc_AA65D7: FStVarCopyObj var_C4
  loc_AA65DA: FLdRfVar var_C4
  loc_AA65DD: FLdI2 var_CA
  loc_AA65E0: LitI2_Byte &HFF
  loc_AA65E2: EqI2
  loc_AA65E3: CVarBoolI2 var_94
  loc_AA65E7: FLdRfVar var_100
  loc_AA65EA: ImpAdCallFPR4  = IIf(, , )
  loc_AA65EF: FLdRfVar var_100
  loc_AA65F2: ConcatVar var_120
  loc_AA65F6: PopAdLdVar
  loc_AA65F7: FLdPr Me
  loc_AA65FA: MemLdRfVar from_stack_1.htmFile
  loc_AA65FD: LdPrVar
  loc_AA65FF: LateMemCall
  loc_AA6605: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_AA6610: FFreeAd var_C8 = ""
  loc_AA6617: FFreeVar var_94 = "": var_C4 = "": var_F0 = "": var_110 = "": var_100 = ""
  loc_AA6626: LitVarStr var_94, "    </p></th>"
  loc_AA662B: PopAdLdVar
  loc_AA662C: FLdPr Me
  loc_AA662F: MemLdRfVar from_stack_1.htmFile
  loc_AA6632: LdPrVar
  loc_AA6634: LateMemCall
  loc_AA663A: LitVarStr var_94, "  </tr>"
  loc_AA663F: PopAdLdVar
  loc_AA6640: FLdPr Me
  loc_AA6643: MemLdRfVar from_stack_1.htmFile
  loc_AA6646: LdPrVar
  loc_AA6648: LateMemCall
  loc_AA664E: LitVarStr var_94, "</table>"
  loc_AA6653: PopAdLdVar
  loc_AA6654: FLdPr Me
  loc_AA6657: MemLdRfVar from_stack_1.htmFile
  loc_AA665A: LdPrVar
  loc_AA665C: LateMemCall
  loc_AA6662: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA6667: PopAdLdVar
  loc_AA6668: FLdPr Me
  loc_AA666B: MemLdRfVar from_stack_1.htmFile
  loc_AA666E: LdPrVar
  loc_AA6670: LateMemCall
  loc_AA6676: LitVarStr var_94, "  <THEAD>"
  loc_AA667B: PopAdLdVar
  loc_AA667C: FLdPr Me
  loc_AA667F: MemLdRfVar from_stack_1.htmFile
  loc_AA6682: LdPrVar
  loc_AA6684: LateMemCall
  loc_AA668A: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_AA668F: PopAdLdVar
  loc_AA6690: FLdPr Me
  loc_AA6693: MemLdRfVar from_stack_1.htmFile
  loc_AA6696: LdPrVar
  loc_AA6698: LateMemCall
  loc_AA669E: LitVarStr var_94, "   <th colspan=""2"">Cuenta</th>"
  loc_AA66A3: PopAdLdVar
  loc_AA66A4: FLdPr Me
  loc_AA66A7: MemLdRfVar from_stack_1.htmFile
  loc_AA66AA: LdPrVar
  loc_AA66AC: LateMemCall
  loc_AA66B2: LitVarStr var_94, "   <th colspan=""2"">Saldo Inicial</th>"
  loc_AA66B7: PopAdLdVar
  loc_AA66B8: FLdPr Me
  loc_AA66BB: MemLdRfVar from_stack_1.htmFile
  loc_AA66BE: LdPrVar
  loc_AA66C0: LateMemCall
  loc_AA66C6: LitVarStr var_94, "   <th colspan=""2"">Movimientos del Ejercicio</th>"
  loc_AA66CB: PopAdLdVar
  loc_AA66CC: FLdPr Me
  loc_AA66CF: MemLdRfVar from_stack_1.htmFile
  loc_AA66D2: LdPrVar
  loc_AA66D4: LateMemCall
  loc_AA66DA: LitVarStr var_94, "   <th colspan=""2"">Movimientos de Fondos</th>"
  loc_AA66DF: PopAdLdVar
  loc_AA66E0: FLdPr Me
  loc_AA66E3: MemLdRfVar from_stack_1.htmFile
  loc_AA66E6: LdPrVar
  loc_AA66E8: LateMemCall
  loc_AA66EE: LitVarStr var_94, "   <th colspan=""2"">Variación Patrimonial</th>"
  loc_AA66F3: PopAdLdVar
  loc_AA66F4: FLdPr Me
  loc_AA66F7: MemLdRfVar from_stack_1.htmFile
  loc_AA66FA: LdPrVar
  loc_AA66FC: LateMemCall
  loc_AA6702: LitVarStr var_94, "   <th colspan=""2"">Saldo Final</th>"
  loc_AA6707: PopAdLdVar
  loc_AA6708: FLdPr Me
  loc_AA670B: MemLdRfVar from_stack_1.htmFile
  loc_AA670E: LdPrVar
  loc_AA6710: LateMemCall
  loc_AA6716: LitVarStr var_94, " </tr>"
  loc_AA671B: PopAdLdVar
  loc_AA671C: FLdPr Me
  loc_AA671F: MemLdRfVar from_stack_1.htmFile
  loc_AA6722: LdPrVar
  loc_AA6724: LateMemCall
  loc_AA672A: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_AA672F: PopAdLdVar
  loc_AA6730: FLdPr Me
  loc_AA6733: MemLdRfVar from_stack_1.htmFile
  loc_AA6736: LdPrVar
  loc_AA6738: LateMemCall
  loc_AA673E: LitVarStr var_94, "   <th>Código o fs. Libro Mayor</th>"
  loc_AA6743: PopAdLdVar
  loc_AA6744: FLdPr Me
  loc_AA6747: MemLdRfVar from_stack_1.htmFile
  loc_AA674A: LdPrVar
  loc_AA674C: LateMemCall
  loc_AA6752: LitVarStr var_94, "   <th>Nombre</th>"
  loc_AA6757: PopAdLdVar
  loc_AA6758: FLdPr Me
  loc_AA675B: MemLdRfVar from_stack_1.htmFile
  loc_AA675E: LdPrVar
  loc_AA6760: LateMemCall
  loc_AA6766: LitVarStr var_94, "   <th>D</th>"
  loc_AA676B: PopAdLdVar
  loc_AA676C: FLdPr Me
  loc_AA676F: MemLdRfVar from_stack_1.htmFile
  loc_AA6772: LdPrVar
  loc_AA6774: LateMemCall
  loc_AA677A: LitVarStr var_94, "   <th>H</th>"
  loc_AA677F: PopAdLdVar
  loc_AA6780: FLdPr Me
  loc_AA6783: MemLdRfVar from_stack_1.htmFile
  loc_AA6786: LdPrVar
  loc_AA6788: LateMemCall
  loc_AA678E: LitVarStr var_94, "   <th>D</th>"
  loc_AA6793: PopAdLdVar
  loc_AA6794: FLdPr Me
  loc_AA6797: MemLdRfVar from_stack_1.htmFile
  loc_AA679A: LdPrVar
  loc_AA679C: LateMemCall
  loc_AA67A2: LitVarStr var_94, "   <th>H</th>"
  loc_AA67A7: PopAdLdVar
  loc_AA67A8: FLdPr Me
  loc_AA67AB: MemLdRfVar from_stack_1.htmFile
  loc_AA67AE: LdPrVar
  loc_AA67B0: LateMemCall
  loc_AA67B6: LitVarStr var_94, "   <th>D</th>"
  loc_AA67BB: PopAdLdVar
  loc_AA67BC: FLdPr Me
  loc_AA67BF: MemLdRfVar from_stack_1.htmFile
  loc_AA67C2: LdPrVar
  loc_AA67C4: LateMemCall
  loc_AA67CA: LitVarStr var_94, "   <th>H</th>"
  loc_AA67CF: PopAdLdVar
  loc_AA67D0: FLdPr Me
  loc_AA67D3: MemLdRfVar from_stack_1.htmFile
  loc_AA67D6: LdPrVar
  loc_AA67D8: LateMemCall
  loc_AA67DE: LitVarStr var_94, "   <th>D</th>"
  loc_AA67E3: PopAdLdVar
  loc_AA67E4: FLdPr Me
  loc_AA67E7: MemLdRfVar from_stack_1.htmFile
  loc_AA67EA: LdPrVar
  loc_AA67EC: LateMemCall
  loc_AA67F2: LitVarStr var_94, "   <th>H</th>"
  loc_AA67F7: PopAdLdVar
  loc_AA67F8: FLdPr Me
  loc_AA67FB: MemLdRfVar from_stack_1.htmFile
  loc_AA67FE: LdPrVar
  loc_AA6800: LateMemCall
  loc_AA6806: LitVarStr var_94, "   <th>D</th>"
  loc_AA680B: PopAdLdVar
  loc_AA680C: FLdPr Me
  loc_AA680F: MemLdRfVar from_stack_1.htmFile
  loc_AA6812: LdPrVar
  loc_AA6814: LateMemCall
  loc_AA681A: LitVarStr var_94, "   <th>H</th>"
  loc_AA681F: PopAdLdVar
  loc_AA6820: FLdPr Me
  loc_AA6823: MemLdRfVar from_stack_1.htmFile
  loc_AA6826: LdPrVar
  loc_AA6828: LateMemCall
  loc_AA682E: LitVarStr var_94, " </tr>"
  loc_AA6833: PopAdLdVar
  loc_AA6834: FLdPr Me
  loc_AA6837: MemLdRfVar from_stack_1.htmFile
  loc_AA683A: LdPrVar
  loc_AA683C: LateMemCall
  loc_AA6842: LitVarStr var_94, "  </THEAD>"
  loc_AA6847: PopAdLdVar
  loc_AA6848: FLdPr Me
  loc_AA684B: MemLdRfVar from_stack_1.htmFile
  loc_AA684E: LdPrVar
  loc_AA6850: LateMemCall
  loc_AA6856: ExitProcHresult
End Function

Private Function Proc_157_28_9ED344() '9ED344
  'Data Table: 474DBC
  loc_9ED200: LitVarStr var_94, "</table>"
  loc_9ED205: PopAdLdVar
  loc_9ED206: FLdPr Me
  loc_9ED209: MemLdRfVar from_stack_1.htmFile
  loc_9ED20C: LdPrVar
  loc_9ED20E: LateMemCall
  loc_9ED214: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9ED219: PopAdLdVar
  loc_9ED21A: FLdPr Me
  loc_9ED21D: MemLdRfVar from_stack_1.htmFile
  loc_9ED220: LdPrVar
  loc_9ED222: LateMemCall
  loc_9ED228: LitVarStr var_94, "  <tr>"
  loc_9ED22D: PopAdLdVar
  loc_9ED22E: FLdPr Me
  loc_9ED231: MemLdRfVar from_stack_1.htmFile
  loc_9ED234: LdPrVar
  loc_9ED236: LateMemCall
  loc_9ED23C: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9ED241: PopAdLdVar
  loc_9ED242: FLdPr Me
  loc_9ED245: MemLdRfVar from_stack_1.htmFile
  loc_9ED248: LdPrVar
  loc_9ED24A: LateMemCall
  loc_9ED250: LitVarStr var_94, "          <map name=""Map"">"
  loc_9ED255: PopAdLdVar
  loc_9ED256: FLdPr Me
  loc_9ED259: MemLdRfVar from_stack_1.htmFile
  loc_9ED25C: LdPrVar
  loc_9ED25E: LateMemCall
  loc_9ED264: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9ED269: PopAdLdVar
  loc_9ED26A: FLdPr Me
  loc_9ED26D: MemLdRfVar from_stack_1.htmFile
  loc_9ED270: LdPrVar
  loc_9ED272: LateMemCall
  loc_9ED278: LitVarStr var_94, "          </map>"
  loc_9ED27D: PopAdLdVar
  loc_9ED27E: FLdPr Me
  loc_9ED281: MemLdRfVar from_stack_1.htmFile
  loc_9ED284: LdPrVar
  loc_9ED286: LateMemCall
  loc_9ED28C: LitVarStr var_94, "    </div></th>"
  loc_9ED291: PopAdLdVar
  loc_9ED292: FLdPr Me
  loc_9ED295: MemLdRfVar from_stack_1.htmFile
  loc_9ED298: LdPrVar
  loc_9ED29A: LateMemCall
  loc_9ED2A0: LitVarStr var_94, "  </tr>"
  loc_9ED2A5: PopAdLdVar
  loc_9ED2A6: FLdPr Me
  loc_9ED2A9: MemLdRfVar from_stack_1.htmFile
  loc_9ED2AC: LdPrVar
  loc_9ED2AE: LateMemCall
  loc_9ED2B4: LitVarStr var_94, "  <tr>"
  loc_9ED2B9: PopAdLdVar
  loc_9ED2BA: FLdPr Me
  loc_9ED2BD: MemLdRfVar from_stack_1.htmFile
  loc_9ED2C0: LdPrVar
  loc_9ED2C2: LateMemCall
  loc_9ED2C8: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9ED2CD: PopAdLdVar
  loc_9ED2CE: FLdPr Me
  loc_9ED2D1: MemLdRfVar from_stack_1.htmFile
  loc_9ED2D4: LdPrVar
  loc_9ED2D6: LateMemCall
  loc_9ED2DC: LitVarStr var_94, "  </tr>"
  loc_9ED2E1: PopAdLdVar
  loc_9ED2E2: FLdPr Me
  loc_9ED2E5: MemLdRfVar from_stack_1.htmFile
  loc_9ED2E8: LdPrVar
  loc_9ED2EA: LateMemCall
  loc_9ED2F0: LitVarStr var_94, "</table>"
  loc_9ED2F5: PopAdLdVar
  loc_9ED2F6: FLdPr Me
  loc_9ED2F9: MemLdRfVar from_stack_1.htmFile
  loc_9ED2FC: LdPrVar
  loc_9ED2FE: LateMemCall
  loc_9ED304: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9ED309: PopAdLdVar
  loc_9ED30A: FLdPr Me
  loc_9ED30D: MemLdRfVar from_stack_1.htmFile
  loc_9ED310: LdPrVar
  loc_9ED312: LateMemCall
  loc_9ED318: LitVarStr var_94, "</body>"
  loc_9ED31D: PopAdLdVar
  loc_9ED31E: FLdPr Me
  loc_9ED321: MemLdRfVar from_stack_1.htmFile
  loc_9ED324: LdPrVar
  loc_9ED326: LateMemCall
  loc_9ED32C: LitVarStr var_94, "</html>"
  loc_9ED331: PopAdLdVar
  loc_9ED332: FLdPr Me
  loc_9ED335: MemLdRfVar from_stack_1.htmFile
  loc_9ED338: LdPrVar
  loc_9ED33A: LateMemCall
  loc_9ED340: ExitProcHresult
  loc_9ED341: FnLBound
End Function
