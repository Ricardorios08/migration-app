VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeRecaudacionporApremio
  Caption = "Listado de Recaudación por Apremio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeRecaudacionporApremio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8772
  ClientHeight = 3120
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2865
    Width = 8775
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptListadodeRecaudacionporApremio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7680
    Top = 1800
    Width = 855
    Height = 735
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptListadodeRecaudacionporApremio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeRecaudacionporApremio.frx":0B9C
    Left = 8160
    Top = 1920
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1560
    Width = 3135
    Height = 1215
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 16
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 6
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
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 4095
    Height = 1215
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 5
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 4
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1455
    TabIndex = 9
    Begin VB.CommandButton FeenAcpaHastaCmd
      Left = 2760
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptListadodeRecaudacionporApremio.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton FeenAcpaDesdeCmd
      Left = 2760
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 1
      Picture = "rptListadodeRecaudacionporApremio.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6720
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 7
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
    Begin MSMask.MaskEdBox FeenAcpaDesdeMsk
      Left = 1320
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptListadodeRecaudacionporApremio.frx":1684
    End
    Begin MSMask.MaskEdBox FeenAcpaHastaMsk
      Left = 1320
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptListadodeRecaudacionporApremio.frx":1734
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 540
      Top = 840
      Width = 705
      Height = 300
      TabIndex = 15
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
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 480
      Top = 360
      Width = 765
      Height = 300
      TabIndex = 14
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
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 2160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptListadodeRecaudacionporApremio.frx":17E4
  End
End

Attribute VB_Name = "rptListadodeRecaudacionporApremio"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00565DE4
  bStruc(52) As Byte ' String fields: 13
End Type


Private Sub cmdSalir_Click() 'A04F98
  'Data Table: 47C52C
  loc_A04F68: LitVarStr var_94, "Cerrando..."
  loc_A04F6D: PopAdLdVar
  loc_A04F6E: FLdPr Me
  loc_A04F71: VCallAd Control_ID_statusBar
  loc_A04F74: FStAdFunc var_A8
  loc_A04F77: FLdPr var_A8
  loc_A04F7A: LateIdSt
  loc_A04F7F: FFree1Ad var_A8
  loc_A04F82: ILdRf Me
  loc_A04F85: FStAdNoPop
  loc_A04F89: ImpAdLdRf MemVar_D9C5D8
  loc_A04F8C: NewIfNullPr Global
  loc_A04F8F: Global.Unload from_stack_1
  loc_A04F94: FFree1Ad var_A8
  loc_A04F97: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CAC30
  'Data Table: 47C52C
  loc_9CAC18: LitI2_Byte 0
  loc_9CAC1A: ILdRf Me
  loc_9CAC1D: CastAd
  loc_9CAC20: FStAdFunc var_88
  loc_9CAC23: FLdRfVar var_88
  loc_9CAC26: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CAC2B: FFree1Ad var_88
  loc_9CAC2E: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DDA3C
  'Data Table: 47C52C
  loc_9DDA20: LitI2_Byte &HFF
  loc_9DDA22: LitI2_Byte 0
  loc_9DDA24: ILdRf Me
  loc_9DDA27: CastAd
  loc_9DDA2A: FStAdFunc var_88
  loc_9DDA2D: FLdRfVar var_88
  loc_9DDA30: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DDA35: FFree1Ad var_88
  loc_9DDA38: ExitProcHresult
  loc_9DDA39: LtR8
  loc_9DDA3A: NewIfNullPr Me
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_0 '9C61A0
  'Data Table: 47C52C
  loc_9C618C: FLdPr Me
  loc_9C618F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_9C6192: CVarAd
  loc_9C6196: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C619B: FFree1Var var_94 = ""
  loc_9C619E: ExitProcHresult
End Sub

Private Function FeenAcpaDesdeMsk_UnknownEvent_8(arg_C) 'A64560
  'Data Table: 47C52C
  loc_A64504: FLdPr Me
  loc_A64507: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A6450A: FStAdFunc var_88
  loc_A6450D: FLdPr var_88
  loc_A64510: LateIdLdVar var_98 DispID_15 0
  loc_A64517: CStrVarTmp
  loc_A64518: FStStrNoPop var_9C
  loc_A6451B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A64520: FStStrNoPop var_A0
  loc_A64523: FLdPr Me
  loc_A64526: MemStStrCopy
  loc_A6452A: FFreeStr var_9C = ""
  loc_A64531: FFree1Ad var_88
  loc_A64534: FFree1Var var_98 = ""
  loc_A64537: FLdPr Me
  loc_A6453A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A6453D: FStAdFuncNoPop
  loc_A64540: CastAd
  loc_A64543: FStAdFunc var_A4
  loc_A64546: FLdRfVar var_A4
  loc_A64549: FLdPr Me
  loc_A6454C: MemLdStr global_92
  loc_A6454F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64554: IStI2 arg_C
  loc_A64557: FFreeAd var_88 = ""
  loc_A6455E: ExitProcHresult
End Function

Private Sub FeenAcpaHastaMsk_UnknownEvent_0 '9C6110
  'Data Table: 47C52C
  loc_9C60FC: FLdPr Me
  loc_9C60FF: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_9C6102: CVarAd
  loc_9C6106: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C610B: FFree1Var var_94 = ""
  loc_9C610E: ExitProcHresult
End Sub

Private Function FeenAcpaHastaMsk_UnknownEvent_8(arg_C) 'ACB588
  'Data Table: 47C52C
  loc_ACB488: FLdPr Me
  loc_ACB48B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_ACB48E: FStAdFunc var_88
  loc_ACB491: FLdPr var_88
  loc_ACB494: LateIdLdVar var_98 DispID_15 0
  loc_ACB49B: CStrVarTmp
  loc_ACB49C: FStStrNoPop var_9C
  loc_ACB49F: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ACB4A4: FStStrNoPop var_A0
  loc_ACB4A7: FLdPr Me
  loc_ACB4AA: MemStStrCopy
  loc_ACB4AE: FFreeStr var_9C = ""
  loc_ACB4B5: FFree1Ad var_88
  loc_ACB4B8: FFree1Var var_98 = ""
  loc_ACB4BB: FLdPr Me
  loc_ACB4BE: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_ACB4C1: FStAdFuncNoPop
  loc_ACB4C4: CastAd
  loc_ACB4C7: FStAdFunc var_A4
  loc_ACB4CA: FLdRfVar var_A4
  loc_ACB4CD: FLdPr Me
  loc_ACB4D0: MemLdStr global_92
  loc_ACB4D3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACB4D8: IStI2 arg_C
  loc_ACB4DB: FFreeAd var_88 = ""
  loc_ACB4E2: ILdI2 arg_C
  loc_ACB4E5: NotI4
  loc_ACB4E6: BranchF loc_ACB586
  loc_ACB4E9: FLdPr Me
  loc_ACB4EC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_ACB4EF: FStAdFunc var_88
  loc_ACB4F2: FLdPr var_88
  loc_ACB4F5: LateIdLdVar var_98 DispID_15 0
  loc_ACB4FC: CStrVarTmp
  loc_ACB4FD: CVarStr var_B4
  loc_ACB500: FLdRfVar var_C4
  loc_ACB503: ImpAdCallFPR4  = Year()
  loc_ACB508: FLdRfVar var_C4
  loc_ACB50B: FLdPr Me
  loc_ACB50E: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_ACB511: FStAdFunc var_A4
  loc_ACB514: FLdPr var_A4
  loc_ACB517: LateIdLdVar var_D4 DispID_15 0
  loc_ACB51E: CStrVarTmp
  loc_ACB51F: CVarStr var_E4
  loc_ACB522: FLdRfVar var_F4
  loc_ACB525: ImpAdCallFPR4  = Year()
  loc_ACB52A: FLdRfVar var_F4
  loc_ACB52D: NeVarBool
  loc_ACB52F: FFreeAd var_88 = ""
  loc_ACB536: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_ACB545: BranchF loc_ACB555
  loc_ACB548: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_ACB54B: FLdPr Me
  loc_ACB54E: MemStStrCopy
  loc_ACB552: Branch loc_ACB55F
  loc_ACB555: LitStr vbNullString
  loc_ACB558: FLdPr Me
  loc_ACB55B: MemStStrCopy
  loc_ACB55F: FLdPr Me
  loc_ACB562: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_ACB565: FStAdFuncNoPop
  loc_ACB568: CastAd
  loc_ACB56B: FStAdFunc var_A4
  loc_ACB56E: FLdRfVar var_A4
  loc_ACB571: FLdPr Me
  loc_ACB574: MemLdStr global_92
  loc_ACB577: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACB57C: IStI2 arg_C
  loc_ACB57F: FFreeAd var_88 = ""
  loc_ACB586: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '9DDBCC
  'Data Table: 47C52C
  loc_9DDBB0: LitI2_Byte 0
  loc_9DDBB2: PopTmpLdAd2 var_8A
  loc_9DDBB5: ILdRf Me
  loc_9DDBB8: CastAd
  loc_9DDBBB: FStAdFunc var_88
  loc_9DDBBE: FLdRfVar var_88
  loc_9DDBC1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DDBC6: FFree1Ad var_88
  loc_9DDBC9: ExitProcHresult
  loc_9DDBCA: AryLock
End Sub

Private Sub cmdNueva_Click() 'AA46A4
  'Data Table: 47C52C
  loc_AA45E8: LitI2_Byte 0
  loc_AA45EA: FLdPr Me
  loc_AA45ED: MemStI2 bGenerado
  loc_AA45F0: LitI2_Byte 0
  loc_AA45F2: ILdRf Me
  loc_AA45F5: CastAd
  loc_AA45F8: FStAdFunc var_90
  loc_AA45FB: FLdRfVar var_90
  loc_AA45FE: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AA4603: FFree1Ad var_90
  loc_AA4606: LitI2_Byte 0
  loc_AA4608: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA460D: FStFPR8 var_8C
  loc_AA4610: FLdFPR8 var_8C
  loc_AA4613: CStrDate
  loc_AA4615: CVarStr var_A0
  loc_AA4618: PopAdLdVar
  loc_AA4619: FLdPr Me
  loc_AA461C: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AA461F: FStAdFunc var_90
  loc_AA4622: FLdPr var_90
  loc_AA4625: LateIdSt
  loc_AA462A: FFree1Ad var_90
  loc_AA462D: FFree1Var var_A0 = ""
  loc_AA4630: FLdRfVar var_8C
  loc_AA4633: CVarRef
  loc_AA4638: FLdRfVar var_A0
  loc_AA463B: ImpAdCallFPR4  = Year()
  loc_AA4640: FLdRfVar var_8C
  loc_AA4643: CVarRef
  loc_AA4648: FLdRfVar var_D0
  loc_AA464B: ImpAdCallFPR4  = Month()
  loc_AA4650: LitI2_Byte 1
  loc_AA4652: FLdRfVar var_D0
  loc_AA4655: CI2Var
  loc_AA4656: FLdRfVar var_A0
  loc_AA4659: CI2Var
  loc_AA465A: FLdRfVar var_E0
  loc_AA465D: ImpAdCallFPR4  = DateSerial(, , )
  loc_AA4662: FLdRfVar var_E0
  loc_AA4665: CStrVarTmp
  loc_AA4666: CVarStr var_F0
  loc_AA4669: PopAdLdVar
  loc_AA466A: FLdPr Me
  loc_AA466D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AA4670: FStAdFunc var_90
  loc_AA4673: FLdPr var_90
  loc_AA4676: LateIdSt
  loc_AA467B: FFree1Ad var_90
  loc_AA467E: FFreeVar var_A0 = "": var_D0 = "": var_E0 = ""
  loc_AA4689: Call HabilitarCriterio()
  loc_AA468E: ILdRf Me
  loc_AA4691: CastAd
  loc_AA4694: FStAdFunc var_90
  loc_AA4697: FLdRfVar var_90
  loc_AA469A: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AA469F: FFree1Ad var_90
  loc_AA46A2: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19BD0
  'Data Table: 47C52C
  loc_A19B98: FLdPr Me
  loc_A19B9B: VCallAd Control_ID_statusBar
  loc_A19B9E: FStAdFunc var_88
  loc_A19BA1: FLdPr var_88
  loc_A19BA4: LateIdLdVar var_98 DispID_1 0
  loc_A19BAB: CStrVarTmp
  loc_A19BAC: CVarStr var_A8
  loc_A19BAF: PopAdLdVar
  loc_A19BB0: FLdPr Me
  loc_A19BB3: VCallAd Control_ID_statusBar
  loc_A19BB6: FStAdFunc var_BC
  loc_A19BB9: FLdPr var_BC
  loc_A19BBC: LateIdSt
  loc_A19BC1: FFreeAd var_88 = ""
  loc_A19BC8: FFreeVar var_98 = ""
  loc_A19BCF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CAB00
  'Data Table: 47C52C
  loc_9CAAE8: ILdRf Me
  loc_9CAAEB: CastAd
  loc_9CAAEE: FStAdFunc var_88
  loc_9CAAF1: FLdRfVar var_88
  loc_9CAAF4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CAAF9: FFree1Ad var_88
  loc_9CAAFC: ExitProcHresult
  loc_9CAAFD: LtI2
