VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeAforosyPagosTransito
  Caption = "Listado de Aforos y Pagos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeAforosyPagosTransito.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9972
  ClientHeight = 4272
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4020
    Width = 9975
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptListadodeAforosyPagosTransito.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 2760
    Width = 855
    Height = 735
    TabIndex = 7
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
    Picture = "rptListadodeAforosyPagosTransito.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeAforosyPagosTransito.frx":0B9C
    Left = 9360
    Top = 2880
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2520
    Width = 3495
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2520
    Width = 4095
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 4
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9735
    Height = 2415
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame FechasFra
      Caption = "Fecha de "
      Left = 240
      Top = 480
      Width = 7455
      Height = 1095
      TabIndex = 13
      Begin MSMask.MaskEdBox DesdeMsk
        Left = 1680
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptListadodeAforosyPagosTransito.frx":0C00
      End
      Begin MSMask.MaskEdBox HastaMsk
        Left = 5160
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptListadodeAforosyPagosTransito.frx":0CB0
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 840
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 15
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 4380
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 14
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7920
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1440
      Top = 1800
      Width = 1215
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptListadodeAforosyPagosTransito.frx":0D60
    End
    Begin VB.Label Label2
      Caption = "Concepto:"
      Left = 270
      Top = 1800
      Width = 1095
      Height = 300
      TabIndex = 17
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaConcLbl
      Left = 2760
      Top = 1800
      Width = 6855
      Height = 375
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 2880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptListadodeAforosyPagosTransito.frx":0DF8
  End
End

Attribute VB_Name = "rptListadodeAforosyPagosTransito"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00562428
  bStruc(44) As Byte ' String fields: 11
End Type


Private Sub HastaMsk_UnknownEvent_0 '9C4460
  'Data Table: 495164
  loc_9C444C: FLdPr Me
  loc_9C444F: VCallAd Control_ID_HastaMsk
  loc_9C4452: CVarAd
  loc_9C4456: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C445B: FFree1Var var_94 = ""
  loc_9C445E: ExitProcHresult
  loc_9C445F: ExitProcR4
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AE85A0
  'Data Table: 495164
  loc_AE843C: FLdPr Me
  loc_AE843F: VCallAd Control_ID_DesdeMsk
  loc_AE8442: FStAdFunc var_88
  loc_AE8445: FLdPr var_88
  loc_AE8448: LateIdLdVar var_98 DispID_15 0
  loc_AE844F: CStrVarTmp
  loc_AE8450: CVarStr var_A8
  loc_AE8453: ImpAdCallI2 IsDate()
  loc_AE8458: FFree1Ad var_88
  loc_AE845B: FFreeVar var_98 = ""
  loc_AE8462: BranchF loc_AE8582
  loc_AE8465: FLdPr Me
  loc_AE8468: VCallAd Control_ID_HastaMsk
  loc_AE846B: FStAdFunc var_88
  loc_AE846E: FLdPr var_88
  loc_AE8471: LateIdLdVar var_98 DispID_15 0
  loc_AE8478: CStrVarTmp
  loc_AE8479: CVarStr var_A8
  loc_AE847C: ImpAdCallI2 IsDate()
  loc_AE8481: FFree1Ad var_88
  loc_AE8484: FFreeVar var_98 = ""
  loc_AE848B: BranchF loc_AE857F
  loc_AE848E: FLdPr Me
  loc_AE8491: VCallAd Control_ID_HastaMsk
  loc_AE8494: FStAdFunc var_88
  loc_AE8497: FLdPr var_88
  loc_AE849A: LateIdLdVar var_98 DispID_15 0
  loc_AE84A1: CStrVarTmp
  loc_AE84A2: FStStrNoPop var_AC
  loc_AE84A5: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_AE84AA: FStStrNoPop var_B0
  loc_AE84AD: FLdPr Me
  loc_AE84B0: MemStStrCopy
  loc_AE84B4: FFreeStr var_AC = ""
  loc_AE84BB: FFree1Ad var_88
  loc_AE84BE: FFree1Var var_98 = ""
  loc_AE84C1: FLdPr Me
  loc_AE84C4: VCallAd Control_ID_HastaMsk
  loc_AE84C7: FStAdFuncNoPop
  loc_AE84CA: CastAd
  loc_AE84CD: FStAdFunc var_B4
  loc_AE84D0: FLdRfVar var_B4
  loc_AE84D3: FLdPr Me
  loc_AE84D6: MemLdStr global_92
  loc_AE84D9: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE84DE: IStI2 arg_C
  loc_AE84E1: FFreeAd var_88 = ""
  loc_AE84E8: ILdI2 arg_C
  loc_AE84EB: NotI4
  loc_AE84EC: BranchF loc_AE857F
  loc_AE84EF: FLdPr Me
  loc_AE84F2: VCallAd Control_ID_DesdeMsk
  loc_AE84F5: FStAdFunc var_88
  loc_AE84F8: FLdPr var_88
  loc_AE84FB: LateIdLdVar var_98 DispID_15 0
  loc_AE8502: CStrVarTmp
  loc_AE8503: CVarStr var_A8
  loc_AE8506: FLdRfVar var_C4
  loc_AE8509: ImpAdCallFPR4  = Year()
  loc_AE850E: FLdRfVar var_C4
  loc_AE8511: FLdPr Me
  loc_AE8514: VCallAd Control_ID_HastaMsk
  loc_AE8517: FStAdFunc var_B4
  loc_AE851A: FLdPr var_B4
  loc_AE851D: LateIdLdVar var_D4 DispID_15 0
  loc_AE8524: CStrVarTmp
  loc_AE8525: CVarStr var_E4
  loc_AE8528: FLdRfVar var_F4
  loc_AE852B: ImpAdCallFPR4  = Year()
  loc_AE8530: FLdRfVar var_F4
  loc_AE8533: NeVarBool
  loc_AE8535: FFreeAd var_88 = ""
  loc_AE853C: FFreeVar var_98 = "": var_A8 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_AE854B: BranchF loc_AE857F
  loc_AE854E: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_AE8551: FLdPr Me
  loc_AE8554: MemStStrCopy
  loc_AE8558: FLdPr Me
  loc_AE855B: VCallAd Control_ID_HastaMsk
  loc_AE855E: FStAdFuncNoPop
  loc_AE8561: CastAd
  loc_AE8564: FStAdFunc var_B4
  loc_AE8567: FLdRfVar var_B4
  loc_AE856A: FLdPr Me
  loc_AE856D: MemLdStr global_92
  loc_AE8570: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE8575: IStI2 arg_C
  loc_AE8578: FFreeAd var_88 = ""
  loc_AE857F: Branch loc_AE859C
  loc_AE8582: LitVarStr var_114, vbNullString
  loc_AE8587: PopAdLdVar
  loc_AE8588: FLdPr Me
  loc_AE858B: VCallAd Control_ID_HastaMsk
  loc_AE858E: FStAdFunc var_88
  loc_AE8591: FLdPr var_88
  loc_AE8594: LateIdSt
  loc_AE8599: FFree1Ad var_88
  loc_AE859C: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A24408
  'Data Table: 495164
  loc_A243C0: ILdI2 KeyAscii
  loc_A243C3: CI4UI1
  loc_A243C4: LitI4 &H20
  loc_A243C9: EqI4
  loc_A243CA: BranchF loc_A24407
  loc_A243CD: LitVar_Missing var_A4
  loc_A243D0: PopAdLdVar
  loc_A243D1: LitVarI4
  loc_A243D9: PopAdLdVar
  loc_A243DA: ImpAdLdRf MemVar_D930A4
  loc_A243DD: NewIfNullPr frmCalendario
  loc_A243E0: frmCalendario.Show from_stack_1, from_stack_2
  loc_A243E5: ImpAdLdRf MemVar_D93028
  loc_A243E8: CDargRef
  loc_A243EC: FLdPr Me
  loc_A243EF: VCallAd Control_ID_HastaMsk
  loc_A243F2: FStAdFunc var_A8
  loc_A243F5: FLdPr var_A8
  loc_A243F8: LateIdSt
  loc_A243FD: FFree1Ad var_A8
  loc_A24400: LitStr vbNullString
  loc_A24403: ImpAdStStrCopy MemVar_D93028
  loc_A24407: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DD30C
  'Data Table: 495164
  loc_9DD2F0: LitI2_Byte &HFF
  loc_9DD2F2: LitI2_Byte 0
  loc_9DD2F4: ILdRf Me
  loc_9DD2F7: CastAd
  loc_9DD2FA: FStAdFunc var_88
  loc_9DD2FD: FLdRfVar var_88
  loc_9DD300: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DD305: FFree1Ad var_88
  loc_9DD308: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE16C
  'Data Table: 495164
  loc_9DE150: LitI2_Byte 0
  loc_9DE152: PopTmpLdAd2 var_8A
  loc_9DE155: ILdRf Me
  loc_9DE158: CastAd
  loc_9DE15B: FStAdFunc var_88
  loc_9DE15E: FLdRfVar var_88
  loc_9DE161: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE166: FFree1Ad var_88
  loc_9DE169: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CE400
  'Data Table: 495164
  loc_9CE3E8: LitI2_Byte 0
  loc_9CE3EA: ILdRf Me
  loc_9CE3ED: CastAd
  loc_9CE3F0: FStAdFunc var_88
  loc_9CE3F3: FLdRfVar var_88
  loc_9CE3F6: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CE3FB: FFree1Ad var_88
  loc_9CE3FE: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A00948
  'Data Table: 495164
  loc_A00918: LitVarStr var_94, "Cerrando..."
  loc_A0091D: PopAdLdVar
  loc_A0091E: FLdPr Me
  loc_A00921: VCallAd Control_ID_statusBar
  loc_A00924: FStAdFunc var_A8
  loc_A00927: FLdPr var_A8
  loc_A0092A: LateIdSt
  loc_A0092F: FFree1Ad var_A8
  loc_A00932: ILdRf Me
  loc_A00935: FStAdNoPop
  loc_A00939: ImpAdLdRf MemVar_D9C5D8
  loc_A0093C: NewIfNullPr Global
  loc_A0093F: Global.Unload from_stack_1
  loc_A00944: FFree1Ad var_A8
  loc_A00947: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C4418
  'Data Table: 495164
  loc_9C4404: FLdPr Me
  loc_9C4407: VCallAd Control_ID_DesdeMsk
  loc_9C440A: CVarAd
  loc_9C440E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4413: FFree1Var var_94 = ""
  loc_9C4416: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A84A7C
  'Data Table: 495164
  loc_A849F8: FLdPr Me
  loc_A849FB: VCallAd Control_ID_DesdeMsk
  loc_A849FE: FStAdFunc var_88
  loc_A84A01: FLdPr var_88
  loc_A84A04: LateIdLdVar var_98 DispID_15 0
  loc_A84A0B: CStrVarTmp
  loc_A84A0C: CVarStr var_A8
  loc_A84A0F: ImpAdCallI2 IsDate()
  loc_A84A14: FFree1Ad var_88
  loc_A84A17: FFreeVar var_98 = ""
  loc_A84A1E: BranchF loc_A84A7B
  loc_A84A21: FLdPr Me
  loc_A84A24: VCallAd Control_ID_DesdeMsk
  loc_A84A27: FStAdFunc var_88
  loc_A84A2A: FLdPr var_88
  loc_A84A2D: LateIdLdVar var_98 DispID_15 0
  loc_A84A34: CStrVarTmp
  loc_A84A35: FStStrNoPop var_AC
  loc_A84A38: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A84A3D: FStStrNoPop var_B0
  loc_A84A40: FLdPr Me
  loc_A84A43: MemStStrCopy
  loc_A84A47: FFreeStr var_AC = ""
  loc_A84A4E: FFree1Ad var_88
  loc_A84A51: FFree1Var var_98 = ""
  loc_A84A54: FLdPr Me
  loc_A84A57: VCallAd Control_ID_DesdeMsk
  loc_A84A5A: FStAdFuncNoPop
  loc_A84A5D: CastAd
  loc_A84A60: FStAdFunc var_B4
  loc_A84A63: FLdRfVar var_B4
  loc_A84A66: FLdPr Me
  loc_A84A69: MemLdStr global_92
  loc_A84A6C: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A84A71: IStI2 arg_C
  loc_A84A74: FFreeAd var_88 = ""
  loc_A84A7B: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A2438C
  'Data Table: 495164
  loc_A24344: ILdI2 KeyAscii
  loc_A24347: CI4UI1
  loc_A24348: LitI4 &H20
  loc_A2434D: EqI4
  loc_A2434E: BranchF loc_A2438B
  loc_A24351: LitVar_Missing var_A4
  loc_A24354: PopAdLdVar
  loc_A24355: LitVarI4
  loc_A2435D: PopAdLdVar
  loc_A2435E: ImpAdLdRf MemVar_D930A4
  loc_A24361: NewIfNullPr frmCalendario
  loc_A24364: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24369: ImpAdLdRf MemVar_D93028
  loc_A2436C: CDargRef
  loc_A24370: FLdPr Me
  loc_A24373: VCallAd Control_ID_DesdeMsk
  loc_A24376: FStAdFunc var_A8
  loc_A24379: FLdPr var_A8
  loc_A2437C: LateIdSt
  loc_A24381: FFree1Ad var_A8
  loc_A24384: LitStr vbNullString
  loc_A24387: ImpAdStStrCopy MemVar_D93028
  loc_A2438B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1B610
  'Data Table: 495164
  loc_A1B5D8: FLdPr Me
  loc_A1B5DB: VCallAd Control_ID_statusBar
  loc_A1B5DE: FStAdFunc var_88
  loc_A1B5E1: FLdPr var_88
  loc_A1B5E4: LateIdLdVar var_98 DispID_1 0
  loc_A1B5EB: CStrVarTmp
  loc_A1B5EC: CVarStr var_A8
  loc_A1B5EF: PopAdLdVar
  loc_A1B5F0: FLdPr Me
  loc_A1B5F3: VCallAd Control_ID_statusBar
  loc_A1B5F6: FStAdFunc var_BC
  loc_A1B5F9: FLdPr var_BC
  loc_A1B5FC: LateIdSt
  loc_A1B601: FFreeAd var_88 = ""
  loc_A1B608: FFreeVar var_98 = ""
  loc_A1B60F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AD48C8
  'Data Table: 495164
  loc_AD47AC: LitI2_Byte 0
  loc_AD47AE: FLdPr Me
  loc_AD47B1: MemStI2 bGenerado
  loc_AD47B4: LitI2_Byte &HFF
  loc_AD47B6: FLdPr Me
  loc_AD47B9: MemStI2 bLogos
  loc_AD47BC: LitI2_Byte 0
  loc_AD47BE: ILdRf Me
  loc_AD47C1: CastAd
  loc_AD47C4: FStAdFunc var_88
  loc_AD47C7: FLdRfVar var_88
  loc_AD47CA: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AD47CF: FFree1Ad var_88
  loc_AD47D2: LitI2_Byte 0
  loc_AD47D4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD47D9: CStrDate
  loc_AD47DB: CVarStr var_98
  loc_AD47DE: PopAdLdVar
  loc_AD47DF: FLdPr Me
  loc_AD47E2: VCallAd Control_ID_HastaMsk
  loc_AD47E5: FStAdFunc var_88
  loc_AD47E8: FLdPr var_88
  loc_AD47EB: LateIdSt
  loc_AD47F0: FFree1Ad var_88
  loc_AD47F3: FFree1Var var_98 = ""
  loc_AD47F6: FLdPr Me
  loc_AD47F9: VCallAd Control_ID_HastaMsk
  loc_AD47FC: FStAdFunc var_88
  loc_AD47FF: FLdPr var_88
  loc_AD4802: LateIdLdVar var_98 DispID_15 0
  loc_AD4809: CStrVarTmp
  loc_AD480A: CVarStr var_B8
  loc_AD480D: FLdRfVar var_C8
  loc_AD4810: ImpAdCallFPR4  = Year()
  loc_AD4815: FLdPr Me
  loc_AD4818: VCallAd Control_ID_HastaMsk
  loc_AD481B: FStAdFunc var_CC
  loc_AD481E: FLdPr var_CC
  loc_AD4821: LateIdLdVar var_DC DispID_15 0
  loc_AD4828: CStrVarTmp
  loc_AD4829: CVarStr var_EC
  loc_AD482C: FLdRfVar var_FC
  loc_AD482F: ImpAdCallFPR4  = Month()
  loc_AD4834: LitI2_Byte 1
  loc_AD4836: FLdRfVar var_FC
  loc_AD4839: CI2Var
  loc_AD483A: FLdRfVar var_C8
  loc_AD483D: CI2Var
  loc_AD483E: FLdRfVar var_10C
  loc_AD4841: ImpAdCallFPR4  = DateSerial(, , )
  loc_AD4846: FLdRfVar var_10C
  loc_AD4849: CStrVarTmp
  loc_AD484A: CVarStr var_11C
  loc_AD484D: PopAdLdVar
  loc_AD484E: FLdPr Me
  loc_AD4851: VCallAd Control_ID_DesdeMsk
  loc_AD4854: FStAdFunc var_120
  loc_AD4857: FLdPr var_120
  loc_AD485A: LateIdSt
  loc_AD485F: FFreeAd var_88 = "": var_CC = ""
  loc_AD4868: FFreeVar var_98 = "": var_B8 = "": var_DC = "": var_EC = "": var_C8 = "": var_FC = "": var_10C = ""
  loc_AD487B: LitVarStr var_A8, vbNullString
  loc_AD4880: PopAdLdVar
  loc_AD4881: FLdPr Me
  loc_AD4884: VCallAd Control_ID_CodiConcMsk
  loc_AD4887: FStAdFunc var_88
  loc_AD488A: FLdPr var_88
  loc_AD488D: LateIdSt
  loc_AD4892: FFree1Ad var_88
  loc_AD4895: LitStr vbNullString
  loc_AD4898: FLdPr Me
  loc_AD489B: VCallAd Control_ID_DetaConcLbl
  loc_AD489E: FStAdFunc var_88
  loc_AD48A1: FLdPr var_88
  loc_AD48A4: Me.Caption = from_stack_1
  loc_AD48A9: FFree1Ad var_88
  loc_AD48AC: Call HabilitarCriterio()
  loc_AD48B1: ILdRf Me
  loc_AD48B4: CastAd
  loc_AD48B7: FStAdFunc var_88
  loc_AD48BA: FLdRfVar var_88
  loc_AD48BD: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD48C2: FFree1Ad var_88
  loc_AD48C5: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CE31C
  'Data Table: 495164
  loc_9CE304: ILdRf Me
  loc_9CE307: CastAd
  loc_9CE30A: FStAdFunc var_88
  loc_9CE30D: FLdRfVar var_88
  loc_9CE310: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CE315: FFree1Ad var_88
  loc_9CE318: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C44A8
  'Data Table: 495164
  loc_9C4494: FLdPr Me
  loc_9C4497: VCallAd Control_ID_CodiConcMsk
  loc_9C449A: CVarAd
  loc_9C449E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C44A3: FFree1Var var_94 = ""
  loc_9C44A6: ExitProcHresult
End Sub

Private Function CodiConcMsk_UnknownEvent_8(arg_C) 'AE8AF0
  'Data Table: 495164
  loc_AE897C: FLdPr Me
  loc_AE897F: VCallAd Control_ID_DesdeMsk
  loc_AE8982: FStAdFunc var_88
  loc_AE8985: FLdPr var_88
  loc_AE8988: LateIdLdVar var_98 DispID_15 0
  loc_AE898F: CStrVarTmp
  loc_AE8990: CVarStr var_A8
  loc_AE8993: ImpAdCallI2 IsDate()
  loc_AE8998: FFree1Ad var_88
  loc_AE899B: FFreeVar var_98 = ""
  loc_AE89A2: BranchF loc_AE89DD
  loc_AE89A5: FLdPr Me
  loc_AE89A8: VCallAd Control_ID_DesdeMsk
  loc_AE89AB: FStAdFunc var_88
  loc_AE89AE: FLdPr var_88
  loc_AE89B1: LateIdLdVar var_98 DispID_15 0
  loc_AE89B8: CStrVarTmp
  loc_AE89B9: CVarStr var_A8
  loc_AE89BC: FLdRfVar var_B8
  loc_AE89BF: ImpAdCallFPR4  = Year()
  loc_AE89C4: FLdRfVar var_B8
  loc_AE89C7: CI2Var
  loc_AE89C8: FLdPr Me
  loc_AE89CB: MemStI2 global_96
  loc_AE89CE: FFree1Ad var_88
  loc_AE89D1: FFreeVar var_98 = "": var_A8 = ""
  loc_AE89DA: Branch loc_AE89E6
  loc_AE89DD: ImpAdLdI2 MemVar_D93034
  loc_AE89E0: FLdPr Me
  loc_AE89E3: MemStI2 global_96
  loc_AE89E6: FLdPr Me
  loc_AE89E9: VCallAd Control_ID_CodiConcMsk
  loc_AE89EC: FStAdFunc var_88
  loc_AE89EF: FLdPr var_88
  loc_AE89F2: LateIdLdVar var_98 DispID_22 0
  loc_AE89F9: CStrVarTmp
  loc_AE89FA: FStStrNoPop var_BC
  loc_AE89FD: LitStr vbNullString
  loc_AE8A00: NeStr
  loc_AE8A02: FFree1Str var_BC
  loc_AE8A05: FFree1Ad var_88
  loc_AE8A08: FFree1Var var_98 = ""
  loc_AE8A0B: BranchF loc_AE8AD6
  loc_AE8A0E: FLdPr Me
  loc_AE8A11: VCallAd Control_ID_CodiConcMsk
  loc_AE8A14: FStAdFunc var_88
  loc_AE8A17: FLdPr var_88
  loc_AE8A1A: LateIdLdVar var_98 DispID_22 0
  loc_AE8A21: PopAd
  loc_AE8A23: LitI2_Byte 0
  loc_AE8A25: LitI2_Byte 0
  loc_AE8A27: LitI2_Byte 0
  loc_AE8A29: LitI2_Byte 0
  loc_AE8A2B: LitI2_Byte 0
  loc_AE8A2D: LitI2_Byte 0
  loc_AE8A2F: LitI2_Byte 0
  loc_AE8A31: LitI2_Byte 0
  loc_AE8A33: LitI2_Byte 0
  loc_AE8A35: FLdRfVar var_98
  loc_AE8A38: CStrVarTmp
  loc_AE8A39: FStStrNoPop var_BC
  loc_AE8A3C: FLdPr Me
  loc_AE8A3F: MemLdI2 global_96
  loc_AE8A42: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE8A47: FStStrNoPop var_C0
  loc_AE8A4A: FLdPr Me
  loc_AE8A4D: MemStStrCopy
  loc_AE8A51: FFreeStr var_BC = ""
  loc_AE8A58: FFree1Ad var_88
  loc_AE8A5B: FFree1Var var_98 = ""
  loc_AE8A5E: FLdPr Me
  loc_AE8A61: VCallAd Control_ID_CodiConcMsk
  loc_AE8A64: FStAdFuncNoPop
  loc_AE8A67: CastAd
  loc_AE8A6A: FStAdFunc var_C4
  loc_AE8A6D: FLdRfVar var_C4
  loc_AE8A70: FLdPr Me
  loc_AE8A73: MemLdStr global_92
  loc_AE8A76: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE8A7B: IStI2 arg_C
  loc_AE8A7E: FFreeAd var_88 = ""
  loc_AE8A85: ILdI2 arg_C
  loc_AE8A88: NotI4
  loc_AE8A89: BranchF loc_AE8AD3
  loc_AE8A8C: FLdPr Me
  loc_AE8A8F: VCallAd Control_ID_CodiConcMsk
  loc_AE8A92: FStAdFunc var_88
  loc_AE8A95: FLdPr var_88
  loc_AE8A98: LateIdLdVar var_98 DispID_22 0
  loc_AE8A9F: CStrVarTmp
  loc_AE8AA0: FStStrNoPop var_BC
  loc_AE8AA3: FLdPr Me
  loc_AE8AA6: MemLdI2 global_96
  loc_AE8AA9: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AE8AAE: FStStrNoPop var_C0
  loc_AE8AB1: FLdPr Me
  loc_AE8AB4: VCallAd Control_ID_DetaConcLbl
  loc_AE8AB7: FStAdFunc var_C4
  loc_AE8ABA: FLdPr var_C4
  loc_AE8ABD: Me.Caption = from_stack_1
  loc_AE8AC2: FFreeStr var_BC = ""
  loc_AE8AC9: FFreeAd var_88 = ""
  loc_AE8AD0: FFree1Var var_98 = ""
  loc_AE8AD3: Branch loc_AE8AED
  loc_AE8AD6: LitStr "TODOS LOS CONCEPTOS"
  loc_AE8AD9: FLdPr Me
  loc_AE8ADC: VCallAd Control_ID_DetaConcLbl
  loc_AE8ADF: FStAdFunc var_88
  loc_AE8AE2: FLdPr var_88
  loc_AE8AE5: Me.Caption = from_stack_1
  loc_AE8AEA: FFree1Ad var_88
  loc_AE8AED: ExitProcHresult
  loc_AE8AEE: FStFPR8 var_1400
End Function

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'AD8450
  'Data Table: 495164
  loc_AD8314: ILdI2 KeyAscii
  loc_AD8317: LitI2_Byte &H20
  loc_AD8319: EqI2
  loc_AD831A: BranchF loc_AD844F
  loc_AD831D: LitI2_Byte 0
  loc_AD831F: IStI2 KeyAscii
  loc_AD8322: FLdPr Me
  loc_AD8325: VCallAd Control_ID_DesdeMsk
  loc_AD8328: FStAdFunc var_88
  loc_AD832B: FLdPr var_88
  loc_AD832E: LateIdLdVar var_98 DispID_15 0
  loc_AD8335: CStrVarTmp
  loc_AD8336: CVarStr var_A8
  loc_AD8339: ImpAdCallI2 IsDate()
  loc_AD833E: FFree1Ad var_88
  loc_AD8341: FFreeVar var_98 = ""
  loc_AD8348: BranchF loc_AD8383
  loc_AD834B: FLdPr Me
  loc_AD834E: VCallAd Control_ID_DesdeMsk
  loc_AD8351: FStAdFunc var_88
  loc_AD8354: FLdPr var_88
  loc_AD8357: LateIdLdVar var_98 DispID_15 0
  loc_AD835E: CStrVarTmp
  loc_AD835F: CVarStr var_A8
  loc_AD8362: FLdRfVar var_B8
  loc_AD8365: ImpAdCallFPR4  = Year()
  loc_AD836A: FLdRfVar var_B8
  loc_AD836D: CI2Var
  loc_AD836E: FLdPr Me
  loc_AD8371: MemStI2 global_96
  loc_AD8374: FFree1Ad var_88
  loc_AD8377: FFreeVar var_98 = "": var_A8 = ""
  loc_AD8380: Branch loc_AD838C
  loc_AD8383: ImpAdLdI2 MemVar_D93034
  loc_AD8386: FLdPr Me
  loc_AD8389: MemStI2 global_96
  loc_AD838C: FLdPr Me
  loc_AD838F: MemLdI2 global_96
  loc_AD8392: ImpAdLdRf MemVar_D94354
  loc_AD8395: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD8398: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AD839D: LitVar_Missing var_D8
  loc_AD83A0: PopAdLdVar
  loc_AD83A1: LitVarI4
  loc_AD83A9: PopAdLdVar
  loc_AD83AA: ImpAdLdRf MemVar_D94354
  loc_AD83AD: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD83B0: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AD83B5: FLdRfVar var_DC
  loc_AD83B8: FLdRfVar var_88
  loc_AD83BB: ImpAdLdRf MemVar_D94354
  loc_AD83BE: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD83C1: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AD83C6: FLdPr var_88
  loc_AD83C9: from_stack_1 = clsconcepto.RecordCount
  loc_AD83CE: ILdRf var_DC
  loc_AD83D1: LitI4 0
  loc_AD83D6: GtI4
  loc_AD83D7: FFree1Ad var_88
  loc_AD83DA: BranchF loc_AD844F
  loc_AD83DD: FLdRfVar var_E0
  loc_AD83E0: FLdRfVar var_88
  loc_AD83E3: ImpAdLdRf MemVar_D94354
  loc_AD83E6: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD83E9: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AD83EE: FLdPr var_88
  loc_AD83F1: from_stack_1 = clsconcepto.CodiConc
  loc_AD83F6: FLdZeroAd var_E0
  loc_AD83F9: CVarStr var_98
  loc_AD83FC: PopAdLdVar
  loc_AD83FD: FLdPr Me
  loc_AD8400: VCallAd Control_ID_CodiConcMsk
  loc_AD8403: FStAdFunc var_E4
  loc_AD8406: FLdPr var_E4
  loc_AD8409: LateIdSt
  loc_AD840E: FFreeAd var_88 = ""
  loc_AD8415: FFree1Var var_98 = ""
  loc_AD8418: FLdRfVar var_E0
  loc_AD841B: FLdRfVar var_88
  loc_AD841E: ImpAdLdRf MemVar_D94354
  loc_AD8421: NewIfNullPr dlgBuscarConceptoTodos
  loc_AD8424: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AD8429: FLdPr var_88
  loc_AD842C: from_stack_1 = clsconcepto.DetaConc
  loc_AD8431: ILdRf var_E0
  loc_AD8434: FLdPr Me
  loc_AD8437: VCallAd Control_ID_DetaConcLbl
  loc_AD843A: FStAdFunc var_E4
  loc_AD843D: FLdPr var_E4
  loc_AD8440: Me.Caption = from_stack_1
  loc_AD8445: FFree1Str var_E0
  loc_AD8448: FFreeAd var_88 = ""
  loc_AD844F: ExitProcHresult