End Sub

Private Sub FeenAcpaDesdeCmd_Click() 'A0C9F4
  'Data Table: 47C52C
  loc_A0C9B8: LitVar_Missing var_A4
  loc_A0C9BB: PopAdLdVar
  loc_A0C9BC: LitVarI4
  loc_A0C9C4: PopAdLdVar
  loc_A0C9C5: ImpAdLdRf MemVar_D930A4
  loc_A0C9C8: NewIfNullPr frmCalendario
  loc_A0C9CB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0C9D0: ImpAdLdRf MemVar_D93028
  loc_A0C9D3: CDargRef
  loc_A0C9D7: FLdPr Me
  loc_A0C9DA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A0C9DD: FStAdFunc var_A8
  loc_A0C9E0: FLdPr var_A8
  loc_A0C9E3: LateIdSt
  loc_A0C9E8: FFree1Ad var_A8
  loc_A0C9EB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0C9F0: ExitProcHresult
  loc_A0C9F1: AddCy
  loc_A0C9F2: PopFPR8
End Sub

Private Sub FeenAcpaHastaCmd_Click() 'A0CD04
  'Data Table: 47C52C
  loc_A0CCC8: LitVar_Missing var_A4
  loc_A0CCCB: PopAdLdVar
  loc_A0CCCC: LitVarI4
  loc_A0CCD4: PopAdLdVar
  loc_A0CCD5: ImpAdLdRf MemVar_D930A4
  loc_A0CCD8: NewIfNullPr frmCalendario
  loc_A0CCDB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0CCE0: ImpAdLdRf MemVar_D93028
  loc_A0CCE3: CDargRef
  loc_A0CCE7: FLdPr Me
  loc_A0CCEA: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A0CCED: FStAdFunc var_A8
  loc_A0CCF0: FLdPr var_A8
  loc_A0CCF3: LateIdSt
  loc_A0CCF8: FFree1Ad var_A8
  loc_A0CCFB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0CD00: ExitProcHresult
  loc_A0CD01: CI2Cy
  loc_A0CD02: FFree1Var var_4BFD = ""
End Sub

Private Sub Form_Load() '9DDB2C
  'Data Table: 47C52C
  loc_9DDB10: ILdRf Me
  loc_9DDB13: CastAd
  loc_9DDB16: FStAdFunc var_88
  loc_9DDB19: FLdRfVar var_88
  loc_9DDB1C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DDB21: FFree1Ad var_88
  loc_9DDB24: Call cmdNueva_Click()
  loc_9DDB29: ExitProcHresult
  loc_9DDB2A: PopTmpLdAd2 var_4BFD
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CAD60
  'Data Table: 47C52C
  loc_9CAD48: FLdPr Me
  loc_9CAD4B: VCallAd Control_ID_wbbReporte
  loc_9CAD4E: FStAdFunc var_88
  loc_9CAD51: FLdRfVar var_88
  loc_9CAD54: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CAD59: FFree1Ad var_88
  loc_9CAD5C: ExitProcHresult
  loc_9CAD5D: FStAdFunc arg_32C
End Sub

Public Function bLogosGet() '47D1F4
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '47D203
  bLogos = Value
End Sub