End Sub

Private Sub Form_Load() '9DE02C
  'Data Table: 495164
  loc_9DE010: ILdRf Me
  loc_9DE013: CastAd
  loc_9DE016: FStAdFunc var_88
  loc_9DE019: FLdRfVar var_88
  loc_9DE01C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DE021: FFree1Ad var_88
  loc_9DE024: Call cmdNueva_Click()
  loc_9DE029: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CE1A0
  'Data Table: 495164
  loc_9CE188: FLdPr Me
  loc_9CE18B: VCallAd Control_ID_wbbReporte
  loc_9CE18E: FStAdFunc var_88
  loc_9CE191: FLdRfVar var_88
  loc_9CE194: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CE199: FFree1Ad var_88
  loc_9CE19C: ExitProcHresult
End Sub

Public Function bLogosGet() '495FD8
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '495FE7
  bLogos = Value
End Sub

Public Function bGeneradoGet() '495FF6
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '496005
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5EA9C
  'Data Table: 495164
  loc_A5EA48: LitI4 0
  loc_A5EA4D: LitI4 2
  loc_A5EA52: FLdRfVar var_88
  loc_A5EA55: Redim
  loc_A5EA5F: FLdPr Me
  loc_A5EA62: VCallAd Control_ID_DesdeMsk
  loc_A5EA65: CVarAd
  loc_A5EA69: ParmAry1St
  loc_A5EA6F: FLdPr Me
  loc_A5EA72: VCallAd Control_ID_HastaMsk
  loc_A5EA75: CVarAd
  loc_A5EA79: ParmAry1St
  loc_A5EA7F: FLdPr Me
  loc_A5EA82: VCallAd Control_ID_CodiConcMsk
  loc_A5EA85: CVarAd
  loc_A5EA89: ParmAry1St
  loc_A5EA8F: FLdRfVar var_88
  loc_A5EA92: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5EA97: FLdRfVar var_88
  loc_A5EA9A: Erase
  loc_A5EA9B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C013B0
  'Data Table: 495164
  loc_C00B10: FLdPr Me
  loc_C00B13: MemLdI2 bGenerado
  loc_C00B16: BranchF loc_C00B1A
  loc_C00B19: ExitProcHresult
  loc_C00B1A: LitVarStr var_94, "Generando reporte..."
  loc_C00B1F: PopAdLdVar
  loc_C00B20: FLdPr Me
  loc_C00B23: VCallAd Control_ID_statusBar
  loc_C00B26: FStAdFunc var_A8
  loc_C00B29: FLdPr var_A8
  loc_C00B2C: LateIdSt
  loc_C00B31: FFree1Ad var_A8
  loc_C00B34: LitI4 &HB
  loc_C00B39: CI2I4
  loc_C00B3A: FLdPr Me
  loc_C00B3D: Me.MousePointer = from_stack_1
  loc_C00B42: LitI2_Byte 0
  loc_C00B44: PopTmpLdAd2 var_B2
  loc_C00B47: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C00B4C: FLdPr Me
  loc_C00B4F: MemLdStr global_92
  loc_C00B52: LitStr vbNullString
  loc_C00B55: NeStr
  loc_C00B57: BranchF loc_C00B5D
  loc_C00B5A: Branch loc_C01385
  loc_C00B5D: LitI2_Byte 0
  loc_C00B5F: PopTmpLdAd2 var_B2
  loc_C00B62: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C00B67: FLdPr Me
  loc_C00B6A: MemLdStr global_92
  loc_C00B6D: LitStr vbNullString
  loc_C00B70: NeStr
  loc_C00B72: BranchF loc_C00B78
  loc_C00B75: Branch loc_C01385
  loc_C00B78: LitI2_Byte 0
  loc_C00B7A: PopTmpLdAd2 var_B2
  loc_C00B7D: from_stack_2v = CodiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_C00B82: FLdPr Me
  loc_C00B85: MemLdStr global_92
  loc_C00B88: LitStr vbNullString
  loc_C00B8B: NeStr
  loc_C00B8D: BranchF loc_C00B93
  loc_C00B90: Branch loc_C01385
  loc_C00B93: FLdPr Me
  loc_C00B96: VCallAd Control_ID_DesdeMsk
  loc_C00B99: FStAdFunc var_A8
  loc_C00B9C: FLdPr var_A8
  loc_C00B9F: LateIdLdVar var_C4 DispID_15 0
  loc_C00BA6: CStrVarTmp
  loc_C00BA7: CVarStr var_D4
  loc_C00BAA: ImpAdCallI2 IsDate()
  loc_C00BAF: FLdPr Me
  loc_C00BB2: VCallAd Control_ID_HastaMsk
  loc_C00BB5: FStAdFunc var_D8
  loc_C00BB8: FLdPr var_D8
  loc_C00BBB: LateIdLdVar var_E8 DispID_15 0
  loc_C00BC2: CStrVarTmp
  loc_C00BC3: CVarStr var_F8
  loc_C00BC6: ImpAdCallI2 IsDate()
  loc_C00BCB: AndI4
  loc_C00BCC: FFreeAd var_A8 = ""
  loc_C00BD3: FFreeVar var_C4 = "": var_D4 = "": var_E8 = ""
  loc_C00BDE: BranchF loc_C00C96
  loc_C00BE1: FLdPr Me
  loc_C00BE4: VCallAd Control_ID_DesdeMsk
  loc_C00BE7: FStAdFunc var_A8
  loc_C00BEA: FLdPr var_A8
  loc_C00BED: LateIdLdVar var_C4 DispID_15 0
  loc_C00BF4: PopAd
  loc_C00BF6: FLdPr Me
  loc_C00BF9: VCallAd Control_ID_HastaMsk
  loc_C00BFC: FStAdFunc var_D8
  loc_C00BFF: FLdPr var_D8
  loc_C00C02: LateIdLdVar var_138 DispID_15 0
  loc_C00C09: PopAd
  loc_C00C0B: LitVarStr var_A4, " AND c1.FealCtct BETWEEN "
  loc_C00C10: LitI4 1
  loc_C00C15: LitI4 1
  loc_C00C1A: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_C00C1F: FStVarCopyObj var_E8
  loc_C00C22: FLdRfVar var_E8
  loc_C00C25: FLdRfVar var_C4
  loc_C00C28: CStrVarTmp
  loc_C00C29: CVarStr var_D4
  loc_C00C2C: FLdRfVar var_F8
  loc_C00C2F: ImpAdCallFPR4  = Format(, )
  loc_C00C34: FLdRfVar var_F8
  loc_C00C37: ConcatVar var_108
  loc_C00C3B: LitVarStr var_118, " AND "
  loc_C00C40: ConcatVar var_128
  loc_C00C44: LitI4 1
  loc_C00C49: LitI4 1
  loc_C00C4E: LitVarStr var_158, "'yyyy-mm-dd'"
  loc_C00C53: FStVarCopyObj var_168
  loc_C00C56: FLdRfVar var_168
  loc_C00C59: FLdRfVar var_138
  loc_C00C5C: CStrVarTmp
  loc_C00C5D: CVarStr var_148
  loc_C00C60: FLdRfVar var_178
  loc_C00C63: ImpAdCallFPR4  = Format(, )
  loc_C00C68: FLdRfVar var_178
  loc_C00C6B: ConcatVar var_188
  loc_C00C6F: CStrVarTmp
  loc_C00C70: FStStr var_AC
  loc_C00C73: FFreeAd var_A8 = ""
  loc_C00C7A: FFreeVar var_C4 = "": var_D4 = "": var_E8 = "": var_F8 = "": var_108 = "": var_138 = "": var_148 = "": var_168 = "": var_128 = "": var_178 = ""
  loc_C00C93: Branch loc_C00C9C
  loc_C00C96: LitStr vbNullString
  loc_C00C99: FStStrCopy var_AC
  loc_C00C9C: FLdPr Me
  loc_C00C9F: VCallAd Control_ID_CodiConcMsk
  loc_C00CA2: FStAdFunc var_A8
  loc_C00CA5: FLdPr var_A8
  loc_C00CA8: LateIdLdVar var_C4 DispID_22 0
  loc_C00CAF: CStrVarTmp
  loc_C00CB0: FStStrNoPop var_18C
  loc_C00CB3: LitStr vbNullString
  loc_C00CB6: NeStr
  loc_C00CB8: FFree1Str var_18C
  loc_C00CBB: FFree1Ad var_A8
  loc_C00CBE: FFree1Var var_C4 = ""
  loc_C00CC1: BranchF loc_C00CF9
  loc_C00CC4: LitStr " AND c1.CodiConc = '"
  loc_C00CC7: FLdPr Me
  loc_C00CCA: VCallAd Control_ID_CodiConcMsk
  loc_C00CCD: FStAdFunc var_A8
  loc_C00CD0: FLdPr var_A8
  loc_C00CD3: LateIdLdVar var_C4 DispID_22 0
  loc_C00CDA: CStrVarTmp
  loc_C00CDB: FStStrNoPop var_18C
  loc_C00CDE: ConcatStr
  loc_C00CDF: FStStrNoPop var_190
  loc_C00CE2: LitStr "'"
  loc_C00CE5: ConcatStr
  loc_C00CE6: FStStr var_B0
  loc_C00CE9: FFreeStr var_18C = ""
  loc_C00CF0: FFree1Ad var_A8
  loc_C00CF3: FFree1Var var_C4 = ""
  loc_C00CF6: Branch loc_C00CFF
  loc_C00CF9: LitStr vbNullString
  loc_C00CFC: FStStrCopy var_B0
  loc_C00CFF: FLdPr Me
  loc_C00D02: MemLdRfVar from_stack_1.global_76
  loc_C00D05: NewIfNullAd
  loc_C00D08: FStAd var_194 
  loc_C00D0C: LitStr " SELECT c1.CuenCtct, DetaPers, c1.FealCtct, c1.ExpeCtct, c1.CompCtct, c1.FeveCtct, c1.DebeCtct,"
  loc_C00D0F: LitStr " IFNULL(sum(if(c2.CodiTimo in (11,12,14,15,20,23,50,51,55,58,61,62,59,64,71,63,57,68),c2.CredCtct,0)),0) as CredCtct,"
  loc_C00D12: ConcatStr
  loc_C00D13: FStStrNoPop var_18C
  loc_C00D16: LitStr " IFNULL(sum(if(c2.CodiTimo in (6,7),c2.CredCtct,0)),0) as DescCtct,"
  loc_C00D19: ConcatStr
  loc_C00D1A: FStStrNoPop var_190
  loc_C00D1D: LitStr " IFNULL(sum(if(c2.CodiTimo in (2,4,5,9,21,25),c2.CredCtct,0))-sum(if(c2.CodiTimo in (26,27),c2.DebeCtct,0)),0) as CobrCtct"
  loc_C00D20: ConcatStr
  loc_C00D21: FStStrNoPop var_198
  loc_C00D24: LitStr " FROM ctacte as c1"
  loc_C00D27: ConcatStr
  loc_C00D28: FStStrNoPop var_19C
  loc_C00D2B: LitStr " LEFT JOIN ctacte as c2 ON c2.CodiOfic = c1.CodiOfic AND c2.CuenCtct = c1.CuenCtct   AND c2.PeriCtct = c1.PeriCtct AND c2.BimeCtct = c1.BimeCtct AND c2.NumeCtct = c1.NumeCtct"
  loc_C00D2E: ConcatStr
  loc_C00D2F: FStStrNoPop var_1A0
  loc_C00D32: LitStr " AND c2.MoviCtct > 1"
  loc_C00D35: ConcatStr
  loc_C00D36: FStStrNoPop var_1A4
  loc_C00D39: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = c1.CodiOfic AND relacion.CuenCtct = c1.CuenCtct"
  loc_C00D3C: ConcatStr
  loc_C00D3D: FStStrNoPop var_1A8
  loc_C00D40: LitStr " AND relacion.TipoRela = 'Titular'"
  loc_C00D43: ConcatStr
  loc_C00D44: FStStrNoPop var_1AC
  loc_C00D47: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C00D4A: ConcatStr
  loc_C00D4B: FStStrNoPop var_1B0
  loc_C00D4E: LitStr " WHERE c1.CodiOfic = 5 AND c1.CodiTimo = 1 "
  loc_C00D51: ConcatStr
  loc_C00D52: FStStrNoPop var_1B4
  loc_C00D55: ILdRf var_B0
  loc_C00D58: ConcatStr
  loc_C00D59: FStStrNoPop var_1B8
  loc_C00D5C: ILdRf var_AC
  loc_C00D5F: ConcatStr
  loc_C00D60: FStStrNoPop var_1BC
  loc_C00D63: LitStr " GROUP BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct"
  loc_C00D66: ConcatStr
  loc_C00D67: FStStrNoPop var_1C0
  loc_C00D6A: LitStr " ORDER BY c1.CodiOfic, c1.CuenCtct, c1.PeriCtct, c1.BimeCtct, c1.NumeCtct"
  loc_C00D6D: ConcatStr
  loc_C00D6E: FStStrNoPop var_1C4
  loc_C00D71: FLdPr var_194
  loc_C00D74: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C00D79: FFreeStr var_18C = "": var_190 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_C00D98: FLdRfVar var_1C8
  loc_C00D9B: FLdPr var_194
  loc_C00D9E: from_stack_1 = clsctacte.RecordCount
  loc_C00DA3: ILdRf var_1C8
  loc_C00DA6: LitI4 0
  loc_C00DAB: EqI4
  loc_C00DAC: BranchF loc_C00DBA
  loc_C00DAF: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C00DB2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C00DB7: Branch loc_C01385
  loc_C00DBA: LitI4 0
  loc_C00DBF: LitI4 1
  loc_C00DC4: FLdPr Me
  loc_C00DC7: MemLdRfVar from_stack_1.global_80
  loc_C00DCA: Redim
  loc_C00DD4: LitI4 0
  loc_C00DD9: FLdRfVar var_1C8
  loc_C00DDC: FLdPr var_194
  loc_C00DDF: from_stack_1 = clsctacte.RecordCount
  loc_C00DE4: ILdRf var_1C8
  loc_C00DE7: FLdPr Me
  loc_C00DEA: MemLdRfVar from_stack_1.global_84
  loc_C00DED: Redim
  loc_C00DF7: FLdPr var_194
  loc_C00DFA: Call clsctacte.MoveFirst()
  loc_C00DFF: LitI4 1
  loc_C00E04: FLdPr Me
  loc_C00E07: MemLdRfVar from_stack_1.global_88
  loc_C00E0A: FLdPr Me
  loc_C00E0D: MemLdStr global_84
  loc_C00E10: LitI2_Byte 1
  loc_C00E12: FnUBound
  loc_C00E14: ForI4 var_1D0
  loc_C00E1A: FLdRfVar var_1D4
  loc_C00E1D: LitVarStr var_94, "CuenCtct"
  loc_C00E22: PopAdLdVar
  loc_C00E23: FLdRfVar var_D8
  loc_C00E26: FLdRfVar var_A8
  loc_C00E29: FLdPr var_194
  loc_C00E2C: from_stack_1v = clsctacte.RsFrmGet()
  loc_C00E31: FLdPr var_A8
  loc_C00E34:  = Me.Fields
  loc_C00E39: FLdPr var_D8
  loc_C00E3C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00E41: LitI2_Byte 0
  loc_C00E43: LitVar_Missing var_D4
  loc_C00E46: LitI2_Byte 0
  loc_C00E48: FLdZeroAd var_1D4
  loc_C00E4B: CVarAd
  loc_C00E4F: PopAdLdVar
  loc_C00E50: FLdPr Me
  loc_C00E53: MemLdStr global_88
  loc_C00E56: FLdPr Me
  loc_C00E59: MemLdStr global_84
  loc_C00E5C: AryLock
  loc_C00E5F: Ary1LdPr
  loc_C00E60: MemLdRfVar from_stack_1.global_0
  loc_C00E63: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C00E68: AryUnlock
  loc_C00E6B: FFreeAd var_A8 = ""
  loc_C00E72: FFreeVar var_C4 = ""
  loc_C00E79: FLdRfVar var_1D4
  loc_C00E7C: LitVarStr var_94, "DetaPers"
  loc_C00E81: PopAdLdVar
  loc_C00E82: FLdRfVar var_D8
  loc_C00E85: FLdRfVar var_A8
  loc_C00E88: FLdPr var_194
  loc_C00E8B: from_stack_1v = clsctacte.RsFrmGet()
  loc_C00E90: FLdPr var_A8
  loc_C00E93:  = Me.Fields
  loc_C00E98: FLdPr var_D8
  loc_C00E9B: from_stack_2 = Me.Item(from_stack_1)
  loc_C00EA0: LitI2_Byte 0
  loc_C00EA2: LitVar_Missing var_D4
  loc_C00EA5: LitI2_Byte 0
  loc_C00EA7: FLdZeroAd var_1D4
  loc_C00EAA: CVarAd
  loc_C00EAE: PopAdLdVar
  loc_C00EAF: FLdPr Me
  loc_C00EB2: MemLdStr global_88
  loc_C00EB5: FLdPr Me
  loc_C00EB8: MemLdStr global_84
  loc_C00EBB: AryLock
  loc_C00EBE: Ary1LdPr
  loc_C00EBF: MemLdRfVar from_stack_1.global_4
  loc_C00EC2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C00EC7: AryUnlock
  loc_C00ECA: FFreeAd var_A8 = ""
  loc_C00ED1: FFreeVar var_C4 = ""
  loc_C00ED8: FLdRfVar var_1D4
  loc_C00EDB: LitVarStr var_94, "FealCtct"
  loc_C00EE0: PopAdLdVar
  loc_C00EE1: FLdRfVar var_D8
  loc_C00EE4: FLdRfVar var_A8
  loc_C00EE7: FLdPr var_194
  loc_C00EEA: from_stack_1v = clsctacte.RsFrmGet()
  loc_C00EEF: FLdPr var_A8
  loc_C00EF2:  = Me.Fields
  loc_C00EF7: FLdPr var_D8
  loc_C00EFA: from_stack_2 = Me.Item(from_stack_1)
  loc_C00EFF: LitI2_Byte 0
  loc_C00F01: LitVar_Missing var_D4
  loc_C00F04: LitI2_Byte 0
  loc_C00F06: FLdZeroAd var_1D4
  loc_C00F09: CVarAd
  loc_C00F0D: PopAdLdVar
  loc_C00F0E: FLdPr Me
  loc_C00F11: MemLdStr global_88
  loc_C00F14: FLdPr Me
  loc_C00F17: MemLdStr global_84
  loc_C00F1A: AryLock
  loc_C00F1D: Ary1LdPr
  loc_C00F1E: MemLdRfVar from_stack_1.global_8
  loc_C00F21: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C00F26: AryUnlock
  loc_C00F29: FFreeAd var_A8 = ""
  loc_C00F30: FFreeVar var_C4 = ""
  loc_C00F37: FLdRfVar var_1D4
  loc_C00F3A: LitVarStr var_94, "ExpeCtct"
  loc_C00F3F: PopAdLdVar
  loc_C00F40: FLdRfVar var_D8
  loc_C00F43: FLdRfVar var_A8
  loc_C00F46: FLdPr var_194
  loc_C00F49: from_stack_1v = clsctacte.RsFrmGet()
  loc_C00F4E: FLdPr var_A8
  loc_C00F51:  = Me.Fields
  loc_C00F56: FLdPr var_D8
  loc_C00F59: from_stack_2 = Me.Item(from_stack_1)
  loc_C00F5E: LitI2_Byte 0
  loc_C00F60: LitVar_Missing var_D4
  loc_C00F63: LitI2_Byte 0
  loc_C00F65: FLdZeroAd var_1D4
  loc_C00F68: CVarAd
  loc_C00F6C: PopAdLdVar
  loc_C00F6D: FLdPr Me
  loc_C00F70: MemLdStr global_88
  loc_C00F73: FLdPr Me
  loc_C00F76: MemLdStr global_84
  loc_C00F79: AryLock
  loc_C00F7C: Ary1LdPr
  loc_C00F7D: MemLdRfVar from_stack_1.global_12
  loc_C00F80: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C00F85: AryUnlock
  loc_C00F88: FFreeAd var_A8 = ""
  loc_C00F8F: FFreeVar var_C4 = ""
  loc_C00F96: FLdRfVar var_1D4
  loc_C00F99: LitVarStr var_94, "CompCtct"
  loc_C00F9E: PopAdLdVar
  loc_C00F9F: FLdRfVar var_D8
  loc_C00FA2: FLdRfVar var_A8
  loc_C00FA5: FLdPr var_194
  loc_C00FA8: from_stack_1v = clsctacte.RsFrmGet()
  loc_C00FAD: FLdPr var_A8
  loc_C00FB0:  = Me.Fields
  loc_C00FB5: FLdPr var_D8
  loc_C00FB8: from_stack_2 = Me.Item(from_stack_1)
  loc_C00FBD: LitI2_Byte 0
  loc_C00FBF: LitVar_Missing var_D4
  loc_C00FC2: LitI2_Byte 0
  loc_C00FC4: FLdZeroAd var_1D4
  loc_C00FC7: CVarAd
  loc_C00FCB: PopAdLdVar
  loc_C00FCC: FLdPr Me
  loc_C00FCF: MemLdStr global_88
  loc_C00FD2: FLdPr Me
  loc_C00FD5: MemLdStr global_84
  loc_C00FD8: AryLock
  loc_C00FDB: Ary1LdPr
  loc_C00FDC: MemLdRfVar from_stack_1.global_16
  loc_C00FDF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C00FE4: AryUnlock
  loc_C00FE7: FFreeAd var_A8 = ""
  loc_C00FEE: FFreeVar var_C4 = ""
  loc_C00FF5: FLdRfVar var_1D4
  loc_C00FF8: LitVarStr var_94, "FeveCtct"
  loc_C00FFD: PopAdLdVar
  loc_C00FFE: FLdRfVar var_D8
  loc_C01001: FLdRfVar var_A8
  loc_C01004: FLdPr var_194
  loc_C01007: from_stack_1v = clsctacte.RsFrmGet()
  loc_C0100C: FLdPr var_A8
  loc_C0100F:  = Me.Fields
  loc_C01014: FLdPr var_D8
  loc_C01017: from_stack_2 = Me.Item(from_stack_1)
  loc_C0101C: LitI2_Byte 0
  loc_C0101E: LitVar_Missing var_D4
  loc_C01021: LitI2_Byte 0
  loc_C01023: FLdZeroAd var_1D4
  loc_C01026: CVarAd
  loc_C0102A: PopAdLdVar
  loc_C0102B: FLdPr Me
  loc_C0102E: MemLdStr global_88
  loc_C01031: FLdPr Me
  loc_C01034: MemLdStr global_84
  loc_C01037: AryLock
  loc_C0103A: Ary1LdPr
  loc_C0103B: MemLdRfVar from_stack_1.global_20
  loc_C0103E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C01043: AryUnlock
  loc_C01046: FFreeAd var_A8 = ""
  loc_C0104D: FFreeVar var_C4 = ""
  loc_C01054: FLdRfVar var_1D4
  loc_C01057: LitVarStr var_94, "DebeCtct"
  loc_C0105C: PopAdLdVar
  loc_C0105D: FLdRfVar var_D8
  loc_C01060: FLdRfVar var_A8
  loc_C01063: FLdPr var_194
  loc_C01066: from_stack_1v = clsctacte.RsFrmGet()
  loc_C0106B: FLdPr var_A8
  loc_C0106E:  = Me.Fields
  loc_C01073: FLdPr var_D8
  loc_C01076: from_stack_2 = Me.Item(from_stack_1)
  loc_C0107B: LitI2_Byte 0
  loc_C0107D: LitI4 1
  loc_C01082: FLdPr Me
  loc_C01085: MemLdStr global_80
  loc_C01088: AryLock
  loc_C0108B: Ary1LdPr
  loc_C0108C: MemLdRfVar from_stack_1.global_24
  loc_C0108F: CVarRef
  loc_C01094: LitI2_Byte &HFF
  loc_C01096: FLdZeroAd var_1D4
  loc_C01099: CVarAd
  loc_C0109D: PopAdLdVar
  loc_C0109E: FLdPr Me
  loc_C010A1: MemLdStr global_88
  loc_C010A4: FLdPr Me
  loc_C010A7: MemLdStr global_84
  loc_C010AA: AryLock
  loc_C010AD: Ary1LdPr
  loc_C010AE: MemLdRfVar from_stack_1.global_24
  loc_C010B1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C010B6: AryUnlock
  loc_C010B9: AryUnlock
  loc_C010BC: FFreeAd var_A8 = ""
  loc_C010C3: FFree1Var var_C4 = ""
  loc_C010C6: FLdRfVar var_1D4
  loc_C010C9: LitVarStr var_94, "CredCtct"
  loc_C010CE: PopAdLdVar
  loc_C010CF: FLdRfVar var_D8
  loc_C010D2: FLdRfVar var_A8
  loc_C010D5: FLdPr var_194
  loc_C010D8: from_stack_1v = clsctacte.RsFrmGet()
  loc_C010DD: FLdPr var_A8
  loc_C010E0:  = Me.Fields
  loc_C010E5: FLdPr var_D8
  loc_C010E8: from_stack_2 = Me.Item(from_stack_1)
  loc_C010ED: LitI2_Byte 0
  loc_C010EF: LitI4 1
  loc_C010F4: FLdPr Me
  loc_C010F7: MemLdStr global_80
  loc_C010FA: AryLock
  loc_C010FD: Ary1LdPr
  loc_C010FE: MemLdRfVar from_stack_1.global_28
  loc_C01101: CVarRef
  loc_C01106: LitI2_Byte &HFF
  loc_C01108: FLdZeroAd var_1D4
  loc_C0110B: CVarAd
  loc_C0110F: PopAdLdVar
  loc_C01110: FLdPr Me
  loc_C01113: MemLdStr global_88
  loc_C01116: FLdPr Me
  loc_C01119: MemLdStr global_84
  loc_C0111C: AryLock
  loc_C0111F: Ary1LdPr
  loc_C01120: MemLdRfVar from_stack_1.global_28
  loc_C01123: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C01128: AryUnlock
  loc_C0112B: AryUnlock
  loc_C0112E: FFreeAd var_A8 = ""
  loc_C01135: FFree1Var var_C4 = ""
  loc_C01138: FLdRfVar var_1D4
  loc_C0113B: LitVarStr var_94, "DescCtct"
  loc_C01140: PopAdLdVar
  loc_C01141: FLdRfVar var_D8
  loc_C01144: FLdRfVar var_A8
  loc_C01147: FLdPr var_194
  loc_C0114A: from_stack_1v = clsctacte.RsFrmGet()
  loc_C0114F: FLdPr var_A8
  loc_C01152:  = Me.Fields
  loc_C01157: FLdPr var_D8
  loc_C0115A: from_stack_2 = Me.Item(from_stack_1)
  loc_C0115F: LitI2_Byte 0
  loc_C01161: LitI4 1
  loc_C01166: FLdPr Me
  loc_C01169: MemLdStr global_80
  loc_C0116C: AryLock
  loc_C0116F: Ary1LdPr
  loc_C01170: MemLdRfVar from_stack_1.global_32
  loc_C01173: CVarRef
  loc_C01178: LitI2_Byte &HFF
  loc_C0117A: FLdZeroAd var_1D4
  loc_C0117D: CVarAd
  loc_C01181: PopAdLdVar
  loc_C01182: FLdPr Me
  loc_C01185: MemLdStr global_88
  loc_C01188: FLdPr Me
  loc_C0118B: MemLdStr global_84
  loc_C0118E: AryLock
  loc_C01191: Ary1LdPr
  loc_C01192: MemLdRfVar from_stack_1.global_32
  loc_C01195: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0119A: AryUnlock
  loc_C0119D: AryUnlock
  loc_C011A0: FFreeAd var_A8 = ""
  loc_C011A7: FFree1Var var_C4 = ""
  loc_C011AA: FLdRfVar var_1D4
  loc_C011AD: LitVarStr var_94, "CobrCtct"
  loc_C011B2: PopAdLdVar
  loc_C011B3: FLdRfVar var_D8
  loc_C011B6: FLdRfVar var_A8
  loc_C011B9: FLdPr var_194
  loc_C011BC: from_stack_1v = clsctacte.RsFrmGet()
  loc_C011C1: FLdPr var_A8
  loc_C011C4:  = Me.Fields
  loc_C011C9: FLdPr var_D8
  loc_C011CC: from_stack_2 = Me.Item(from_stack_1)
  loc_C011D1: LitI2_Byte 0
  loc_C011D3: LitI4 1
  loc_C011D8: FLdPr Me
  loc_C011DB: MemLdStr global_80
  loc_C011DE: AryLock
  loc_C011E1: Ary1LdPr
  loc_C011E2: MemLdRfVar from_stack_1.global_36
  loc_C011E5: CVarRef
  loc_C011EA: LitI2_Byte &HFF
  loc_C011EC: FLdZeroAd var_1D4
  loc_C011EF: CVarAd
  loc_C011F3: PopAdLdVar
  loc_C011F4: FLdPr Me
  loc_C011F7: MemLdStr global_88
  loc_C011FA: FLdPr Me
  loc_C011FD: MemLdStr global_84
  loc_C01200: AryLock
  loc_C01203: Ary1LdPr
  loc_C01204: MemLdRfVar from_stack_1.global_36
  loc_C01207: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C0120C: AryUnlock
  loc_C0120F: AryUnlock
  loc_C01212: FFreeAd var_A8 = ""
  loc_C01219: FFree1Var var_C4 = ""
  loc_C0121C: FLdRfVar var_C4
  loc_C0121F: FLdRfVar var_1D4
  loc_C01222: LitVarStr var_94, "DebeCtct"
  loc_C01227: PopAdLdVar
  loc_C01228: FLdRfVar var_D8
  loc_C0122B: FLdRfVar var_A8
  loc_C0122E: FLdPr var_194
  loc_C01231: from_stack_1v = clsctacte.RsFrmGet()
  loc_C01236: FLdPr var_A8
  loc_C01239:  = Me.Fields
  loc_C0123E: FLdPr var_D8
  loc_C01241: from_stack_2 = Me.Item(from_stack_1)
  loc_C01246: FLdPr var_1D4
  loc_C01249:  = Me.Value
  loc_C0124E: FLdRfVar var_D4
  loc_C01251: FLdRfVar var_1E8
  loc_C01254: LitVarStr var_A4, "CredCtct"
  loc_C01259: PopAdLdVar
  loc_C0125A: FLdRfVar var_1E4
  loc_C0125D: FLdRfVar var_1E0
  loc_C01260: FLdPr var_194
  loc_C01263: from_stack_1v = clsctacte.RsFrmGet()
  loc_C01268: FLdPr var_1E0
  loc_C0126B:  = Me.Fields
  loc_C01270: FLdPr var_1E4
  loc_C01273: from_stack_2 = Me.Item(from_stack_1)
  loc_C01278: FLdPr var_1E8
  loc_C0127B:  = Me.Value
  loc_C01280: FLdRfVar var_E8
  loc_C01283: FLdRfVar var_1F4
  loc_C01286: LitVarStr var_118, "DescCtct"
  loc_C0128B: PopAdLdVar
  loc_C0128C: FLdRfVar var_1F0
  loc_C0128F: FLdRfVar var_1EC
  loc_C01292: FLdPr var_194
  loc_C01295: from_stack_1v = clsctacte.RsFrmGet()
  loc_C0129A: FLdPr var_1EC
  loc_C0129D:  = Me.Fields
  loc_C012A2: FLdPr var_1F0
  loc_C012A5: from_stack_2 = Me.Item(from_stack_1)
  loc_C012AA: FLdPr var_1F4
  loc_C012AD:  = Me.Value
  loc_C012B2: FLdRfVar var_F8
  loc_C012B5: FLdRfVar var_200
  loc_C012B8: LitVarStr var_158, "CobrCtct"
  loc_C012BD: PopAdLdVar
  loc_C012BE: FLdRfVar var_1FC
  loc_C012C1: FLdRfVar var_1F8
  loc_C012C4: FLdPr var_194
  loc_C012C7: from_stack_1v = clsctacte.RsFrmGet()
  loc_C012CC: FLdPr var_1F8
  loc_C012CF:  = Me.Fields
  loc_C012D4: FLdPr var_1FC
  loc_C012D7: from_stack_2 = Me.Item(from_stack_1)
  loc_C012DC: FLdPr var_200
  loc_C012DF:  = Me.Value
  loc_C012E4: LitI2_Byte 0
  loc_C012E6: LitI4 1
  loc_C012EB: FLdPr Me
  loc_C012EE: MemLdStr global_80
  loc_C012F1: AryLock
  loc_C012F4: Ary1LdPr
  loc_C012F5: MemLdRfVar from_stack_1.global_40
  loc_C012F8: CVarRef
  loc_C012FD: LitI2_Byte &HFF
  loc_C012FF: FLdRfVar var_C4
  loc_C01302: FnCDblVar
  loc_C01304: FLdRfVar var_D4
  loc_C01307: FnCDblVar
  loc_C01309: SubR4
  loc_C0130A: FLdRfVar var_E8
  loc_C0130D: FnCDblVar
  loc_C0130F: SubR4
  loc_C01310: FLdRfVar var_F8
  loc_C01313: FnCDblVar
  loc_C01315: SubR4
  loc_C01316: CVarR8
  loc_C0131A: PopAdLdVar
  loc_C0131B: FLdPr Me
  loc_C0131E: MemLdStr global_88
  loc_C01321: FLdPr Me
  loc_C01324: MemLdStr global_84
  loc_C01327: AryLock
  loc_C0132A: Ary1LdPr
  loc_C0132B: MemLdRfVar from_stack_1.global_40
  loc_C0132E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C01333: AryUnlock
  loc_C01336: AryUnlock
  loc_C01339: FFreeAd var_A8 = "": var_D8 = "": var_1D4 = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_1FC = ""
  loc_C01354: FFreeVar var_C4 = "": var_D4 = "": var_E8 = ""
  loc_C0135F: LitI2_Byte 1
  loc_C01361: PopTmpLdAd2 var_B2
  loc_C01364: FLdPr var_194
  loc_C01367: Call clsctacte.Move(from_stack_1v)
  loc_C0136C: FLdPr Me
  loc_C0136F: MemLdRfVar from_stack_1.global_88
  loc_C01372: NextI4 var_1D0, loc_C00E1A
  loc_C01377: LitNothing
  loc_C01379: FStAd var_194 
  loc_C0137D: LitI2_Byte &HFF
  loc_C0137F: FLdPr Me
  loc_C01382: MemStI2 bGenerado
  loc_C01385: LitI4 0
  loc_C0138A: CI2I4
  loc_C0138B: FLdPr Me
  loc_C0138E: Me.MousePointer = from_stack_1
  loc_C01393: LitVarStr var_94, vbNullString
  loc_C01398: PopAdLdVar
  loc_C01399: FLdPr Me
  loc_C0139C: VCallAd Control_ID_statusBar
  loc_C0139F: FStAdFunc var_A8
  loc_C013A2: FLdPr var_A8
  loc_C013A5: LateIdSt
  loc_C013AA: FFree1Ad var_A8
  loc_C013AD: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B519BC
  'Data Table: 495164
  loc_B515FC: FLdRfVar var_88
  loc_B515FF: LitI2_Byte 0
  loc_B51601: LitI2_Byte &HFF
  loc_B51603: ImpAdLdI4 MemVar_D93C84
  loc_B51606: FLdPr Me
  loc_B51609: MemLdRfVar from_stack_1.global_56
  loc_B5160C: NewIfNullPr IFileSystem3
  loc_B5160F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B51614: ILdRf var_88
  loc_B51617: FLdPr Me
  loc_B5161A: MemStVarAd
  loc_B5161E: FFree1Ad var_88
  loc_B51621: LitI2_Byte &HFF
  loc_B51623: ImpAdStI2 MemVar_D93C8A
  loc_B51626: Call Proc_180_27_BF9C0C()
  loc_B5162B: LitI4 1
  loc_B51630: FLdPr Me
  loc_B51633: MemLdRfVar from_stack_1.global_88
  loc_B51636: FLdPr Me
  loc_B51639: MemLdStr global_84
  loc_B5163C: LitI2_Byte 1
  loc_B5163E: FnUBound
  loc_B51640: ForI4 var_90
  loc_B51646: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B5164B: PopAdLdVar
  loc_B5164C: FLdPr Me
  loc_B5164F: MemLdRfVar from_stack_1.global_60
  loc_B51652: LdPrVar
  loc_B51654: LateMemCall
  loc_B5165A: FLdPr Me
  loc_B5165D: MemLdStr global_88
  loc_B51660: FLdPr Me
  loc_B51663: MemLdStr global_84
  loc_B51666: AryLock
  loc_B51669: Ary1LdRf
  loc_B5166A: FStR4 var_B8
  loc_B5166D: LitStr vbNullString
  loc_B51670: LitI2_Byte 0
  loc_B51672: LitI2_Byte 0
  loc_B51674: LitI2_Byte 0
  loc_B51676: LitStr "right"
  loc_B51679: FMemLdR4 var_B8(0)
  loc_B5167E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51683: CVarStr var_C8
  loc_B51686: PopAdLdVar
  loc_B51687: FLdPr Me
  loc_B5168A: MemLdRfVar from_stack_1.global_60
  loc_B5168D: LdPrVar
  loc_B5168F: LateMemCall
  loc_B51695: FFree1Var var_C8 = ""
  loc_B51698: LitStr vbNullString
  loc_B5169B: LitI2_Byte 0
  loc_B5169D: LitI2_Byte 0
  loc_B5169F: LitI2_Byte 0
  loc_B516A1: LitStr "left"
  loc_B516A4: FMemLdR4 var_B8(4)
  loc_B516A9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B516AE: CVarStr var_C8
  loc_B516B1: PopAdLdVar
  loc_B516B2: FLdPr Me
  loc_B516B5: MemLdRfVar from_stack_1.global_60
  loc_B516B8: LdPrVar
  loc_B516BA: LateMemCall
  loc_B516C0: FFree1Var var_C8 = ""
  loc_B516C3: LitStr vbNullString
  loc_B516C6: LitI2_Byte 0
  loc_B516C8: LitI2_Byte 0
  loc_B516CA: LitI2_Byte 0
  loc_B516CC: LitStr "right"
  loc_B516CF: FMemLdR4 var_B8(8)
  loc_B516D4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B516D9: CVarStr var_C8
  loc_B516DC: PopAdLdVar
  loc_B516DD: FLdPr Me
  loc_B516E0: MemLdRfVar from_stack_1.global_60
  loc_B516E3: LdPrVar
  loc_B516E5: LateMemCall
  loc_B516EB: FFree1Var var_C8 = ""
  loc_B516EE: LitStr vbNullString
  loc_B516F1: LitI2_Byte 0
  loc_B516F3: LitI2_Byte 0
  loc_B516F5: LitI2_Byte 0
  loc_B516F7: LitStr "right"
  loc_B516FA: FMemLdR4 var_B8(12)
  loc_B516FF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51704: CVarStr var_C8
  loc_B51707: PopAdLdVar
  loc_B51708: FLdPr Me
  loc_B5170B: MemLdRfVar from_stack_1.global_60
  loc_B5170E: LdPrVar
  loc_B51710: LateMemCall
  loc_B51716: FFree1Var var_C8 = ""
  loc_B51719: LitStr vbNullString
  loc_B5171C: LitI2_Byte 0
  loc_B5171E: LitI2_Byte 0
  loc_B51720: LitI2_Byte 0
  loc_B51722: LitStr "right"
  loc_B51725: FMemLdR4 var_B8(16)
  loc_B5172A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5172F: CVarStr var_C8
  loc_B51732: PopAdLdVar
  loc_B51733: FLdPr Me
  loc_B51736: MemLdRfVar from_stack_1.global_60
  loc_B51739: LdPrVar
  loc_B5173B: LateMemCall
  loc_B51741: FFree1Var var_C8 = ""
  loc_B51744: LitStr vbNullString
  loc_B51747: LitI2_Byte 0
  loc_B51749: LitI2_Byte 0
  loc_B5174B: LitI2_Byte 0
  loc_B5174D: LitStr "center"
  loc_B51750: FMemLdR4 var_B8(20)
  loc_B51755: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5175A: CVarStr var_C8
  loc_B5175D: PopAdLdVar
  loc_B5175E: FLdPr Me
  loc_B51761: MemLdRfVar from_stack_1.global_60
  loc_B51764: LdPrVar
  loc_B51766: LateMemCall
  loc_B5176C: FFree1Var var_C8 = ""
  loc_B5176F: LitStr vbNullString
  loc_B51772: LitI2_Byte 0
  loc_B51774: LitI2_Byte 0
  loc_B51776: LitI2_Byte 0
  loc_B51778: LitStr "right"
  loc_B5177B: FMemLdR4 var_B8(24)
  loc_B51780: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51785: CVarStr var_C8
  loc_B51788: PopAdLdVar
  loc_B51789: FLdPr Me
  loc_B5178C: MemLdRfVar from_stack_1.global_60
  loc_B5178F: LdPrVar
  loc_B51791: LateMemCall
  loc_B51797: FFree1Var var_C8 = ""
  loc_B5179A: LitStr vbNullString
  loc_B5179D: LitI2_Byte 0
  loc_B5179F: LitI2_Byte 0
  loc_B517A1: LitI2_Byte 0
  loc_B517A3: LitStr "right"
  loc_B517A6: FMemLdR4 var_B8(28)
  loc_B517AB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B517B0: CVarStr var_C8
  loc_B517B3: PopAdLdVar
  loc_B517B4: FLdPr Me
  loc_B517B7: MemLdRfVar from_stack_1.global_60
  loc_B517BA: LdPrVar
  loc_B517BC: LateMemCall
  loc_B517C2: FFree1Var var_C8 = ""
  loc_B517C5: LitStr vbNullString
  loc_B517C8: LitI2_Byte 0
  loc_B517CA: LitI2_Byte 0
  loc_B517CC: LitI2_Byte 0
  loc_B517CE: LitStr "right"
  loc_B517D1: FMemLdR4 var_B8(32)
  loc_B517D6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B517DB: CVarStr var_C8
  loc_B517DE: PopAdLdVar
  loc_B517DF: FLdPr Me
  loc_B517E2: MemLdRfVar from_stack_1.global_60
  loc_B517E5: LdPrVar
  loc_B517E7: LateMemCall
  loc_B517ED: FFree1Var var_C8 = ""
  loc_B517F0: LitStr vbNullString
  loc_B517F3: LitI2_Byte 0
  loc_B517F5: LitI2_Byte 0
  loc_B517F7: LitI2_Byte 0
  loc_B517F9: LitStr "right"
  loc_B517FC: FMemLdR4 var_B8(36)
  loc_B51801: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51806: CVarStr var_C8
  loc_B51809: PopAdLdVar
  loc_B5180A: FLdPr Me
  loc_B5180D: MemLdRfVar from_stack_1.global_60
  loc_B51810: LdPrVar
  loc_B51812: LateMemCall
  loc_B51818: FFree1Var var_C8 = ""
  loc_B5181B: LitStr vbNullString
  loc_B5181E: LitI2_Byte 0
  loc_B51820: LitI2_Byte 0
  loc_B51822: LitI2_Byte 0
  loc_B51824: LitStr "right"
  loc_B51827: FMemLdR4 var_B8(40)
  loc_B5182C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51831: CVarStr var_C8
  loc_B51834: PopAdLdVar
  loc_B51835: FLdPr Me
  loc_B51838: MemLdRfVar from_stack_1.global_60
  loc_B5183B: LdPrVar
  loc_B5183D: LateMemCall
  loc_B51843: FFree1Var var_C8 = ""
  loc_B51846: LitI4 0
  loc_B5184B: FStR4 var_B8
  loc_B5184E: AryUnlock
  loc_B51851: LitVarStr var_A0, "     </tr>"
  loc_B51856: PopAdLdVar
  loc_B51857: FLdPr Me
  loc_B5185A: MemLdRfVar from_stack_1.global_60
  loc_B5185D: LdPrVar
  loc_B5185F: LateMemCall
  loc_B51865: FLdPr Me
  loc_B51868: MemLdRfVar from_stack_1.global_88
  loc_B5186B: NextI4 var_90, loc_B51646
  loc_B51870: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_B51875: PopAdLdVar
  loc_B51876: FLdPr Me
  loc_B51879: MemLdRfVar from_stack_1.global_60
  loc_B5187C: LdPrVar
  loc_B5187E: LateMemCall
  loc_B51884: LitVarStr var_A0, "    <td colspan=""6"" align=""right"">Totales</td>"
  loc_B51889: PopAdLdVar
  loc_B5188A: FLdPr Me
  loc_B5188D: MemLdRfVar from_stack_1.global_60
  loc_B51890: LdPrVar
  loc_B51892: LateMemCall
  loc_B51898: LitI4 1
  loc_B5189D: FLdPr Me
  loc_B518A0: MemLdStr global_80
  loc_B518A3: AryLock
  loc_B518A6: Ary1LdRf
  loc_B518A7: FStR4 var_D0
  loc_B518AA: LitStr vbNullString
  loc_B518AD: LitI2_Byte 0
  loc_B518AF: LitI2_Byte 0
  loc_B518B1: LitI2_Byte 0
  loc_B518B3: LitStr "right"
  loc_B518B6: FMemLdR4 var_D0(24)
  loc_B518BB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B518C0: CVarStr var_C8
  loc_B518C3: PopAdLdVar
  loc_B518C4: FLdPr Me
  loc_B518C7: MemLdRfVar from_stack_1.global_60
  loc_B518CA: LdPrVar
  loc_B518CC: LateMemCall
  loc_B518D2: FFree1Var var_C8 = ""
  loc_B518D5: LitStr vbNullString
  loc_B518D8: LitI2_Byte 0
  loc_B518DA: LitI2_Byte 0
  loc_B518DC: LitI2_Byte 0
  loc_B518DE: LitStr "right"
  loc_B518E1: FMemLdR4 var_D0(28)
  loc_B518E6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B518EB: CVarStr var_C8
  loc_B518EE: PopAdLdVar
  loc_B518EF: FLdPr Me
  loc_B518F2: MemLdRfVar from_stack_1.global_60
  loc_B518F5: LdPrVar
  loc_B518F7: LateMemCall
  loc_B518FD: FFree1Var var_C8 = ""
  loc_B51900: LitStr vbNullString
  loc_B51903: LitI2_Byte 0
  loc_B51905: LitI2_Byte 0
  loc_B51907: LitI2_Byte 0
  loc_B51909: LitStr "right"
  loc_B5190C: FMemLdR4 var_D0(32)
  loc_B51911: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51916: CVarStr var_C8
  loc_B51919: PopAdLdVar
  loc_B5191A: FLdPr Me
  loc_B5191D: MemLdRfVar from_stack_1.global_60
  loc_B51920: LdPrVar
  loc_B51922: LateMemCall
  loc_B51928: FFree1Var var_C8 = ""
  loc_B5192B: LitStr vbNullString
  loc_B5192E: LitI2_Byte 0
  loc_B51930: LitI2_Byte 0
  loc_B51932: LitI2_Byte 0
  loc_B51934: LitStr "right"
  loc_B51937: FMemLdR4 var_D0(36)
  loc_B5193C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B51941: CVarStr var_C8
  loc_B51944: PopAdLdVar
  loc_B51945: FLdPr Me
  loc_B51948: MemLdRfVar from_stack_1.global_60
  loc_B5194B: LdPrVar
  loc_B5194D: LateMemCall
  loc_B51953: FFree1Var var_C8 = ""
  loc_B51956: LitStr vbNullString
  loc_B51959: LitI2_Byte 0
  loc_B5195B: LitI2_Byte 0
  loc_B5195D: LitI2_Byte 0
  loc_B5195F: LitStr "right"
  loc_B51962: FMemLdR4 var_D0(40)
  loc_B51967: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B5196C: CVarStr var_C8
  loc_B5196F: PopAdLdVar
  loc_B51970: FLdPr Me
  loc_B51973: MemLdRfVar from_stack_1.global_60
  loc_B51976: LdPrVar
  loc_B51978: LateMemCall
  loc_B5197E: FFree1Var var_C8 = ""
  loc_B51981: LitI4 0
  loc_B51986: FStR4 var_D0
  loc_B51989: AryUnlock
  loc_B5198C: LitVarStr var_A0, "     </tr>"
  loc_B51991: PopAdLdVar
  loc_B51992: FLdPr Me
  loc_B51995: MemLdRfVar from_stack_1.global_60
  loc_B51998: LdPrVar
  loc_B5199A: LateMemCall
  loc_B519A0: Call Proc_180_28_9F5DB4()
  loc_B519A5: FLdPr Me
  loc_B519A8: MemLdRfVar from_stack_1.global_60
  loc_B519AB: LdPrVar
  loc_B519AD: LateMemCall
  loc_B519B3: LitStr vbNullString
  loc_B519B6: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B519BB: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C453C
  'Data Table: 495164
  loc_9C4524: LitI2_Byte 0
  loc_9C4526: FLdPr Me
  loc_9C4529: MemStI2 bLogos
  loc_9C452C: Call GeneraHTML()
  loc_9C4531: LitI2_Byte &HFF
  loc_9C4533: FLdPr Me
  loc_9C4536: MemStI2 bLogos
  loc_9C4539: ExitProcHresult
End Sub

Private Function Proc_180_26_ABFFA8() 'ABFFA8
  'Data Table: 495164
  loc_ABFEB4: FLdPr Me
  loc_ABFEB7: VCallAd Control_ID_DesdeMsk
  loc_ABFEBA: FStAdFunc var_88
  loc_ABFEBD: FLdPr var_88
  loc_ABFEC0: LateIdLdVar var_98 DispID_15 0
  loc_ABFEC7: CStrVarTmp
  loc_ABFEC8: CVarStr var_A8
  loc_ABFECB: FLdRfVar var_B8
  loc_ABFECE: ImpAdCallFPR4  = Year()
  loc_ABFED3: FLdRfVar var_B8
  loc_ABFED6: CI2Var
  loc_ABFED7: ImpAdLdRf MemVar_D94354
  loc_ABFEDA: NewIfNullPr dlgBuscarConceptoTodos
  loc_ABFEDD: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_ABFEE2: FFree1Ad var_88
  loc_ABFEE5: FFreeVar var_98 = "": var_A8 = ""
  loc_ABFEEE: LitVar_Missing var_D8
  loc_ABFEF1: PopAdLdVar
  loc_ABFEF2: LitVarI4
  loc_ABFEFA: PopAdLdVar
  loc_ABFEFB: ImpAdLdRf MemVar_D94354
  loc_ABFEFE: NewIfNullPr dlgBuscarConceptoTodos
  loc_ABFF01: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_ABFF06: FLdRfVar var_DC
  loc_ABFF09: FLdRfVar var_88
  loc_ABFF0C: ImpAdLdRf MemVar_D94354
  loc_ABFF0F: NewIfNullPr dlgBuscarConceptoTodos
  loc_ABFF12: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_ABFF17: FLdPr var_88
  loc_ABFF1A: from_stack_1 = clsconcepto.RecordCount
  loc_ABFF1F: ILdRf var_DC
  loc_ABFF22: LitI4 0
  loc_ABFF27: GtI4
  loc_ABFF28: FFree1Ad var_88
  loc_ABFF2B: BranchF loc_ABFFA0
  loc_ABFF2E: FLdRfVar var_E0
  loc_ABFF31: FLdRfVar var_88
  loc_ABFF34: ImpAdLdRf MemVar_D94354
  loc_ABFF37: NewIfNullPr dlgBuscarConceptoTodos
  loc_ABFF3A: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_ABFF3F: FLdPr var_88
  loc_ABFF42: from_stack_1 = clsconcepto.CodiConc
  loc_ABFF47: FLdZeroAd var_E0
  loc_ABFF4A: CVarStr var_98
  loc_ABFF4D: PopAdLdVar
  loc_ABFF4E: FLdPr Me
  loc_ABFF51: VCallAd Control_ID_CodiConcMsk
  loc_ABFF54: FStAdFunc var_E4
  loc_ABFF57: FLdPr var_E4
  loc_ABFF5A: LateIdSt
  loc_ABFF5F: FFreeAd var_88 = ""
  loc_ABFF66: FFree1Var var_98 = ""
  loc_ABFF69: FLdRfVar var_E0
  loc_ABFF6C: FLdRfVar var_88
  loc_ABFF6F: ImpAdLdRf MemVar_D94354
  loc_ABFF72: NewIfNullPr dlgBuscarConceptoTodos
  loc_ABFF75: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_ABFF7A: FLdPr var_88
  loc_ABFF7D: from_stack_1 = clsconcepto.DetaConc
  loc_ABFF82: ILdRf var_E0
  loc_ABFF85: FLdPr Me
  loc_ABFF88: VCallAd Control_ID_DetaConcLbl
  loc_ABFF8B: FStAdFunc var_E4
  loc_ABFF8E: FLdPr var_E4
  loc_ABFF91: Me.Caption = from_stack_1
  loc_ABFF96: FFree1Str var_E0
  loc_ABFF99: FFreeAd var_88 = ""
  loc_ABFFA0: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_ABFFA5: ExitProcHresult
  loc_ABFFA6: MemLdPr global_-4865