Public Function bGeneradoGet() '47D212
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47D221
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A74DB8
  'Data Table: 47C52C
  loc_A74D54: LitI4 0
  loc_A74D59: LitI4 3
  loc_A74D5E: FLdRfVar var_88
  loc_A74D61: Redim
  loc_A74D6B: FLdPr Me
  loc_A74D6E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A74D71: CVarAd
  loc_A74D75: ParmAry1St
  loc_A74D7B: FLdPr Me
  loc_A74D7E: VCallAd Control_ID_FeenAcpaDesdeCmd
  loc_A74D81: CVarAd
  loc_A74D85: ParmAry1St
  loc_A74D8B: FLdPr Me
  loc_A74D8E: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A74D91: CVarAd
  loc_A74D95: ParmAry1St
  loc_A74D9B: FLdPr Me
  loc_A74D9E: VCallAd Control_ID_FeenAcpaHastaCmd
  loc_A74DA1: CVarAd
  loc_A74DA5: ParmAry1St
  loc_A74DAB: FLdRfVar var_88
  loc_A74DAE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A74DB3: FLdRfVar var_88
  loc_A74DB6: Erase
  loc_A74DB7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BA4B34
  'Data Table: 47C52C
  loc_BA4568: FLdPr Me
  loc_BA456B: MemLdI2 bGenerado
  loc_BA456E: BranchF loc_BA4572
  loc_BA4571: ExitProcHresult
  loc_BA4572: LitVarStr var_94, "Generando reporte..."
  loc_BA4577: PopAdLdVar
  loc_BA4578: FLdPr Me
  loc_BA457B: VCallAd Control_ID_statusBar
  loc_BA457E: FStAdFunc var_A8
  loc_BA4581: FLdPr var_A8
  loc_BA4584: LateIdSt
  loc_BA4589: FFree1Ad var_A8
  loc_BA458C: LitI4 &HB
  loc_BA4591: CI2I4
  loc_BA4592: FLdPr Me
  loc_BA4595: Me.MousePointer = from_stack_1
  loc_BA459A: LitI2_Byte 0
  loc_BA459C: PopTmpLdAd2 var_AA
  loc_BA459F: from_stack_2v = FeenAcpaDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BA45A4: FLdPr Me
  loc_BA45A7: MemLdStr global_92
  loc_BA45AA: LitStr vbNullString
  loc_BA45AD: NeStr
  loc_BA45AF: BranchF loc_BA45B5
  loc_BA45B2: Branch loc_BA4B09
  loc_BA45B5: LitI2_Byte 0
  loc_BA45B7: PopTmpLdAd2 var_AA
  loc_BA45BA: from_stack_2v = FeenAcpaHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BA45BF: FLdPr Me
  loc_BA45C2: MemLdStr global_92
  loc_BA45C5: LitStr vbNullString
  loc_BA45C8: NeStr
  loc_BA45CA: BranchF loc_BA45D0
  loc_BA45CD: Branch loc_BA4B09
  loc_BA45D0: FLdPr Me
  loc_BA45D3: MemLdRfVar from_stack_1.global_76
  loc_BA45D6: NewIfNullAd
  loc_BA45D9: FStAd var_B0 
  loc_BA45DD: FLdPr Me
  loc_BA45E0: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_BA45E3: FStAdFunc var_A8
  loc_BA45E6: FLdPr var_A8
  loc_BA45E9: LateIdLdVar var_CC DispID_15 0
  loc_BA45F0: PopAd
  loc_BA45F2: FLdPr Me
  loc_BA45F5: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_BA45F8: FStAdFunc var_130
  loc_BA45FB: FLdPr var_130
  loc_BA45FE: LateIdLdVar var_140 DispID_15 0
  loc_BA4605: PopAd
  loc_BA4607: LitStr "SELECT CodiOfic, CuenCtct, CodiConc, CodiFapa, NumeApre, sum(CapiDepa) as CapiDepa, sum(DecaDepa) as DecaDepa,"
  loc_BA460A: LitStr "  sum(RecaDepa) as RecaDepa, sum(DereDepa) as DereDepa, sum(InteDepa) as InteDepa, sum(ExenDepa) as ExenDepa,"
  loc_BA460D: ConcatStr
  loc_BA460E: FStStrNoPop var_B4
  loc_BA4611: LitStr "  sum(ApreDepa) as ApreDepa, sum(TotaDepa) as TotaDepa"
  loc_BA4614: ConcatStr
  loc_BA4615: FStStrNoPop var_B8
  loc_BA4618: LitStr " FROM detapago"
  loc_BA461B: ConcatStr
  loc_BA461C: FStStrNoPop var_BC
  loc_BA461F: LitStr " WHERE FeenAcpa BETWEEN '"
  loc_BA4622: ConcatStr
  loc_BA4623: CVarStr var_10C
  loc_BA4626: LitI4 1
  loc_BA462B: LitI4 1
  loc_BA4630: LitVarStr var_94, "yyyy-mm-dd"
  loc_BA4635: FStVarCopyObj var_EC
  loc_BA4638: FLdRfVar var_EC
  loc_BA463B: FLdRfVar var_CC
  loc_BA463E: CStrVarTmp
  loc_BA463F: CVarStr var_DC
  loc_BA4642: FLdRfVar var_FC
  loc_BA4645: ImpAdCallFPR4  = Format(, )
  loc_BA464A: FLdRfVar var_FC
  loc_BA464D: ConcatVar var_11C
  loc_BA4651: LitVarStr var_A4, "' AND '"
  loc_BA4656: ConcatVar var_12C
  loc_BA465A: LitI4 1
  loc_BA465F: LitI4 1
  loc_BA4664: LitVarStr var_160, "yyyy-mm-dd"
  loc_BA4669: FStVarCopyObj var_170
  loc_BA466C: FLdRfVar var_170
  loc_BA466F: FLdRfVar var_140
  loc_BA4672: CStrVarTmp
  loc_BA4673: CVarStr var_150
  loc_BA4676: FLdRfVar var_180
  loc_BA4679: ImpAdCallFPR4  = Format(, )
  loc_BA467E: FLdRfVar var_180
  loc_BA4681: ConcatVar var_190
  loc_BA4685: LitVarStr var_1A0, "'"
  loc_BA468A: ConcatVar var_1B0
  loc_BA468E: LitVarStr var_1C0, " AND NumeApre <> 0 "
  loc_BA4693: ConcatVar var_1D0
  loc_BA4697: LitVarStr var_1E0, " GROUP BY CodiOfic, CuenCtct, NumeApre"
  loc_BA469C: ConcatVar var_1F0
  loc_BA46A0: LitVarStr var_200, " ORDER BY CodiOfic, CuenCtct, NumeApre"
  loc_BA46A5: ConcatVar var_210
  loc_BA46A9: CStrVarVal var_214
  loc_BA46AD: FLdPr var_B0
  loc_BA46B0: Call clsdetapago.RedefineRS(from_stack_1v)
  loc_BA46B5: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_BA46C0: FFreeAd var_A8 = ""
  loc_BA46C7: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_140 = "": var_150 = "": var_170 = "": var_12C = "": var_180 = "": var_190 = "": var_1B0 = "": var_1D0 = "": var_1F0 = ""
  loc_BA46EA: FLdRfVar var_218
  loc_BA46ED: FLdPr var_B0
  loc_BA46F0: from_stack_1 = clsdetapago.RecordCount
  loc_BA46F5: ILdRf var_218
  loc_BA46F8: LitI4 0
  loc_BA46FD: EqI4
  loc_BA46FE: BranchF loc_BA470C
  loc_BA4701: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BA4704: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA4709: Branch loc_BA4B09
  loc_BA470C: LitI4 0
  loc_BA4711: LitI4 0
  loc_BA4716: FLdPr Me
  loc_BA4719: MemLdRfVar from_stack_1.global_88
  loc_BA471C: Redim
  loc_BA4726: LitI4 0
  loc_BA472B: FLdRfVar var_218
  loc_BA472E: FLdPr var_B0
  loc_BA4731: from_stack_1 = clsdetapago.RecordCount
  loc_BA4736: ILdRf var_218
  loc_BA4739: FLdPr Me
  loc_BA473C: MemLdRfVar from_stack_1.global_80
  loc_BA473F: Redim
  loc_BA4749: LitI4 1
  loc_BA474E: FLdPr Me
  loc_BA4751: MemLdRfVar from_stack_1.global_84
  loc_BA4754: FLdPr Me
  loc_BA4757: MemLdStr global_80
  loc_BA475A: LitI2_Byte 1
  loc_BA475C: FnUBound
  loc_BA475E: ForI4 var_220
  loc_BA4764: FLdRfVar var_AA
  loc_BA4767: FLdPr var_B0
  loc_BA476A: from_stack_1 = clsdetapago.CodiOfic
  loc_BA476F: LitI2_Byte 0
  loc_BA4771: LitVar_Missing var_CC
  loc_BA4774: LitI2_Byte 0
  loc_BA4776: FLdUI1
  loc_BA477A: CVarUI1
  loc_BA477E: PopAdLdVar
  loc_BA477F: FLdPr Me
  loc_BA4782: MemLdStr global_84
  loc_BA4785: FLdPr Me
  loc_BA4788: MemLdStr global_80
  loc_BA478B: AryLock
  loc_BA478E: Ary1LdPr
  loc_BA478F: MemLdRfVar from_stack_1.global_0
  loc_BA4792: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4797: AryUnlock
  loc_BA479A: FFree1Var var_CC = ""
  loc_BA479D: FLdRfVar var_B4
  loc_BA47A0: FLdPr var_B0
  loc_BA47A3: from_stack_1 = clsdetapago.CuenCtct
  loc_BA47A8: LitI2_Byte 0
  loc_BA47AA: LitVar_Missing var_DC
  loc_BA47AD: LitI2_Byte 0
  loc_BA47AF: FLdZeroAd var_B4
  loc_BA47B2: CVarStr var_CC
  loc_BA47B5: PopAdLdVar
  loc_BA47B6: FLdPr Me
  loc_BA47B9: MemLdStr global_84
  loc_BA47BC: FLdPr Me
  loc_BA47BF: MemLdStr global_80
  loc_BA47C2: AryLock
  loc_BA47C5: Ary1LdPr
  loc_BA47C6: MemLdRfVar from_stack_1.global_4
  loc_BA47C9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA47CE: AryUnlock
  loc_BA47D1: FFreeVar var_CC = ""
  loc_BA47D8: FLdRfVar var_B4
  loc_BA47DB: FLdPr var_B0
  loc_BA47DE: from_stack_1 = clsdetapago.CodiConc
  loc_BA47E3: LitI2_Byte 0
  loc_BA47E5: LitVar_Missing var_DC
  loc_BA47E8: LitI2_Byte 0
  loc_BA47EA: FLdZeroAd var_B4
  loc_BA47ED: CVarStr var_CC
  loc_BA47F0: PopAdLdVar
  loc_BA47F1: FLdPr Me
  loc_BA47F4: MemLdStr global_84
  loc_BA47F7: FLdPr Me
  loc_BA47FA: MemLdStr global_80
  loc_BA47FD: AryLock
  loc_BA4800: Ary1LdPr
  loc_BA4801: MemLdRfVar from_stack_1.global_8
  loc_BA4804: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4809: AryUnlock
  loc_BA480C: FFreeVar var_CC = ""
  loc_BA4813: FLdRfVar var_218
  loc_BA4816: FLdPr var_B0
  loc_BA4819: from_stack_1 = clsdetapago.CodiFapa
  loc_BA481E: LitI2_Byte 0
  loc_BA4820: LitVar_Missing var_CC
  loc_BA4823: LitI2_Byte 0
  loc_BA4825: ILdRf var_218
  loc_BA4828: CVarI4
  loc_BA482C: PopAdLdVar
  loc_BA482D: FLdPr Me
  loc_BA4830: MemLdStr global_84
  loc_BA4833: FLdPr Me
  loc_BA4836: MemLdStr global_80
  loc_BA4839: AryLock
  loc_BA483C: Ary1LdPr
  loc_BA483D: MemLdRfVar from_stack_1.global_12
  loc_BA4840: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4845: AryUnlock
  loc_BA4848: FFree1Var var_CC = ""
  loc_BA484B: FLdRfVar var_218
  loc_BA484E: FLdPr var_B0
  loc_BA4851: from_stack_1 = clsdetapago.NumeApre
  loc_BA4856: LitI2_Byte 0
  loc_BA4858: LitVar_Missing var_CC
  loc_BA485B: LitI2_Byte 0
  loc_BA485D: ILdRf var_218
  loc_BA4860: CVarI4
  loc_BA4864: PopAdLdVar
  loc_BA4865: FLdPr Me
  loc_BA4868: MemLdStr global_84
  loc_BA486B: FLdPr Me
  loc_BA486E: MemLdStr global_80
  loc_BA4871: AryLock
  loc_BA4874: Ary1LdPr
  loc_BA4875: MemLdRfVar from_stack_1.global_16
  loc_BA4878: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA487D: AryUnlock
  loc_BA4880: FFree1Var var_CC = ""
  loc_BA4883: FLdRfVar var_22C
  loc_BA4886: FLdPr var_B0
  loc_BA4889: from_stack_1 = clsdetapago.CapiDepa
  loc_BA488E: LitI2_Byte 0
  loc_BA4890: LitI4 0
  loc_BA4895: FLdPr Me
  loc_BA4898: MemLdStr global_88
  loc_BA489B: AryLock
  loc_BA489E: Ary1LdPr
  loc_BA489F: MemLdRfVar from_stack_1.global_20
  loc_BA48A2: CVarRef
  loc_BA48A7: LitI2_Byte &HFF
  loc_BA48A9: FLdFPR8 var_22C
  loc_BA48AC: CVarR8
  loc_BA48B0: PopAdLdVar
  loc_BA48B1: FLdPr Me
  loc_BA48B4: MemLdStr global_84
  loc_BA48B7: FLdPr Me
  loc_BA48BA: MemLdStr global_80
  loc_BA48BD: AryLock
  loc_BA48C0: Ary1LdPr
  loc_BA48C1: MemLdRfVar from_stack_1.global_20
  loc_BA48C4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA48C9: AryUnlock
  loc_BA48CC: AryUnlock
  loc_BA48CF: FLdRfVar var_22C
  loc_BA48D2: FLdPr var_B0
  loc_BA48D5: from_stack_1 = clsdetapago.DecaDepa
  loc_BA48DA: LitI2_Byte 0
  loc_BA48DC: LitI4 0
  loc_BA48E1: FLdPr Me
  loc_BA48E4: MemLdStr global_88
  loc_BA48E7: AryLock
  loc_BA48EA: Ary1LdPr
  loc_BA48EB: MemLdRfVar from_stack_1.global_24
  loc_BA48EE: CVarRef
  loc_BA48F3: LitI2_Byte &HFF
  loc_BA48F5: FLdFPR8 var_22C
  loc_BA48F8: CVarR8
  loc_BA48FC: PopAdLdVar
  loc_BA48FD: FLdPr Me
  loc_BA4900: MemLdStr global_84
  loc_BA4903: FLdPr Me
  loc_BA4906: MemLdStr global_80
  loc_BA4909: AryLock
  loc_BA490C: Ary1LdPr
  loc_BA490D: MemLdRfVar from_stack_1.global_24
  loc_BA4910: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4915: AryUnlock
  loc_BA4918: AryUnlock
  loc_BA491B: FLdRfVar var_22C
  loc_BA491E: FLdPr var_B0
  loc_BA4921: from_stack_1 = clsdetapago.RecaDepa
  loc_BA4926: LitI2_Byte 0
  loc_BA4928: LitI4 0
  loc_BA492D: FLdPr Me
  loc_BA4930: MemLdStr global_88
  loc_BA4933: AryLock
  loc_BA4936: Ary1LdPr
  loc_BA4937: MemLdRfVar from_stack_1.global_28
  loc_BA493A: CVarRef
  loc_BA493F: LitI2_Byte &HFF
  loc_BA4941: FLdFPR8 var_22C
  loc_BA4944: CVarR8
  loc_BA4948: PopAdLdVar
  loc_BA4949: FLdPr Me
  loc_BA494C: MemLdStr global_84
  loc_BA494F: FLdPr Me
  loc_BA4952: MemLdStr global_80
  loc_BA4955: AryLock
  loc_BA4958: Ary1LdPr
  loc_BA4959: MemLdRfVar from_stack_1.global_28
  loc_BA495C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4961: AryUnlock
  loc_BA4964: AryUnlock
  loc_BA4967: FLdRfVar var_22C
  loc_BA496A: FLdPr var_B0
  loc_BA496D: from_stack_1 = clsdetapago.DereDepa
  loc_BA4972: LitI2_Byte 0
  loc_BA4974: LitI4 0
  loc_BA4979: FLdPr Me
  loc_BA497C: MemLdStr global_88
  loc_BA497F: AryLock
  loc_BA4982: Ary1LdPr
  loc_BA4983: MemLdRfVar from_stack_1.global_32
  loc_BA4986: CVarRef
  loc_BA498B: LitI2_Byte &HFF
  loc_BA498D: FLdFPR8 var_22C
  loc_BA4990: CVarR8
  loc_BA4994: PopAdLdVar
  loc_BA4995: FLdPr Me
  loc_BA4998: MemLdStr global_84
  loc_BA499B: FLdPr Me
  loc_BA499E: MemLdStr global_80
  loc_BA49A1: AryLock
  loc_BA49A4: Ary1LdPr
  loc_BA49A5: MemLdRfVar from_stack_1.global_32
  loc_BA49A8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA49AD: AryUnlock
  loc_BA49B0: AryUnlock
  loc_BA49B3: FLdRfVar var_22C
  loc_BA49B6: FLdPr var_B0
  loc_BA49B9: from_stack_1 = clsdetapago.InteDepa
  loc_BA49BE: LitI2_Byte 0
  loc_BA49C0: LitI4 0
  loc_BA49C5: FLdPr Me
  loc_BA49C8: MemLdStr global_88
  loc_BA49CB: AryLock
  loc_BA49CE: Ary1LdPr
  loc_BA49CF: MemLdRfVar from_stack_1.global_36
  loc_BA49D2: CVarRef
  loc_BA49D7: LitI2_Byte &HFF
  loc_BA49D9: FLdFPR8 var_22C
  loc_BA49DC: CVarR8
  loc_BA49E0: PopAdLdVar
  loc_BA49E1: FLdPr Me
  loc_BA49E4: MemLdStr global_84
  loc_BA49E7: FLdPr Me
  loc_BA49EA: MemLdStr global_80
  loc_BA49ED: AryLock
  loc_BA49F0: Ary1LdPr
  loc_BA49F1: MemLdRfVar from_stack_1.global_36
  loc_BA49F4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA49F9: AryUnlock
  loc_BA49FC: AryUnlock
  loc_BA49FF: FLdRfVar var_22C
  loc_BA4A02: FLdPr var_B0
  loc_BA4A05: from_stack_1 = clsdetapago.ExenDepa
  loc_BA4A0A: LitI2_Byte 0
  loc_BA4A0C: LitI4 0
  loc_BA4A11: FLdPr Me
  loc_BA4A14: MemLdStr global_88
  loc_BA4A17: AryLock
  loc_BA4A1A: Ary1LdPr
  loc_BA4A1B: MemLdRfVar from_stack_1.global_40
  loc_BA4A1E: CVarRef
  loc_BA4A23: LitI2_Byte &HFF
  loc_BA4A25: FLdFPR8 var_22C
  loc_BA4A28: CVarR8
  loc_BA4A2C: PopAdLdVar
  loc_BA4A2D: FLdPr Me
  loc_BA4A30: MemLdStr global_84
  loc_BA4A33: FLdPr Me
  loc_BA4A36: MemLdStr global_80
  loc_BA4A39: AryLock
  loc_BA4A3C: Ary1LdPr
  loc_BA4A3D: MemLdRfVar from_stack_1.global_40
  loc_BA4A40: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4A45: AryUnlock
  loc_BA4A48: AryUnlock
  loc_BA4A4B: FLdRfVar var_22C
  loc_BA4A4E: FLdPr var_B0
  loc_BA4A51: from_stack_1 = clsdetapago.ApreDepa
  loc_BA4A56: LitI2_Byte 0
  loc_BA4A58: LitI4 0
  loc_BA4A5D: FLdPr Me
  loc_BA4A60: MemLdStr global_88
  loc_BA4A63: AryLock
  loc_BA4A66: Ary1LdPr
  loc_BA4A67: MemLdRfVar from_stack_1.global_44
  loc_BA4A6A: CVarRef
  loc_BA4A6F: LitI2_Byte &HFF
  loc_BA4A71: FLdFPR8 var_22C
  loc_BA4A74: CVarR8
  loc_BA4A78: PopAdLdVar
  loc_BA4A79: FLdPr Me
  loc_BA4A7C: MemLdStr global_84
  loc_BA4A7F: FLdPr Me
  loc_BA4A82: MemLdStr global_80
  loc_BA4A85: AryLock
  loc_BA4A88: Ary1LdPr
  loc_BA4A89: MemLdRfVar from_stack_1.global_44
  loc_BA4A8C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4A91: AryUnlock
  loc_BA4A94: AryUnlock
  loc_BA4A97: FLdRfVar var_22C
  loc_BA4A9A: FLdPr var_B0
  loc_BA4A9D: from_stack_1 = clsdetapago.TotaDepa
  loc_BA4AA2: LitI2_Byte 0
  loc_BA4AA4: LitI4 0
  loc_BA4AA9: FLdPr Me
  loc_BA4AAC: MemLdStr global_88
  loc_BA4AAF: AryLock
  loc_BA4AB2: Ary1LdPr
  loc_BA4AB3: MemLdRfVar from_stack_1.global_48
  loc_BA4AB6: CVarRef
  loc_BA4ABB: LitI2_Byte &HFF
  loc_BA4ABD: FLdFPR8 var_22C
  loc_BA4AC0: CVarR8
  loc_BA4AC4: PopAdLdVar
  loc_BA4AC5: FLdPr Me
  loc_BA4AC8: MemLdStr global_84
  loc_BA4ACB: FLdPr Me
  loc_BA4ACE: MemLdStr global_80
  loc_BA4AD1: AryLock
  loc_BA4AD4: Ary1LdPr
  loc_BA4AD5: MemLdRfVar from_stack_1.global_48
  loc_BA4AD8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA4ADD: AryUnlock
  loc_BA4AE0: AryUnlock
  loc_BA4AE3: LitI2_Byte 1
  loc_BA4AE5: PopTmpLdAd2 var_AA
  loc_BA4AE8: FLdPr var_B0
  loc_BA4AEB: Call clsdetapago.Move(from_stack_1v)
  loc_BA4AF0: FLdPr Me
  loc_BA4AF3: MemLdRfVar from_stack_1.global_84
  loc_BA4AF6: NextI4 var_220, loc_BA4764
  loc_BA4AFB: LitNothing
  loc_BA4AFD: FStAd var_B0 
  loc_BA4B01: LitI2_Byte &HFF
  loc_BA4B03: FLdPr Me
  loc_BA4B06: MemStI2 bGenerado
  loc_BA4B09: LitI4 0
  loc_BA4B0E: CI2I4
  loc_BA4B0F: FLdPr Me
  loc_BA4B12: Me.MousePointer = from_stack_1
  loc_BA4B17: LitVarStr var_94, vbNullString
  loc_BA4B1C: PopAdLdVar
  loc_BA4B1D: FLdPr Me
  loc_BA4B20: VCallAd Control_ID_statusBar
  loc_BA4B23: FStAdFunc var_A8
  loc_BA4B26: FLdPr var_A8
  loc_BA4B29: LateIdSt
  loc_BA4B2E: FFree1Ad var_A8
  loc_BA4B31: ExitProcHresult
  loc_BA4B32: FStVarCopyObj var_4BFD