End Function

Private Function Proc_180_27_BF9C0C() 'BF9C0C
  'Data Table: 495164
  loc_BF9374: LitVarStr var_94, "<html>"
  loc_BF9379: PopAdLdVar
  loc_BF937A: FLdPr Me
  loc_BF937D: MemLdRfVar from_stack_1.global_60
  loc_BF9380: LdPrVar
  loc_BF9382: LateMemCall
  loc_BF9388: LitVarStr var_94, "<head>"
  loc_BF938D: PopAdLdVar
  loc_BF938E: FLdPr Me
  loc_BF9391: MemLdRfVar from_stack_1.global_60
  loc_BF9394: LdPrVar
  loc_BF9396: LateMemCall
  loc_BF939C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BF93A1: PopAdLdVar
  loc_BF93A2: FLdPr Me
  loc_BF93A5: MemLdRfVar from_stack_1.global_60
  loc_BF93A8: LdPrVar
  loc_BF93AA: LateMemCall
  loc_BF93B0: LitStr "<title>"
  loc_BF93B3: FLdRfVar var_A8
  loc_BF93B6: FLdPr Me
  loc_BF93B9:  = Me.Caption
  loc_BF93BE: ILdRf var_A8
  loc_BF93C1: ConcatStr
  loc_BF93C2: FStStrNoPop var_AC
  loc_BF93C5: LitStr "</title>"
  loc_BF93C8: ConcatStr
  loc_BF93C9: CVarStr var_BC
  loc_BF93CC: PopAdLdVar
  loc_BF93CD: FLdPr Me
  loc_BF93D0: MemLdRfVar from_stack_1.global_60
  loc_BF93D3: LdPrVar
  loc_BF93D5: LateMemCall
  loc_BF93DB: FFreeStr var_A8 = ""
  loc_BF93E2: FFree1Var var_BC = ""
  loc_BF93E5: LitVarStr var_94, "<style type=""text/css"">"
  loc_BF93EA: PopAdLdVar
  loc_BF93EB: FLdPr Me
  loc_BF93EE: MemLdRfVar from_stack_1.global_60
  loc_BF93F1: LdPrVar
  loc_BF93F3: LateMemCall
  loc_BF93F9: LitVarStr var_94, ".Titulo1 {"
  loc_BF93FE: PopAdLdVar
  loc_BF93FF: FLdPr Me
  loc_BF9402: MemLdRfVar from_stack_1.global_60
  loc_BF9405: LdPrVar
  loc_BF9407: LateMemCall
  loc_BF940D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF9412: PopAdLdVar
  loc_BF9413: FLdPr Me
  loc_BF9416: MemLdRfVar from_stack_1.global_60
  loc_BF9419: LdPrVar
  loc_BF941B: LateMemCall
  loc_BF9421: LitVarStr var_94, " font-size: 18px;"
  loc_BF9426: PopAdLdVar
  loc_BF9427: FLdPr Me
  loc_BF942A: MemLdRfVar from_stack_1.global_60
  loc_BF942D: LdPrVar
  loc_BF942F: LateMemCall
  loc_BF9435: LitVarStr var_94, " font-weight: bold;"
  loc_BF943A: PopAdLdVar
  loc_BF943B: FLdPr Me
  loc_BF943E: MemLdRfVar from_stack_1.global_60
  loc_BF9441: LdPrVar
  loc_BF9443: LateMemCall
  loc_BF9449: LitVarStr var_94, "}"
  loc_BF944E: PopAdLdVar
  loc_BF944F: FLdPr Me
  loc_BF9452: MemLdRfVar from_stack_1.global_60
  loc_BF9455: LdPrVar
  loc_BF9457: LateMemCall
  loc_BF945D: LitVarStr var_94, ".Titulo2 {"
  loc_BF9462: PopAdLdVar
  loc_BF9463: FLdPr Me
  loc_BF9466: MemLdRfVar from_stack_1.global_60
  loc_BF9469: LdPrVar
  loc_BF946B: LateMemCall
  loc_BF9471: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF9476: PopAdLdVar
  loc_BF9477: FLdPr Me
  loc_BF947A: MemLdRfVar from_stack_1.global_60
  loc_BF947D: LdPrVar
  loc_BF947F: LateMemCall
  loc_BF9485: LitVarStr var_94, " font-size: 14px;"
  loc_BF948A: PopAdLdVar
  loc_BF948B: FLdPr Me
  loc_BF948E: MemLdRfVar from_stack_1.global_60
  loc_BF9491: LdPrVar
  loc_BF9493: LateMemCall
  loc_BF9499: LitVarStr var_94, " font-weight: bold;"
  loc_BF949E: PopAdLdVar
  loc_BF949F: FLdPr Me
  loc_BF94A2: MemLdRfVar from_stack_1.global_60
  loc_BF94A5: LdPrVar
  loc_BF94A7: LateMemCall
  loc_BF94AD: LitVarStr var_94, "}"
  loc_BF94B2: PopAdLdVar
  loc_BF94B3: FLdPr Me
  loc_BF94B6: MemLdRfVar from_stack_1.global_60
  loc_BF94B9: LdPrVar
  loc_BF94BB: LateMemCall
  loc_BF94C1: LitVarStr var_94, ".Normal {"
  loc_BF94C6: PopAdLdVar
  loc_BF94C7: FLdPr Me
  loc_BF94CA: MemLdRfVar from_stack_1.global_60
  loc_BF94CD: LdPrVar
  loc_BF94CF: LateMemCall
  loc_BF94D5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF94DA: PopAdLdVar
  loc_BF94DB: FLdPr Me
  loc_BF94DE: MemLdRfVar from_stack_1.global_60
  loc_BF94E1: LdPrVar
  loc_BF94E3: LateMemCall
  loc_BF94E9: LitVarStr var_94, " font-size: 12px;"
  loc_BF94EE: PopAdLdVar
  loc_BF94EF: FLdPr Me
  loc_BF94F2: MemLdRfVar from_stack_1.global_60
  loc_BF94F5: LdPrVar
  loc_BF94F7: LateMemCall
  loc_BF94FD: LitVarStr var_94, " font-style: normal;"
  loc_BF9502: PopAdLdVar
  loc_BF9503: FLdPr Me
  loc_BF9506: MemLdRfVar from_stack_1.global_60
  loc_BF9509: LdPrVar
  loc_BF950B: LateMemCall
  loc_BF9511: LitVarStr var_94, " font-weight: normal;"
  loc_BF9516: PopAdLdVar
  loc_BF9517: FLdPr Me
  loc_BF951A: MemLdRfVar from_stack_1.global_60
  loc_BF951D: LdPrVar
  loc_BF951F: LateMemCall
  loc_BF9525: LitVarStr var_94, " font-variant: normal;"
  loc_BF952A: PopAdLdVar
  loc_BF952B: FLdPr Me
  loc_BF952E: MemLdRfVar from_stack_1.global_60
  loc_BF9531: LdPrVar
  loc_BF9533: LateMemCall
  loc_BF9539: LitVarStr var_94, "}"
  loc_BF953E: PopAdLdVar
  loc_BF953F: FLdPr Me
  loc_BF9542: MemLdRfVar from_stack_1.global_60
  loc_BF9545: LdPrVar
  loc_BF9547: LateMemCall
  loc_BF954D: LitVarStr var_94, ".Encabezado {"
  loc_BF9552: PopAdLdVar
  loc_BF9553: FLdPr Me
  loc_BF9556: MemLdRfVar from_stack_1.global_60
  loc_BF9559: LdPrVar
  loc_BF955B: LateMemCall
  loc_BF9561: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BF9566: PopAdLdVar
  loc_BF9567: FLdPr Me
  loc_BF956A: MemLdRfVar from_stack_1.global_60
  loc_BF956D: LdPrVar
  loc_BF956F: LateMemCall
  loc_BF9575: LitVarStr var_94, " font-size: 11px;"
  loc_BF957A: PopAdLdVar
  loc_BF957B: FLdPr Me
  loc_BF957E: MemLdRfVar from_stack_1.global_60
  loc_BF9581: LdPrVar
  loc_BF9583: LateMemCall
  loc_BF9589: LitVarStr var_94, " font-weight: bold;"
  loc_BF958E: PopAdLdVar
  loc_BF958F: FLdPr Me
  loc_BF9592: MemLdRfVar from_stack_1.global_60
  loc_BF9595: LdPrVar
  loc_BF9597: LateMemCall
  loc_BF959D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BF95A2: PopAdLdVar
  loc_BF95A3: FLdPr Me
  loc_BF95A6: MemLdRfVar from_stack_1.global_60
  loc_BF95A9: LdPrVar
  loc_BF95AB: LateMemCall
  loc_BF95B1: LitVarStr var_94, "}"
  loc_BF95B6: PopAdLdVar
  loc_BF95B7: FLdPr Me
  loc_BF95BA: MemLdRfVar from_stack_1.global_60
  loc_BF95BD: LdPrVar
  loc_BF95BF: LateMemCall
  loc_BF95C5: LitVarStr var_94, ".LineaDato {"
  loc_BF95CA: PopAdLdVar
  loc_BF95CB: FLdPr Me
  loc_BF95CE: MemLdRfVar from_stack_1.global_60
  loc_BF95D1: LdPrVar
  loc_BF95D3: LateMemCall
  loc_BF95D9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF95DE: PopAdLdVar
  loc_BF95DF: FLdPr Me
  loc_BF95E2: MemLdRfVar from_stack_1.global_60
  loc_BF95E5: LdPrVar
  loc_BF95E7: LateMemCall
  loc_BF95ED: LitVarStr var_94, " font-size: 10px;"
  loc_BF95F2: PopAdLdVar
  loc_BF95F3: FLdPr Me
  loc_BF95F6: MemLdRfVar from_stack_1.global_60
  loc_BF95F9: LdPrVar
  loc_BF95FB: LateMemCall
  loc_BF9601: LitVarStr var_94, "}"
  loc_BF9606: PopAdLdVar
  loc_BF9607: FLdPr Me
  loc_BF960A: MemLdRfVar from_stack_1.global_60
  loc_BF960D: LdPrVar
  loc_BF960F: LateMemCall
  loc_BF9615: LitVarStr var_94, ".Totales {"
  loc_BF961A: PopAdLdVar
  loc_BF961B: FLdPr Me
  loc_BF961E: MemLdRfVar from_stack_1.global_60
  loc_BF9621: LdPrVar
  loc_BF9623: LateMemCall
  loc_BF9629: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF962E: PopAdLdVar
  loc_BF962F: FLdPr Me
  loc_BF9632: MemLdRfVar from_stack_1.global_60
  loc_BF9635: LdPrVar
  loc_BF9637: LateMemCall
  loc_BF963D: LitVarStr var_94, " font-size: 12px;"
  loc_BF9642: PopAdLdVar
  loc_BF9643: FLdPr Me
  loc_BF9646: MemLdRfVar from_stack_1.global_60
  loc_BF9649: LdPrVar
  loc_BF964B: LateMemCall
  loc_BF9651: LitVarStr var_94, " font-weight: bold;"
  loc_BF9656: PopAdLdVar
  loc_BF9657: FLdPr Me
  loc_BF965A: MemLdRfVar from_stack_1.global_60
  loc_BF965D: LdPrVar
  loc_BF965F: LateMemCall
  loc_BF9665: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BF966A: PopAdLdVar
  loc_BF966B: FLdPr Me
  loc_BF966E: MemLdRfVar from_stack_1.global_60
  loc_BF9671: LdPrVar
  loc_BF9673: LateMemCall
  loc_BF9679: LitVarStr var_94, "}"
  loc_BF967E: PopAdLdVar
  loc_BF967F: FLdPr Me
  loc_BF9682: MemLdRfVar from_stack_1.global_60
  loc_BF9685: LdPrVar
  loc_BF9687: LateMemCall
  loc_BF968D: LitVarStr var_94, ".SubTotales {"
  loc_BF9692: PopAdLdVar
  loc_BF9693: FLdPr Me
  loc_BF9696: MemLdRfVar from_stack_1.global_60
  loc_BF9699: LdPrVar
  loc_BF969B: LateMemCall
  loc_BF96A1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF96A6: PopAdLdVar
  loc_BF96A7: FLdPr Me
  loc_BF96AA: MemLdRfVar from_stack_1.global_60
  loc_BF96AD: LdPrVar
  loc_BF96AF: LateMemCall
  loc_BF96B5: LitVarStr var_94, " font-size: 10px;"
  loc_BF96BA: PopAdLdVar
  loc_BF96BB: FLdPr Me
  loc_BF96BE: MemLdRfVar from_stack_1.global_60
  loc_BF96C1: LdPrVar
  loc_BF96C3: LateMemCall
  loc_BF96C9: LitVarStr var_94, " font-weight: bold;"
  loc_BF96CE: PopAdLdVar
  loc_BF96CF: FLdPr Me
  loc_BF96D2: MemLdRfVar from_stack_1.global_60
  loc_BF96D5: LdPrVar
  loc_BF96D7: LateMemCall
  loc_BF96DD: LitVarStr var_94, " background-color: #7DC3E1;"
  loc_BF96E2: PopAdLdVar
  loc_BF96E3: FLdPr Me
  loc_BF96E6: MemLdRfVar from_stack_1.global_60
  loc_BF96E9: LdPrVar
  loc_BF96EB: LateMemCall
  loc_BF96F1: LitVarStr var_94, "}"
  loc_BF96F6: PopAdLdVar
  loc_BF96F7: FLdPr Me
  loc_BF96FA: MemLdRfVar from_stack_1.global_60
  loc_BF96FD: LdPrVar
  loc_BF96FF: LateMemCall
  loc_BF9705: LitVarStr var_94, ".SubTotales {"
  loc_BF970A: PopAdLdVar
  loc_BF970B: FLdPr Me
  loc_BF970E: MemLdRfVar from_stack_1.global_60
  loc_BF9711: LdPrVar
  loc_BF9713: LateMemCall
  loc_BF9719: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF971E: PopAdLdVar
  loc_BF971F: FLdPr Me
  loc_BF9722: MemLdRfVar from_stack_1.global_60
  loc_BF9725: LdPrVar
  loc_BF9727: LateMemCall
  loc_BF972D: LitVarStr var_94, " font-size: 10px;"
  loc_BF9732: PopAdLdVar
  loc_BF9733: FLdPr Me
  loc_BF9736: MemLdRfVar from_stack_1.global_60
  loc_BF9739: LdPrVar
  loc_BF973B: LateMemCall
  loc_BF9741: LitVarStr var_94, " font-weight: bold;"
  loc_BF9746: PopAdLdVar
  loc_BF9747: FLdPr Me
  loc_BF974A: MemLdRfVar from_stack_1.global_60
  loc_BF974D: LdPrVar
  loc_BF974F: LateMemCall
  loc_BF9755: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BF975A: PopAdLdVar
  loc_BF975B: FLdPr Me
  loc_BF975E: MemLdRfVar from_stack_1.global_60
  loc_BF9761: LdPrVar
  loc_BF9763: LateMemCall
  loc_BF9769: LitVarStr var_94, "}"
  loc_BF976E: PopAdLdVar
  loc_BF976F: FLdPr Me
  loc_BF9772: MemLdRfVar from_stack_1.global_60
  loc_BF9775: LdPrVar
  loc_BF9777: LateMemCall
  loc_BF977D: LitVarStr var_94, ".EncabezadoTotales {"
  loc_BF9782: PopAdLdVar
  loc_BF9783: FLdPr Me
  loc_BF9786: MemLdRfVar from_stack_1.global_60
  loc_BF9789: LdPrVar
  loc_BF978B: LateMemCall
  loc_BF9791: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BF9796: PopAdLdVar
  loc_BF9797: FLdPr Me
  loc_BF979A: MemLdRfVar from_stack_1.global_60
  loc_BF979D: LdPrVar
  loc_BF979F: LateMemCall
  loc_BF97A5: LitVarStr var_94, " font-size: 14px;"
  loc_BF97AA: PopAdLdVar
  loc_BF97AB: FLdPr Me
  loc_BF97AE: MemLdRfVar from_stack_1.global_60
  loc_BF97B1: LdPrVar
  loc_BF97B3: LateMemCall
  loc_BF97B9: LitVarStr var_94, " font-weight: bold;"
  loc_BF97BE: PopAdLdVar
  loc_BF97BF: FLdPr Me
  loc_BF97C2: MemLdRfVar from_stack_1.global_60
  loc_BF97C5: LdPrVar
  loc_BF97C7: LateMemCall
  loc_BF97CD: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BF97D2: PopAdLdVar
  loc_BF97D3: FLdPr Me
  loc_BF97D6: MemLdRfVar from_stack_1.global_60
  loc_BF97D9: LdPrVar
  loc_BF97DB: LateMemCall
  loc_BF97E1: LitVarStr var_94, "}"
  loc_BF97E6: PopAdLdVar
  loc_BF97E7: FLdPr Me
  loc_BF97EA: MemLdRfVar from_stack_1.global_60
  loc_BF97ED: LdPrVar
  loc_BF97EF: LateMemCall
  loc_BF97F5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BF97FA: PopAdLdVar
  loc_BF97FB: FLdPr Me
  loc_BF97FE: MemLdRfVar from_stack_1.global_60
  loc_BF9801: LdPrVar
  loc_BF9803: LateMemCall
  loc_BF9809: LitVarStr var_94, "</style>"
  loc_BF980E: PopAdLdVar
  loc_BF980F: FLdPr Me
  loc_BF9812: MemLdRfVar from_stack_1.global_60
  loc_BF9815: LdPrVar
  loc_BF9817: LateMemCall
  loc_BF981D: LitI4 0
  loc_BF9822: FStStrCopy var_AC
  loc_BF9825: FLdRfVar var_AC
  loc_BF9828: LitI4 0
  loc_BF982D: FStStrCopy var_A8
  loc_BF9830: FLdRfVar var_A8
  loc_BF9833: LitI2_Byte 0
  loc_BF9835: PopTmpLdAd2 var_BE
  loc_BF9838: FLdPr Me
  loc_BF983B: MemLdRfVar from_stack_1.global_60
  loc_BF983E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BF9843: FFreeStr var_A8 = ""
  loc_BF984A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BF984F: PopAdLdVar
  loc_BF9850: FLdPr Me
  loc_BF9853: MemLdRfVar from_stack_1.global_60
  loc_BF9856: LdPrVar
  loc_BF9858: LateMemCall
  loc_BF985E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BF9863: PopAdLdVar
  loc_BF9864: FLdPr Me
  loc_BF9867: MemLdRfVar from_stack_1.global_60
  loc_BF986A: LdPrVar
  loc_BF986C: LateMemCall
  loc_BF9872: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_BF9877: PopAdLdVar
  loc_BF9878: FLdPr Me
  loc_BF987B: MemLdRfVar from_stack_1.global_60
  loc_BF987E: LdPrVar
  loc_BF9880: LateMemCall
  loc_BF9886: FLdPr Me
  loc_BF9889: MemLdI2 bLogos
  loc_BF988C: BranchF loc_BF98E7
  loc_BF988F: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BF9892: LitI2_Byte &H5F
  loc_BF9894: CStrUI1
  loc_BF9896: FStStrNoPop var_A8
  loc_BF9899: ConcatStr
  loc_BF989A: FStStrNoPop var_AC
  loc_BF989D: LitStr """ height="""
  loc_BF98A0: ConcatStr
  loc_BF98A1: FStStrNoPop var_C4
  loc_BF98A4: LitI2_Byte &H3C
  loc_BF98A6: CStrUI1
  loc_BF98A8: FStStrNoPop var_C8
  loc_BF98AB: ConcatStr
  loc_BF98AC: FStStrNoPop var_CC
  loc_BF98AF: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BF98B2: ConcatStr
  loc_BF98B3: FStStrNoPop var_D0
  loc_BF98B6: LitStr "Municipalidad de Guaymallén"
  loc_BF98B9: ConcatStr
  loc_BF98BA: FStStrNoPop var_D4
  loc_BF98BD: LitStr "</p>"
  loc_BF98C0: ConcatStr
  loc_BF98C1: CVarStr var_BC
  loc_BF98C4: PopAdLdVar
  loc_BF98C5: FLdPr Me
  loc_BF98C8: MemLdRfVar from_stack_1.global_60
  loc_BF98CB: LdPrVar
  loc_BF98CD: LateMemCall
  loc_BF98D3: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BF98E4: FFree1Var var_BC = ""
  loc_BF98E7: LitStr "    <p>"
  loc_BF98EA: FLdRfVar var_A8
  loc_BF98ED: FLdPr Me
  loc_BF98F0:  = Me.Caption
  loc_BF98F5: ILdRf var_A8
  loc_BF98F8: ConcatStr
  loc_BF98F9: FStStrNoPop var_AC
  loc_BF98FC: LitStr "</p></th>"
  loc_BF98FF: ConcatStr
  loc_BF9900: CVarStr var_BC
  loc_BF9903: PopAdLdVar
  loc_BF9904: FLdPr Me
  loc_BF9907: MemLdRfVar from_stack_1.global_60
  loc_BF990A: LdPrVar
  loc_BF990C: LateMemCall
  loc_BF9912: FFreeStr var_A8 = ""
  loc_BF9919: FFree1Var var_BC = ""
  loc_BF991C: LitVarStr var_94, "  </tr>"
  loc_BF9921: PopAdLdVar
  loc_BF9922: FLdPr Me
  loc_BF9925: MemLdRfVar from_stack_1.global_60
  loc_BF9928: LdPrVar
  loc_BF992A: LateMemCall
  loc_BF9930: LitVarStr var_94, "  <tr>"
  loc_BF9935: PopAdLdVar
  loc_BF9936: FLdPr Me
  loc_BF9939: MemLdRfVar from_stack_1.global_60
  loc_BF993C: LdPrVar
  loc_BF993E: LateMemCall
  loc_BF9944: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_BF9949: PopAdLdVar
  loc_BF994A: FLdPr Me
  loc_BF994D: MemLdRfVar from_stack_1.global_60
  loc_BF9950: LdPrVar
  loc_BF9952: LateMemCall
  loc_BF9958: LitVarStr var_94, "  </tr>"
  loc_BF995D: PopAdLdVar
  loc_BF995E: FLdPr Me
  loc_BF9961: MemLdRfVar from_stack_1.global_60
  loc_BF9964: LdPrVar
  loc_BF9966: LateMemCall
  loc_BF996C: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BF9971: PopAdLdVar
  loc_BF9972: FLdPr Me
  loc_BF9975: MemLdRfVar from_stack_1.global_60
  loc_BF9978: LdPrVar
  loc_BF997A: LateMemCall
  loc_BF9980: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BF9983: FLdPr Me
  loc_BF9986: VCallAd Control_ID_DesdeMsk
  loc_BF9989: FStAdFunc var_D8
  loc_BF998C: FLdPr var_D8
  loc_BF998F: LateIdLdVar var_BC DispID_15 0
  loc_BF9996: CStrVarTmp
  loc_BF9997: FStStrNoPop var_A8
  loc_BF999A: ConcatStr
  loc_BF999B: FStStrNoPop var_AC
  loc_BF999E: LitStr "<br>"
  loc_BF99A1: ConcatStr
  loc_BF99A2: CVarStr var_E8
  loc_BF99A5: PopAdLdVar
  loc_BF99A6: FLdPr Me
  loc_BF99A9: MemLdRfVar from_stack_1.global_60
  loc_BF99AC: LdPrVar
  loc_BF99AE: LateMemCall
  loc_BF99B4: FFreeStr var_A8 = ""
  loc_BF99BB: FFree1Ad var_D8
  loc_BF99BE: FFreeVar var_BC = ""
  loc_BF99C5: LitStr "                                      <strong>Hasta: </strong>"
  loc_BF99C8: FLdPr Me
  loc_BF99CB: VCallAd Control_ID_HastaMsk
  loc_BF99CE: FStAdFunc var_D8
  loc_BF99D1: FLdPr var_D8
  loc_BF99D4: LateIdLdVar var_BC DispID_15 0
  loc_BF99DB: CStrVarTmp
  loc_BF99DC: FStStrNoPop var_A8
  loc_BF99DF: ConcatStr
  loc_BF99E0: FStStrNoPop var_AC
  loc_BF99E3: LitStr "<br></td>"
  loc_BF99E6: ConcatStr
  loc_BF99E7: CVarStr var_E8
  loc_BF99EA: PopAdLdVar
  loc_BF99EB: FLdPr Me
  loc_BF99EE: MemLdRfVar from_stack_1.global_60
  loc_BF99F1: LdPrVar
  loc_BF99F3: LateMemCall
  loc_BF99F9: FFreeStr var_A8 = ""
  loc_BF9A00: FFree1Ad var_D8
  loc_BF9A03: FFreeVar var_BC = ""
  loc_BF9A0A: LitVarStr var_94, "  </tr>"
  loc_BF9A0F: PopAdLdVar
  loc_BF9A10: FLdPr Me
  loc_BF9A13: MemLdRfVar from_stack_1.global_60
  loc_BF9A16: LdPrVar
  loc_BF9A18: LateMemCall
  loc_BF9A1E: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BF9A23: PopAdLdVar
  loc_BF9A24: FLdPr Me
  loc_BF9A27: MemLdRfVar from_stack_1.global_60
  loc_BF9A2A: LdPrVar
  loc_BF9A2C: LateMemCall
  loc_BF9A32: LitStr "    <td colspan=""3"" align=""left""><strong>Concepto: </strong>"
  loc_BF9A35: FLdPr Me
  loc_BF9A38: VCallAd Control_ID_CodiConcMsk
  loc_BF9A3B: FStAdFunc var_D8
  loc_BF9A3E: FLdPr var_D8
  loc_BF9A41: LateIdLdVar var_BC DispID_22 0
  loc_BF9A48: CStrVarTmp
  loc_BF9A49: FStStrNoPop var_A8
  loc_BF9A4C: ConcatStr
  loc_BF9A4D: FStStrNoPop var_AC
  loc_BF9A50: LitStr " - "
  loc_BF9A53: ConcatStr
  loc_BF9A54: FStStrNoPop var_C8
  loc_BF9A57: FLdRfVar var_C4
  loc_BF9A5A: FLdPr Me
  loc_BF9A5D: VCallAd Control_ID_DetaConcLbl
  loc_BF9A60: FStAdFunc var_EC
  loc_BF9A63: FLdPr var_EC
  loc_BF9A66:  = Me.Caption
  loc_BF9A6B: ILdRf var_C4
  loc_BF9A6E: ConcatStr
  loc_BF9A6F: FStStrNoPop var_CC
  loc_BF9A72: LitStr "</td>"
  loc_BF9A75: ConcatStr
  loc_BF9A76: CVarStr var_E8
  loc_BF9A79: PopAdLdVar
  loc_BF9A7A: FLdPr Me
  loc_BF9A7D: MemLdRfVar from_stack_1.global_60
  loc_BF9A80: LdPrVar
  loc_BF9A82: LateMemCall
  loc_BF9A88: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_BF9A95: FFreeAd var_D8 = ""
  loc_BF9A9C: FFreeVar var_BC = ""
  loc_BF9AA3: LitVarStr var_94, "  </tr>"
  loc_BF9AA8: PopAdLdVar
  loc_BF9AA9: FLdPr Me
  loc_BF9AAC: MemLdRfVar from_stack_1.global_60
  loc_BF9AAF: LdPrVar
  loc_BF9AB1: LateMemCall
  loc_BF9AB7: LitVarStr var_94, "</table>"
  loc_BF9ABC: PopAdLdVar
  loc_BF9ABD: FLdPr Me
  loc_BF9AC0: MemLdRfVar from_stack_1.global_60
  loc_BF9AC3: LdPrVar
  loc_BF9AC5: LateMemCall
  loc_BF9ACB: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BF9AD0: PopAdLdVar
  loc_BF9AD1: FLdPr Me
  loc_BF9AD4: MemLdRfVar from_stack_1.global_60
  loc_BF9AD7: LdPrVar
  loc_BF9AD9: LateMemCall
  loc_BF9ADF: LitVarStr var_94, "  <thead>"
  loc_BF9AE4: PopAdLdVar
  loc_BF9AE5: FLdPr Me
  loc_BF9AE8: MemLdRfVar from_stack_1.global_60
  loc_BF9AEB: LdPrVar
  loc_BF9AED: LateMemCall
  loc_BF9AF3: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BF9AF8: PopAdLdVar
  loc_BF9AF9: FLdPr Me
  loc_BF9AFC: MemLdRfVar from_stack_1.global_60
  loc_BF9AFF: LdPrVar
  loc_BF9B01: LateMemCall
  loc_BF9B07: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BF9B0C: PopAdLdVar
  loc_BF9B0D: FLdPr Me
  loc_BF9B10: MemLdRfVar from_stack_1.global_60
  loc_BF9B13: LdPrVar
  loc_BF9B15: LateMemCall
  loc_BF9B1B: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BF9B20: PopAdLdVar
  loc_BF9B21: FLdPr Me
  loc_BF9B24: MemLdRfVar from_stack_1.global_60
  loc_BF9B27: LdPrVar
  loc_BF9B29: LateMemCall
  loc_BF9B2F: LitVarStr var_94, "    <th>Fecha Alta</th>"
  loc_BF9B34: PopAdLdVar
  loc_BF9B35: FLdPr Me
  loc_BF9B38: MemLdRfVar from_stack_1.global_60
  loc_BF9B3B: LdPrVar
  loc_BF9B3D: LateMemCall
  loc_BF9B43: LitVarStr var_94, "    <th>Acta</th>"
  loc_BF9B48: PopAdLdVar
  loc_BF9B49: FLdPr Me
  loc_BF9B4C: MemLdRfVar from_stack_1.global_60
  loc_BF9B4F: LdPrVar
  loc_BF9B51: LateMemCall
  loc_BF9B57: LitVarStr var_94, "    <th>Expediente</th>"
  loc_BF9B5C: PopAdLdVar
  loc_BF9B5D: FLdPr Me
  loc_BF9B60: MemLdRfVar from_stack_1.global_60
  loc_BF9B63: LdPrVar
  loc_BF9B65: LateMemCall
  loc_BF9B6B: LitVarStr var_94, "    <th>Fecha de Vto.</th>"
  loc_BF9B70: PopAdLdVar
  loc_BF9B71: FLdPr Me
  loc_BF9B74: MemLdRfVar from_stack_1.global_60
  loc_BF9B77: LdPrVar
  loc_BF9B79: LateMemCall
  loc_BF9B7F: LitVarStr var_94, "    <th>Aforo</th>"
  loc_BF9B84: PopAdLdVar
  loc_BF9B85: FLdPr Me
  loc_BF9B88: MemLdRfVar from_stack_1.global_60
  loc_BF9B8B: LdPrVar
  loc_BF9B8D: LateMemCall
  loc_BF9B93: LitVarStr var_94, "    <th>Creditos</th>"
  loc_BF9B98: PopAdLdVar
  loc_BF9B99: FLdPr Me
  loc_BF9B9C: MemLdRfVar from_stack_1.global_60
  loc_BF9B9F: LdPrVar
  loc_BF9BA1: LateMemCall
  loc_BF9BA7: LitVarStr var_94, "    <th>Desc.</th>"
  loc_BF9BAC: PopAdLdVar
  loc_BF9BAD: FLdPr Me
  loc_BF9BB0: MemLdRfVar from_stack_1.global_60
  loc_BF9BB3: LdPrVar
  loc_BF9BB5: LateMemCall
  loc_BF9BBB: LitVarStr var_94, "    <th>Pagos</th>"
  loc_BF9BC0: PopAdLdVar
  loc_BF9BC1: FLdPr Me
  loc_BF9BC4: MemLdRfVar from_stack_1.global_60
  loc_BF9BC7: LdPrVar
  loc_BF9BC9: LateMemCall
  loc_BF9BCF: LitVarStr var_94, "    <th>Total</th>"
  loc_BF9BD4: PopAdLdVar
  loc_BF9BD5: FLdPr Me
  loc_BF9BD8: MemLdRfVar from_stack_1.global_60
  loc_BF9BDB: LdPrVar
  loc_BF9BDD: LateMemCall
  loc_BF9BE3: LitVarStr var_94, "  </tr>"
  loc_BF9BE8: PopAdLdVar
  loc_BF9BE9: FLdPr Me
  loc_BF9BEC: MemLdRfVar from_stack_1.global_60
  loc_BF9BEF: LdPrVar
  loc_BF9BF1: LateMemCall
  loc_BF9BF7: LitVarStr var_94, "  </thead>"
  loc_BF9BFC: PopAdLdVar
  loc_BF9BFD: FLdPr Me
  loc_BF9C00: MemLdRfVar from_stack_1.global_60
  loc_BF9C03: LdPrVar
  loc_BF9C05: LateMemCall
  loc_BF9C0B: ExitProcHresult
End Function

Private Function Proc_180_28_9F5DB4() '9F5DB4
  'Data Table: 495164
  loc_9F5D88: LitVarStr var_94, "</body>"
  loc_9F5D8D: PopAdLdVar
  loc_9F5D8E: FLdPr Me
  loc_9F5D91: MemLdRfVar from_stack_1.global_60
  loc_9F5D94: LdPrVar
  loc_9F5D96: LateMemCall
  loc_9F5D9C: LitVarStr var_94, "</html>"
  loc_9F5DA1: PopAdLdVar
  loc_9F5DA2: FLdPr Me
  loc_9F5DA5: MemLdRfVar from_stack_1.global_60
  loc_9F5DA8: LdPrVar
  loc_9F5DAA: LateMemCall
  loc_9F5DB0: ExitProcHresult
  loc_9F5DB1: ILdRf arg_61FF
End Function