End Sub

Public Sub GeneraHTML() 'B6BB74
  'Data Table: 47C52C
  loc_B6B6DC: FLdRfVar var_88
  loc_B6B6DF: LitI2_Byte 0
  loc_B6B6E1: LitI2_Byte &HFF
  loc_B6B6E3: ImpAdLdI4 MemVar_D93C84
  loc_B6B6E6: FLdPr Me
  loc_B6B6E9: MemLdRfVar from_stack_1.global_56
  loc_B6B6EC: NewIfNullPr IFileSystem3
  loc_B6B6EF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B6B6F4: ILdRf var_88
  loc_B6B6F7: FLdPr Me
  loc_B6B6FA: MemStVarAd
  loc_B6B6FE: FFree1Ad var_88
  loc_B6B701: LitI2_Byte &HFF
  loc_B6B703: ImpAdStI2 MemVar_D93C8A
  loc_B6B706: Call Proc_139_23_BE0EF8()
  loc_B6B70B: LitI4 1
  loc_B6B710: FLdPr Me
  loc_B6B713: MemLdRfVar from_stack_1.global_84
  loc_B6B716: FLdPr Me
  loc_B6B719: MemLdStr global_80
  loc_B6B71C: LitI2_Byte 1
  loc_B6B71E: FnUBound
  loc_B6B720: ForI4 var_90
  loc_B6B726: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B6B72B: PopAdLdVar
  loc_B6B72C: FLdPr Me
  loc_B6B72F: MemLdRfVar from_stack_1.global_60
  loc_B6B732: LdPrVar
  loc_B6B734: LateMemCall
  loc_B6B73A: FLdPr Me
  loc_B6B73D: MemLdStr global_84
  loc_B6B740: FLdPr Me
  loc_B6B743: MemLdStr global_80
  loc_B6B746: AryLock
  loc_B6B749: Ary1LdRf
  loc_B6B74A: FStR4 var_B8
  loc_B6B74D: LitStr vbNullString
  loc_B6B750: LitI2_Byte 0
  loc_B6B752: LitI2_Byte 0
  loc_B6B754: LitI2_Byte 0
  loc_B6B756: LitStr "right"
  loc_B6B759: FMemLdR4 var_B8(0)
  loc_B6B75E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B763: CVarStr var_C8
  loc_B6B766: PopAdLdVar
  loc_B6B767: FLdPr Me
  loc_B6B76A: MemLdRfVar from_stack_1.global_60
  loc_B6B76D: LdPrVar
  loc_B6B76F: LateMemCall
  loc_B6B775: FFree1Var var_C8 = ""
  loc_B6B778: LitStr vbNullString
  loc_B6B77B: LitI2_Byte 0
  loc_B6B77D: LitI2_Byte 0
  loc_B6B77F: LitI2_Byte 0
  loc_B6B781: LitStr "right"
  loc_B6B784: FMemLdR4 var_B8(4)
  loc_B6B789: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B78E: CVarStr var_C8
  loc_B6B791: PopAdLdVar
  loc_B6B792: FLdPr Me
  loc_B6B795: MemLdRfVar from_stack_1.global_60
  loc_B6B798: LdPrVar
  loc_B6B79A: LateMemCall
  loc_B6B7A0: FFree1Var var_C8 = ""
  loc_B6B7A3: LitStr vbNullString
  loc_B6B7A6: LitI2_Byte 0
  loc_B6B7A8: LitI2_Byte 0
  loc_B6B7AA: LitI2_Byte 0
  loc_B6B7AC: LitStr "right"
  loc_B6B7AF: FMemLdR4 var_B8(8)
  loc_B6B7B4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B7B9: CVarStr var_C8
  loc_B6B7BC: PopAdLdVar
  loc_B6B7BD: FLdPr Me
  loc_B6B7C0: MemLdRfVar from_stack_1.global_60
  loc_B6B7C3: LdPrVar
  loc_B6B7C5: LateMemCall
  loc_B6B7CB: FFree1Var var_C8 = ""
  loc_B6B7CE: LitStr vbNullString
  loc_B6B7D1: LitI2_Byte 0
  loc_B6B7D3: LitI2_Byte 0
  loc_B6B7D5: LitI2_Byte 0
  loc_B6B7D7: LitStr "right"
  loc_B6B7DA: FMemLdR4 var_B8(12)
  loc_B6B7DF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B7E4: CVarStr var_C8
  loc_B6B7E7: PopAdLdVar
  loc_B6B7E8: FLdPr Me
  loc_B6B7EB: MemLdRfVar from_stack_1.global_60
  loc_B6B7EE: LdPrVar
  loc_B6B7F0: LateMemCall
  loc_B6B7F6: FFree1Var var_C8 = ""
  loc_B6B7F9: LitStr vbNullString
  loc_B6B7FC: LitI2_Byte 0
  loc_B6B7FE: LitI2_Byte 0
  loc_B6B800: LitI2_Byte 0
  loc_B6B802: LitStr "right"
  loc_B6B805: FMemLdR4 var_B8(16)
  loc_B6B80A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B80F: CVarStr var_C8
  loc_B6B812: PopAdLdVar
  loc_B6B813: FLdPr Me
  loc_B6B816: MemLdRfVar from_stack_1.global_60
  loc_B6B819: LdPrVar
  loc_B6B81B: LateMemCall
  loc_B6B821: FFree1Var var_C8 = ""
  loc_B6B824: LitStr vbNullString
  loc_B6B827: LitI2_Byte 0
  loc_B6B829: LitI2_Byte 0
  loc_B6B82B: LitI2_Byte 0
  loc_B6B82D: LitStr "right"
  loc_B6B830: FMemLdR4 var_B8(20)
  loc_B6B835: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B83A: CVarStr var_C8
  loc_B6B83D: PopAdLdVar
  loc_B6B83E: FLdPr Me
  loc_B6B841: MemLdRfVar from_stack_1.global_60
  loc_B6B844: LdPrVar
  loc_B6B846: LateMemCall
  loc_B6B84C: FFree1Var var_C8 = ""
  loc_B6B84F: LitStr vbNullString
  loc_B6B852: LitI2_Byte 0
  loc_B6B854: LitI2_Byte 0
  loc_B6B856: LitI2_Byte 0
  loc_B6B858: LitStr "right"
  loc_B6B85B: FMemLdR4 var_B8(24)
  loc_B6B860: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B865: CVarStr var_C8
  loc_B6B868: PopAdLdVar
  loc_B6B869: FLdPr Me
  loc_B6B86C: MemLdRfVar from_stack_1.global_60
  loc_B6B86F: LdPrVar
  loc_B6B871: LateMemCall
  loc_B6B877: FFree1Var var_C8 = ""
  loc_B6B87A: LitStr vbNullString
  loc_B6B87D: LitI2_Byte 0
  loc_B6B87F: LitI2_Byte 0
  loc_B6B881: LitI2_Byte 0
  loc_B6B883: LitStr "right"
  loc_B6B886: FMemLdR4 var_B8(28)
  loc_B6B88B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B890: CVarStr var_C8
  loc_B6B893: PopAdLdVar
  loc_B6B894: FLdPr Me
  loc_B6B897: MemLdRfVar from_stack_1.global_60
  loc_B6B89A: LdPrVar
  loc_B6B89C: LateMemCall
  loc_B6B8A2: FFree1Var var_C8 = ""
  loc_B6B8A5: LitStr vbNullString
  loc_B6B8A8: LitI2_Byte 0
  loc_B6B8AA: LitI2_Byte 0
  loc_B6B8AC: LitI2_Byte 0
  loc_B6B8AE: LitStr "right"
  loc_B6B8B1: FMemLdR4 var_B8(32)
  loc_B6B8B6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B8BB: CVarStr var_C8
  loc_B6B8BE: PopAdLdVar
  loc_B6B8BF: FLdPr Me
  loc_B6B8C2: MemLdRfVar from_stack_1.global_60
  loc_B6B8C5: LdPrVar
  loc_B6B8C7: LateMemCall
  loc_B6B8CD: FFree1Var var_C8 = ""
  loc_B6B8D0: LitStr vbNullString
  loc_B6B8D3: LitI2_Byte 0
  loc_B6B8D5: LitI2_Byte 0
  loc_B6B8D7: LitI2_Byte 0
  loc_B6B8D9: LitStr "right"
  loc_B6B8DC: FMemLdR4 var_B8(36)
  loc_B6B8E1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B8E6: CVarStr var_C8
  loc_B6B8E9: PopAdLdVar
  loc_B6B8EA: FLdPr Me
  loc_B6B8ED: MemLdRfVar from_stack_1.global_60
  loc_B6B8F0: LdPrVar
  loc_B6B8F2: LateMemCall
  loc_B6B8F8: FFree1Var var_C8 = ""
  loc_B6B8FB: LitStr vbNullString
  loc_B6B8FE: LitI2_Byte 0
  loc_B6B900: LitI2_Byte 0
  loc_B6B902: LitI2_Byte 0
  loc_B6B904: LitStr "right"
  loc_B6B907: FMemLdR4 var_B8(40)
  loc_B6B90C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B911: CVarStr var_C8
  loc_B6B914: PopAdLdVar
  loc_B6B915: FLdPr Me
  loc_B6B918: MemLdRfVar from_stack_1.global_60
  loc_B6B91B: LdPrVar
  loc_B6B91D: LateMemCall
  loc_B6B923: FFree1Var var_C8 = ""
  loc_B6B926: LitStr vbNullString
  loc_B6B929: LitI2_Byte 0
  loc_B6B92B: LitI2_Byte 0
  loc_B6B92D: LitI2_Byte 0
  loc_B6B92F: LitStr "right"
  loc_B6B932: FMemLdR4 var_B8(44)
  loc_B6B937: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B93C: CVarStr var_C8
  loc_B6B93F: PopAdLdVar
  loc_B6B940: FLdPr Me
  loc_B6B943: MemLdRfVar from_stack_1.global_60
  loc_B6B946: LdPrVar
  loc_B6B948: LateMemCall
  loc_B6B94E: FFree1Var var_C8 = ""
  loc_B6B951: LitStr vbNullString
  loc_B6B954: LitI2_Byte 0
  loc_B6B956: LitI2_Byte 0
  loc_B6B958: LitI2_Byte 0
  loc_B6B95A: LitStr "right"
  loc_B6B95D: FMemLdR4 var_B8(48)
  loc_B6B962: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B967: CVarStr var_C8
  loc_B6B96A: PopAdLdVar
  loc_B6B96B: FLdPr Me
  loc_B6B96E: MemLdRfVar from_stack_1.global_60
  loc_B6B971: LdPrVar
  loc_B6B973: LateMemCall
  loc_B6B979: FFree1Var var_C8 = ""
  loc_B6B97C: LitI4 0
  loc_B6B981: FStR4 var_B8
  loc_B6B984: AryUnlock
  loc_B6B987: LitVarStr var_A0, "     </tr>"
  loc_B6B98C: PopAdLdVar
  loc_B6B98D: FLdPr Me
  loc_B6B990: MemLdRfVar from_stack_1.global_60
  loc_B6B993: LdPrVar
  loc_B6B995: LateMemCall
  loc_B6B99B: FLdPr Me
  loc_B6B99E: MemLdRfVar from_stack_1.global_84
  loc_B6B9A1: NextI4 var_90, loc_B6B726
  loc_B6B9A6: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_B6B9AB: PopAdLdVar
  loc_B6B9AC: FLdPr Me
  loc_B6B9AF: MemLdRfVar from_stack_1.global_60
  loc_B6B9B2: LdPrVar
  loc_B6B9B4: LateMemCall
  loc_B6B9BA: LitVarStr var_A0, "    <td colspan=""5"" align=""right"">Totales</td>"
  loc_B6B9BF: PopAdLdVar
  loc_B6B9C0: FLdPr Me
  loc_B6B9C3: MemLdRfVar from_stack_1.global_60
  loc_B6B9C6: LdPrVar
  loc_B6B9C8: LateMemCall
  loc_B6B9CE: LitI4 0
  loc_B6B9D3: FLdPr Me
  loc_B6B9D6: MemLdStr global_88
  loc_B6B9D9: AryLock
  loc_B6B9DC: Ary1LdRf
  loc_B6B9DD: FStR4 var_D0
  loc_B6B9E0: LitStr vbNullString
  loc_B6B9E3: LitI2_Byte 0
  loc_B6B9E5: LitI2_Byte 0
  loc_B6B9E7: LitI2_Byte 0
  loc_B6B9E9: LitStr "right"
  loc_B6B9EC: FMemLdR4 var_D0(20)
  loc_B6B9F1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6B9F6: CVarStr var_C8
  loc_B6B9F9: PopAdLdVar
  loc_B6B9FA: FLdPr Me
  loc_B6B9FD: MemLdRfVar from_stack_1.global_60
  loc_B6BA00: LdPrVar
  loc_B6BA02: LateMemCall
  loc_B6BA08: FFree1Var var_C8 = ""
  loc_B6BA0B: LitStr vbNullString
  loc_B6BA0E: LitI2_Byte 0
  loc_B6BA10: LitI2_Byte 0
  loc_B6BA12: LitI2_Byte 0
  loc_B6BA14: LitStr "right"
  loc_B6BA17: FMemLdR4 var_D0(24)
  loc_B6BA1C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6BA21: CVarStr var_C8
  loc_B6BA24: PopAdLdVar
  loc_B6BA25: FLdPr Me
  loc_B6BA28: MemLdRfVar from_stack_1.global_60
  loc_B6BA2B: LdPrVar
  loc_B6BA2D: LateMemCall
  loc_B6BA33: FFree1Var var_C8 = ""
  loc_B6BA36: LitStr vbNullString
  loc_B6BA39: LitI2_Byte 0
  loc_B6BA3B: LitI2_Byte 0
  loc_B6BA3D: LitI2_Byte 0
  loc_B6BA3F: LitStr "right"
  loc_B6BA42: FMemLdR4 var_D0(28)
  loc_B6BA47: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6BA4C: CVarStr var_C8
  loc_B6BA4F: PopAdLdVar
  loc_B6BA50: FLdPr Me
  loc_B6BA53: MemLdRfVar from_stack_1.global_60
  loc_B6BA56: LdPrVar
  loc_B6BA58: LateMemCall
  loc_B6BA5E: FFree1Var var_C8 = ""
  loc_B6BA61: LitStr vbNullString
  loc_B6BA64: LitI2_Byte 0
  loc_B6BA66: LitI2_Byte 0
  loc_B6BA68: LitI2_Byte 0
  loc_B6BA6A: LitStr "right"
  loc_B6BA6D: FMemLdR4 var_D0(32)
  loc_B6BA72: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6BA77: CVarStr var_C8
  loc_B6BA7A: PopAdLdVar
  loc_B6BA7B: FLdPr Me
  loc_B6BA7E: MemLdRfVar from_stack_1.global_60
  loc_B6BA81: LdPrVar
  loc_B6BA83: LateMemCall
  loc_B6BA89: FFree1Var var_C8 = ""
  loc_B6BA8C: LitStr vbNullString
  loc_B6BA8F: LitI2_Byte 0
  loc_B6BA91: LitI2_Byte 0
  loc_B6BA93: LitI2_Byte 0
  loc_B6BA95: LitStr "right"
  loc_B6BA98: FMemLdR4 var_D0(36)
  loc_B6BA9D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6BAA2: CVarStr var_C8
  loc_B6BAA5: PopAdLdVar
  loc_B6BAA6: FLdPr Me
  loc_B6BAA9: MemLdRfVar from_stack_1.global_60
  loc_B6BAAC: LdPrVar
  loc_B6BAAE: LateMemCall
  loc_B6BAB4: FFree1Var var_C8 = ""
  loc_B6BAB7: LitStr vbNullString
  loc_B6BABA: LitI2_Byte 0
  loc_B6BABC: LitI2_Byte 0
  loc_B6BABE: LitI2_Byte 0
  loc_B6BAC0: LitStr "right"
  loc_B6BAC3: FMemLdR4 var_D0(40)
  loc_B6BAC8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6BACD: CVarStr var_C8
  loc_B6BAD0: PopAdLdVar
  loc_B6BAD1: FLdPr Me
  loc_B6BAD4: MemLdRfVar from_stack_1.global_60
  loc_B6BAD7: LdPrVar
  loc_B6BAD9: LateMemCall
  loc_B6BADF: FFree1Var var_C8 = ""
  loc_B6BAE2: LitStr vbNullString
  loc_B6BAE5: LitI2_Byte 0
  loc_B6BAE7: LitI2_Byte 0
  loc_B6BAE9: LitI2_Byte 0
  loc_B6BAEB: LitStr "right"
  loc_B6BAEE: FMemLdR4 var_D0(44)
  loc_B6BAF3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6BAF8: CVarStr var_C8
  loc_B6BAFB: PopAdLdVar
  loc_B6BAFC: FLdPr Me
  loc_B6BAFF: MemLdRfVar from_stack_1.global_60
  loc_B6BB02: LdPrVar
  loc_B6BB04: LateMemCall
  loc_B6BB0A: FFree1Var var_C8 = ""
  loc_B6BB0D: LitStr vbNullString
  loc_B6BB10: LitI2_Byte 0
  loc_B6BB12: LitI2_Byte 0
  loc_B6BB14: LitI2_Byte 0
  loc_B6BB16: LitStr "right"
  loc_B6BB19: FMemLdR4 var_D0(48)
  loc_B6BB1E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6BB23: CVarStr var_C8
  loc_B6BB26: PopAdLdVar
  loc_B6BB27: FLdPr Me
  loc_B6BB2A: MemLdRfVar from_stack_1.global_60
  loc_B6BB2D: LdPrVar
  loc_B6BB2F: LateMemCall
  loc_B6BB35: FFree1Var var_C8 = ""
  loc_B6BB38: LitI4 0
  loc_B6BB3D: FStR4 var_D0
  loc_B6BB40: AryUnlock
  loc_B6BB43: LitVarStr var_A0, "     </tr>"
  loc_B6BB48: PopAdLdVar
  loc_B6BB49: FLdPr Me
  loc_B6BB4C: MemLdRfVar from_stack_1.global_60
  loc_B6BB4F: LdPrVar
  loc_B6BB51: LateMemCall
  loc_B6BB57: Call Proc_139_24_A0D088()
  loc_B6BB5C: FLdPr Me
  loc_B6BB5F: MemLdRfVar from_stack_1.global_60
  loc_B6BB62: LdPrVar
  loc_B6BB64: LateMemCall
  loc_B6BB6A: LitStr vbNullString
  loc_B6BB6D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B6BB72: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C630C
  'Data Table: 47C52C
  loc_9C62F4: LitI2_Byte 0
  loc_9C62F6: FLdPr Me
  loc_9C62F9: MemStI2 bLogos
  loc_9C62FC: Call GeneraHTML()
  loc_9C6301: LitI2_Byte &HFF
  loc_9C6303: FLdPr Me
  loc_9C6306: MemStI2 bLogos
  loc_9C6309: ExitProcHresult
  loc_9C630A: AryLock
End Sub

Private Function Proc_139_23_BE0EF8() 'BE0EF8
  'Data Table: 47C52C
  loc_BE0748: LitVarStr var_94, "<html>"
  loc_BE074D: PopAdLdVar
  loc_BE074E: FLdPr Me
  loc_BE0751: MemLdRfVar from_stack_1.global_60
  loc_BE0754: LdPrVar
  loc_BE0756: LateMemCall
  loc_BE075C: LitVarStr var_94, "<head>"
  loc_BE0761: PopAdLdVar
  loc_BE0762: FLdPr Me
  loc_BE0765: MemLdRfVar from_stack_1.global_60
  loc_BE0768: LdPrVar
  loc_BE076A: LateMemCall
  loc_BE0770: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BE0775: PopAdLdVar
  loc_BE0776: FLdPr Me
  loc_BE0779: MemLdRfVar from_stack_1.global_60
  loc_BE077C: LdPrVar
  loc_BE077E: LateMemCall
  loc_BE0784: LitStr "<title>"
  loc_BE0787: FLdRfVar var_A8
  loc_BE078A: FLdPr Me
  loc_BE078D:  = Me.Caption
  loc_BE0792: ILdRf var_A8
  loc_BE0795: ConcatStr
  loc_BE0796: FStStrNoPop var_AC
  loc_BE0799: LitStr "</title>"
  loc_BE079C: ConcatStr
  loc_BE079D: CVarStr var_BC
  loc_BE07A0: PopAdLdVar
  loc_BE07A1: FLdPr Me
  loc_BE07A4: MemLdRfVar from_stack_1.global_60
  loc_BE07A7: LdPrVar
  loc_BE07A9: LateMemCall
  loc_BE07AF: FFreeStr var_A8 = ""
  loc_BE07B6: FFree1Var var_BC = ""
  loc_BE07B9: LitVarStr var_94, "<style type=""text/css"">"
  loc_BE07BE: PopAdLdVar
  loc_BE07BF: FLdPr Me
  loc_BE07C2: MemLdRfVar from_stack_1.global_60
  loc_BE07C5: LdPrVar
  loc_BE07C7: LateMemCall
  loc_BE07CD: LitVarStr var_94, ".Titulo1 {"
  loc_BE07D2: PopAdLdVar
  loc_BE07D3: FLdPr Me
  loc_BE07D6: MemLdRfVar from_stack_1.global_60
  loc_BE07D9: LdPrVar
  loc_BE07DB: LateMemCall
  loc_BE07E1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE07E6: PopAdLdVar
  loc_BE07E7: FLdPr Me
  loc_BE07EA: MemLdRfVar from_stack_1.global_60
  loc_BE07ED: LdPrVar
  loc_BE07EF: LateMemCall
  loc_BE07F5: LitVarStr var_94, " font-size: 18px;"
  loc_BE07FA: PopAdLdVar
  loc_BE07FB: FLdPr Me
  loc_BE07FE: MemLdRfVar from_stack_1.global_60
  loc_BE0801: LdPrVar
  loc_BE0803: LateMemCall
  loc_BE0809: LitVarStr var_94, " font-weight: bold;"
  loc_BE080E: PopAdLdVar
  loc_BE080F: FLdPr Me
  loc_BE0812: MemLdRfVar from_stack_1.global_60
  loc_BE0815: LdPrVar
  loc_BE0817: LateMemCall
  loc_BE081D: LitVarStr var_94, "}"
  loc_BE0822: PopAdLdVar
  loc_BE0823: FLdPr Me
  loc_BE0826: MemLdRfVar from_stack_1.global_60
  loc_BE0829: LdPrVar
  loc_BE082B: LateMemCall
  loc_BE0831: LitVarStr var_94, ".Titulo2 {"
  loc_BE0836: PopAdLdVar
  loc_BE0837: FLdPr Me
  loc_BE083A: MemLdRfVar from_stack_1.global_60
  loc_BE083D: LdPrVar
  loc_BE083F: LateMemCall
  loc_BE0845: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE084A: PopAdLdVar
  loc_BE084B: FLdPr Me
  loc_BE084E: MemLdRfVar from_stack_1.global_60
  loc_BE0851: LdPrVar
  loc_BE0853: LateMemCall
  loc_BE0859: LitVarStr var_94, " font-size: 14px;"
  loc_BE085E: PopAdLdVar
  loc_BE085F: FLdPr Me
  loc_BE0862: MemLdRfVar from_stack_1.global_60
  loc_BE0865: LdPrVar
  loc_BE0867: LateMemCall
  loc_BE086D: LitVarStr var_94, " font-weight: bold;"
  loc_BE0872: PopAdLdVar
  loc_BE0873: FLdPr Me
  loc_BE0876: MemLdRfVar from_stack_1.global_60
  loc_BE0879: LdPrVar
  loc_BE087B: LateMemCall
  loc_BE0881: LitVarStr var_94, "}"
  loc_BE0886: PopAdLdVar
  loc_BE0887: FLdPr Me
  loc_BE088A: MemLdRfVar from_stack_1.global_60
  loc_BE088D: LdPrVar
  loc_BE088F: LateMemCall
  loc_BE0895: LitVarStr var_94, ".Normal {"
  loc_BE089A: PopAdLdVar
  loc_BE089B: FLdPr Me
  loc_BE089E: MemLdRfVar from_stack_1.global_60
  loc_BE08A1: LdPrVar
  loc_BE08A3: LateMemCall
  loc_BE08A9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE08AE: PopAdLdVar
  loc_BE08AF: FLdPr Me
  loc_BE08B2: MemLdRfVar from_stack_1.global_60
  loc_BE08B5: LdPrVar
  loc_BE08B7: LateMemCall
  loc_BE08BD: LitVarStr var_94, " font-size: 12px;"
  loc_BE08C2: PopAdLdVar
  loc_BE08C3: FLdPr Me
  loc_BE08C6: MemLdRfVar from_stack_1.global_60
  loc_BE08C9: LdPrVar
  loc_BE08CB: LateMemCall
  loc_BE08D1: LitVarStr var_94, " font-style: normal;"
  loc_BE08D6: PopAdLdVar
  loc_BE08D7: FLdPr Me
  loc_BE08DA: MemLdRfVar from_stack_1.global_60
  loc_BE08DD: LdPrVar
  loc_BE08DF: LateMemCall
  loc_BE08E5: LitVarStr var_94, " font-weight: normal;"
  loc_BE08EA: PopAdLdVar
  loc_BE08EB: FLdPr Me
  loc_BE08EE: MemLdRfVar from_stack_1.global_60
  loc_BE08F1: LdPrVar
  loc_BE08F3: LateMemCall
  loc_BE08F9: LitVarStr var_94, " font-variant: normal;"
  loc_BE08FE: PopAdLdVar
  loc_BE08FF: FLdPr Me
  loc_BE0902: MemLdRfVar from_stack_1.global_60
  loc_BE0905: LdPrVar
  loc_BE0907: LateMemCall
  loc_BE090D: LitVarStr var_94, "}"
  loc_BE0912: PopAdLdVar
  loc_BE0913: FLdPr Me
  loc_BE0916: MemLdRfVar from_stack_1.global_60
  loc_BE0919: LdPrVar
  loc_BE091B: LateMemCall
  loc_BE0921: LitVarStr var_94, ".Encabezado {"
  loc_BE0926: PopAdLdVar
  loc_BE0927: FLdPr Me
  loc_BE092A: MemLdRfVar from_stack_1.global_60
  loc_BE092D: LdPrVar
  loc_BE092F: LateMemCall
  loc_BE0935: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BE093A: PopAdLdVar
  loc_BE093B: FLdPr Me
  loc_BE093E: MemLdRfVar from_stack_1.global_60
  loc_BE0941: LdPrVar
  loc_BE0943: LateMemCall
  loc_BE0949: LitVarStr var_94, " font-size: 11px;"
  loc_BE094E: PopAdLdVar
  loc_BE094F: FLdPr Me
  loc_BE0952: MemLdRfVar from_stack_1.global_60
  loc_BE0955: LdPrVar
  loc_BE0957: LateMemCall
  loc_BE095D: LitVarStr var_94, " font-weight: bold;"
  loc_BE0962: PopAdLdVar
  loc_BE0963: FLdPr Me
  loc_BE0966: MemLdRfVar from_stack_1.global_60
  loc_BE0969: LdPrVar
  loc_BE096B: LateMemCall
  loc_BE0971: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BE0976: PopAdLdVar
  loc_BE0977: FLdPr Me
  loc_BE097A: MemLdRfVar from_stack_1.global_60
  loc_BE097D: LdPrVar
  loc_BE097F: LateMemCall
  loc_BE0985: LitVarStr var_94, "}"
  loc_BE098A: PopAdLdVar
  loc_BE098B: FLdPr Me
  loc_BE098E: MemLdRfVar from_stack_1.global_60
  loc_BE0991: LdPrVar
  loc_BE0993: LateMemCall
  loc_BE0999: LitVarStr var_94, ".LineaDato {"
  loc_BE099E: PopAdLdVar
  loc_BE099F: FLdPr Me
  loc_BE09A2: MemLdRfVar from_stack_1.global_60
  loc_BE09A5: LdPrVar
  loc_BE09A7: LateMemCall
  loc_BE09AD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE09B2: PopAdLdVar
  loc_BE09B3: FLdPr Me
  loc_BE09B6: MemLdRfVar from_stack_1.global_60
  loc_BE09B9: LdPrVar
  loc_BE09BB: LateMemCall
  loc_BE09C1: LitVarStr var_94, " font-size: 10px;"
  loc_BE09C6: PopAdLdVar
  loc_BE09C7: FLdPr Me
  loc_BE09CA: MemLdRfVar from_stack_1.global_60
  loc_BE09CD: LdPrVar
  loc_BE09CF: LateMemCall
  loc_BE09D5: LitVarStr var_94, "}"
  loc_BE09DA: PopAdLdVar
  loc_BE09DB: FLdPr Me
  loc_BE09DE: MemLdRfVar from_stack_1.global_60
  loc_BE09E1: LdPrVar
  loc_BE09E3: LateMemCall
  loc_BE09E9: LitVarStr var_94, ".Totales {"
  loc_BE09EE: PopAdLdVar
  loc_BE09EF: FLdPr Me
  loc_BE09F2: MemLdRfVar from_stack_1.global_60
  loc_BE09F5: LdPrVar
  loc_BE09F7: LateMemCall
  loc_BE09FD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE0A02: PopAdLdVar
  loc_BE0A03: FLdPr Me
  loc_BE0A06: MemLdRfVar from_stack_1.global_60
  loc_BE0A09: LdPrVar
  loc_BE0A0B: LateMemCall
  loc_BE0A11: LitVarStr var_94, " font-size: 12px;"
  loc_BE0A16: PopAdLdVar
  loc_BE0A17: FLdPr Me
  loc_BE0A1A: MemLdRfVar from_stack_1.global_60
  loc_BE0A1D: LdPrVar
  loc_BE0A1F: LateMemCall
  loc_BE0A25: LitVarStr var_94, " font-weight: bold;"
  loc_BE0A2A: PopAdLdVar
  loc_BE0A2B: FLdPr Me
  loc_BE0A2E: MemLdRfVar from_stack_1.global_60
  loc_BE0A31: LdPrVar
  loc_BE0A33: LateMemCall
  loc_BE0A39: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE0A3E: PopAdLdVar
  loc_BE0A3F: FLdPr Me
  loc_BE0A42: MemLdRfVar from_stack_1.global_60
  loc_BE0A45: LdPrVar
  loc_BE0A47: LateMemCall
  loc_BE0A4D: LitVarStr var_94, "}"
  loc_BE0A52: PopAdLdVar
  loc_BE0A53: FLdPr Me
  loc_BE0A56: MemLdRfVar from_stack_1.global_60
  loc_BE0A59: LdPrVar
  loc_BE0A5B: LateMemCall
  loc_BE0A61: LitVarStr var_94, ".SubTotales {"
  loc_BE0A66: PopAdLdVar
  loc_BE0A67: FLdPr Me
  loc_BE0A6A: MemLdRfVar from_stack_1.global_60
  loc_BE0A6D: LdPrVar
  loc_BE0A6F: LateMemCall
  loc_BE0A75: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE0A7A: PopAdLdVar
  loc_BE0A7B: FLdPr Me
  loc_BE0A7E: MemLdRfVar from_stack_1.global_60
  loc_BE0A81: LdPrVar
  loc_BE0A83: LateMemCall
  loc_BE0A89: LitVarStr var_94, " font-size: 10px;"
  loc_BE0A8E: PopAdLdVar
  loc_BE0A8F: FLdPr Me
  loc_BE0A92: MemLdRfVar from_stack_1.global_60
  loc_BE0A95: LdPrVar
  loc_BE0A97: LateMemCall
  loc_BE0A9D: LitVarStr var_94, " font-weight: bold;"
  loc_BE0AA2: PopAdLdVar
  loc_BE0AA3: FLdPr Me
  loc_BE0AA6: MemLdRfVar from_stack_1.global_60
  loc_BE0AA9: LdPrVar
  loc_BE0AAB: LateMemCall
  loc_BE0AB1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE0AB6: PopAdLdVar
  loc_BE0AB7: FLdPr Me
  loc_BE0ABA: MemLdRfVar from_stack_1.global_60
  loc_BE0ABD: LdPrVar
  loc_BE0ABF: LateMemCall
  loc_BE0AC5: LitVarStr var_94, "}"
  loc_BE0ACA: PopAdLdVar
  loc_BE0ACB: FLdPr Me
  loc_BE0ACE: MemLdRfVar from_stack_1.global_60
  loc_BE0AD1: LdPrVar
  loc_BE0AD3: LateMemCall
  loc_BE0AD9: LitVarStr var_94, ".Tilde {"
  loc_BE0ADE: PopAdLdVar
  loc_BE0ADF: FLdPr Me
  loc_BE0AE2: MemLdRfVar from_stack_1.global_60
  loc_BE0AE5: LdPrVar
  loc_BE0AE7: LateMemCall
  loc_BE0AED: LitVarStr var_94, " font-family: Wingdings;"
  loc_BE0AF2: PopAdLdVar
  loc_BE0AF3: FLdPr Me
  loc_BE0AF6: MemLdRfVar from_stack_1.global_60
  loc_BE0AF9: LdPrVar
  loc_BE0AFB: LateMemCall
  loc_BE0B01: LitVarStr var_94, " font-size: 16px;"
  loc_BE0B06: PopAdLdVar
  loc_BE0B07: FLdPr Me
  loc_BE0B0A: MemLdRfVar from_stack_1.global_60
  loc_BE0B0D: LdPrVar
  loc_BE0B0F: LateMemCall
  loc_BE0B15: LitVarStr var_94, "}"
  loc_BE0B1A: PopAdLdVar
  loc_BE0B1B: FLdPr Me
  loc_BE0B1E: MemLdRfVar from_stack_1.global_60
  loc_BE0B21: LdPrVar
  loc_BE0B23: LateMemCall
  loc_BE0B29: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BE0B2E: PopAdLdVar
  loc_BE0B2F: FLdPr Me
  loc_BE0B32: MemLdRfVar from_stack_1.global_60
  loc_BE0B35: LdPrVar
  loc_BE0B37: LateMemCall
  loc_BE0B3D: LitVarStr var_94, "</style>"
  loc_BE0B42: PopAdLdVar
  loc_BE0B43: FLdPr Me
  loc_BE0B46: MemLdRfVar from_stack_1.global_60
  loc_BE0B49: LdPrVar
  loc_BE0B4B: LateMemCall
  loc_BE0B51: LitI4 0
  loc_BE0B56: FStStrCopy var_AC
  loc_BE0B59: FLdRfVar var_AC
  loc_BE0B5C: LitI4 0
  loc_BE0B61: FStStrCopy var_A8
  loc_BE0B64: FLdRfVar var_A8
  loc_BE0B67: LitI2_Byte 0
  loc_BE0B69: PopTmpLdAd2 var_BE
  loc_BE0B6C: FLdPr Me
  loc_BE0B6F: MemLdRfVar from_stack_1.global_60
  loc_BE0B72: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BE0B77: FFreeStr var_A8 = ""
  loc_BE0B7E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BE0B83: PopAdLdVar
  loc_BE0B84: FLdPr Me
  loc_BE0B87: MemLdRfVar from_stack_1.global_60
  loc_BE0B8A: LdPrVar
  loc_BE0B8C: LateMemCall
  loc_BE0B92: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BE0B97: PopAdLdVar
  loc_BE0B98: FLdPr Me
  loc_BE0B9B: MemLdRfVar from_stack_1.global_60
  loc_BE0B9E: LdPrVar
  loc_BE0BA0: LateMemCall
  loc_BE0BA6: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_BE0BAB: PopAdLdVar
  loc_BE0BAC: FLdPr Me
  loc_BE0BAF: MemLdRfVar from_stack_1.global_60
  loc_BE0BB2: LdPrVar
  loc_BE0BB4: LateMemCall
  loc_BE0BBA: FLdPr Me
  loc_BE0BBD: MemLdI2 bLogos
  loc_BE0BC0: BranchF loc_BE0C09
  loc_BE0BC3: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE0BC6: LitI2_Byte &H5F
  loc_BE0BC8: CStrUI1
  loc_BE0BCA: FStStrNoPop var_A8
  loc_BE0BCD: ConcatStr
  loc_BE0BCE: FStStrNoPop var_AC
  loc_BE0BD1: LitStr """ height="""
  loc_BE0BD4: ConcatStr
  loc_BE0BD5: FStStrNoPop var_C4
  loc_BE0BD8: LitI2_Byte &H3C
  loc_BE0BDA: CStrUI1
  loc_BE0BDC: FStStrNoPop var_C8
  loc_BE0BDF: ConcatStr
  loc_BE0BE0: FStStrNoPop var_CC
  loc_BE0BE3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BE0BE6: ConcatStr
  loc_BE0BE7: CVarStr var_BC
  loc_BE0BEA: PopAdLdVar
  loc_BE0BEB: FLdPr Me
  loc_BE0BEE: MemLdRfVar from_stack_1.global_60
  loc_BE0BF1: LdPrVar
  loc_BE0BF3: LateMemCall
  loc_BE0BF9: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BE0C06: FFree1Var var_BC = ""
  loc_BE0C09: LitStr "     <br>"
  loc_BE0C0C: LitStr "Municipalidad de Guaymallén"
  loc_BE0C0F: ConcatStr
  loc_BE0C10: FStStrNoPop var_A8
  loc_BE0C13: LitStr "</p>"
  loc_BE0C16: ConcatStr
  loc_BE0C17: CVarStr var_BC
  loc_BE0C1A: PopAdLdVar
  loc_BE0C1B: FLdPr Me
  loc_BE0C1E: MemLdRfVar from_stack_1.global_60
  loc_BE0C21: LdPrVar
  loc_BE0C23: LateMemCall
  loc_BE0C29: FFree1Str var_A8
  loc_BE0C2C: FFree1Var var_BC = ""
  loc_BE0C2F: LitStr "    <p>"
  loc_BE0C32: FLdRfVar var_A8
  loc_BE0C35: FLdPr Me
  loc_BE0C38:  = Me.Caption
  loc_BE0C3D: ILdRf var_A8
  loc_BE0C40: ConcatStr
  loc_BE0C41: FStStrNoPop var_AC
  loc_BE0C44: LitStr "</p></th>"
  loc_BE0C47: ConcatStr
  loc_BE0C48: CVarStr var_BC
  loc_BE0C4B: PopAdLdVar
  loc_BE0C4C: FLdPr Me
  loc_BE0C4F: MemLdRfVar from_stack_1.global_60
  loc_BE0C52: LdPrVar
  loc_BE0C54: LateMemCall
  loc_BE0C5A: FFreeStr var_A8 = ""
  loc_BE0C61: FFree1Var var_BC = ""
  loc_BE0C64: LitVarStr var_94, "  </tr>"
  loc_BE0C69: PopAdLdVar
  loc_BE0C6A: FLdPr Me
  loc_BE0C6D: MemLdRfVar from_stack_1.global_60
  loc_BE0C70: LdPrVar
  loc_BE0C72: LateMemCall
  loc_BE0C78: LitVarStr var_94, "  <tr>"
  loc_BE0C7D: PopAdLdVar
  loc_BE0C7E: FLdPr Me
  loc_BE0C81: MemLdRfVar from_stack_1.global_60
  loc_BE0C84: LdPrVar
  loc_BE0C86: LateMemCall
  loc_BE0C8C: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_BE0C91: PopAdLdVar
  loc_BE0C92: FLdPr Me
  loc_BE0C95: MemLdRfVar from_stack_1.global_60
  loc_BE0C98: LdPrVar
  loc_BE0C9A: LateMemCall
  loc_BE0CA0: LitVarStr var_94, "  </tr>"
  loc_BE0CA5: PopAdLdVar
  loc_BE0CA6: FLdPr Me
  loc_BE0CA9: MemLdRfVar from_stack_1.global_60
  loc_BE0CAC: LdPrVar
  loc_BE0CAE: LateMemCall
  loc_BE0CB4: LitVarStr var_94, "  <tr valign=""top"" align=""left"" class=""Normal"">"
  loc_BE0CB9: PopAdLdVar
  loc_BE0CBA: FLdPr Me
  loc_BE0CBD: MemLdRfVar from_stack_1.global_60
  loc_BE0CC0: LdPrVar
  loc_BE0CC2: LateMemCall
  loc_BE0CC8: LitStr "    <td><strong>Desde: </strong>"
  loc_BE0CCB: FLdPr Me
  loc_BE0CCE: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_BE0CD1: FStAdFunc var_D0
  loc_BE0CD4: FLdPr var_D0
  loc_BE0CD7: LateIdLdVar var_BC DispID_15 0
  loc_BE0CDE: CStrVarTmp
  loc_BE0CDF: FStStrNoPop var_A8
  loc_BE0CE2: ConcatStr
  loc_BE0CE3: FStStrNoPop var_AC
  loc_BE0CE6: LitStr "</td>"
  loc_BE0CE9: ConcatStr
  loc_BE0CEA: CVarStr var_E0
  loc_BE0CED: PopAdLdVar
  loc_BE0CEE: FLdPr Me
  loc_BE0CF1: MemLdRfVar from_stack_1.global_60
  loc_BE0CF4: LdPrVar
  loc_BE0CF6: LateMemCall
  loc_BE0CFC: FFreeStr var_A8 = ""
  loc_BE0D03: FFree1Ad var_D0
  loc_BE0D06: FFreeVar var_BC = ""
  loc_BE0D0D: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_BE0D12: PopAdLdVar
  loc_BE0D13: FLdPr Me
  loc_BE0D16: MemLdRfVar from_stack_1.global_60
  loc_BE0D19: LdPrVar
  loc_BE0D1B: LateMemCall
  loc_BE0D21: LitStr "    <td align=""right""><strong>Hasta: </strong>"
  loc_BE0D24: FLdPr Me
  loc_BE0D27: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_BE0D2A: FStAdFunc var_D0
  loc_BE0D2D: FLdPr var_D0
  loc_BE0D30: LateIdLdVar var_BC DispID_15 0
  loc_BE0D37: CStrVarTmp
  loc_BE0D38: FStStrNoPop var_A8
  loc_BE0D3B: ConcatStr
  loc_BE0D3C: FStStrNoPop var_AC
  loc_BE0D3F: LitStr "</td>"
  loc_BE0D42: ConcatStr
  loc_BE0D43: CVarStr var_E0
  loc_BE0D46: PopAdLdVar
  loc_BE0D47: FLdPr Me
  loc_BE0D4A: MemLdRfVar from_stack_1.global_60
  loc_BE0D4D: LdPrVar
  loc_BE0D4F: LateMemCall
  loc_BE0D55: FFreeStr var_A8 = ""
  loc_BE0D5C: FFree1Ad var_D0
  loc_BE0D5F: FFreeVar var_BC = ""
  loc_BE0D66: LitVarStr var_94, "  </tr>"
  loc_BE0D6B: PopAdLdVar
  loc_BE0D6C: FLdPr Me
  loc_BE0D6F: MemLdRfVar from_stack_1.global_60
  loc_BE0D72: LdPrVar
  loc_BE0D74: LateMemCall
  loc_BE0D7A: LitVarStr var_94, "</table>"
  loc_BE0D7F: PopAdLdVar
  loc_BE0D80: FLdPr Me
  loc_BE0D83: MemLdRfVar from_stack_1.global_60
  loc_BE0D86: LdPrVar
  loc_BE0D88: LateMemCall
  loc_BE0D8E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE0D93: PopAdLdVar
  loc_BE0D94: FLdPr Me
  loc_BE0D97: MemLdRfVar from_stack_1.global_60
  loc_BE0D9A: LdPrVar
  loc_BE0D9C: LateMemCall
  loc_BE0DA2: LitVarStr var_94, "  <thead>"
  loc_BE0DA7: PopAdLdVar
  loc_BE0DA8: FLdPr Me
  loc_BE0DAB: MemLdRfVar from_stack_1.global_60
  loc_BE0DAE: LdPrVar
  loc_BE0DB0: LateMemCall
  loc_BE0DB6: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE0DBB: PopAdLdVar
  loc_BE0DBC: FLdPr Me
  loc_BE0DBF: MemLdRfVar from_stack_1.global_60
  loc_BE0DC2: LdPrVar
  loc_BE0DC4: LateMemCall
  loc_BE0DCA: LitVarStr var_94, "    <th>Oficina</th>"
  loc_BE0DCF: PopAdLdVar
  loc_BE0DD0: FLdPr Me
  loc_BE0DD3: MemLdRfVar from_stack_1.global_60
  loc_BE0DD6: LdPrVar
  loc_BE0DD8: LateMemCall
  loc_BE0DDE: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BE0DE3: PopAdLdVar
  loc_BE0DE4: FLdPr Me
  loc_BE0DE7: MemLdRfVar from_stack_1.global_60
  loc_BE0DEA: LdPrVar
  loc_BE0DEC: LateMemCall
  loc_BE0DF2: LitVarStr var_94, "    <th>Concepto</th>"
  loc_BE0DF7: PopAdLdVar
  loc_BE0DF8: FLdPr Me
  loc_BE0DFB: MemLdRfVar from_stack_1.global_60
  loc_BE0DFE: LdPrVar
  loc_BE0E00: LateMemCall
  loc_BE0E06: LitVarStr var_94, "    <th>Facilidad</th>"
  loc_BE0E0B: PopAdLdVar
  loc_BE0E0C: FLdPr Me
  loc_BE0E0F: MemLdRfVar from_stack_1.global_60
  loc_BE0E12: LdPrVar
  loc_BE0E14: LateMemCall
  loc_BE0E1A: LitVarStr var_94, "    <th>Nº de<br>Apremio</th>"
  loc_BE0E1F: PopAdLdVar
  loc_BE0E20: FLdPr Me
  loc_BE0E23: MemLdRfVar from_stack_1.global_60
  loc_BE0E26: LdPrVar
  loc_BE0E28: LateMemCall
  loc_BE0E2E: LitVarStr var_94, "    <th>Capital</th>"
  loc_BE0E33: PopAdLdVar
  loc_BE0E34: FLdPr Me
  loc_BE0E37: MemLdRfVar from_stack_1.global_60
  loc_BE0E3A: LdPrVar
  loc_BE0E3C: LateMemCall
  loc_BE0E42: LitVarStr var_94, "    <th>Desc. de<br>Capital</th>"
  loc_BE0E47: PopAdLdVar
  loc_BE0E48: FLdPr Me
  loc_BE0E4B: MemLdRfVar from_stack_1.global_60
  loc_BE0E4E: LdPrVar
  loc_BE0E50: LateMemCall
  loc_BE0E56: LitVarStr var_94, "    <th>Recargo</th>"
  loc_BE0E5B: PopAdLdVar
  loc_BE0E5C: FLdPr Me
  loc_BE0E5F: MemLdRfVar from_stack_1.global_60
  loc_BE0E62: LdPrVar
  loc_BE0E64: LateMemCall
  loc_BE0E6A: LitVarStr var_94, "    <th>Desc. de<br>Recargo</th>"
  loc_BE0E6F: PopAdLdVar
  loc_BE0E70: FLdPr Me
  loc_BE0E73: MemLdRfVar from_stack_1.global_60
  loc_BE0E76: LdPrVar
  loc_BE0E78: LateMemCall
  loc_BE0E7E: LitVarStr var_94, "    <th>Interés</th>"
  loc_BE0E83: PopAdLdVar
  loc_BE0E84: FLdPr Me
  loc_BE0E87: MemLdRfVar from_stack_1.global_60
  loc_BE0E8A: LdPrVar
  loc_BE0E8C: LateMemCall
  loc_BE0E92: LitVarStr var_94, "    <th>Exención</th>"
  loc_BE0E97: PopAdLdVar
  loc_BE0E98: FLdPr Me
  loc_BE0E9B: MemLdRfVar from_stack_1.global_60
  loc_BE0E9E: LdPrVar
  loc_BE0EA0: LateMemCall
  loc_BE0EA6: LitVarStr var_94, "    <th>Apremio</th>"
  loc_BE0EAB: PopAdLdVar
  loc_BE0EAC: FLdPr Me
  loc_BE0EAF: MemLdRfVar from_stack_1.global_60
  loc_BE0EB2: LdPrVar
  loc_BE0EB4: LateMemCall
  loc_BE0EBA: LitVarStr var_94, "    <th>Total</th>"
  loc_BE0EBF: PopAdLdVar
  loc_BE0EC0: FLdPr Me
  loc_BE0EC3: MemLdRfVar from_stack_1.global_60
  loc_BE0EC6: LdPrVar
  loc_BE0EC8: LateMemCall
  loc_BE0ECE: LitVarStr var_94, "  </tr>"
  loc_BE0ED3: PopAdLdVar
  loc_BE0ED4: FLdPr Me
  loc_BE0ED7: MemLdRfVar from_stack_1.global_60
  loc_BE0EDA: LdPrVar
  loc_BE0EDC: LateMemCall
  loc_BE0EE2: LitVarStr var_94, "  </thead>"
  loc_BE0EE7: PopAdLdVar
  loc_BE0EE8: FLdPr Me
  loc_BE0EEB: MemLdRfVar from_stack_1.global_60
  loc_BE0EEE: LdPrVar
  loc_BE0EF0: LateMemCall
  loc_BE0EF6: ExitProcHresult
End Function

Private Function Proc_139_24_A0D088() 'A0D088
  'Data Table: 47C52C
  loc_A0D048: LitVarStr var_94, "</table>"
  loc_A0D04D: PopAdLdVar
  loc_A0D04E: FLdPr Me
  loc_A0D051: MemLdRfVar from_stack_1.global_60
  loc_A0D054: LdPrVar
  loc_A0D056: LateMemCall
  loc_A0D05C: LitVarStr var_94, "</body>"
  loc_A0D061: PopAdLdVar
  loc_A0D062: FLdPr Me
  loc_A0D065: MemLdRfVar from_stack_1.global_60
  loc_A0D068: LdPrVar
  loc_A0D06A: LateMemCall
  loc_A0D070: LitVarStr var_94, "</html>"
  loc_A0D075: PopAdLdVar
  loc_A0D076: FLdPr Me
  loc_A0D079: MemLdRfVar from_stack_1.global_60
  loc_A0D07C: LdPrVar
  loc_A0D07E: LateMemCall
  loc_A0D084: ExitProcHresult
  loc_A0D085: NewIfNullAd
End Function
