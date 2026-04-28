VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadoServiciodeDerechosVarios
  Caption = "Listado de Servicio de Derechos Varios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadoServiciodeDerechosVarios.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10476
  ClientHeight = 5604
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
  Begin VB.CheckBox ResumenPorServicioChk
    Caption = "Resumen por servicio"
    Left = 7440
    Top = 3240
    Width = 2775
    Height = 375
    TabIndex = 7
  End
  Begin VB.CheckBox PagadoyActualizadoChk
    Caption = "Pagados y Actualizados"
    Left = 360
    Top = 3240
    Width = 2895
    Height = 375
    TabIndex = 6
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5355
    Width = 10470
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptListadoServiciodeDerechosVarios.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8880
    Top = 4320
    Width = 855
    Height = 735
    TabIndex = 12
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
    Picture = "rptListadoServiciodeDerechosVarios.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadoServiciodeDerechosVarios.frx":0B9C
    Left = 8880
    Top = 4440
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3960
    Width = 3372
    Height = 1215
    TabIndex = 15
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 26
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3960
    Width = 4095
    Height = 1215
    TabIndex = 14
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
    Width = 10215
    Height = 3015
    TabIndex = 13
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
      Caption = "Servicio"
      Left = 240
      Top = 1320
      Width = 9735
      Height = 1455
      TabIndex = 21
      Begin MSMask.MaskEdBox CodiSedeDesdeMsk
        Left = 1080
        Top = 360
        Width = 615
        Height = 360
        TabIndex = 4
        OleObjectBlob = "rptListadoServiciodeDerechosVarios.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiSedeHastaMsk
        Left = 1080
        Top = 840
        Width = 615
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptListadoServiciodeDerechosVarios.frx":0C8E
      End
      Begin VB.Label DetaSedeHastaLbl
        Left = 1800
        Top = 840
        Width = 7695
        Height = 375
        TabIndex = 25
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label1
        Caption = "Hasta:"
        Left = 270
        Top = 840
        Width = 705
        Height = 300
        TabIndex = 24
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
      Begin VB.Label DetaSedeDesdeLbl
        Left = 1800
        Top = 360
        Width = 7695
        Height = 375
        TabIndex = 23
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label2
        Caption = "Desde:"
        Left = 210
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 22
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame FechaFra
      Caption = "Fecha"
      Left = 240
      Top = 240
      Width = 7815
      Height = 975
      TabIndex = 18
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2520
        Top = 360
        Width = 375
        Height = 375
        TabIndex = 1
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptListadoServiciodeDerechosVarios.frx":0D1C
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 6960
        Top = 405
        Width = 375
        Height = 375
        TabIndex = 3
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptListadoServiciodeDerechosVarios.frx":125E
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FealBoleDesdeMsk
        Left = 1080
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptListadoServiciodeDerechosVarios.frx":17A0
      End
      Begin MSMask.MaskEdBox FealBoleHastaMsk
        Left = 5520
        Top = 405
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptListadoServiciodeDerechosVarios.frx":1850
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 240
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 20
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 4740
        Top = 405
        Width = 705
        Height = 300
        TabIndex = 19
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8400
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 11
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9120
    Top = 4680
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptListadoServiciodeDerechosVarios.frx":1900
  End
End

Attribute VB_Name = "rptListadoServiciodeDerechosVarios"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type

Private Type UDT_3_005665C4
  bStruc(52) As Byte ' String fields: 4
End Type


Private Sub CodiSedeHastaMsk_UnknownEvent_0 '9C5930
  'Data Table: 4D34E0
  loc_9C591C: FLdPr Me
  loc_9C591F: VCallAd Control_ID_CodiSedeHastaMsk
  loc_9C5922: CVarAd
  loc_9C5926: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C592B: FFree1Var var_94 = ""
  loc_9C592E: ExitProcHresult
End Sub

Private Sub CodiSedeHastaMsk_UnknownEvent_8 'AAC434
  'Data Table: 4D34E0
  loc_AAC368: FLdPr Me
  loc_AAC36B: VCallAd Control_ID_CodiSedeHastaMsk
  loc_AAC36E: FStAdFunc var_88
  loc_AAC371: FLdPr var_88
  loc_AAC374: LateIdLdVar var_98 DispID_22 0
  loc_AAC37B: PopAd
  loc_AAC37D: LitI2_Byte 0
  loc_AAC37F: LitI2_Byte 0
  loc_AAC381: FLdRfVar var_98
  loc_AAC384: CStrVarTmp
  loc_AAC385: FStStrNoPop var_9C
  loc_AAC388: LitStr "Código de Servicio"
  loc_AAC38B: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AAC390: FStStrNoPop var_A0
  loc_AAC393: FLdPr Me
  loc_AAC396: MemStStrCopy
  loc_AAC39A: FFreeStr var_9C = ""
  loc_AAC3A1: FFree1Ad var_88
  loc_AAC3A4: FFree1Var var_98 = ""
  loc_AAC3A7: FLdPr Me
  loc_AAC3AA: VCallAd Control_ID_CodiSedeHastaMsk
  loc_AAC3AD: FStAdFuncNoPop
  loc_AAC3B0: CastAd
  loc_AAC3B3: FStAdFunc var_A4
  loc_AAC3B6: FLdRfVar var_A4
  loc_AAC3B9: FLdPr Me
  loc_AAC3BC: MemLdStr global_104
  loc_AAC3BF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AAC3C4: IStI2 Cancel
  loc_AAC3C7: FFreeAd var_88 = ""
  loc_AAC3CE: ILdI2 Cancel
  loc_AAC3D1: NotI4
  loc_AAC3D2: BranchF loc_AAC41B
  loc_AAC3D5: FLdPr Me
  loc_AAC3D8: VCallAd Control_ID_CodiSedeHastaMsk
  loc_AAC3DB: FStAdFunc var_88
  loc_AAC3DE: FLdPr var_88
  loc_AAC3E1: LateIdLdVar var_98 DispID_22 0
  loc_AAC3E8: CStrVarTmp
  loc_AAC3E9: FStStrNoPop var_9C
  loc_AAC3EC: CI2Str
  loc_AAC3EE: ImpAdCallI2 Proc_270_79_A8B520()
  loc_AAC3F3: FStStrNoPop var_A0
  loc_AAC3F6: FLdPr Me
  loc_AAC3F9: VCallAd Control_ID_DetaSedeHastaLbl
  loc_AAC3FC: FStAdFunc var_A4
  loc_AAC3FF: FLdPr var_A4
  loc_AAC402: Me.Caption = from_stack_1
  loc_AAC407: FFreeStr var_9C = ""
  loc_AAC40E: FFreeAd var_88 = ""
  loc_AAC415: FFree1Var var_98 = ""
  loc_AAC418: Branch loc_AAC432
  loc_AAC41B: LitStr vbNullString
  loc_AAC41E: FLdPr Me
  loc_AAC421: VCallAd Control_ID_DetaSedeHastaLbl
  loc_AAC424: FStAdFunc var_88
  loc_AAC427: FLdPr var_88
  loc_AAC42A: Me.Caption = from_stack_1
  loc_AAC42F: FFree1Ad var_88
  loc_AAC432: ExitProcHresult
End Sub

Private Sub CodiSedeHastaMsk_KeyPress(KeyAscii As Integer) 'AE428C
  'Data Table: 4D34E0
  loc_AE4134: ILdI2 KeyAscii
  loc_AE4137: CI4UI1
  loc_AE4138: LitI4 &H20
  loc_AE413D: EqI4
  loc_AE413E: BranchF loc_AE428B
  loc_AE4141: LitStr "0"
  loc_AE4144: CUI1Str
  loc_AE4146: ImpAdLdRf MemVar_D94A24
  loc_AE4149: NewIfNullPr dlgBuscarServDeva
  loc_AE414C: Call dlgBuscarServDeva.byCtctSedePut(from_stack_1v)
  loc_AE4151: LitI2_Byte 3
  loc_AE4153: CUI1I2
  loc_AE4155: ImpAdLdRf MemVar_D94A24
  loc_AE4158: NewIfNullPr dlgBuscarServDeva
  loc_AE415B: Call dlgBuscarServDeva.byCodiOficPut(from_stack_1v)
  loc_AE4160: ImpAdLdRf MemVar_D94A24
  loc_AE4163: NewIfNullAd
  loc_AE4166: FStAd var_88 
  loc_AE416A: LitVar_Missing var_A8
  loc_AE416D: PopAdLdVar
  loc_AE416E: LitVarI4
  loc_AE4176: PopAdLdVar
  loc_AE4177: FLdPr var_88
  loc_AE417A: dlgBuscarServDeva.Show from_stack_1, from_stack_2
  loc_AE417F: FLdRfVar var_B4
  loc_AE4182: FLdRfVar var_B0
  loc_AE4185: FLdRfVar var_AC
  loc_AE4188: FLdPr var_88
  loc_AE418B: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_AE4190: FLdPr var_AC
  loc_AE4193: from_stack_1v = clsbase.RsFrmGet()
  loc_AE4198: FLdPr var_B0
  loc_AE419B:  = Me.RecordCount
  loc_AE41A0: ILdRf var_B4
  loc_AE41A3: LitI4 0
  loc_AE41A8: GtI4
  loc_AE41A9: FFreeAd var_AC = ""
  loc_AE41B0: BranchF loc_AE4285
  loc_AE41B3: FLdRfVar var_CC
  loc_AE41B6: FLdRfVar var_BC
  loc_AE41B9: LitVarStr var_98, "CodiSede"
  loc_AE41BE: PopAdLdVar
  loc_AE41BF: FLdRfVar var_B8
  loc_AE41C2: FLdRfVar var_B0
  loc_AE41C5: FLdRfVar var_AC
  loc_AE41C8: FLdPr var_88
  loc_AE41CB: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_AE41D0: FLdPr var_AC
  loc_AE41D3: from_stack_1v = clsbase.RsFrmGet()
  loc_AE41D8: FLdPr var_B0
  loc_AE41DB:  = Me.Fields
  loc_AE41E0: FLdPr var_B8
  loc_AE41E3: from_stack_2 = Me.Item(from_stack_1)
  loc_AE41E8: FLdPr var_BC
  loc_AE41EB:  = Me.Value
  loc_AE41F0: FLdRfVar var_CC
  loc_AE41F3: CStrVarTmp
  loc_AE41F4: CVarStr var_DC
  loc_AE41F7: PopAdLdVar
  loc_AE41F8: FLdPr Me
  loc_AE41FB: VCallAd Control_ID_CodiSedeHastaMsk
  loc_AE41FE: FStAdFunc var_E0
  loc_AE4201: FLdPr var_E0
  loc_AE4204: LateIdSt
  loc_AE4209: FFreeAd var_AC = "": var_B0 = "": var_B8 = "": var_BC = ""
  loc_AE4216: FFreeVar var_CC = ""
  loc_AE421D: FLdRfVar var_CC
  loc_AE4220: FLdRfVar var_BC
  loc_AE4223: LitVarStr var_98, "DetaSede"
  loc_AE4228: PopAdLdVar
  loc_AE4229: FLdRfVar var_B8
  loc_AE422C: FLdRfVar var_B0
  loc_AE422F: FLdRfVar var_AC
  loc_AE4232: FLdPr var_88
  loc_AE4235: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_AE423A: FLdPr var_AC
  loc_AE423D: from_stack_1v = clsbase.RsFrmGet()
  loc_AE4242: FLdPr var_B0
  loc_AE4245:  = Me.Fields
  loc_AE424A: FLdPr var_B8
  loc_AE424D: from_stack_2 = Me.Item(from_stack_1)
  loc_AE4252: FLdPr var_BC
  loc_AE4255:  = Me.Value
  loc_AE425A: FLdRfVar var_CC
  loc_AE425D: CStrVarTmp
  loc_AE425E: FStStrNoPop var_E4
  loc_AE4261: FLdPr Me
  loc_AE4264: VCallAd Control_ID_DetaSedeHastaLbl
  loc_AE4267: FStAdFunc var_E0
  loc_AE426A: FLdPr var_E0
  loc_AE426D: Me.Caption = from_stack_1
  loc_AE4272: FFree1Str var_E4
  loc_AE4275: FFreeAd var_AC = "": var_B0 = "": var_B8 = "": var_BC = ""
  loc_AE4282: FFree1Var var_CC = ""
  loc_AE4285: LitNothing
  loc_AE4287: FStAd var_88 
  loc_AE428B: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0D2B4
  'Data Table: 4D34E0
  loc_A0D278: LitVar_Missing var_A4
  loc_A0D27B: PopAdLdVar
  loc_A0D27C: LitVarI4
  loc_A0D284: PopAdLdVar
  loc_A0D285: ImpAdLdRf MemVar_D930A4
  loc_A0D288: NewIfNullPr frmCalendario
  loc_A0D28B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0D290: ImpAdLdRf MemVar_D93028
  loc_A0D293: CDargRef
  loc_A0D297: FLdPr Me
  loc_A0D29A: VCallAd Control_ID_FealBoleDesdeMsk
  loc_A0D29D: FStAdFunc var_A8
  loc_A0D2A0: FLdPr var_A8
  loc_A0D2A3: LateIdSt
  loc_A0D2A8: FFree1Ad var_A8
  loc_A0D2AB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0D2B0: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0BFE4
  'Data Table: 4D34E0
  loc_A0BFA8: LitVar_Missing var_A4
  loc_A0BFAB: PopAdLdVar
  loc_A0BFAC: LitVarI4
  loc_A0BFB4: PopAdLdVar
  loc_A0BFB5: ImpAdLdRf MemVar_D930A4
  loc_A0BFB8: NewIfNullPr frmCalendario
  loc_A0BFBB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0BFC0: ImpAdLdRf MemVar_D93028
  loc_A0BFC3: CDargRef
  loc_A0BFC7: FLdPr Me
  loc_A0BFCA: VCallAd Control_ID_FealBoleHastaMsk
  loc_A0BFCD: FStAdFunc var_A8
  loc_A0BFD0: FLdPr var_A8
  loc_A0BFD3: LateIdSt
  loc_A0BFD8: FFree1Ad var_A8
  loc_A0BFDB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0BFE0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CBDB4
  'Data Table: 4D34E0
  loc_9CBD9C: LitI2_Byte 0
  loc_9CBD9E: ILdRf Me
  loc_9CBDA1: CastAd
  loc_9CBDA4: FStAdFunc var_88
  loc_9CBDA7: FLdRfVar var_88
  loc_9CBDAA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CBDAF: FFree1Ad var_88
  loc_9CBDB2: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CBD68
  'Data Table: 4D34E0
  loc_9CBD50: ILdRf Me
  loc_9CBD53: CastAd
  loc_9CBD56: FStAdFunc var_88
  loc_9CBD59: FLdRfVar var_88
  loc_9CBD5C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CBD61: FFree1Ad var_88
  loc_9CBD64: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E0CDC
  'Data Table: 4D34E0
  loc_9E0CC0: LitI2_Byte &HFF
  loc_9E0CC2: LitI2_Byte 0
  loc_9E0CC4: ILdRf Me
  loc_9E0CC7: CastAd
  loc_9E0CCA: FStAdFunc var_88
  loc_9E0CCD: FLdRfVar var_88
  loc_9E0CD0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E0CD5: FFree1Ad var_88
  loc_9E0CD8: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E118C
  'Data Table: 4D34E0
  loc_9E1170: LitI2_Byte 0
  loc_9E1172: PopTmpLdAd2 var_8A
  loc_9E1175: ILdRf Me
  loc_9E1178: CastAd
  loc_9E117B: FStAdFunc var_88
  loc_9E117E: FLdRfVar var_88
  loc_9E1181: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1186: FFree1Ad var_88
  loc_9E1189: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A184D8
  'Data Table: 4D34E0
  loc_A184A0: FLdPr Me
  loc_A184A3: VCallAd Control_ID_statusBar
  loc_A184A6: FStAdFunc var_88
  loc_A184A9: FLdPr var_88
  loc_A184AC: LateIdLdVar var_98 DispID_1 0
  loc_A184B3: CStrVarTmp
  loc_A184B4: CVarStr var_A8
  loc_A184B7: PopAdLdVar
  loc_A184B8: FLdPr Me
  loc_A184BB: VCallAd Control_ID_statusBar
  loc_A184BE: FStAdFunc var_BC
  loc_A184C1: FLdPr var_BC
  loc_A184C4: LateIdSt
  loc_A184C9: FFreeAd var_88 = ""
  loc_A184D0: FFreeVar var_98 = ""
  loc_A184D7: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ACF2DC
  'Data Table: 4D34E0
  loc_ACF1B0: LitI2_Byte 0
  loc_ACF1B2: FLdPr Me
  loc_ACF1B5: MemStI2 bGenerado
  loc_ACF1B8: LitI2_Byte &HFF
  loc_ACF1BA: FLdPr Me
  loc_ACF1BD: MemStI2 bLogos
  loc_ACF1C0: LitI2_Byte 0
  loc_ACF1C2: ILdRf Me
  loc_ACF1C5: CastAd
  loc_ACF1C8: FStAdFunc var_88
  loc_ACF1CB: FLdRfVar var_88
  loc_ACF1CE: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_ACF1D3: FFree1Ad var_88
  loc_ACF1D6: LitI2_Byte 0
  loc_ACF1D8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ACF1DD: CStrDate
  loc_ACF1DF: CVarStr var_98
  loc_ACF1E2: PopAdLdVar
  loc_ACF1E3: FLdPr Me
  loc_ACF1E6: VCallAd Control_ID_FealBoleDesdeMsk
  loc_ACF1E9: FStAdFunc var_88
  loc_ACF1EC: FLdPr var_88
  loc_ACF1EF: LateIdSt
  loc_ACF1F4: FFree1Ad var_88
  loc_ACF1F7: FFree1Var var_98 = ""
  loc_ACF1FA: FLdPr Me
  loc_ACF1FD: VCallAd Control_ID_FealBoleDesdeMsk
  loc_ACF200: FStAdFunc var_88
  loc_ACF203: FLdPr var_88
  loc_ACF206: LateIdLdVar var_98 DispID_22 0
  loc_ACF20D: CStrVarTmp
  loc_ACF20E: CVarStr var_B8
  loc_ACF211: PopAdLdVar
  loc_ACF212: FLdPr Me
  loc_ACF215: VCallAd Control_ID_FealBoleHastaMsk
  loc_ACF218: FStAdFunc var_BC
  loc_ACF21B: FLdPr var_BC
  loc_ACF21E: LateIdSt
  loc_ACF223: FFreeAd var_88 = ""
  loc_ACF22A: FFreeVar var_98 = ""
  loc_ACF231: LitVarStr var_A8, vbNullString
  loc_ACF236: PopAdLdVar
  loc_ACF237: FLdPr Me
  loc_ACF23A: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_ACF23D: FStAdFunc var_88
  loc_ACF240: FLdPr var_88
  loc_ACF243: LateIdSt
  loc_ACF248: FFree1Ad var_88
  loc_ACF24B: LitVarStr var_A8, vbNullString
  loc_ACF250: PopAdLdVar
  loc_ACF251: FLdPr Me
  loc_ACF254: VCallAd Control_ID_CodiSedeHastaMsk
  loc_ACF257: FStAdFunc var_88
  loc_ACF25A: FLdPr var_88
  loc_ACF25D: LateIdSt
  loc_ACF262: FFree1Ad var_88
  loc_ACF265: LitStr vbNullString
  loc_ACF268: FLdPr Me
  loc_ACF26B: VCallAd Control_ID_DetaSedeDesdeLbl
  loc_ACF26E: FStAdFunc var_88
  loc_ACF271: FLdPr var_88
  loc_ACF274: Me.Caption = from_stack_1
  loc_ACF279: FFree1Ad var_88
  loc_ACF27C: LitStr vbNullString
  loc_ACF27F: FLdPr Me
  loc_ACF282: VCallAd Control_ID_DetaSedeHastaLbl
  loc_ACF285: FStAdFunc var_88
  loc_ACF288: FLdPr var_88
  loc_ACF28B: Me.Caption = from_stack_1
  loc_ACF290: FFree1Ad var_88
  loc_ACF293: LitI2_Byte 0
  loc_ACF295: FLdPr Me
  loc_ACF298: VCallAd Control_ID_PagadoyActualizadoChk
  loc_ACF29B: FStAdFunc var_88
  loc_ACF29E: FLdPr var_88
  loc_ACF2A1: Me.Value = from_stack_1
  loc_ACF2A6: FFree1Ad var_88
  loc_ACF2A9: LitI2_Byte 1
  loc_ACF2AB: FLdPr Me
  loc_ACF2AE: VCallAd Control_ID_ResumenPorServicioChk
  loc_ACF2B1: FStAdFunc var_88
  loc_ACF2B4: FLdPr var_88
  loc_ACF2B7: Me.Value = from_stack_1
  loc_ACF2BC: FFree1Ad var_88
  loc_ACF2BF: Call HabilitarCriterio()
  loc_ACF2C4: ILdRf Me
  loc_ACF2C7: CastAd
  loc_ACF2CA: FStAdFunc var_88
  loc_ACF2CD: FLdRfVar var_88
  loc_ACF2D0: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ACF2D5: FFree1Ad var_88
  loc_ACF2D8: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A04318
  'Data Table: 4D34E0
  loc_A042E8: LitVarStr var_94, "Cerrando..."
  loc_A042ED: PopAdLdVar
  loc_A042EE: FLdPr Me
  loc_A042F1: VCallAd Control_ID_statusBar
  loc_A042F4: FStAdFunc var_A8
  loc_A042F7: FLdPr var_A8
  loc_A042FA: LateIdSt
  loc_A042FF: FFree1Ad var_A8
  loc_A04302: ILdRf Me
  loc_A04305: FStAdNoPop
  loc_A04309: ImpAdLdRf MemVar_D9C5D8
  loc_A0430C: NewIfNullPr Global
  loc_A0430F: Global.Unload from_stack_1
  loc_A04314: FFree1Ad var_A8
  loc_A04317: ExitProcHresult
End Sub

Private Sub Form_Load() '9E0FAC
  'Data Table: 4D34E0
  loc_9E0F90: ILdRf Me
  loc_9E0F93: CastAd
  loc_9E0F96: FStAdFunc var_88
  loc_9E0F99: FLdRfVar var_88
  loc_9E0F9C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E0FA1: FFree1Ad var_88
  loc_9E0FA4: Call cmdNueva_Click()
  loc_9E0FA9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC014
  'Data Table: 4D34E0
  loc_9CBFFC: FLdPr Me
  loc_9CBFFF: VCallAd Control_ID_wbbReporte
  loc_9CC002: FStAdFunc var_88
  loc_9CC005: FLdRfVar var_88
  loc_9CC008: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC00D: FFree1Ad var_88
  loc_9CC010: ExitProcHresult
End Sub

Private Sub FealBoleDesdeMsk_UnknownEvent_0 '9C5A08
  'Data Table: 4D34E0
  loc_9C59F4: FLdPr Me
  loc_9C59F7: VCallAd Control_ID_FealBoleDesdeMsk
  loc_9C59FA: CVarAd
  loc_9C59FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5A03: FFree1Var var_94 = ""
  loc_9C5A06: ExitProcHresult
End Sub

Private Sub FealBoleDesdeMsk_UnknownEvent_8 'A65820
  'Data Table: 4D34E0
  loc_A657C4: FLdPr Me
  loc_A657C7: VCallAd Control_ID_FealBoleDesdeMsk
  loc_A657CA: FStAdFunc var_88
  loc_A657CD: FLdPr var_88
  loc_A657D0: LateIdLdVar var_98 DispID_15 0
  loc_A657D7: CStrVarTmp
  loc_A657D8: FStStrNoPop var_9C
  loc_A657DB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A657E0: FStStrNoPop var_A0
  loc_A657E3: FLdPr Me
  loc_A657E6: MemStStrCopy
  loc_A657EA: FFreeStr var_9C = ""
  loc_A657F1: FFree1Ad var_88
  loc_A657F4: FFree1Var var_98 = ""
  loc_A657F7: FLdPr Me
  loc_A657FA: VCallAd Control_ID_FealBoleDesdeMsk
  loc_A657FD: FStAdFuncNoPop
  loc_A65800: CastAd
  loc_A65803: FStAdFunc var_A4
  loc_A65806: FLdRfVar var_A4
  loc_A65809: FLdPr Me
  loc_A6580C: MemLdStr global_104
  loc_A6580F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65814: IStI2 Cancel
  loc_A65817: FFreeAd var_88 = ""
  loc_A6581E: ExitProcHresult
End Sub

Private Sub FealBoleHastaMsk_UnknownEvent_0 '9C59C0
  'Data Table: 4D34E0
  loc_9C59AC: FLdPr Me
  loc_9C59AF: VCallAd Control_ID_FealBoleHastaMsk
  loc_9C59B2: CVarAd
  loc_9C59B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C59BB: FFree1Var var_94 = ""
  loc_9C59BE: ExitProcHresult
End Sub

Private Sub FealBoleHastaMsk_UnknownEvent_8 'ACAC04
  'Data Table: 4D34E0
  loc_ACAB04: FLdPr Me
  loc_ACAB07: VCallAd Control_ID_FealBoleHastaMsk
  loc_ACAB0A: FStAdFunc var_88
  loc_ACAB0D: FLdPr var_88
  loc_ACAB10: LateIdLdVar var_98 DispID_15 0
  loc_ACAB17: CStrVarTmp
  loc_ACAB18: FStStrNoPop var_9C
  loc_ACAB1B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_ACAB20: FStStrNoPop var_A0
  loc_ACAB23: FLdPr Me
  loc_ACAB26: MemStStrCopy
  loc_ACAB2A: FFreeStr var_9C = ""
  loc_ACAB31: FFree1Ad var_88
  loc_ACAB34: FFree1Var var_98 = ""
  loc_ACAB37: FLdPr Me
  loc_ACAB3A: VCallAd Control_ID_FealBoleHastaMsk
  loc_ACAB3D: FStAdFuncNoPop
  loc_ACAB40: CastAd
  loc_ACAB43: FStAdFunc var_A4
  loc_ACAB46: FLdRfVar var_A4
  loc_ACAB49: FLdPr Me
  loc_ACAB4C: MemLdStr global_104
  loc_ACAB4F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACAB54: IStI2 Cancel
  loc_ACAB57: FFreeAd var_88 = ""
  loc_ACAB5E: ILdI2 Cancel
  loc_ACAB61: NotI4
  loc_ACAB62: BranchF loc_ACAC02
  loc_ACAB65: FLdPr Me
  loc_ACAB68: VCallAd Control_ID_FealBoleDesdeMsk
  loc_ACAB6B: FStAdFunc var_88
  loc_ACAB6E: FLdPr var_88
  loc_ACAB71: LateIdLdVar var_98 DispID_15 0
  loc_ACAB78: CStrVarTmp
  loc_ACAB79: CVarStr var_B4
  loc_ACAB7C: FLdRfVar var_C4
  loc_ACAB7F: ImpAdCallFPR4  = Year()
  loc_ACAB84: FLdRfVar var_C4
  loc_ACAB87: FLdPr Me
  loc_ACAB8A: VCallAd Control_ID_FealBoleHastaMsk
  loc_ACAB8D: FStAdFunc var_A4
  loc_ACAB90: FLdPr var_A4
  loc_ACAB93: LateIdLdVar var_D4 DispID_15 0
  loc_ACAB9A: CStrVarTmp
  loc_ACAB9B: CVarStr var_E4
  loc_ACAB9E: FLdRfVar var_F4
  loc_ACABA1: ImpAdCallFPR4  = Year()
  loc_ACABA6: FLdRfVar var_F4
  loc_ACABA9: NeVarBool
  loc_ACABAB: FFreeAd var_88 = ""
  loc_ACABB2: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_ACABC1: BranchF loc_ACABD1
  loc_ACABC4: LitStr "Las fechas deben ser del mismo periodo"
  loc_ACABC7: FLdPr Me
  loc_ACABCA: MemStStrCopy
  loc_ACABCE: Branch loc_ACABDB
  loc_ACABD1: LitStr vbNullString
  loc_ACABD4: FLdPr Me
  loc_ACABD7: MemStStrCopy
  loc_ACABDB: FLdPr Me
  loc_ACABDE: VCallAd Control_ID_FealBoleDesdeMsk
  loc_ACABE1: FStAdFuncNoPop
  loc_ACABE4: CastAd
  loc_ACABE7: FStAdFunc var_A4
  loc_ACABEA: FLdRfVar var_A4
  loc_ACABED: FLdPr Me
  loc_ACABF0: MemLdStr global_104
  loc_ACABF3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACABF8: IStI2 Cancel
  loc_ACABFB: FFreeAd var_88 = ""
  loc_ACAC02: ExitProcHresult
End Sub

Private Sub CodiSedeDesdeMsk_UnknownEvent_0 '9C5A50
  'Data Table: 4D34E0
  loc_9C5A3C: FLdPr Me
  loc_9C5A3F: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_9C5A42: CVarAd
  loc_9C5A46: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5A4B: FFree1Var var_94 = ""
  loc_9C5A4E: ExitProcHresult
End Sub

Private Sub CodiSedeDesdeMsk_UnknownEvent_8 'AADCA4
  'Data Table: 4D34E0
  loc_AADBD8: FLdPr Me
  loc_AADBDB: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_AADBDE: FStAdFunc var_88
  loc_AADBE1: FLdPr var_88
  loc_AADBE4: LateIdLdVar var_98 DispID_22 0
  loc_AADBEB: PopAd
  loc_AADBED: LitI2_Byte 0
  loc_AADBEF: LitI2_Byte 0
  loc_AADBF1: FLdRfVar var_98
  loc_AADBF4: CStrVarTmp
  loc_AADBF5: FStStrNoPop var_9C
  loc_AADBF8: LitStr "Código de Servicio"
  loc_AADBFB: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AADC00: FStStrNoPop var_A0
  loc_AADC03: FLdPr Me
  loc_AADC06: MemStStrCopy
  loc_AADC0A: FFreeStr var_9C = ""
  loc_AADC11: FFree1Ad var_88
  loc_AADC14: FFree1Var var_98 = ""
  loc_AADC17: FLdPr Me
  loc_AADC1A: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_AADC1D: FStAdFuncNoPop
  loc_AADC20: CastAd
  loc_AADC23: FStAdFunc var_A4
  loc_AADC26: FLdRfVar var_A4
  loc_AADC29: FLdPr Me
  loc_AADC2C: MemLdStr global_104
  loc_AADC2F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AADC34: IStI2 Cancel
  loc_AADC37: FFreeAd var_88 = ""
  loc_AADC3E: ILdI2 Cancel
  loc_AADC41: NotI4
  loc_AADC42: BranchF loc_AADC8B
  loc_AADC45: FLdPr Me
  loc_AADC48: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_AADC4B: FStAdFunc var_88
  loc_AADC4E: FLdPr var_88
  loc_AADC51: LateIdLdVar var_98 DispID_22 0
  loc_AADC58: CStrVarTmp
  loc_AADC59: FStStrNoPop var_9C
  loc_AADC5C: CI2Str
  loc_AADC5E: ImpAdCallI2 Proc_270_79_A8B520()
  loc_AADC63: FStStrNoPop var_A0
  loc_AADC66: FLdPr Me
  loc_AADC69: VCallAd Control_ID_DetaSedeDesdeLbl
  loc_AADC6C: FStAdFunc var_A4
  loc_AADC6F: FLdPr var_A4
  loc_AADC72: Me.Caption = from_stack_1
  loc_AADC77: FFreeStr var_9C = ""
  loc_AADC7E: FFreeAd var_88 = ""
  loc_AADC85: FFree1Var var_98 = ""
  loc_AADC88: Branch loc_AADCA2
  loc_AADC8B: LitStr vbNullString
  loc_AADC8E: FLdPr Me
  loc_AADC91: VCallAd Control_ID_DetaSedeDesdeLbl
  loc_AADC94: FStAdFunc var_88
  loc_AADC97: FLdPr var_88
  loc_AADC9A: Me.Caption = from_stack_1
  loc_AADC9F: FFree1Ad var_88
  loc_AADCA2: ExitProcHresult
End Sub

Private Sub CodiSedeDesdeMsk_KeyPress(KeyAscii As Integer) 'AE3D88
  'Data Table: 4D34E0
  loc_AE3C30: ILdI2 KeyAscii
  loc_AE3C33: CI4UI1
  loc_AE3C34: LitI4 &H20
  loc_AE3C39: EqI4
  loc_AE3C3A: BranchF loc_AE3D87
  loc_AE3C3D: LitStr "0"
  loc_AE3C40: CUI1Str
  loc_AE3C42: ImpAdLdRf MemVar_D94A24
  loc_AE3C45: NewIfNullPr dlgBuscarServDeva
  loc_AE3C48: Call dlgBuscarServDeva.byCtctSedePut(from_stack_1v)
  loc_AE3C4D: LitI2_Byte 3
  loc_AE3C4F: CUI1I2
  loc_AE3C51: ImpAdLdRf MemVar_D94A24
  loc_AE3C54: NewIfNullPr dlgBuscarServDeva
  loc_AE3C57: Call dlgBuscarServDeva.byCodiOficPut(from_stack_1v)
  loc_AE3C5C: ImpAdLdRf MemVar_D94A24
  loc_AE3C5F: NewIfNullAd
  loc_AE3C62: FStAd var_88 
  loc_AE3C66: LitVar_Missing var_A8
  loc_AE3C69: PopAdLdVar
  loc_AE3C6A: LitVarI4
  loc_AE3C72: PopAdLdVar
  loc_AE3C73: FLdPr var_88
  loc_AE3C76: dlgBuscarServDeva.Show from_stack_1, from_stack_2
  loc_AE3C7B: FLdRfVar var_B4
  loc_AE3C7E: FLdRfVar var_B0
  loc_AE3C81: FLdRfVar var_AC
  loc_AE3C84: FLdPr var_88
  loc_AE3C87: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_AE3C8C: FLdPr var_AC
  loc_AE3C8F: from_stack_1v = clsbase.RsFrmGet()
  loc_AE3C94: FLdPr var_B0
  loc_AE3C97:  = Me.RecordCount
  loc_AE3C9C: ILdRf var_B4
  loc_AE3C9F: LitI4 0
  loc_AE3CA4: GtI4
  loc_AE3CA5: FFreeAd var_AC = ""
  loc_AE3CAC: BranchF loc_AE3D81
  loc_AE3CAF: FLdRfVar var_CC
  loc_AE3CB2: FLdRfVar var_BC
  loc_AE3CB5: LitVarStr var_98, "CodiSede"
  loc_AE3CBA: PopAdLdVar
  loc_AE3CBB: FLdRfVar var_B8
  loc_AE3CBE: FLdRfVar var_B0
  loc_AE3CC1: FLdRfVar var_AC
  loc_AE3CC4: FLdPr var_88
  loc_AE3CC7: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_AE3CCC: FLdPr var_AC
  loc_AE3CCF: from_stack_1v = clsbase.RsFrmGet()
  loc_AE3CD4: FLdPr var_B0
  loc_AE3CD7:  = Me.Fields
  loc_AE3CDC: FLdPr var_B8
  loc_AE3CDF: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3CE4: FLdPr var_BC
  loc_AE3CE7:  = Me.Value
  loc_AE3CEC: FLdRfVar var_CC
  loc_AE3CEF: CStrVarTmp
  loc_AE3CF0: CVarStr var_DC
  loc_AE3CF3: PopAdLdVar
  loc_AE3CF4: FLdPr Me
  loc_AE3CF7: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_AE3CFA: FStAdFunc var_E0
  loc_AE3CFD: FLdPr var_E0
  loc_AE3D00: LateIdSt
  loc_AE3D05: FFreeAd var_AC = "": var_B0 = "": var_B8 = "": var_BC = ""
  loc_AE3D12: FFreeVar var_CC = ""
  loc_AE3D19: FLdRfVar var_CC
  loc_AE3D1C: FLdRfVar var_BC
  loc_AE3D1F: LitVarStr var_98, "DetaSede"
  loc_AE3D24: PopAdLdVar
  loc_AE3D25: FLdRfVar var_B8
  loc_AE3D28: FLdRfVar var_B0
  loc_AE3D2B: FLdRfVar var_AC
  loc_AE3D2E: FLdPr var_88
  loc_AE3D31: from_stack_1v = dlgBuscarServDeva.global_4302748Get()
  loc_AE3D36: FLdPr var_AC
  loc_AE3D39: from_stack_1v = clsbase.RsFrmGet()
  loc_AE3D3E: FLdPr var_B0
  loc_AE3D41:  = Me.Fields
  loc_AE3D46: FLdPr var_B8
  loc_AE3D49: from_stack_2 = Me.Item(from_stack_1)
  loc_AE3D4E: FLdPr var_BC
  loc_AE3D51:  = Me.Value
  loc_AE3D56: FLdRfVar var_CC
  loc_AE3D59: CStrVarTmp
  loc_AE3D5A: FStStrNoPop var_E4
  loc_AE3D5D: FLdPr Me
  loc_AE3D60: VCallAd Control_ID_DetaSedeDesdeLbl
  loc_AE3D63: FStAdFunc var_E0
  loc_AE3D66: FLdPr var_E0
  loc_AE3D69: Me.Caption = from_stack_1
  loc_AE3D6E: FFree1Str var_E4
  loc_AE3D71: FFreeAd var_AC = "": var_B0 = "": var_B8 = "": var_BC = ""
  loc_AE3D7E: FFree1Var var_CC = ""
  loc_AE3D81: LitNothing
  loc_AE3D83: FStAd var_88 
  loc_AE3D87: ExitProcHresult
End Sub

Public Function bLogosGet() '4D479C
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4D47AB
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4D47BA
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4D47C9
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AA518C
  'Data Table: 4D34E0
  loc_AA50E8: LitI4 0
  loc_AA50ED: LitI4 7
  loc_AA50F2: FLdRfVar var_88
  loc_AA50F5: Redim
  loc_AA50FF: FLdPr Me
  loc_AA5102: VCallAd Control_ID_FealBoleDesdeMsk
  loc_AA5105: CVarAd
  loc_AA5109: ParmAry1St
  loc_AA510F: FLdPr Me
  loc_AA5112: VCallAd Control_ID_DesdeFechaCmd
  loc_AA5115: CVarAd
  loc_AA5119: ParmAry1St
  loc_AA511F: FLdPr Me
  loc_AA5122: VCallAd Control_ID_FealBoleHastaMsk
  loc_AA5125: CVarAd
  loc_AA5129: ParmAry1St
  loc_AA512F: FLdPr Me
  loc_AA5132: VCallAd Control_ID_HastaFechaCmd
  loc_AA5135: CVarAd
  loc_AA5139: ParmAry1St
  loc_AA513F: FLdPr Me
  loc_AA5142: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_AA5145: CVarAd
  loc_AA5149: ParmAry1St
  loc_AA514F: FLdPr Me
  loc_AA5152: VCallAd Control_ID_CodiSedeHastaMsk
  loc_AA5155: CVarAd
  loc_AA5159: ParmAry1St
  loc_AA515F: FLdPr Me
  loc_AA5162: VCallAd Control_ID_PagadoyActualizadoChk
  loc_AA5165: CVarAd
  loc_AA5169: ParmAry1St
  loc_AA516F: FLdPr Me
  loc_AA5172: VCallAd Control_ID_ResumenPorServicioChk
  loc_AA5175: CVarAd
  loc_AA5179: ParmAry1St
  loc_AA517F: FLdRfVar var_88
  loc_AA5182: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA5187: FLdRfVar var_88
  loc_AA518A: Erase
  loc_AA518B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BFA4A0
  'Data Table: 4D34E0
  loc_BF9C68: FLdPr Me
  loc_BF9C6B: MemLdI2 bGenerado
  loc_BF9C6E: BranchF loc_BF9C72
  loc_BF9C71: ExitProcHresult
  loc_BF9C72: LitVarStr var_98, "Generando reporte..."
  loc_BF9C77: PopAdLdVar
  loc_BF9C78: FLdPr Me
  loc_BF9C7B: VCallAd Control_ID_statusBar
  loc_BF9C7E: FStAdFunc var_AC
  loc_BF9C81: FLdPr var_AC
  loc_BF9C84: LateIdSt
  loc_BF9C89: FFree1Ad var_AC
  loc_BF9C8C: LitI4 &HB
  loc_BF9C91: CI2I4
  loc_BF9C92: FLdPr Me
  loc_BF9C95: Me.MousePointer = from_stack_1
  loc_BF9C9A: LitI2_Byte 0
  loc_BF9C9C: PopTmpLdAd2 var_AE
  loc_BF9C9F: Call FealBoleDesdeMsk_UnknownEvent_8()
  loc_BF9CA4: FLdPr Me
  loc_BF9CA7: MemLdStr global_104
  loc_BF9CAA: LitStr vbNullString
  loc_BF9CAD: NeStr
  loc_BF9CAF: BranchF loc_BF9CB5
  loc_BF9CB2: Branch loc_BFA475
  loc_BF9CB5: LitI2_Byte 0
  loc_BF9CB7: PopTmpLdAd2 var_AE
  loc_BF9CBA: Call FealBoleHastaMsk_UnknownEvent_8()
  loc_BF9CBF: FLdPr Me
  loc_BF9CC2: MemLdStr global_104
  loc_BF9CC5: LitStr vbNullString
  loc_BF9CC8: NeStr
  loc_BF9CCA: BranchF loc_BF9CD0
  loc_BF9CCD: Branch loc_BFA475
  loc_BF9CD0: LitI2_Byte 0
  loc_BF9CD2: PopTmpLdAd2 var_AE
  loc_BF9CD5: Call CodiSedeDesdeMsk_UnknownEvent_8()
  loc_BF9CDA: FLdPr Me
  loc_BF9CDD: MemLdStr global_104
  loc_BF9CE0: LitStr vbNullString
  loc_BF9CE3: NeStr
  loc_BF9CE5: BranchF loc_BF9CEB
  loc_BF9CE8: Branch loc_BFA475
  loc_BF9CEB: LitI2_Byte 0
  loc_BF9CED: PopTmpLdAd2 var_AE
  loc_BF9CF0: Call CodiSedeHastaMsk_UnknownEvent_8()
  loc_BF9CF5: FLdPr Me
  loc_BF9CF8: MemLdStr global_104
  loc_BF9CFB: LitStr vbNullString
  loc_BF9CFE: NeStr
  loc_BF9D00: BranchF loc_BF9D06
  loc_BF9D03: Branch loc_BFA475
  loc_BF9D06: FLdRfVar var_AE
  loc_BF9D09: FLdPr Me
  loc_BF9D0C: VCallAd Control_ID_PagadoyActualizadoChk
  loc_BF9D0F: FStAdFunc var_AC
  loc_BF9D12: FLdPr var_AC
  loc_BF9D15:  = Me.Value
  loc_BF9D1A: FLdI2 var_AE
  loc_BF9D1D: LitI2_Byte 1
  loc_BF9D1F: EqI2
  loc_BF9D20: FFree1Ad var_AC
  loc_BF9D23: BranchF loc_BF9D2F
  loc_BF9D26: LitStr " AND boleto.EstaBole IN ('Pagado','Actualizado') "
  loc_BF9D29: FStStrCopy var_88
  loc_BF9D2C: Branch loc_BF9D35
  loc_BF9D2F: LitStr " AND boleto.EstaBole IN ('Emitido') "
  loc_BF9D32: FStStrCopy var_88
  loc_BF9D35: FLdRfVar var_AE
  loc_BF9D38: FLdPr Me
  loc_BF9D3B: VCallAd Control_ID_ResumenPorServicioChk
  loc_BF9D3E: FStAdFunc var_AC
  loc_BF9D41: FLdPr var_AC
  loc_BF9D44:  = Me.Value
  loc_BF9D49: FLdI2 var_AE
  loc_BF9D4C: FFree1Ad var_AC
  loc_BF9D4F: BranchF loc_BFA130
  loc_BF9D52: FLdPr Me
  loc_BF9D55: MemLdRfVar from_stack_1.global_76
  loc_BF9D58: NewIfNullAd
  loc_BF9D5B: FStAd var_B4 
  loc_BF9D5F: FLdPr Me
  loc_BF9D62: VCallAd Control_ID_FealBoleDesdeMsk
  loc_BF9D65: FStAdFunc var_AC
  loc_BF9D68: FLdPr var_AC
  loc_BF9D6B: LateIdLdVar var_D0 DispID_15 0
  loc_BF9D72: PopAd
  loc_BF9D74: FLdPr Me
  loc_BF9D77: VCallAd Control_ID_FealBoleHastaMsk
  loc_BF9D7A: FStAdFunc var_134
  loc_BF9D7D: FLdPr var_134
  loc_BF9D80: LateIdLdVar var_144 DispID_15 0
  loc_BF9D87: PopAd
  loc_BF9D89: LitStr "SELECT devadeta.CodiSede, DetaSede, count(CantDede) CantDede, sum(PrunDede) PrunDede, sum(SubtDede) SubtDede, sum(DescDede) DescDede, sum(TotaDede) TotaDede"
  loc_BF9D8C: LitStr " FROM boleto"
  loc_BF9D8F: ConcatStr
  loc_BF9D90: FStStrNoPop var_B8
  loc_BF9D93: LitStr " LEFT JOIN devadeta ON devadeta.PeriBole = boleto.PeriBole AND devadeta.NumeBole = boleto.NumeBole"
  loc_BF9D96: ConcatStr
  loc_BF9D97: FStStrNoPop var_BC
  loc_BF9D9A: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = devadeta.PeriOrde AND servdeva.CodiSede = devadeta.CodiSede"
  loc_BF9D9D: ConcatStr
  loc_BF9D9E: FStStrNoPop var_C0
  loc_BF9DA1: LitStr " WHERE FealBole BETWEEN "
  loc_BF9DA4: ConcatStr
  loc_BF9DA5: CVarStr var_110
  loc_BF9DA8: LitI4 1
  loc_BF9DAD: LitI4 1
  loc_BF9DB2: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BF9DB7: FStVarCopyObj var_F0
  loc_BF9DBA: FLdRfVar var_F0
  loc_BF9DBD: FLdRfVar var_D0
  loc_BF9DC0: CStrVarTmp
  loc_BF9DC1: CVarStr var_E0
  loc_BF9DC4: FLdRfVar var_100
  loc_BF9DC7: ImpAdCallFPR4  = Format(, )
  loc_BF9DCC: FLdRfVar var_100
  loc_BF9DCF: ConcatVar var_120
  loc_BF9DD3: LitVarStr var_A8, " AND "
  loc_BF9DD8: ConcatVar var_130
  loc_BF9DDC: LitI4 1
  loc_BF9DE1: LitI4 1
  loc_BF9DE6: LitVarStr var_164, "'yyyy-mm-dd'"
  loc_BF9DEB: FStVarCopyObj var_174
  loc_BF9DEE: FLdRfVar var_174
  loc_BF9DF1: FLdRfVar var_144
  loc_BF9DF4: CStrVarTmp
  loc_BF9DF5: CVarStr var_154
  loc_BF9DF8: FLdRfVar var_184
  loc_BF9DFB: ImpAdCallFPR4  = Format(, )
  loc_BF9E00: FLdRfVar var_184
  loc_BF9E03: ConcatVar var_194
  loc_BF9E07: ILdRf var_88
  loc_BF9E0A: CVarStr var_1A4
  loc_BF9E0D: ConcatVar var_1B4
  loc_BF9E11: LitVarStr var_1C4, " AND devadeta.CodiSede BETWEEN "
  loc_BF9E16: ConcatVar var_1D4
  loc_BF9E1A: FLdPr Me
  loc_BF9E1D: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_BF9E20: FStAdFunc var_1D8
  loc_BF9E23: FLdPr var_1D8
  loc_BF9E26: LateIdLdVar var_1E8 DispID_22 0
  loc_BF9E2D: CStrVarTmp
  loc_BF9E2E: CVarStr var_1F8
  loc_BF9E31: ConcatVar var_208
  loc_BF9E35: LitVarStr var_218, " AND "
  loc_BF9E3A: ConcatVar var_228
  loc_BF9E3E: FLdPr Me
  loc_BF9E41: VCallAd Control_ID_CodiSedeHastaMsk
  loc_BF9E44: FStAdFunc var_22C
  loc_BF9E47: FLdPr var_22C
  loc_BF9E4A: LateIdLdVar var_23C DispID_22 0
  loc_BF9E51: CStrVarTmp
  loc_BF9E52: CVarStr var_24C
  loc_BF9E55: ConcatVar var_25C
  loc_BF9E59: LitVarStr var_26C, " GROUP BY CodiSede ORDER BY devadeta.CodiSede, boleto.PeriBole, CAST(boleto.NumeBole AS UNSIGNED)"
  loc_BF9E5E: ConcatVar var_27C
  loc_BF9E62: CStrVarVal var_280
  loc_BF9E66: FLdPr var_B4
  loc_BF9E69: Call clsdevadeta.RedefineRS(from_stack_1v)
  loc_BF9E6E: FFreeStr var_B8 = "": var_BC = "": var_C0 = ""
  loc_BF9E79: FFreeAd var_AC = "": var_134 = "": var_1D8 = ""
  loc_BF9E84: FFreeVar var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_100 = "": var_120 = "": var_144 = "": var_154 = "": var_174 = "": var_130 = "": var_184 = "": var_194 = "": var_1B4 = "": var_1E8 = "": var_1D4 = "": var_1F8 = "": var_208 = "": var_23C = "": var_228 = "": var_24C = "": var_25C = ""
  loc_BF9EB3: FLdRfVar var_284
  loc_BF9EB6: FLdPr var_B4
  loc_BF9EB9: from_stack_1 = clsdevadeta.RecordCount
  loc_BF9EBE: ILdRf var_284
  loc_BF9EC1: LitI4 0
  loc_BF9EC6: EqI4
  loc_BF9EC7: BranchF loc_BF9ED5
  loc_BF9ECA: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF9ECD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF9ED2: Branch loc_BFA475
  loc_BF9ED5: LitI4 0
  loc_BF9EDA: FLdRfVar var_284
  loc_BF9EDD: FLdPr var_B4
  loc_BF9EE0: from_stack_1 = clsdevadeta.RecordCount
  loc_BF9EE5: ILdRf var_284
  loc_BF9EE8: FLdPr Me
  loc_BF9EEB: MemLdRfVar from_stack_1.global_84
  loc_BF9EEE: Redim
  loc_BF9EF8: LitI4 0
  loc_BF9EFD: LitI4 1
  loc_BF9F02: FLdPr Me
  loc_BF9F05: MemLdRfVar from_stack_1.global_92
  loc_BF9F08: Redim
  loc_BF9F12: FLdPr var_B4
  loc_BF9F15: Call clsdevadeta.MoveFirst()
  loc_BF9F1A: LitI4 1
  loc_BF9F1F: FLdPr Me
  loc_BF9F22: MemLdRfVar from_stack_1.global_96
  loc_BF9F25: FLdPr Me
  loc_BF9F28: MemLdStr global_84
  loc_BF9F2B: LitI2_Byte 1
  loc_BF9F2D: FnUBound
  loc_BF9F2F: ForI4 var_28C
  loc_BF9F35: FLdRfVar var_AE
  loc_BF9F38: FLdPr var_B4
  loc_BF9F3B: from_stack_1 = clsdevadeta.CodiSede
  loc_BF9F40: LitI2_Byte 0
  loc_BF9F42: LitVar_Missing var_D0
  loc_BF9F45: LitI2_Byte 0
  loc_BF9F47: FLdI2 var_AE
  loc_BF9F4A: CVarI2 var_98
  loc_BF9F4D: PopAdLdVar
  loc_BF9F4E: FLdPr Me
  loc_BF9F51: MemLdStr global_96
  loc_BF9F54: FLdPr Me
  loc_BF9F57: MemLdStr global_84
  loc_BF9F5A: AryLock
  loc_BF9F5D: Ary1LdPr
  loc_BF9F5E: MemLdRfVar from_stack_1.global_0
  loc_BF9F61: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF9F66: AryUnlock
  loc_BF9F69: FFree1Var var_D0 = ""
  loc_BF9F6C: FLdRfVar var_B8
  loc_BF9F6F: FLdPr var_B4
  loc_BF9F72: from_stack_1 = clsdevadeta.DetaSede
  loc_BF9F77: LitI2_Byte 0
  loc_BF9F79: LitVar_Missing var_E0
  loc_BF9F7C: LitI2_Byte 0
  loc_BF9F7E: FLdZeroAd var_B8
  loc_BF9F81: CVarStr var_D0
  loc_BF9F84: PopAdLdVar
  loc_BF9F85: FLdPr Me
  loc_BF9F88: MemLdStr global_96
  loc_BF9F8B: FLdPr Me
  loc_BF9F8E: MemLdStr global_84
  loc_BF9F91: AryLock
  loc_BF9F94: Ary1LdPr
  loc_BF9F95: MemLdRfVar from_stack_1.global_4
  loc_BF9F98: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF9F9D: AryUnlock
  loc_BF9FA0: FFreeVar var_D0 = ""
  loc_BF9FA7: FLdRfVar var_298
  loc_BF9FAA: FLdPr var_B4
  loc_BF9FAD: from_stack_1 = clsdevadeta.CantDede
  loc_BF9FB2: LitI2_Byte 0
  loc_BF9FB4: LitI4 1
  loc_BF9FB9: FLdPr Me
  loc_BF9FBC: MemLdStr global_92
  loc_BF9FBF: AryLock
  loc_BF9FC2: Ary1LdPr
  loc_BF9FC3: MemLdRfVar from_stack_1.global_8
  loc_BF9FC6: CVarRef
  loc_BF9FCB: LitI2_Byte 0
  loc_BF9FCD: FLdFPR8 var_298
  loc_BF9FD0: CVarR8
  loc_BF9FD4: PopAdLdVar
  loc_BF9FD5: FLdPr Me
  loc_BF9FD8: MemLdStr global_96
  loc_BF9FDB: FLdPr Me
  loc_BF9FDE: MemLdStr global_84
  loc_BF9FE1: AryLock
  loc_BF9FE4: Ary1LdPr
  loc_BF9FE5: MemLdRfVar from_stack_1.global_8
  loc_BF9FE8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF9FED: AryUnlock
  loc_BF9FF0: AryUnlock
  loc_BF9FF3: FLdRfVar var_298
  loc_BF9FF6: FLdPr var_B4
  loc_BF9FF9: from_stack_1 = clsdevadeta.PrunDede
  loc_BF9FFE: LitI2_Byte 0
  loc_BFA000: LitVar_Missing var_D0
  loc_BFA003: LitI2_Byte &HFF
  loc_BFA005: FLdFPR8 var_298
  loc_BFA008: CVarR8
  loc_BFA00C: PopAdLdVar
  loc_BFA00D: FLdPr Me
  loc_BFA010: MemLdStr global_96
  loc_BFA013: FLdPr Me
  loc_BFA016: MemLdStr global_84
  loc_BFA019: AryLock
  loc_BFA01C: Ary1LdPr
  loc_BFA01D: MemLdRfVar from_stack_1.global_12
  loc_BFA020: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA025: AryUnlock
  loc_BFA028: FFree1Var var_D0 = ""
  loc_BFA02B: FLdRfVar var_298
  loc_BFA02E: FLdPr var_B4
  loc_BFA031: from_stack_1 = clsdevadeta.SubtDede
  loc_BFA036: LitI2_Byte 0
  loc_BFA038: LitI4 1
  loc_BFA03D: FLdPr Me
  loc_BFA040: MemLdStr global_92
  loc_BFA043: AryLock
  loc_BFA046: Ary1LdPr
  loc_BFA047: MemLdRfVar from_stack_1.global_16
  loc_BFA04A: CVarRef
  loc_BFA04F: LitI2_Byte &HFF
  loc_BFA051: FLdFPR8 var_298
  loc_BFA054: CVarR8
  loc_BFA058: PopAdLdVar
  loc_BFA059: FLdPr Me
  loc_BFA05C: MemLdStr global_96
  loc_BFA05F: FLdPr Me
  loc_BFA062: MemLdStr global_84
  loc_BFA065: AryLock
  loc_BFA068: Ary1LdPr
  loc_BFA069: MemLdRfVar from_stack_1.global_16
  loc_BFA06C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA071: AryUnlock
  loc_BFA074: AryUnlock
  loc_BFA077: FLdRfVar var_298
  loc_BFA07A: FLdPr var_B4
  loc_BFA07D: from_stack_1 = clsdevadeta.DescDede
  loc_BFA082: LitI2_Byte 0
  loc_BFA084: LitI4 1
  loc_BFA089: FLdPr Me
  loc_BFA08C: MemLdStr global_92
  loc_BFA08F: AryLock
  loc_BFA092: Ary1LdPr
  loc_BFA093: MemLdRfVar from_stack_1.global_20
  loc_BFA096: CVarRef
  loc_BFA09B: LitI2_Byte &HFF
  loc_BFA09D: FLdFPR8 var_298
  loc_BFA0A0: CVarR8
  loc_BFA0A4: PopAdLdVar
  loc_BFA0A5: FLdPr Me
  loc_BFA0A8: MemLdStr global_96
  loc_BFA0AB: FLdPr Me
  loc_BFA0AE: MemLdStr global_84
  loc_BFA0B1: AryLock
  loc_BFA0B4: Ary1LdPr
  loc_BFA0B5: MemLdRfVar from_stack_1.global_20
  loc_BFA0B8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA0BD: AryUnlock
  loc_BFA0C0: AryUnlock
  loc_BFA0C3: FLdRfVar var_298
  loc_BFA0C6: FLdPr var_B4
  loc_BFA0C9: from_stack_1 = clsdevadeta.TotaDede
  loc_BFA0CE: LitI2_Byte 0
  loc_BFA0D0: LitI4 1
  loc_BFA0D5: FLdPr Me
  loc_BFA0D8: MemLdStr global_92
  loc_BFA0DB: AryLock
  loc_BFA0DE: Ary1LdPr
  loc_BFA0DF: MemLdRfVar from_stack_1.global_24
  loc_BFA0E2: CVarRef
  loc_BFA0E7: LitI2_Byte &HFF
  loc_BFA0E9: FLdFPR8 var_298
  loc_BFA0EC: CVarR8
  loc_BFA0F0: PopAdLdVar
  loc_BFA0F1: FLdPr Me
  loc_BFA0F4: MemLdStr global_96
  loc_BFA0F7: FLdPr Me
  loc_BFA0FA: MemLdStr global_84
  loc_BFA0FD: AryLock
  loc_BFA100: Ary1LdPr
  loc_BFA101: MemLdRfVar from_stack_1.global_24
  loc_BFA104: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA109: AryUnlock
  loc_BFA10C: AryUnlock
  loc_BFA10F: LitI2_Byte 1
  loc_BFA111: PopTmpLdAd2 var_AE
  loc_BFA114: FLdPr var_B4
  loc_BFA117: Call clsdevadeta.Move(from_stack_1v)
  loc_BFA11C: FLdPr Me
  loc_BFA11F: MemLdRfVar from_stack_1.global_96
  loc_BFA122: NextI4 var_28C, loc_BF9F35
  loc_BFA127: LitNothing
  loc_BFA129: FStAd var_B4 
  loc_BFA12D: Branch loc_BFA46D
  loc_BFA130: FLdPr Me
  loc_BFA133: MemLdRfVar from_stack_1.global_76
  loc_BFA136: NewIfNullAd
  loc_BFA139: FStAd var_2A0 
  loc_BFA13D: FLdPr Me
  loc_BFA140: VCallAd Control_ID_FealBoleDesdeMsk
  loc_BFA143: FStAdFunc var_AC
  loc_BFA146: FLdPr var_AC
  loc_BFA149: LateIdLdVar var_D0 DispID_15 0
  loc_BFA150: PopAd
  loc_BFA152: FLdPr Me
  loc_BFA155: VCallAd Control_ID_FealBoleHastaMsk
  loc_BFA158: FStAdFunc var_134
  loc_BFA15B: FLdPr var_134
  loc_BFA15E: LateIdLdVar var_144 DispID_15 0
  loc_BFA165: PopAd
  loc_BFA167: LitStr "SELECT devadeta.CodiSede, DetaSede, boleto.PeriBole, boleto.NumeBole,"
  loc_BFA16A: LitStr " IFNULL(DetaPers,'') as DetaPers, FealBole, EstaBole, ObseBole, CantDede, PrunDede, SubtDede, DescDede, TotaDede"
  loc_BFA16D: ConcatStr
  loc_BFA16E: FStStrNoPop var_B8
  loc_BFA171: LitStr " FROM boleto"
  loc_BFA174: ConcatStr
  loc_BFA175: FStStrNoPop var_BC
  loc_BFA178: LitStr " LEFT JOIN devadeta ON devadeta.PeriBole = boleto.PeriBole AND devadeta.NumeBole = boleto.NumeBole"
  loc_BFA17B: ConcatStr
  loc_BFA17C: FStStrNoPop var_C0
  loc_BFA17F: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = devadeta.PeriOrde AND servdeva.CodiSede = devadeta.CodiSede"
  loc_BFA182: ConcatStr
  loc_BFA183: FStStrNoPop var_280
  loc_BFA186: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_BFA189: ConcatStr
  loc_BFA18A: FStStrNoPop var_2A4
  loc_BFA18D: LitStr " WHERE FealBole BETWEEN "
  loc_BFA190: ConcatStr
  loc_BFA191: CVarStr var_110
  loc_BFA194: LitI4 1
  loc_BFA199: LitI4 1
  loc_BFA19E: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BFA1A3: FStVarCopyObj var_F0
  loc_BFA1A6: FLdRfVar var_F0
  loc_BFA1A9: FLdRfVar var_D0
  loc_BFA1AC: CStrVarTmp
  loc_BFA1AD: CVarStr var_E0
  loc_BFA1B0: FLdRfVar var_100
  loc_BFA1B3: ImpAdCallFPR4  = Format(, )
  loc_BFA1B8: FLdRfVar var_100
  loc_BFA1BB: ConcatVar var_120
  loc_BFA1BF: LitVarStr var_A8, " AND "
  loc_BFA1C4: ConcatVar var_130
  loc_BFA1C8: LitI4 1
  loc_BFA1CD: LitI4 1
  loc_BFA1D2: LitVarStr var_164, "'yyyy-mm-dd'"
  loc_BFA1D7: FStVarCopyObj var_174
  loc_BFA1DA: FLdRfVar var_174
  loc_BFA1DD: FLdRfVar var_144
  loc_BFA1E0: CStrVarTmp
  loc_BFA1E1: CVarStr var_154
  loc_BFA1E4: FLdRfVar var_184
  loc_BFA1E7: ImpAdCallFPR4  = Format(, )
  loc_BFA1EC: FLdRfVar var_184
  loc_BFA1EF: ConcatVar var_194
  loc_BFA1F3: ILdRf var_88
  loc_BFA1F6: CVarStr var_1A4
  loc_BFA1F9: ConcatVar var_1B4
  loc_BFA1FD: LitVarStr var_1C4, " AND devadeta.CodiSede BETWEEN "
  loc_BFA202: ConcatVar var_1D4
  loc_BFA206: FLdPr Me
  loc_BFA209: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_BFA20C: FStAdFunc var_1D8
  loc_BFA20F: FLdPr var_1D8
  loc_BFA212: LateIdLdVar var_1E8 DispID_22 0
  loc_BFA219: CStrVarTmp
  loc_BFA21A: CVarStr var_1F8
  loc_BFA21D: ConcatVar var_208
  loc_BFA221: LitVarStr var_218, " AND "
  loc_BFA226: ConcatVar var_228
  loc_BFA22A: FLdPr Me
  loc_BFA22D: VCallAd Control_ID_CodiSedeHastaMsk
  loc_BFA230: FStAdFunc var_22C
  loc_BFA233: FLdPr var_22C
  loc_BFA236: LateIdLdVar var_23C DispID_22 0
  loc_BFA23D: CStrVarTmp
  loc_BFA23E: CVarStr var_24C
  loc_BFA241: ConcatVar var_25C
  loc_BFA245: LitVarStr var_26C, " ORDER BY devadeta.CodiSede, boleto.PeriBole, cast(boleto.NumeBole AS UNSIGNED)"
  loc_BFA24A: ConcatVar var_27C
  loc_BFA24E: CStrVarVal var_2A8
  loc_BFA252: FLdPr var_2A0
  loc_BFA255: Call clsdevadeta.RedefineRS(from_stack_1v)
  loc_BFA25A: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_280 = "": var_2A4 = ""
  loc_BFA269: FFreeAd var_AC = "": var_134 = "": var_1D8 = ""
  loc_BFA274: FFreeVar var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_100 = "": var_120 = "": var_144 = "": var_154 = "": var_174 = "": var_130 = "": var_184 = "": var_194 = "": var_1B4 = "": var_1E8 = "": var_1D4 = "": var_1F8 = "": var_208 = "": var_23C = "": var_228 = "": var_24C = "": var_25C = ""
  loc_BFA2A3: FLdRfVar var_284
  loc_BFA2A6: FLdPr var_2A0
  loc_BFA2A9: from_stack_1 = clsdevadeta.RecordCount
  loc_BFA2AE: ILdRf var_284
  loc_BFA2B1: LitI4 0
  loc_BFA2B6: EqI4
  loc_BFA2B7: BranchF loc_BFA2C5
  loc_BFA2BA: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BFA2BD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BFA2C2: Branch loc_BFA475
  loc_BFA2C5: LitI4 0
  loc_BFA2CA: LitI4 1
  loc_BFA2CF: FLdPr Me
  loc_BFA2D2: MemLdRfVar from_stack_1.global_88
  loc_BFA2D5: Redim
  loc_BFA2DF: LitI4 0
  loc_BFA2E4: FLdPr Me
  loc_BFA2E7: MemStI4 global_96
  loc_BFA2EA: LitI4 0
  loc_BFA2EF: FLdPr Me
  loc_BFA2F2: MemLdStr global_96
  loc_BFA2F5: FLdPr Me
  loc_BFA2F8: MemLdRfVar from_stack_1.global_80
  loc_BFA2FB: Redim
  loc_BFA305: FLdPr var_2A0
  loc_BFA308: Call clsdevadeta.MoveFirst()
  loc_BFA30D: Call Proc_244_29_AA39C4()
  loc_BFA312: FLdRfVar var_AE
  loc_BFA315: FLdPr var_2A0
  loc_BFA318: from_stack_1 = clsdevadeta.EOF
  loc_BFA31D: FLdI2 var_AE
  loc_BFA320: NotI4
  loc_BFA321: BranchF loc_BFA359
  loc_BFA324: FLdRfVar var_AE
  loc_BFA327: FLdPr var_2A0
  loc_BFA32A: from_stack_1 = clsdevadeta.CodiSede
  loc_BFA32F: FLdI2 var_AE
  loc_BFA332: CR8I2
  loc_BFA333: FLdPr Me
  loc_BFA336: MemLdStr global_96
  loc_BFA339: FLdPr Me
  loc_BFA33C: MemLdStr global_80
  loc_BFA33F: Ary1LdPr
  loc_BFA340: MemLdStr global_0
  loc_BFA343: CR8Str
  loc_BFA345: NeR8
  loc_BFA346: BranchF loc_BFA351
  loc_BFA349: Call Proc_244_29_AA39C4()
  loc_BFA34E: Branch loc_BFA356
  loc_BFA351: Call Proc_244_30_B332E8()
  loc_BFA356: Branch loc_BFA312
  loc_BFA359: LitNothing
  loc_BFA35B: FStAd var_2A0 
  loc_BFA35F: LitI4 1
  loc_BFA364: FLdPr Me
  loc_BFA367: MemLdRfVar from_stack_1.global_96
  loc_BFA36A: FLdPr Me
  loc_BFA36D: MemLdStr global_80
  loc_BFA370: LitI2_Byte 1
  loc_BFA372: FnUBound
  loc_BFA374: ForI4 var_2B4
  loc_BFA37A: LitI2_Byte 0
  loc_BFA37C: LitI4 1
  loc_BFA381: FLdPr Me
  loc_BFA384: MemLdStr global_88
  loc_BFA387: AryLock
  loc_BFA38A: Ary1LdPr
  loc_BFA38B: MemLdRfVar from_stack_1.global_20
  loc_BFA38E: CVarRef
  loc_BFA393: LitI2_Byte 0
  loc_BFA395: FLdPr Me
  loc_BFA398: MemLdStr global_96
  loc_BFA39B: FLdPr Me
  loc_BFA39E: MemLdStr global_80
  loc_BFA3A1: Ary1LdPr
  loc_BFA3A2: MemLdStr global_32
  loc_BFA3A5: CVarStr var_98
  loc_BFA3A8: PopAdLdVar
  loc_BFA3A9: FLdRfVar var_2AC
  loc_BFA3AC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA3B1: AryUnlock
  loc_BFA3B4: LitI2_Byte 0
  loc_BFA3B6: LitI4 1
  loc_BFA3BB: FLdPr Me
  loc_BFA3BE: MemLdStr global_88
  loc_BFA3C1: AryLock
  loc_BFA3C4: Ary1LdPr
  loc_BFA3C5: MemLdRfVar from_stack_1.global_28
  loc_BFA3C8: CVarRef
  loc_BFA3CD: LitI2_Byte &HFF
  loc_BFA3CF: FLdPr Me
  loc_BFA3D2: MemLdStr global_96
  loc_BFA3D5: FLdPr Me
  loc_BFA3D8: MemLdStr global_80
  loc_BFA3DB: Ary1LdPr
  loc_BFA3DC: MemLdStr global_40
  loc_BFA3DF: CVarStr var_98
  loc_BFA3E2: PopAdLdVar
  loc_BFA3E3: FLdRfVar var_2AC
  loc_BFA3E6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA3EB: AryUnlock
  loc_BFA3EE: LitI2_Byte 0
  loc_BFA3F0: LitI4 1
  loc_BFA3F5: FLdPr Me
  loc_BFA3F8: MemLdStr global_88
  loc_BFA3FB: AryLock
  loc_BFA3FE: Ary1LdPr
  loc_BFA3FF: MemLdRfVar from_stack_1.global_32
  loc_BFA402: CVarRef
  loc_BFA407: LitI2_Byte &HFF
  loc_BFA409: FLdPr Me
  loc_BFA40C: MemLdStr global_96
  loc_BFA40F: FLdPr Me
  loc_BFA412: MemLdStr global_80
  loc_BFA415: Ary1LdPr
  loc_BFA416: MemLdStr global_44
  loc_BFA419: CVarStr var_98
  loc_BFA41C: PopAdLdVar
  loc_BFA41D: FLdRfVar var_2AC
  loc_BFA420: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA425: AryUnlock
  loc_BFA428: LitI2_Byte 0
  loc_BFA42A: LitI4 1
  loc_BFA42F: FLdPr Me
  loc_BFA432: MemLdStr global_88
  loc_BFA435: AryLock
  loc_BFA438: Ary1LdPr
  loc_BFA439: MemLdRfVar from_stack_1.global_36
  loc_BFA43C: CVarRef
  loc_BFA441: LitI2_Byte &HFF
  loc_BFA443: FLdPr Me
  loc_BFA446: MemLdStr global_96
  loc_BFA449: FLdPr Me
  loc_BFA44C: MemLdStr global_80
  loc_BFA44F: Ary1LdPr
  loc_BFA450: MemLdStr global_48
  loc_BFA453: CVarStr var_98
  loc_BFA456: PopAdLdVar
  loc_BFA457: FLdRfVar var_2AC
  loc_BFA45A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BFA45F: AryUnlock
  loc_BFA462: FLdPr Me
  loc_BFA465: MemLdRfVar from_stack_1.global_96
  loc_BFA468: NextI4 var_2B4, loc_BFA37A
  loc_BFA46D: LitI2_Byte &HFF
  loc_BFA46F: FLdPr Me
  loc_BFA472: MemStI2 bGenerado
  loc_BFA475: LitI4 0
  loc_BFA47A: CI2I4
  loc_BFA47B: FLdPr Me
  loc_BFA47E: Me.MousePointer = from_stack_1
  loc_BFA483: LitVarStr var_98, vbNullString
  loc_BFA488: PopAdLdVar
  loc_BFA489: FLdPr Me
  loc_BFA48C: VCallAd Control_ID_statusBar
  loc_BFA48F: FStAdFunc var_AC
  loc_BFA492: FLdPr var_AC
  loc_BFA495: LateIdSt
  loc_BFA49A: FFree1Ad var_AC
  loc_BFA49D: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'C313F4
  'Data Table: 4D34E0
  loc_C30888: FLdRfVar var_88
  loc_C3088B: LitI2_Byte 0
  loc_C3088D: LitI2_Byte &HFF
  loc_C3088F: ImpAdLdI4 MemVar_D93C84
  loc_C30892: FLdPr Me
  loc_C30895: MemLdRfVar from_stack_1.global_56
  loc_C30898: NewIfNullPr IFileSystem3
  loc_C3089B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C308A0: ILdRf var_88
  loc_C308A3: FLdPr Me
  loc_C308A6: MemStVarAd
  loc_C308AA: FFree1Ad var_88
  loc_C308AD: LitI2_Byte &HFF
  loc_C308AF: ImpAdStI2 MemVar_D93C8A
  loc_C308B2: Call Proc_244_31_BDA0D0()
  loc_C308B7: FLdRfVar var_8A
  loc_C308BA: FLdPr Me
  loc_C308BD: VCallAd Control_ID_ResumenPorServicioChk
  loc_C308C0: FStAdFunc var_88
  loc_C308C3: FLdPr var_88
  loc_C308C6:  = Me.Value
  loc_C308CB: FLdI2 var_8A
  loc_C308CE: FFree1Ad var_88
  loc_C308D1: BranchF loc_C30CD6
  loc_C308D4: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C308D9: PopAdLdVar
  loc_C308DA: FLdPr Me
  loc_C308DD: MemLdRfVar from_stack_1.global_60
  loc_C308E0: LdPrVar
  loc_C308E2: LateMemCall
  loc_C308E8: LitVarStr var_9C, "  <thead>"
  loc_C308ED: PopAdLdVar
  loc_C308EE: FLdPr Me
  loc_C308F1: MemLdRfVar from_stack_1.global_60
  loc_C308F4: LdPrVar
  loc_C308F6: LateMemCall
  loc_C308FC: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_C30901: PopAdLdVar
  loc_C30902: FLdPr Me
  loc_C30905: MemLdRfVar from_stack_1.global_60
  loc_C30908: LdPrVar
  loc_C3090A: LateMemCall
  loc_C30910: LitVarStr var_9C, "    <th colspan=""2"">Servicio</th>"
  loc_C30915: PopAdLdVar
  loc_C30916: FLdPr Me
  loc_C30919: MemLdRfVar from_stack_1.global_60
  loc_C3091C: LdPrVar
  loc_C3091E: LateMemCall
  loc_C30924: LitVarStr var_9C, "    <th>Cant.</th>"
  loc_C30929: PopAdLdVar
  loc_C3092A: FLdPr Me
  loc_C3092D: MemLdRfVar from_stack_1.global_60
  loc_C30930: LdPrVar
  loc_C30932: LateMemCall
  loc_C30938: LitVarStr var_9C, "    <th>Precio Unitario</th>"
  loc_C3093D: PopAdLdVar
  loc_C3093E: FLdPr Me
  loc_C30941: MemLdRfVar from_stack_1.global_60
  loc_C30944: LdPrVar
  loc_C30946: LateMemCall
  loc_C3094C: LitVarStr var_9C, "    <th>Subtotal</th>"
  loc_C30951: PopAdLdVar
  loc_C30952: FLdPr Me
  loc_C30955: MemLdRfVar from_stack_1.global_60
  loc_C30958: LdPrVar
  loc_C3095A: LateMemCall
  loc_C30960: LitVarStr var_9C, "    <th>Descuento</th>"
  loc_C30965: PopAdLdVar
  loc_C30966: FLdPr Me
  loc_C30969: MemLdRfVar from_stack_1.global_60
  loc_C3096C: LdPrVar
  loc_C3096E: LateMemCall
  loc_C30974: LitVarStr var_9C, "    <th>Total</th>"
  loc_C30979: PopAdLdVar
  loc_C3097A: FLdPr Me
  loc_C3097D: MemLdRfVar from_stack_1.global_60
  loc_C30980: LdPrVar
  loc_C30982: LateMemCall
  loc_C30988: LitVarStr var_9C, "  </tr>"
  loc_C3098D: PopAdLdVar
  loc_C3098E: FLdPr Me
  loc_C30991: MemLdRfVar from_stack_1.global_60
  loc_C30994: LdPrVar
  loc_C30996: LateMemCall
  loc_C3099C: LitVarStr var_9C, "  </thead>"
  loc_C309A1: PopAdLdVar
  loc_C309A2: FLdPr Me
  loc_C309A5: MemLdRfVar from_stack_1.global_60
  loc_C309A8: LdPrVar
  loc_C309AA: LateMemCall
  loc_C309B0: LitI4 1
  loc_C309B5: FLdPr Me
  loc_C309B8: MemLdRfVar from_stack_1.global_96
  loc_C309BB: FLdPr Me
  loc_C309BE: MemLdStr global_84
  loc_C309C1: LitI2_Byte 1
  loc_C309C3: FnUBound
  loc_C309C5: ForI4 var_B4
  loc_C309CB: FLdPr Me
  loc_C309CE: MemLdStr global_96
  loc_C309D1: FLdPr Me
  loc_C309D4: MemLdStr global_84
  loc_C309D7: AryLock
  loc_C309DA: Ary1LdRf
  loc_C309DB: FStR4 var_BC
  loc_C309DE: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C309E3: PopAdLdVar
  loc_C309E4: FLdPr Me
  loc_C309E7: MemLdRfVar from_stack_1.global_60
  loc_C309EA: LdPrVar
  loc_C309EC: LateMemCall
  loc_C309F2: LitStr vbNullString
  loc_C309F5: LitI2_Byte 0
  loc_C309F7: LitI2_Byte 0
  loc_C309F9: LitI2_Byte 0
  loc_C309FB: LitStr "right"
  loc_C309FE: FMemLdR4 var_BC(0)
  loc_C30A03: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30A08: CVarStr var_CC
  loc_C30A0B: PopAdLdVar
  loc_C30A0C: FLdPr Me
  loc_C30A0F: MemLdRfVar from_stack_1.global_60
  loc_C30A12: LdPrVar
  loc_C30A14: LateMemCall
  loc_C30A1A: FFree1Var var_CC = ""
  loc_C30A1D: LitStr vbNullString
  loc_C30A20: LitI2_Byte 0
  loc_C30A22: LitI2_Byte 0
  loc_C30A24: LitI2_Byte 0
  loc_C30A26: LitStr "left"
  loc_C30A29: FMemLdR4 var_BC(4)
  loc_C30A2E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30A33: CVarStr var_CC
  loc_C30A36: PopAdLdVar
  loc_C30A37: FLdPr Me
  loc_C30A3A: MemLdRfVar from_stack_1.global_60
  loc_C30A3D: LdPrVar
  loc_C30A3F: LateMemCall
  loc_C30A45: FFree1Var var_CC = ""
  loc_C30A48: LitI4 -1
  loc_C30A4D: LitI4 0
  loc_C30A52: LitI4 -1
  loc_C30A57: LitI4 0
  loc_C30A5C: FMemLdRf 0
  loc_C30A61: CVarRef
  loc_C30A66: ImpAdCallI2 FormatNumber(, , , , )
  loc_C30A6B: FStStr var_D4
  loc_C30A6E: LitStr vbNullString
  loc_C30A71: LitI2_Byte 0
  loc_C30A73: LitI2_Byte 0
  loc_C30A75: LitI2_Byte 0
  loc_C30A77: LitStr "right"
  loc_C30A7A: FLdZeroAd var_D4
  loc_C30A7D: FStStrNoPop var_D0
  loc_C30A80: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30A85: CVarStr var_CC
  loc_C30A88: PopAdLdVar
  loc_C30A89: FLdPr Me
  loc_C30A8C: MemLdRfVar from_stack_1.global_60
  loc_C30A8F: LdPrVar
  loc_C30A91: LateMemCall
  loc_C30A97: FFreeStr var_D0 = ""
  loc_C30A9E: FFree1Var var_CC = ""
  loc_C30AA1: LitStr vbNullString
  loc_C30AA4: LitI2_Byte 0
  loc_C30AA6: LitI2_Byte 0
  loc_C30AA8: LitI2_Byte 0
  loc_C30AAA: LitStr "right"
  loc_C30AAD: FMemLdR4 var_BC(12)
  loc_C30AB2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30AB7: CVarStr var_CC
  loc_C30ABA: PopAdLdVar
  loc_C30ABB: FLdPr Me
  loc_C30ABE: MemLdRfVar from_stack_1.global_60
  loc_C30AC1: LdPrVar
  loc_C30AC3: LateMemCall
  loc_C30AC9: FFree1Var var_CC = ""
  loc_C30ACC: LitStr vbNullString
  loc_C30ACF: LitI2_Byte 0
  loc_C30AD1: LitI2_Byte 0
  loc_C30AD3: LitI2_Byte 0
  loc_C30AD5: LitStr "right"
  loc_C30AD8: FMemLdR4 var_BC(16)
  loc_C30ADD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30AE2: CVarStr var_CC
  loc_C30AE5: PopAdLdVar
  loc_C30AE6: FLdPr Me
  loc_C30AE9: MemLdRfVar from_stack_1.global_60
  loc_C30AEC: LdPrVar
  loc_C30AEE: LateMemCall
  loc_C30AF4: FFree1Var var_CC = ""
  loc_C30AF7: LitStr vbNullString
  loc_C30AFA: LitI2_Byte 0
  loc_C30AFC: LitI2_Byte 0
  loc_C30AFE: LitI2_Byte 0
  loc_C30B00: LitStr "right"
  loc_C30B03: FMemLdR4 var_BC(20)
  loc_C30B08: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30B0D: CVarStr var_CC
  loc_C30B10: PopAdLdVar
  loc_C30B11: FLdPr Me
  loc_C30B14: MemLdRfVar from_stack_1.global_60
  loc_C30B17: LdPrVar
  loc_C30B19: LateMemCall
  loc_C30B1F: FFree1Var var_CC = ""
  loc_C30B22: LitStr vbNullString
  loc_C30B25: LitI2_Byte 0
  loc_C30B27: LitI2_Byte 0
  loc_C30B29: LitI2_Byte 0
  loc_C30B2B: LitStr "right"
  loc_C30B2E: FMemLdR4 var_BC(24)
  loc_C30B33: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30B38: CVarStr var_CC
  loc_C30B3B: PopAdLdVar
  loc_C30B3C: FLdPr Me
  loc_C30B3F: MemLdRfVar from_stack_1.global_60
  loc_C30B42: LdPrVar
  loc_C30B44: LateMemCall
  loc_C30B4A: FFree1Var var_CC = ""
  loc_C30B4D: LitVarStr var_9C, "     </tr>"
  loc_C30B52: PopAdLdVar
  loc_C30B53: FLdPr Me
  loc_C30B56: MemLdRfVar from_stack_1.global_60
  loc_C30B59: LdPrVar
  loc_C30B5B: LateMemCall
  loc_C30B61: LitI4 0
  loc_C30B66: FStR4 var_BC
  loc_C30B69: AryUnlock
  loc_C30B6C: FLdPr Me
  loc_C30B6F: MemLdRfVar from_stack_1.global_96
  loc_C30B72: NextI4 var_B4, loc_C309CB
  loc_C30B77: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_C30B7C: PopAdLdVar
  loc_C30B7D: FLdPr Me
  loc_C30B80: MemLdRfVar from_stack_1.global_60
  loc_C30B83: LdPrVar
  loc_C30B85: LateMemCall
  loc_C30B8B: LitVarStr var_9C, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_C30B90: PopAdLdVar
  loc_C30B91: FLdPr Me
  loc_C30B94: MemLdRfVar from_stack_1.global_60
  loc_C30B97: LdPrVar
  loc_C30B99: LateMemCall
  loc_C30B9F: LitI4 1
  loc_C30BA4: FLdPr Me
  loc_C30BA7: MemLdStr global_92
  loc_C30BAA: AryLock
  loc_C30BAD: Ary1LdRf
  loc_C30BAE: FStR4 var_DC
  loc_C30BB1: LitI4 -1
  loc_C30BB6: LitI4 0
  loc_C30BBB: LitI4 -1
  loc_C30BC0: LitI4 0
  loc_C30BC5: FMemLdRf 0
  loc_C30BCA: CVarRef
  loc_C30BCF: ImpAdCallI2 FormatNumber(, , , , )
  loc_C30BD4: FStStr var_D4
  loc_C30BD7: LitStr vbNullString
  loc_C30BDA: LitI2_Byte 0
  loc_C30BDC: LitI2_Byte 0
  loc_C30BDE: LitI2_Byte 0
  loc_C30BE0: LitStr "right"
  loc_C30BE3: FLdZeroAd var_D4
  loc_C30BE6: FStStrNoPop var_D0
  loc_C30BE9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30BEE: CVarStr var_CC
  loc_C30BF1: PopAdLdVar
  loc_C30BF2: FLdPr Me
  loc_C30BF5: MemLdRfVar from_stack_1.global_60
  loc_C30BF8: LdPrVar
  loc_C30BFA: LateMemCall
  loc_C30C00: FFreeStr var_D0 = ""
  loc_C30C07: FFree1Var var_CC = ""
  loc_C30C0A: LitStr vbNullString
  loc_C30C0D: LitI2_Byte 0
  loc_C30C0F: LitI2_Byte 0
  loc_C30C11: LitI2_Byte 0
  loc_C30C13: LitStr "center"
  loc_C30C16: LitStr "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C30C19: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30C1E: CVarStr var_CC
  loc_C30C21: PopAdLdVar
  loc_C30C22: FLdPr Me
  loc_C30C25: MemLdRfVar from_stack_1.global_60
  loc_C30C28: LdPrVar
  loc_C30C2A: LateMemCall
  loc_C30C30: FFree1Var var_CC = ""
  loc_C30C33: LitStr vbNullString
  loc_C30C36: LitI2_Byte 0
  loc_C30C38: LitI2_Byte 0
  loc_C30C3A: LitI2_Byte 0
  loc_C30C3C: LitStr "right"
  loc_C30C3F: FMemLdR4 var_DC(16)
  loc_C30C44: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30C49: CVarStr var_CC
  loc_C30C4C: PopAdLdVar
  loc_C30C4D: FLdPr Me
  loc_C30C50: MemLdRfVar from_stack_1.global_60
  loc_C30C53: LdPrVar
  loc_C30C55: LateMemCall
  loc_C30C5B: FFree1Var var_CC = ""
  loc_C30C5E: LitStr vbNullString
  loc_C30C61: LitI2_Byte 0
  loc_C30C63: LitI2_Byte 0
  loc_C30C65: LitI2_Byte 0
  loc_C30C67: LitStr "right"
  loc_C30C6A: FMemLdR4 var_DC(20)
  loc_C30C6F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30C74: CVarStr var_CC
  loc_C30C77: PopAdLdVar
  loc_C30C78: FLdPr Me
  loc_C30C7B: MemLdRfVar from_stack_1.global_60
  loc_C30C7E: LdPrVar
  loc_C30C80: LateMemCall
  loc_C30C86: FFree1Var var_CC = ""
  loc_C30C89: LitStr vbNullString
  loc_C30C8C: LitI2_Byte 0
  loc_C30C8E: LitI2_Byte 0
  loc_C30C90: LitI2_Byte 0
  loc_C30C92: LitStr "right"
  loc_C30C95: FMemLdR4 var_DC(24)
  loc_C30C9A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30C9F: CVarStr var_CC
  loc_C30CA2: PopAdLdVar
  loc_C30CA3: FLdPr Me
  loc_C30CA6: MemLdRfVar from_stack_1.global_60
  loc_C30CA9: LdPrVar
  loc_C30CAB: LateMemCall
  loc_C30CB1: FFree1Var var_CC = ""
  loc_C30CB4: LitI4 0
  loc_C30CB9: FStR4 var_DC
  loc_C30CBC: AryUnlock
  loc_C30CBF: LitVarStr var_9C, "     </tr>"
  loc_C30CC4: PopAdLdVar
  loc_C30CC5: FLdPr Me
  loc_C30CC8: MemLdRfVar from_stack_1.global_60
  loc_C30CCB: LdPrVar
  loc_C30CCD: LateMemCall
  loc_C30CD3: Branch loc_C313D5
  loc_C30CD6: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C30CDB: PopAdLdVar
  loc_C30CDC: FLdPr Me
  loc_C30CDF: MemLdRfVar from_stack_1.global_60
  loc_C30CE2: LdPrVar
  loc_C30CE4: LateMemCall
  loc_C30CEA: LitVarStr var_9C, "  <thead>"
  loc_C30CEF: PopAdLdVar
  loc_C30CF0: FLdPr Me
  loc_C30CF3: MemLdRfVar from_stack_1.global_60
  loc_C30CF6: LdPrVar
  loc_C30CF8: LateMemCall
  loc_C30CFE: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_C30D03: PopAdLdVar
  loc_C30D04: FLdPr Me
  loc_C30D07: MemLdRfVar from_stack_1.global_60
  loc_C30D0A: LdPrVar
  loc_C30D0C: LateMemCall
  loc_C30D12: LitVarStr var_9C, "    <th>N&ordm; de Boleto</th>"
  loc_C30D17: PopAdLdVar
  loc_C30D18: FLdPr Me
  loc_C30D1B: MemLdRfVar from_stack_1.global_60
  loc_C30D1E: LdPrVar
  loc_C30D20: LateMemCall
  loc_C30D26: LitVarStr var_9C, "    <th>Apellido y Nombre</th>"
  loc_C30D2B: PopAdLdVar
  loc_C30D2C: FLdPr Me
  loc_C30D2F: MemLdRfVar from_stack_1.global_60
  loc_C30D32: LdPrVar
  loc_C30D34: LateMemCall
  loc_C30D3A: LitVarStr var_9C, "    <th>Fecha</th>"
  loc_C30D3F: PopAdLdVar
  loc_C30D40: FLdPr Me
  loc_C30D43: MemLdRfVar from_stack_1.global_60
  loc_C30D46: LdPrVar
  loc_C30D48: LateMemCall
  loc_C30D4E: LitVarStr var_9C, "    <th>Estado</th>"
  loc_C30D53: PopAdLdVar
  loc_C30D54: FLdPr Me
  loc_C30D57: MemLdRfVar from_stack_1.global_60
  loc_C30D5A: LdPrVar
  loc_C30D5C: LateMemCall
  loc_C30D62: LitVarStr var_9C, "    <th>Observación</th>"
  loc_C30D67: PopAdLdVar
  loc_C30D68: FLdPr Me
  loc_C30D6B: MemLdRfVar from_stack_1.global_60
  loc_C30D6E: LdPrVar
  loc_C30D70: LateMemCall
  loc_C30D76: LitVarStr var_9C, "    <th>Cant.</th>"
  loc_C30D7B: PopAdLdVar
  loc_C30D7C: FLdPr Me
  loc_C30D7F: MemLdRfVar from_stack_1.global_60
  loc_C30D82: LdPrVar
  loc_C30D84: LateMemCall
  loc_C30D8A: LitVarStr var_9C, "    <th>Precio Unitario</th>"
  loc_C30D8F: PopAdLdVar
  loc_C30D90: FLdPr Me
  loc_C30D93: MemLdRfVar from_stack_1.global_60
  loc_C30D96: LdPrVar
  loc_C30D98: LateMemCall
  loc_C30D9E: LitVarStr var_9C, "    <th>Subtotal</th>"
  loc_C30DA3: PopAdLdVar
  loc_C30DA4: FLdPr Me
  loc_C30DA7: MemLdRfVar from_stack_1.global_60
  loc_C30DAA: LdPrVar
  loc_C30DAC: LateMemCall
  loc_C30DB2: LitVarStr var_9C, "    <th>Descuento</th>"
  loc_C30DB7: PopAdLdVar
  loc_C30DB8: FLdPr Me
  loc_C30DBB: MemLdRfVar from_stack_1.global_60
  loc_C30DBE: LdPrVar
  loc_C30DC0: LateMemCall
  loc_C30DC6: LitVarStr var_9C, "    <th>Total</th>"
  loc_C30DCB: PopAdLdVar
  loc_C30DCC: FLdPr Me
  loc_C30DCF: MemLdRfVar from_stack_1.global_60
  loc_C30DD2: LdPrVar
  loc_C30DD4: LateMemCall
  loc_C30DDA: LitVarStr var_9C, "  </tr>"
  loc_C30DDF: PopAdLdVar
  loc_C30DE0: FLdPr Me
  loc_C30DE3: MemLdRfVar from_stack_1.global_60
  loc_C30DE6: LdPrVar
  loc_C30DE8: LateMemCall
  loc_C30DEE: LitVarStr var_9C, "  </thead>"
  loc_C30DF3: PopAdLdVar
  loc_C30DF4: FLdPr Me
  loc_C30DF7: MemLdRfVar from_stack_1.global_60
  loc_C30DFA: LdPrVar
  loc_C30DFC: LateMemCall
  loc_C30E02: LitI4 1
  loc_C30E07: FLdPr Me
  loc_C30E0A: MemLdRfVar from_stack_1.global_96
  loc_C30E0D: FLdPr Me
  loc_C30E10: MemLdStr global_80
  loc_C30E13: LitI2_Byte 1
  loc_C30E15: FnUBound
  loc_C30E17: ForI4 var_E4
  loc_C30E1D: LitVarStr var_9C, "  <tr align=""left"" class=""Encabezado"">"
  loc_C30E22: PopAdLdVar
  loc_C30E23: FLdPr Me
  loc_C30E26: MemLdRfVar from_stack_1.global_60
  loc_C30E29: LdPrVar
  loc_C30E2B: LateMemCall
  loc_C30E31: LitStr "    <th colspan=""10"">SERVICIO: "
  loc_C30E34: FLdPr Me
  loc_C30E37: MemLdStr global_96
  loc_C30E3A: FLdPr Me
  loc_C30E3D: MemLdStr global_80
  loc_C30E40: Ary1LdPr
  loc_C30E41: MemLdStr global_0
  loc_C30E44: ConcatStr
  loc_C30E45: FStStrNoPop var_D0
  loc_C30E48: LitStr " - "
  loc_C30E4B: ConcatStr
  loc_C30E4C: FStStrNoPop var_D4
  loc_C30E4F: FLdPr Me
  loc_C30E52: MemLdStr global_96
  loc_C30E55: FLdPr Me
  loc_C30E58: MemLdStr global_80
  loc_C30E5B: Ary1LdPr
  loc_C30E5C: MemLdStr global_4
  loc_C30E5F: ConcatStr
  loc_C30E60: FStStrNoPop var_E8
  loc_C30E63: LitStr "</th>"
  loc_C30E66: ConcatStr
  loc_C30E67: CVarStr var_CC
  loc_C30E6A: PopAdLdVar
  loc_C30E6B: FLdPr Me
  loc_C30E6E: MemLdRfVar from_stack_1.global_60
  loc_C30E71: LdPrVar
  loc_C30E73: LateMemCall
  loc_C30E79: FFreeStr var_D0 = "": var_D4 = ""
  loc_C30E82: FFree1Var var_CC = ""
  loc_C30E85: LitVarStr var_9C, "     </tr>"
  loc_C30E8A: PopAdLdVar
  loc_C30E8B: FLdPr Me
  loc_C30E8E: MemLdRfVar from_stack_1.global_60
  loc_C30E91: LdPrVar
  loc_C30E93: LateMemCall
  loc_C30E99: LitI4 1
  loc_C30E9E: FLdPr Me
  loc_C30EA1: MemLdRfVar from_stack_1.global_100
  loc_C30EA4: FLdPr Me
  loc_C30EA7: MemLdStr global_96
  loc_C30EAA: FLdPr Me
  loc_C30EAD: MemLdStr global_80
  loc_C30EB0: Ary1LdPr
  loc_C30EB1: MemLdStr global_8
  loc_C30EB4: LitI2_Byte 1
  loc_C30EB6: FnUBound
  loc_C30EB8: ForI4 var_F0
  loc_C30EBE: FLdPr Me
  loc_C30EC1: MemLdStr global_100
  loc_C30EC4: FLdPr Me
  loc_C30EC7: MemLdStr global_96
  loc_C30ECA: FLdPr Me
  loc_C30ECD: MemLdStr global_80
  loc_C30ED0: AryLock
  loc_C30ED3: Ary1LdPr
  loc_C30ED4: MemLdStr global_8
  loc_C30ED7: AryLock
  loc_C30EDA: Ary1LdRf
  loc_C30EDB: FStR4 var_FC
  loc_C30EDE: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C30EE3: PopAdLdVar
  loc_C30EE4: FLdPr Me
  loc_C30EE7: MemLdRfVar from_stack_1.global_60
  loc_C30EEA: LdPrVar
  loc_C30EEC: LateMemCall
  loc_C30EF2: LitStr vbNullString
  loc_C30EF5: LitI2_Byte 0
  loc_C30EF7: LitI2_Byte 0
  loc_C30EF9: LitI2_Byte 0
  loc_C30EFB: LitStr "right"
  loc_C30EFE: FMemLdR4 var_FC(0)
  loc_C30F03: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30F08: CVarStr var_CC
  loc_C30F0B: PopAdLdVar
  loc_C30F0C: FLdPr Me
  loc_C30F0F: MemLdRfVar from_stack_1.global_60
  loc_C30F12: LdPrVar
  loc_C30F14: LateMemCall
  loc_C30F1A: FFree1Var var_CC = ""
  loc_C30F1D: LitStr vbNullString
  loc_C30F20: LitI2_Byte 0
  loc_C30F22: LitI2_Byte 0
  loc_C30F24: LitI2_Byte 0
  loc_C30F26: LitStr "left"
  loc_C30F29: FMemLdR4 var_FC(4)
  loc_C30F2E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30F33: CVarStr var_CC
  loc_C30F36: PopAdLdVar
  loc_C30F37: FLdPr Me
  loc_C30F3A: MemLdRfVar from_stack_1.global_60
  loc_C30F3D: LdPrVar
  loc_C30F3F: LateMemCall
  loc_C30F45: FFree1Var var_CC = ""
  loc_C30F48: LitStr vbNullString
  loc_C30F4B: LitI2_Byte 0
  loc_C30F4D: LitI2_Byte 0
  loc_C30F4F: LitI2_Byte 0
  loc_C30F51: LitStr "center"
  loc_C30F54: FMemLdR4 var_FC(8)
  loc_C30F59: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30F5E: CVarStr var_CC
  loc_C30F61: PopAdLdVar
  loc_C30F62: FLdPr Me
  loc_C30F65: MemLdRfVar from_stack_1.global_60
  loc_C30F68: LdPrVar
  loc_C30F6A: LateMemCall
  loc_C30F70: FFree1Var var_CC = ""
  loc_C30F73: LitStr vbNullString
  loc_C30F76: LitI2_Byte 0
  loc_C30F78: LitI2_Byte 0
  loc_C30F7A: LitI2_Byte 0
  loc_C30F7C: LitStr "left"
  loc_C30F7F: FMemLdR4 var_FC(12)
  loc_C30F84: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30F89: CVarStr var_CC
  loc_C30F8C: PopAdLdVar
  loc_C30F8D: FLdPr Me
  loc_C30F90: MemLdRfVar from_stack_1.global_60
  loc_C30F93: LdPrVar
  loc_C30F95: LateMemCall
  loc_C30F9B: FFree1Var var_CC = ""
  loc_C30F9E: LitStr vbNullString
  loc_C30FA1: LitI2_Byte 0
  loc_C30FA3: LitI2_Byte 0
  loc_C30FA5: LitI2_Byte 0
  loc_C30FA7: LitStr "left"
  loc_C30FAA: FMemLdR4 var_FC(16)
  loc_C30FAF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C30FB4: CVarStr var_CC
  loc_C30FB7: PopAdLdVar
  loc_C30FB8: FLdPr Me
  loc_C30FBB: MemLdRfVar from_stack_1.global_60
  loc_C30FBE: LdPrVar
  loc_C30FC0: LateMemCall
  loc_C30FC6: FFree1Var var_CC = ""
  loc_C30FC9: LitI4 -1
  loc_C30FCE: LitI4 0
  loc_C30FD3: LitI4 -1
  loc_C30FD8: LitI4 0
  loc_C30FDD: FMemLdRf 0
  loc_C30FE2: CVarRef
  loc_C30FE7: ImpAdCallI2 FormatNumber(, , , , )
  loc_C30FEC: FStStr var_D4
  loc_C30FEF: LitStr vbNullString
  loc_C30FF2: LitI2_Byte 0
  loc_C30FF4: LitI2_Byte 0
  loc_C30FF6: LitI2_Byte 0
  loc_C30FF8: LitStr "right"
  loc_C30FFB: FLdZeroAd var_D4
  loc_C30FFE: FStStrNoPop var_D0
  loc_C31001: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C31006: CVarStr var_CC
  loc_C31009: PopAdLdVar
  loc_C3100A: FLdPr Me
  loc_C3100D: MemLdRfVar from_stack_1.global_60
  loc_C31010: LdPrVar
  loc_C31012: LateMemCall
  loc_C31018: FFreeStr var_D0 = ""
  loc_C3101F: FFree1Var var_CC = ""
  loc_C31022: LitStr vbNullString
  loc_C31025: LitI2_Byte 0
  loc_C31027: LitI2_Byte 0
  loc_C31029: LitI2_Byte 0
  loc_C3102B: LitStr "right"
  loc_C3102E: FMemLdR4 var_FC(24)
  loc_C31033: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C31038: CVarStr var_CC
  loc_C3103B: PopAdLdVar
  loc_C3103C: FLdPr Me
  loc_C3103F: MemLdRfVar from_stack_1.global_60
  loc_C31042: LdPrVar
  loc_C31044: LateMemCall
  loc_C3104A: FFree1Var var_CC = ""
  loc_C3104D: LitStr vbNullString
  loc_C31050: LitI2_Byte 0
  loc_C31052: LitI2_Byte 0
  loc_C31054: LitI2_Byte 0
  loc_C31056: LitStr "right"
  loc_C31059: FMemLdR4 var_FC(28)
  loc_C3105E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C31063: CVarStr var_CC
  loc_C31066: PopAdLdVar
  loc_C31067: FLdPr Me
  loc_C3106A: MemLdRfVar from_stack_1.global_60
  loc_C3106D: LdPrVar
  loc_C3106F: LateMemCall
  loc_C31075: FFree1Var var_CC = ""
  loc_C31078: LitStr vbNullString
  loc_C3107B: LitI2_Byte 0
  loc_C3107D: LitI2_Byte 0
  loc_C3107F: LitI2_Byte 0
  loc_C31081: LitStr "right"
  loc_C31084: FMemLdR4 var_FC(32)
  loc_C31089: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C3108E: CVarStr var_CC
  loc_C31091: PopAdLdVar
  loc_C31092: FLdPr Me
  loc_C31095: MemLdRfVar from_stack_1.global_60
  loc_C31098: LdPrVar
  loc_C3109A: LateMemCall
  loc_C310A0: FFree1Var var_CC = ""
  loc_C310A3: LitStr vbNullString
  loc_C310A6: LitI2_Byte 0
  loc_C310A8: LitI2_Byte 0
  loc_C310AA: LitI2_Byte 0
  loc_C310AC: LitStr "right"
  loc_C310AF: FMemLdR4 var_FC(36)
  loc_C310B4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C310B9: CVarStr var_CC
  loc_C310BC: PopAdLdVar
  loc_C310BD: FLdPr Me
  loc_C310C0: MemLdRfVar from_stack_1.global_60
  loc_C310C3: LdPrVar
  loc_C310C5: LateMemCall
  loc_C310CB: FFree1Var var_CC = ""
  loc_C310CE: LitVarStr var_9C, "     </tr>"
  loc_C310D3: PopAdLdVar
  loc_C310D4: FLdPr Me
  loc_C310D7: MemLdRfVar from_stack_1.global_60
  loc_C310DA: LdPrVar
  loc_C310DC: LateMemCall
  loc_C310E2: LitI4 0
  loc_C310E7: FStR4 var_FC
  loc_C310EA: AryUnlock
  loc_C310ED: AryUnlock
  loc_C310F0: FLdPr Me
  loc_C310F3: MemLdRfVar from_stack_1.global_100
  loc_C310F6: NextI4 var_F0, loc_C30EBE
  loc_C310FB: FLdPr Me
  loc_C310FE: MemLdStr global_80
  loc_C31101: LitI2_Byte 1
  loc_C31103: FnUBound
  loc_C31105: LitI4 1
  loc_C3110A: GtI4
  loc_C3110B: BranchF loc_C3126E
  loc_C3110E: LitVarStr var_9C, "  <tr align=""right"" class=""SubTotales"">"
  loc_C31113: PopAdLdVar
  loc_C31114: FLdPr Me
  loc_C31117: MemLdRfVar from_stack_1.global_60
  loc_C3111A: LdPrVar
  loc_C3111C: LateMemCall
  loc_C31122: LitVarStr var_9C, "    <th colspan=""5"">Subtotal</th>"
  loc_C31127: PopAdLdVar
  loc_C31128: FLdPr Me
  loc_C3112B: MemLdRfVar from_stack_1.global_60
  loc_C3112E: LdPrVar
  loc_C31130: LateMemCall
  loc_C31136: FLdPr Me
  loc_C31139: MemLdStr global_96
  loc_C3113C: FLdPr Me
  loc_C3113F: MemLdStr global_80
  loc_C31142: AryLock
  loc_C31145: Ary1LdPr
  loc_C31146: MemLdRfVar from_stack_1.global_12
  loc_C31149: FStR4 var_104
  loc_C3114C: LitI4 -1
  loc_C31151: LitI4 0
  loc_C31156: LitI4 -1
  loc_C3115B: LitI4 0
  loc_C31160: FMemLdRf 0
  loc_C31165: CVarRef
  loc_C3116A: ImpAdCallI2 FormatNumber(, , , , )
  loc_C3116F: FStStr var_D4
  loc_C31172: LitStr vbNullString
  loc_C31175: LitI2_Byte 0
  loc_C31177: LitI2_Byte 0
  loc_C31179: LitI2_Byte 0
  loc_C3117B: LitStr "right"
  loc_C3117E: FLdZeroAd var_D4
  loc_C31181: FStStrNoPop var_D0
  loc_C31184: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C31189: CVarStr var_CC
  loc_C3118C: PopAdLdVar
  loc_C3118D: FLdPr Me
  loc_C31190: MemLdRfVar from_stack_1.global_60
  loc_C31193: LdPrVar
  loc_C31195: LateMemCall
  loc_C3119B: FFreeStr var_D0 = ""
  loc_C311A2: FFree1Var var_CC = ""
  loc_C311A5: LitStr vbNullString
  loc_C311A8: LitI2_Byte 0
  loc_C311AA: LitI2_Byte 0
  loc_C311AC: LitI2_Byte 0
  loc_C311AE: LitStr "right"
  loc_C311B1: LitStr vbNullString
  loc_C311B4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C311B9: CVarStr var_CC
  loc_C311BC: PopAdLdVar
  loc_C311BD: FLdPr Me
  loc_C311C0: MemLdRfVar from_stack_1.global_60
  loc_C311C3: LdPrVar
  loc_C311C5: LateMemCall
  loc_C311CB: FFree1Var var_CC = ""
  loc_C311CE: LitStr vbNullString
  loc_C311D1: LitI2_Byte 0
  loc_C311D3: LitI2_Byte 0
  loc_C311D5: LitI2_Byte 0
  loc_C311D7: LitStr "right"
  loc_C311DA: FMemLdR4 var_104(28)
  loc_C311DF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C311E4: CVarStr var_CC
  loc_C311E7: PopAdLdVar
  loc_C311E8: FLdPr Me
  loc_C311EB: MemLdRfVar from_stack_1.global_60
  loc_C311EE: LdPrVar
  loc_C311F0: LateMemCall
  loc_C311F6: FFree1Var var_CC = ""
  loc_C311F9: LitStr vbNullString
  loc_C311FC: LitI2_Byte 0
  loc_C311FE: LitI2_Byte 0
  loc_C31200: LitI2_Byte 0
  loc_C31202: LitStr "right"
  loc_C31205: FMemLdR4 var_104(32)
  loc_C3120A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C3120F: CVarStr var_CC
  loc_C31212: PopAdLdVar
  loc_C31213: FLdPr Me
  loc_C31216: MemLdRfVar from_stack_1.global_60
  loc_C31219: LdPrVar
  loc_C3121B: LateMemCall
  loc_C31221: FFree1Var var_CC = ""
  loc_C31224: LitStr vbNullString
  loc_C31227: LitI2_Byte 0
  loc_C31229: LitI2_Byte 0
  loc_C3122B: LitI2_Byte 0
  loc_C3122D: LitStr "right"
  loc_C31230: FMemLdR4 var_104(36)
  loc_C31235: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C3123A: CVarStr var_CC
  loc_C3123D: PopAdLdVar
  loc_C3123E: FLdPr Me
  loc_C31241: MemLdRfVar from_stack_1.global_60
  loc_C31244: LdPrVar
  loc_C31246: LateMemCall
  loc_C3124C: FFree1Var var_CC = ""
  loc_C3124F: LitVarStr var_9C, "     </tr>"
  loc_C31254: PopAdLdVar
  loc_C31255: FLdPr Me
  loc_C31258: MemLdRfVar from_stack_1.global_60
  loc_C3125B: LdPrVar
  loc_C3125D: LateMemCall
  loc_C31263: LitI4 0
  loc_C31268: FStR4 var_104
  loc_C3126B: AryUnlock
  loc_C3126E: FLdPr Me
  loc_C31271: MemLdRfVar from_stack_1.global_96
  loc_C31274: NextI4 var_E4, loc_C30E1D
  loc_C31279: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_C3127E: PopAdLdVar
  loc_C3127F: FLdPr Me
  loc_C31282: MemLdRfVar from_stack_1.global_60
  loc_C31285: LdPrVar
  loc_C31287: LateMemCall
  loc_C3128D: LitVarStr var_9C, "    <td colspan=""5"" align=""right"">Totales</td>"
  loc_C31292: PopAdLdVar
  loc_C31293: FLdPr Me
  loc_C31296: MemLdRfVar from_stack_1.global_60
  loc_C31299: LdPrVar
  loc_C3129B: LateMemCall
  loc_C312A1: LitI4 1
  loc_C312A6: FLdPr Me
  loc_C312A9: MemLdStr global_88
  loc_C312AC: AryLock
  loc_C312AF: Ary1LdRf
  loc_C312B0: FStR4 var_10C
  loc_C312B3: LitI4 -1
  loc_C312B8: LitI4 0
  loc_C312BD: LitI4 -1
  loc_C312C2: LitI4 0
  loc_C312C7: FMemLdRf 0
  loc_C312CC: CVarRef
  loc_C312D1: ImpAdCallI2 FormatNumber(, , , , )
  loc_C312D6: FStStr var_D4
  loc_C312D9: LitStr vbNullString
  loc_C312DC: LitI2_Byte 0
  loc_C312DE: LitI2_Byte 0
  loc_C312E0: LitI2_Byte 0
  loc_C312E2: LitStr "right"
  loc_C312E5: FLdZeroAd var_D4
  loc_C312E8: FStStrNoPop var_D0
  loc_C312EB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C312F0: CVarStr var_CC
  loc_C312F3: PopAdLdVar
  loc_C312F4: FLdPr Me
  loc_C312F7: MemLdRfVar from_stack_1.global_60
  loc_C312FA: LdPrVar
  loc_C312FC: LateMemCall
  loc_C31302: FFreeStr var_D0 = ""
  loc_C31309: FFree1Var var_CC = ""
  loc_C3130C: LitStr vbNullString
  loc_C3130F: LitI2_Byte 0
  loc_C31311: LitI2_Byte 0
  loc_C31313: LitI2_Byte 0
  loc_C31315: LitStr "right"
  loc_C31318: LitStr vbNullString
  loc_C3131B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C31320: CVarStr var_CC
  loc_C31323: PopAdLdVar
  loc_C31324: FLdPr Me
  loc_C31327: MemLdRfVar from_stack_1.global_60
  loc_C3132A: LdPrVar
  loc_C3132C: LateMemCall
  loc_C31332: FFree1Var var_CC = ""
  loc_C31335: LitStr vbNullString
  loc_C31338: LitI2_Byte 0
  loc_C3133A: LitI2_Byte 0
  loc_C3133C: LitI2_Byte 0
  loc_C3133E: LitStr "right"
  loc_C31341: FMemLdR4 var_10C(28)
  loc_C31346: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C3134B: CVarStr var_CC
  loc_C3134E: PopAdLdVar
  loc_C3134F: FLdPr Me
  loc_C31352: MemLdRfVar from_stack_1.global_60
  loc_C31355: LdPrVar
  loc_C31357: LateMemCall
  loc_C3135D: FFree1Var var_CC = ""
  loc_C31360: LitStr vbNullString
  loc_C31363: LitI2_Byte 0
  loc_C31365: LitI2_Byte 0
  loc_C31367: LitI2_Byte 0
  loc_C31369: LitStr "right"
  loc_C3136C: FMemLdR4 var_10C(32)
  loc_C31371: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C31376: CVarStr var_CC
  loc_C31379: PopAdLdVar
  loc_C3137A: FLdPr Me
  loc_C3137D: MemLdRfVar from_stack_1.global_60
  loc_C31380: LdPrVar
  loc_C31382: LateMemCall
  loc_C31388: FFree1Var var_CC = ""
  loc_C3138B: LitStr vbNullString
  loc_C3138E: LitI2_Byte 0
  loc_C31390: LitI2_Byte 0
  loc_C31392: LitI2_Byte 0
  loc_C31394: LitStr "right"
  loc_C31397: FMemLdR4 var_10C(36)
  loc_C3139C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C313A1: CVarStr var_CC
  loc_C313A4: PopAdLdVar
  loc_C313A5: FLdPr Me
  loc_C313A8: MemLdRfVar from_stack_1.global_60
  loc_C313AB: LdPrVar
  loc_C313AD: LateMemCall
  loc_C313B3: FFree1Var var_CC = ""
  loc_C313B6: LitI4 0
  loc_C313BB: FStR4 var_10C
  loc_C313BE: AryUnlock
  loc_C313C1: LitVarStr var_9C, "     </tr>"
  loc_C313C6: PopAdLdVar
  loc_C313C7: FLdPr Me
  loc_C313CA: MemLdRfVar from_stack_1.global_60
  loc_C313CD: LdPrVar
  loc_C313CF: LateMemCall
  loc_C313D5: Call Proc_244_32_A0B9C8()
  loc_C313DA: FLdPr Me
  loc_C313DD: MemLdRfVar from_stack_1.global_60
  loc_C313E0: LdPrVar
  loc_C313E2: LateMemCall
  loc_C313E8: LitStr vbNullString
  loc_C313EB: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_C313F0: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C78B4
  'Data Table: 4D34E0
  loc_9C789C: LitI2_Byte 0
  loc_9C789E: FLdPr Me
  loc_9C78A1: MemStI2 bLogos
  loc_9C78A4: Call GeneraHTML()
  loc_9C78A9: LitI2_Byte &HFF
  loc_9C78AB: FLdPr Me
  loc_9C78AE: MemStI2 bLogos
  loc_9C78B1: ExitProcHresult
End Sub

Private Function Proc_244_29_AA39C4() 'AA39C4
  'Data Table: 4D34E0
  loc_AA3908: FLdPr Me
  loc_AA390B: MemLdStr global_96
  loc_AA390E: LitI4 1
  loc_AA3913: AddI4
  loc_AA3914: FLdPr Me
  loc_AA3917: MemStI4 global_96
  loc_AA391A: LitI4 0
  loc_AA391F: FLdPr Me
  loc_AA3922: MemStI4 global_100
  loc_AA3925: LitI4 0
  loc_AA392A: FLdPr Me
  loc_AA392D: MemLdStr global_96
  loc_AA3930: FLdPr Me
  loc_AA3933: MemLdRfVar from_stack_1.global_80
  loc_AA3936: RedimPreserve
  loc_AA3940: FLdRfVar var_86
  loc_AA3943: FLdPr Me
  loc_AA3946: MemLdRfVar from_stack_1.global_76
  loc_AA3949: NewIfNullPr clsdevadeta
  loc_AA394C: from_stack_1 = clsdevadeta.CodiSede
  loc_AA3951: LitI2_Byte 0
  loc_AA3953: LitVar_Missing var_BC
  loc_AA3956: LitI2_Byte 0
  loc_AA3958: FLdI2 var_86
  loc_AA395B: CVarI2 var_9C
  loc_AA395E: PopAdLdVar
  loc_AA395F: FLdPr Me
  loc_AA3962: MemLdStr global_96
  loc_AA3965: FLdPr Me
  loc_AA3968: MemLdStr global_80
  loc_AA396B: AryLock
  loc_AA396E: Ary1LdPr
  loc_AA396F: MemLdRfVar from_stack_1.global_0
  loc_AA3972: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AA3977: AryUnlock
  loc_AA397A: FFree1Var var_BC = ""
  loc_AA397D: FLdRfVar var_C0
  loc_AA3980: FLdPr Me
  loc_AA3983: MemLdRfVar from_stack_1.global_76
  loc_AA3986: NewIfNullPr clsdevadeta
  loc_AA3989: from_stack_1 = clsdevadeta.DetaSede
  loc_AA398E: LitI2_Byte 0
  loc_AA3990: LitVar_Missing var_D0
  loc_AA3993: LitI2_Byte 0
  loc_AA3995: FLdZeroAd var_C0
  loc_AA3998: CVarStr var_BC
  loc_AA399B: PopAdLdVar
  loc_AA399C: FLdPr Me
  loc_AA399F: MemLdStr global_96
  loc_AA39A2: FLdPr Me
  loc_AA39A5: MemLdStr global_80
  loc_AA39A8: AryLock
  loc_AA39AB: Ary1LdPr
  loc_AA39AC: MemLdRfVar from_stack_1.global_4
  loc_AA39AF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AA39B4: AryUnlock
  loc_AA39B7: FFreeVar var_BC = ""
  loc_AA39BE: Call Proc_244_30_B332E8()
  loc_AA39C3: ExitProcHresult
End Function

Private Function Proc_244_30_B332E8() 'B332E8
  'Data Table: 4D34E0
  loc_B33000: FLdPr Me
  loc_B33003: MemLdStr global_100
  loc_B33006: LitI4 1
  loc_B3300B: AddI4
  loc_B3300C: FLdPr Me
  loc_B3300F: MemStI4 global_100
  loc_B33012: LitI4 0
  loc_B33017: FLdPr Me
  loc_B3301A: MemLdStr global_100
  loc_B3301D: FLdPr Me
  loc_B33020: MemLdStr global_96
  loc_B33023: FLdPr Me
  loc_B33026: MemLdStr global_80
  loc_B33029: Ary1LdPr
  loc_B3302A: MemLdRfVar from_stack_1.global_8
  loc_B3302D: RedimPreserve
  loc_B33037: FLdPr Me
  loc_B3303A: MemLdStr global_100
  loc_B3303D: FLdPr Me
  loc_B33040: MemLdStr global_96
  loc_B33043: FLdPr Me
  loc_B33046: MemLdStr global_80
  loc_B33049: AryLock
  loc_B3304C: Ary1LdPr
  loc_B3304D: MemLdStr global_8
  loc_B33050: AryLock
  loc_B33053: Ary1LdRf
  loc_B33054: FStR4 var_90
  loc_B33057: FLdRfVar var_92
  loc_B3305A: FLdPr Me
  loc_B3305D: MemLdRfVar from_stack_1.global_76
  loc_B33060: NewIfNullPr clsdevadeta
  loc_B33063: from_stack_1 = clsdevadeta.PeriBole
  loc_B33068: FLdRfVar var_9C
  loc_B3306B: FLdPr Me
  loc_B3306E: MemLdRfVar from_stack_1.global_76
  loc_B33071: NewIfNullPr clsdevadeta
  loc_B33074: from_stack_1 = clsdevadeta.NumeBole
  loc_B33079: LitI2_Byte 0
  loc_B3307B: LitVar_Missing var_D4
  loc_B3307E: LitI2_Byte 0
  loc_B33080: FLdI2 var_92
  loc_B33083: CStrUI1
  loc_B33085: FStStrNoPop var_98
  loc_B33088: LitStr "/"
  loc_B3308B: ConcatStr
  loc_B3308C: FStStrNoPop var_A0
  loc_B3308F: ILdRf var_9C
  loc_B33092: CStrI4
  loc_B33094: FStStrNoPop var_A4
  loc_B33097: ConcatStr
  loc_B33098: CVarStr var_B4
  loc_B3309B: PopAdLdVar
  loc_B3309C: FMemLdRf ext_4010C4
  loc_B330A1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B330A6: FFreeStr var_98 = "": var_A0 = ""
  loc_B330AF: FFreeVar var_B4 = ""
  loc_B330B6: FLdRfVar var_98
  loc_B330B9: FLdPr Me
  loc_B330BC: MemLdRfVar from_stack_1.global_76
  loc_B330BF: NewIfNullPr clsdevadeta
  loc_B330C2: from_stack_1 = clsdevadeta.DetaPers
  loc_B330C7: LitI2_Byte 0
  loc_B330C9: LitVar_Missing var_D4
  loc_B330CC: LitI2_Byte 0
  loc_B330CE: FLdZeroAd var_98
  loc_B330D1: CVarStr var_B4
  loc_B330D4: PopAdLdVar
  loc_B330D5: FMemLdRf ext_4010C4
  loc_B330DA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B330DF: FFreeVar var_B4 = ""
  loc_B330E6: FLdRfVar var_98
  loc_B330E9: FLdPr Me
  loc_B330EC: MemLdRfVar from_stack_1.global_76
  loc_B330EF: NewIfNullPr clsdevadeta
  loc_B330F2: from_stack_1 = clsdevadeta.FealBole
  loc_B330F7: LitI2_Byte 0
  loc_B330F9: LitVar_Missing var_D4
  loc_B330FC: LitI2_Byte 0
  loc_B330FE: FLdZeroAd var_98
  loc_B33101: CVarStr var_B4
  loc_B33104: PopAdLdVar
  loc_B33105: FMemLdRf ext_4010C4
  loc_B3310A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3310F: FFreeVar var_B4 = ""
  loc_B33116: FLdRfVar var_98
  loc_B33119: FLdPr Me
  loc_B3311C: MemLdRfVar from_stack_1.global_76
  loc_B3311F: NewIfNullPr clsdevadeta
  loc_B33122: from_stack_1 = clsdevadeta.EstaBole
  loc_B33127: LitI2_Byte 0
  loc_B33129: LitVar_Missing var_D4
  loc_B3312C: LitI2_Byte 0
  loc_B3312E: FLdZeroAd var_98
  loc_B33131: CVarStr var_B4
  loc_B33134: PopAdLdVar
  loc_B33135: FMemLdRf ext_4010C4
  loc_B3313A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3313F: FFreeVar var_B4 = ""
  loc_B33146: FLdRfVar var_98
  loc_B33149: FLdPr Me
  loc_B3314C: MemLdRfVar from_stack_1.global_76
  loc_B3314F: NewIfNullPr clsdevadeta
  loc_B33152: from_stack_1 = clsdevadeta.ObseBole
  loc_B33157: LitVarI2 var_D4, 50
  loc_B3315C: LitI4 1
  loc_B33161: FLdZeroAd var_98
  loc_B33164: CVarStr var_B4
  loc_B33167: FLdRfVar var_E4
  loc_B3316A: ImpAdCallFPR4  = Mid(, , )
  loc_B3316F: LitI2_Byte 0
  loc_B33171: LitVar_Missing var_104
  loc_B33174: LitI2_Byte 0
  loc_B33176: FLdVar var_E4
  loc_B3317A: FMemLdRf ext_4010C4
  loc_B3317F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B33184: FFreeVar var_B4 = "": var_D4 = "": var_E4 = ""
  loc_B3318F: FLdRfVar var_10C
  loc_B33192: FLdPr Me
  loc_B33195: MemLdRfVar from_stack_1.global_76
  loc_B33198: NewIfNullPr clsdevadeta
  loc_B3319B: from_stack_1 = clsdevadeta.CantDede
  loc_B331A0: LitI2_Byte 0
  loc_B331A2: FLdPr Me
  loc_B331A5: MemLdStr global_96
  loc_B331A8: FLdPr Me
  loc_B331AB: MemLdStr global_80
  loc_B331AE: AryLock
  loc_B331B1: Ary1LdPr
  loc_B331B2: MemLdRfVar from_stack_1.global_32
  loc_B331B5: CVarRef
  loc_B331BA: LitI2_Byte 0
  loc_B331BC: FLdFPR8 var_10C
  loc_B331BF: CVarR8
  loc_B331C3: PopAdLdVar
  loc_B331C4: FMemLdRf ext_4010C4
  loc_B331C9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B331CE: AryUnlock
  loc_B331D1: FLdRfVar var_10C
  loc_B331D4: FLdPr Me
  loc_B331D7: MemLdRfVar from_stack_1.global_76
  loc_B331DA: NewIfNullPr clsdevadeta
  loc_B331DD: from_stack_1 = clsdevadeta.PrunDede
  loc_B331E2: LitI2_Byte 0
  loc_B331E4: LitVar_Missing var_B4
  loc_B331E7: LitI2_Byte 0
  loc_B331E9: FLdFPR8 var_10C
  loc_B331EC: CVarR8
  loc_B331F0: PopAdLdVar
  loc_B331F1: FMemLdRf ext_4010C4
  loc_B331F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B331FB: FFree1Var var_B4 = ""
  loc_B331FE: FLdRfVar var_10C
  loc_B33201: FLdPr Me
  loc_B33204: MemLdRfVar from_stack_1.global_76
  loc_B33207: NewIfNullPr clsdevadeta
  loc_B3320A: from_stack_1 = clsdevadeta.SubtDede
  loc_B3320F: LitI2_Byte 0
  loc_B33211: FLdPr Me
  loc_B33214: MemLdStr global_96
  loc_B33217: FLdPr Me
  loc_B3321A: MemLdStr global_80
  loc_B3321D: AryLock
  loc_B33220: Ary1LdPr
  loc_B33221: MemLdRfVar from_stack_1.global_40
  loc_B33224: CVarRef
  loc_B33229: LitI2_Byte &HFF
  loc_B3322B: FLdFPR8 var_10C
  loc_B3322E: CVarR8
  loc_B33232: PopAdLdVar
  loc_B33233: FMemLdRf ext_4010C4
  loc_B33238: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3323D: AryUnlock
  loc_B33240: FLdRfVar var_10C
  loc_B33243: FLdPr Me
  loc_B33246: MemLdRfVar from_stack_1.global_76
  loc_B33249: NewIfNullPr clsdevadeta
  loc_B3324C: from_stack_1 = clsdevadeta.DescDede
  loc_B33251: LitI2_Byte 0
  loc_B33253: FLdPr Me
  loc_B33256: MemLdStr global_96
  loc_B33259: FLdPr Me
  loc_B3325C: MemLdStr global_80
  loc_B3325F: AryLock
  loc_B33262: Ary1LdPr
  loc_B33263: MemLdRfVar from_stack_1.global_44
  loc_B33266: CVarRef
  loc_B3326B: LitI2_Byte &HFF
  loc_B3326D: FLdFPR8 var_10C
  loc_B33270: CVarR8
  loc_B33274: PopAdLdVar
  loc_B33275: FMemLdRf ext_4010C4
  loc_B3327A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3327F: AryUnlock
  loc_B33282: FLdRfVar var_10C
  loc_B33285: FLdPr Me
  loc_B33288: MemLdRfVar from_stack_1.global_76
  loc_B3328B: NewIfNullPr clsdevadeta
  loc_B3328E: from_stack_1 = clsdevadeta.TotaDede
  loc_B33293: LitI2_Byte 0
  loc_B33295: FLdPr Me
  loc_B33298: MemLdStr global_96
  loc_B3329B: FLdPr Me
  loc_B3329E: MemLdStr global_80
  loc_B332A1: AryLock
  loc_B332A4: Ary1LdPr
  loc_B332A5: MemLdRfVar from_stack_1.global_48
  loc_B332A8: CVarRef
  loc_B332AD: LitI2_Byte &HFF
  loc_B332AF: FLdFPR8 var_10C
  loc_B332B2: CVarR8
  loc_B332B6: PopAdLdVar
  loc_B332B7: FMemLdRf ext_4010C4
  loc_B332BC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B332C1: AryUnlock
  loc_B332C4: LitI4 0
  loc_B332C9: FStR4 var_90
  loc_B332CC: AryUnlock
  loc_B332CF: AryUnlock
  loc_B332D2: LitI2_Byte 1
  loc_B332D4: PopTmpLdAd2 var_92
  loc_B332D7: FLdPr Me
  loc_B332DA: MemLdRfVar from_stack_1.global_76
  loc_B332DD: NewIfNullPr clsdevadeta
  loc_B332E0: Call clsdevadeta.Move(from_stack_1v)
  loc_B332E5: ExitProcHresult
End Function

Private Function Proc_244_31_BDA0D0() 'BDA0D0
  'Data Table: 4D34E0
  loc_BD9980: LitVarStr var_94, "<html>"
  loc_BD9985: PopAdLdVar
  loc_BD9986: FLdPr Me
  loc_BD9989: MemLdRfVar from_stack_1.global_60
  loc_BD998C: LdPrVar
  loc_BD998E: LateMemCall
  loc_BD9994: LitVarStr var_94, "<head>"
  loc_BD9999: PopAdLdVar
  loc_BD999A: FLdPr Me
  loc_BD999D: MemLdRfVar from_stack_1.global_60
  loc_BD99A0: LdPrVar
  loc_BD99A2: LateMemCall
  loc_BD99A8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD99AD: PopAdLdVar
  loc_BD99AE: FLdPr Me
  loc_BD99B1: MemLdRfVar from_stack_1.global_60
  loc_BD99B4: LdPrVar
  loc_BD99B6: LateMemCall
  loc_BD99BC: LitStr "<title>"
  loc_BD99BF: FLdRfVar var_A8
  loc_BD99C2: FLdPr Me
  loc_BD99C5:  = Me.Caption
  loc_BD99CA: ILdRf var_A8
  loc_BD99CD: ConcatStr
  loc_BD99CE: FStStrNoPop var_AC
  loc_BD99D1: LitStr "</title>"
  loc_BD99D4: ConcatStr
  loc_BD99D5: CVarStr var_BC
  loc_BD99D8: PopAdLdVar
  loc_BD99D9: FLdPr Me
  loc_BD99DC: MemLdRfVar from_stack_1.global_60
  loc_BD99DF: LdPrVar
  loc_BD99E1: LateMemCall
  loc_BD99E7: FFreeStr var_A8 = ""
  loc_BD99EE: FFree1Var var_BC = ""
  loc_BD99F1: LitVarStr var_94, "<style type=""text/css"">"
  loc_BD99F6: PopAdLdVar
  loc_BD99F7: FLdPr Me
  loc_BD99FA: MemLdRfVar from_stack_1.global_60
  loc_BD99FD: LdPrVar
  loc_BD99FF: LateMemCall
  loc_BD9A05: LitVarStr var_94, ".Titulo1 {"
  loc_BD9A0A: PopAdLdVar
  loc_BD9A0B: FLdPr Me
  loc_BD9A0E: MemLdRfVar from_stack_1.global_60
  loc_BD9A11: LdPrVar
  loc_BD9A13: LateMemCall
  loc_BD9A19: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD9A1E: PopAdLdVar
  loc_BD9A1F: FLdPr Me
  loc_BD9A22: MemLdRfVar from_stack_1.global_60
  loc_BD9A25: LdPrVar
  loc_BD9A27: LateMemCall
  loc_BD9A2D: LitVarStr var_94, " font-size: 18px;"
  loc_BD9A32: PopAdLdVar
  loc_BD9A33: FLdPr Me
  loc_BD9A36: MemLdRfVar from_stack_1.global_60
  loc_BD9A39: LdPrVar
  loc_BD9A3B: LateMemCall
  loc_BD9A41: LitVarStr var_94, " font-weight: bold;"
  loc_BD9A46: PopAdLdVar
  loc_BD9A47: FLdPr Me
  loc_BD9A4A: MemLdRfVar from_stack_1.global_60
  loc_BD9A4D: LdPrVar
  loc_BD9A4F: LateMemCall
  loc_BD9A55: LitVarStr var_94, "}"
  loc_BD9A5A: PopAdLdVar
  loc_BD9A5B: FLdPr Me
  loc_BD9A5E: MemLdRfVar from_stack_1.global_60
  loc_BD9A61: LdPrVar
  loc_BD9A63: LateMemCall
  loc_BD9A69: LitVarStr var_94, ".Titulo2 {"
  loc_BD9A6E: PopAdLdVar
  loc_BD9A6F: FLdPr Me
  loc_BD9A72: MemLdRfVar from_stack_1.global_60
  loc_BD9A75: LdPrVar
  loc_BD9A77: LateMemCall
  loc_BD9A7D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD9A82: PopAdLdVar
  loc_BD9A83: FLdPr Me
  loc_BD9A86: MemLdRfVar from_stack_1.global_60
  loc_BD9A89: LdPrVar
  loc_BD9A8B: LateMemCall
  loc_BD9A91: LitVarStr var_94, " font-size: 14px;"
  loc_BD9A96: PopAdLdVar
  loc_BD9A97: FLdPr Me
  loc_BD9A9A: MemLdRfVar from_stack_1.global_60
  loc_BD9A9D: LdPrVar
  loc_BD9A9F: LateMemCall
  loc_BD9AA5: LitVarStr var_94, " font-weight: bold;"
  loc_BD9AAA: PopAdLdVar
  loc_BD9AAB: FLdPr Me
  loc_BD9AAE: MemLdRfVar from_stack_1.global_60
  loc_BD9AB1: LdPrVar
  loc_BD9AB3: LateMemCall
  loc_BD9AB9: LitVarStr var_94, "}"
  loc_BD9ABE: PopAdLdVar
  loc_BD9ABF: FLdPr Me
  loc_BD9AC2: MemLdRfVar from_stack_1.global_60
  loc_BD9AC5: LdPrVar
  loc_BD9AC7: LateMemCall
  loc_BD9ACD: LitVarStr var_94, ".Normal {"
  loc_BD9AD2: PopAdLdVar
  loc_BD9AD3: FLdPr Me
  loc_BD9AD6: MemLdRfVar from_stack_1.global_60
  loc_BD9AD9: LdPrVar
  loc_BD9ADB: LateMemCall
  loc_BD9AE1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD9AE6: PopAdLdVar
  loc_BD9AE7: FLdPr Me
  loc_BD9AEA: MemLdRfVar from_stack_1.global_60
  loc_BD9AED: LdPrVar
  loc_BD9AEF: LateMemCall
  loc_BD9AF5: LitVarStr var_94, " font-size: 12px;"
  loc_BD9AFA: PopAdLdVar
  loc_BD9AFB: FLdPr Me
  loc_BD9AFE: MemLdRfVar from_stack_1.global_60
  loc_BD9B01: LdPrVar
  loc_BD9B03: LateMemCall
  loc_BD9B09: LitVarStr var_94, " font-style: normal;"
  loc_BD9B0E: PopAdLdVar
  loc_BD9B0F: FLdPr Me
  loc_BD9B12: MemLdRfVar from_stack_1.global_60
  loc_BD9B15: LdPrVar
  loc_BD9B17: LateMemCall
  loc_BD9B1D: LitVarStr var_94, " font-weight: normal;"
  loc_BD9B22: PopAdLdVar
  loc_BD9B23: FLdPr Me
  loc_BD9B26: MemLdRfVar from_stack_1.global_60
  loc_BD9B29: LdPrVar
  loc_BD9B2B: LateMemCall
  loc_BD9B31: LitVarStr var_94, " font-variant: normal;"
  loc_BD9B36: PopAdLdVar
  loc_BD9B37: FLdPr Me
  loc_BD9B3A: MemLdRfVar from_stack_1.global_60
  loc_BD9B3D: LdPrVar
  loc_BD9B3F: LateMemCall
  loc_BD9B45: LitVarStr var_94, "}"
  loc_BD9B4A: PopAdLdVar
  loc_BD9B4B: FLdPr Me
  loc_BD9B4E: MemLdRfVar from_stack_1.global_60
  loc_BD9B51: LdPrVar
  loc_BD9B53: LateMemCall
  loc_BD9B59: LitVarStr var_94, ".Encabezado {"
  loc_BD9B5E: PopAdLdVar
  loc_BD9B5F: FLdPr Me
  loc_BD9B62: MemLdRfVar from_stack_1.global_60
  loc_BD9B65: LdPrVar
  loc_BD9B67: LateMemCall
  loc_BD9B6D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BD9B72: PopAdLdVar
  loc_BD9B73: FLdPr Me
  loc_BD9B76: MemLdRfVar from_stack_1.global_60
  loc_BD9B79: LdPrVar
  loc_BD9B7B: LateMemCall
  loc_BD9B81: LitVarStr var_94, " font-size: 11px;"
  loc_BD9B86: PopAdLdVar
  loc_BD9B87: FLdPr Me
  loc_BD9B8A: MemLdRfVar from_stack_1.global_60
  loc_BD9B8D: LdPrVar
  loc_BD9B8F: LateMemCall
  loc_BD9B95: LitVarStr var_94, " font-weight: bold;"
  loc_BD9B9A: PopAdLdVar
  loc_BD9B9B: FLdPr Me
  loc_BD9B9E: MemLdRfVar from_stack_1.global_60
  loc_BD9BA1: LdPrVar
  loc_BD9BA3: LateMemCall
  loc_BD9BA9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BD9BAE: PopAdLdVar
  loc_BD9BAF: FLdPr Me
  loc_BD9BB2: MemLdRfVar from_stack_1.global_60
  loc_BD9BB5: LdPrVar
  loc_BD9BB7: LateMemCall
  loc_BD9BBD: LitVarStr var_94, "}"
  loc_BD9BC2: PopAdLdVar
  loc_BD9BC3: FLdPr Me
  loc_BD9BC6: MemLdRfVar from_stack_1.global_60
  loc_BD9BC9: LdPrVar
  loc_BD9BCB: LateMemCall
  loc_BD9BD1: LitVarStr var_94, ".LineaDato {"
  loc_BD9BD6: PopAdLdVar
  loc_BD9BD7: FLdPr Me
  loc_BD9BDA: MemLdRfVar from_stack_1.global_60
  loc_BD9BDD: LdPrVar
  loc_BD9BDF: LateMemCall
  loc_BD9BE5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD9BEA: PopAdLdVar
  loc_BD9BEB: FLdPr Me
  loc_BD9BEE: MemLdRfVar from_stack_1.global_60
  loc_BD9BF1: LdPrVar
  loc_BD9BF3: LateMemCall
  loc_BD9BF9: LitVarStr var_94, " font-size: 10px;"
  loc_BD9BFE: PopAdLdVar
  loc_BD9BFF: FLdPr Me
  loc_BD9C02: MemLdRfVar from_stack_1.global_60
  loc_BD9C05: LdPrVar
  loc_BD9C07: LateMemCall
  loc_BD9C0D: LitVarStr var_94, "}"
  loc_BD9C12: PopAdLdVar
  loc_BD9C13: FLdPr Me
  loc_BD9C16: MemLdRfVar from_stack_1.global_60
  loc_BD9C19: LdPrVar
  loc_BD9C1B: LateMemCall
  loc_BD9C21: LitVarStr var_94, ".Totales {"
  loc_BD9C26: PopAdLdVar
  loc_BD9C27: FLdPr Me
  loc_BD9C2A: MemLdRfVar from_stack_1.global_60
  loc_BD9C2D: LdPrVar
  loc_BD9C2F: LateMemCall
  loc_BD9C35: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD9C3A: PopAdLdVar
  loc_BD9C3B: FLdPr Me
  loc_BD9C3E: MemLdRfVar from_stack_1.global_60
  loc_BD9C41: LdPrVar
  loc_BD9C43: LateMemCall
  loc_BD9C49: LitVarStr var_94, " font-size: 12px;"
  loc_BD9C4E: PopAdLdVar
  loc_BD9C4F: FLdPr Me
  loc_BD9C52: MemLdRfVar from_stack_1.global_60
  loc_BD9C55: LdPrVar
  loc_BD9C57: LateMemCall
  loc_BD9C5D: LitVarStr var_94, " font-weight: bold;"
  loc_BD9C62: PopAdLdVar
  loc_BD9C63: FLdPr Me
  loc_BD9C66: MemLdRfVar from_stack_1.global_60
  loc_BD9C69: LdPrVar
  loc_BD9C6B: LateMemCall
  loc_BD9C71: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD9C76: PopAdLdVar
  loc_BD9C77: FLdPr Me
  loc_BD9C7A: MemLdRfVar from_stack_1.global_60
  loc_BD9C7D: LdPrVar
  loc_BD9C7F: LateMemCall
  loc_BD9C85: LitVarStr var_94, "}"
  loc_BD9C8A: PopAdLdVar
  loc_BD9C8B: FLdPr Me
  loc_BD9C8E: MemLdRfVar from_stack_1.global_60
  loc_BD9C91: LdPrVar
  loc_BD9C93: LateMemCall
  loc_BD9C99: LitVarStr var_94, ".SubTotales {"
  loc_BD9C9E: PopAdLdVar
  loc_BD9C9F: FLdPr Me
  loc_BD9CA2: MemLdRfVar from_stack_1.global_60
  loc_BD9CA5: LdPrVar
  loc_BD9CA7: LateMemCall
  loc_BD9CAD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD9CB2: PopAdLdVar
  loc_BD9CB3: FLdPr Me
  loc_BD9CB6: MemLdRfVar from_stack_1.global_60
  loc_BD9CB9: LdPrVar
  loc_BD9CBB: LateMemCall
  loc_BD9CC1: LitVarStr var_94, " font-size: 10px;"
  loc_BD9CC6: PopAdLdVar
  loc_BD9CC7: FLdPr Me
  loc_BD9CCA: MemLdRfVar from_stack_1.global_60
  loc_BD9CCD: LdPrVar
  loc_BD9CCF: LateMemCall
  loc_BD9CD5: LitVarStr var_94, " font-weight: bold;"
  loc_BD9CDA: PopAdLdVar
  loc_BD9CDB: FLdPr Me
  loc_BD9CDE: MemLdRfVar from_stack_1.global_60
  loc_BD9CE1: LdPrVar
  loc_BD9CE3: LateMemCall
  loc_BD9CE9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BD9CEE: PopAdLdVar
  loc_BD9CEF: FLdPr Me
  loc_BD9CF2: MemLdRfVar from_stack_1.global_60
  loc_BD9CF5: LdPrVar
  loc_BD9CF7: LateMemCall
  loc_BD9CFD: LitVarStr var_94, "}"
  loc_BD9D02: PopAdLdVar
  loc_BD9D03: FLdPr Me
  loc_BD9D06: MemLdRfVar from_stack_1.global_60
  loc_BD9D09: LdPrVar
  loc_BD9D0B: LateMemCall
  loc_BD9D11: LitVarStr var_94, ".Tilde {"
  loc_BD9D16: PopAdLdVar
  loc_BD9D17: FLdPr Me
  loc_BD9D1A: MemLdRfVar from_stack_1.global_60
  loc_BD9D1D: LdPrVar
  loc_BD9D1F: LateMemCall
  loc_BD9D25: LitVarStr var_94, " font-family: Wingdings;"
  loc_BD9D2A: PopAdLdVar
  loc_BD9D2B: FLdPr Me
  loc_BD9D2E: MemLdRfVar from_stack_1.global_60
  loc_BD9D31: LdPrVar
  loc_BD9D33: LateMemCall
  loc_BD9D39: LitVarStr var_94, " font-size: 12px;"
  loc_BD9D3E: PopAdLdVar
  loc_BD9D3F: FLdPr Me
  loc_BD9D42: MemLdRfVar from_stack_1.global_60
  loc_BD9D45: LdPrVar
  loc_BD9D47: LateMemCall
  loc_BD9D4D: LitVarStr var_94, "}"
  loc_BD9D52: PopAdLdVar
  loc_BD9D53: FLdPr Me
  loc_BD9D56: MemLdRfVar from_stack_1.global_60
  loc_BD9D59: LdPrVar
  loc_BD9D5B: LateMemCall
  loc_BD9D61: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BD9D66: PopAdLdVar
  loc_BD9D67: FLdPr Me
  loc_BD9D6A: MemLdRfVar from_stack_1.global_60
  loc_BD9D6D: LdPrVar
  loc_BD9D6F: LateMemCall
  loc_BD9D75: LitVarStr var_94, "</style>"
  loc_BD9D7A: PopAdLdVar
  loc_BD9D7B: FLdPr Me
  loc_BD9D7E: MemLdRfVar from_stack_1.global_60
  loc_BD9D81: LdPrVar
  loc_BD9D83: LateMemCall
  loc_BD9D89: LitI4 0
  loc_BD9D8E: FStStrCopy var_AC
  loc_BD9D91: FLdRfVar var_AC
  loc_BD9D94: LitI4 0
  loc_BD9D99: FStStrCopy var_A8
  loc_BD9D9C: FLdRfVar var_A8
  loc_BD9D9F: LitI2_Byte &HFF
  loc_BD9DA1: PopTmpLdAd2 var_BE
  loc_BD9DA4: FLdPr Me
  loc_BD9DA7: MemLdRfVar from_stack_1.global_60
  loc_BD9DAA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD9DAF: FFreeStr var_A8 = ""
  loc_BD9DB6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BD9DBB: PopAdLdVar
  loc_BD9DBC: FLdPr Me
  loc_BD9DBF: MemLdRfVar from_stack_1.global_60
  loc_BD9DC2: LdPrVar
  loc_BD9DC4: LateMemCall
  loc_BD9DCA: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BD9DCF: PopAdLdVar
  loc_BD9DD0: FLdPr Me
  loc_BD9DD3: MemLdRfVar from_stack_1.global_60
  loc_BD9DD6: LdPrVar
  loc_BD9DD8: LateMemCall
  loc_BD9DDE: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BD9DE3: PopAdLdVar
  loc_BD9DE4: FLdPr Me
  loc_BD9DE7: MemLdRfVar from_stack_1.global_60
  loc_BD9DEA: LdPrVar
  loc_BD9DEC: LateMemCall
  loc_BD9DF2: FLdPr Me
  loc_BD9DF5: MemLdI2 bLogos
  loc_BD9DF8: BranchF loc_BD9E53
  loc_BD9DFB: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BD9DFE: LitI2_Byte &H5F
  loc_BD9E00: CStrUI1
  loc_BD9E02: FStStrNoPop var_A8
  loc_BD9E05: ConcatStr
  loc_BD9E06: FStStrNoPop var_AC
  loc_BD9E09: LitStr """ height="""
  loc_BD9E0C: ConcatStr
  loc_BD9E0D: FStStrNoPop var_C4
  loc_BD9E10: LitI2_Byte &H3C
  loc_BD9E12: CStrUI1
  loc_BD9E14: FStStrNoPop var_C8
  loc_BD9E17: ConcatStr
  loc_BD9E18: FStStrNoPop var_CC
  loc_BD9E1B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BD9E1E: ConcatStr
  loc_BD9E1F: FStStrNoPop var_D0
  loc_BD9E22: LitStr "Municipalidad de Guaymallén"
  loc_BD9E25: ConcatStr
  loc_BD9E26: FStStrNoPop var_D4
  loc_BD9E29: LitStr "</p>"
  loc_BD9E2C: ConcatStr
  loc_BD9E2D: CVarStr var_BC
  loc_BD9E30: PopAdLdVar
  loc_BD9E31: FLdPr Me
  loc_BD9E34: MemLdRfVar from_stack_1.global_60
  loc_BD9E37: LdPrVar
  loc_BD9E39: LateMemCall
  loc_BD9E3F: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BD9E50: FFree1Var var_BC = ""
  loc_BD9E53: FLdRfVar var_BE
  loc_BD9E56: FLdPr Me
  loc_BD9E59: VCallAd Control_ID_ResumenPorServicioChk
  loc_BD9E5C: FStAdFunc var_D8
  loc_BD9E5F: FLdPr var_D8
  loc_BD9E62:  = Me.Value
  loc_BD9E67: LitStr "    <p>"
  loc_BD9E6A: FLdRfVar var_A8
  loc_BD9E6D: FLdPr Me
  loc_BD9E70:  = Me.Caption
  loc_BD9E75: ILdRf var_A8
  loc_BD9E78: ConcatStr
  loc_BD9E79: CVarStr var_128
  loc_BD9E7C: LitVarStr var_F8, vbNullString
  loc_BD9E81: FStVarCopyObj var_108
  loc_BD9E84: FLdRfVar var_108
  loc_BD9E87: LitVarStr var_A4, " (Resumen)"
  loc_BD9E8C: FStVarCopyObj var_E8
  loc_BD9E8F: FLdRfVar var_E8
  loc_BD9E92: FLdI2 var_BE
  loc_BD9E95: CVarI2 var_BC
  loc_BD9E98: FLdRfVar var_118
  loc_BD9E9B: ImpAdCallFPR4  = IIf(, , )
  loc_BD9EA0: FLdRfVar var_118
  loc_BD9EA3: ConcatVar var_138
  loc_BD9EA7: LitVarStr var_148, "</p></th>"
  loc_BD9EAC: ConcatVar var_158
  loc_BD9EB0: PopAdLdVar
  loc_BD9EB1: FLdPr Me
  loc_BD9EB4: MemLdRfVar from_stack_1.global_60
  loc_BD9EB7: LdPrVar
  loc_BD9EB9: LateMemCall
  loc_BD9EBF: FFree1Str var_A8
  loc_BD9EC2: FFree1Ad var_D8
  loc_BD9EC5: FFreeVar var_BC = "": var_E8 = "": var_108 = "": var_128 = "": var_118 = "": var_138 = ""
  loc_BD9ED6: LitVarStr var_94, "  </tr>"
  loc_BD9EDB: PopAdLdVar
  loc_BD9EDC: FLdPr Me
  loc_BD9EDF: MemLdRfVar from_stack_1.global_60
  loc_BD9EE2: LdPrVar
  loc_BD9EE4: LateMemCall
  loc_BD9EEA: LitVarStr var_94, "  <tr>"
  loc_BD9EEF: PopAdLdVar
  loc_BD9EF0: FLdPr Me
  loc_BD9EF3: MemLdRfVar from_stack_1.global_60
  loc_BD9EF6: LdPrVar
  loc_BD9EF8: LateMemCall
  loc_BD9EFE: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_BD9F03: PopAdLdVar
  loc_BD9F04: FLdPr Me
  loc_BD9F07: MemLdRfVar from_stack_1.global_60
  loc_BD9F0A: LdPrVar
  loc_BD9F0C: LateMemCall
  loc_BD9F12: LitVarStr var_94, "  </tr>"
  loc_BD9F17: PopAdLdVar
  loc_BD9F18: FLdPr Me
  loc_BD9F1B: MemLdRfVar from_stack_1.global_60
  loc_BD9F1E: LdPrVar
  loc_BD9F20: LateMemCall
  loc_BD9F26: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BD9F2B: PopAdLdVar
  loc_BD9F2C: FLdPr Me
  loc_BD9F2F: MemLdRfVar from_stack_1.global_60
  loc_BD9F32: LdPrVar
  loc_BD9F34: LateMemCall
  loc_BD9F3A: LitStr "    <td width=""50" & Chr(37) & """ align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BD9F3D: FLdPr Me
  loc_BD9F40: VCallAd Control_ID_FealBoleDesdeMsk
  loc_BD9F43: FStAdFunc var_D8
  loc_BD9F46: FLdPr var_D8
  loc_BD9F49: LateIdLdVar var_BC DispID_15 0
  loc_BD9F50: CStrVarTmp
  loc_BD9F51: FStStrNoPop var_A8
  loc_BD9F54: ConcatStr
  loc_BD9F55: FStStrNoPop var_AC
  loc_BD9F58: LitStr "<br>"
  loc_BD9F5B: ConcatStr
  loc_BD9F5C: CVarStr var_E8
  loc_BD9F5F: PopAdLdVar
  loc_BD9F60: FLdPr Me
  loc_BD9F63: MemLdRfVar from_stack_1.global_60
  loc_BD9F66: LdPrVar
  loc_BD9F68: LateMemCall
  loc_BD9F6E: FFreeStr var_A8 = ""
  loc_BD9F75: FFree1Ad var_D8
  loc_BD9F78: FFreeVar var_BC = ""
  loc_BD9F7F: LitStr "                                      <strong>Hasta: </strong>"
  loc_BD9F82: FLdPr Me
  loc_BD9F85: VCallAd Control_ID_FealBoleHastaMsk
  loc_BD9F88: FStAdFunc var_D8
  loc_BD9F8B: FLdPr var_D8
  loc_BD9F8E: LateIdLdVar var_BC DispID_15 0
  loc_BD9F95: CStrVarTmp
  loc_BD9F96: FStStrNoPop var_A8
  loc_BD9F99: ConcatStr
  loc_BD9F9A: FStStrNoPop var_AC
  loc_BD9F9D: LitStr "</td>"
  loc_BD9FA0: ConcatStr
  loc_BD9FA1: CVarStr var_E8
  loc_BD9FA4: PopAdLdVar
  loc_BD9FA5: FLdPr Me
  loc_BD9FA8: MemLdRfVar from_stack_1.global_60
  loc_BD9FAB: LdPrVar
  loc_BD9FAD: LateMemCall
  loc_BD9FB3: FFreeStr var_A8 = ""
  loc_BD9FBA: FFree1Ad var_D8
  loc_BD9FBD: FFreeVar var_BC = ""
  loc_BD9FC4: LitStr "    <td width=""50" & Chr(37) & """ align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BD9FC7: FLdPr Me
  loc_BD9FCA: VCallAd Control_ID_CodiSedeDesdeMsk
  loc_BD9FCD: FStAdFunc var_D8
  loc_BD9FD0: FLdPr var_D8
  loc_BD9FD3: LateIdLdVar var_BC DispID_22 0
  loc_BD9FDA: CStrVarTmp
  loc_BD9FDB: FStStrNoPop var_A8
  loc_BD9FDE: ConcatStr
  loc_BD9FDF: FStStrNoPop var_AC
  loc_BD9FE2: LitStr " - "
  loc_BD9FE5: ConcatStr
  loc_BD9FE6: FStStrNoPop var_C8
  loc_BD9FE9: FLdRfVar var_C4
  loc_BD9FEC: FLdPr Me
  loc_BD9FEF: VCallAd Control_ID_DetaSedeDesdeLbl
  loc_BD9FF2: FStAdFunc var_16C
  loc_BD9FF5: FLdPr var_16C
  loc_BD9FF8:  = Me.Caption
  loc_BD9FFD: ILdRf var_C4
  loc_BDA000: ConcatStr
  loc_BDA001: FStStrNoPop var_CC
  loc_BDA004: LitStr "<br>"
  loc_BDA007: ConcatStr
  loc_BDA008: CVarStr var_E8
  loc_BDA00B: PopAdLdVar
  loc_BDA00C: FLdPr Me
  loc_BDA00F: MemLdRfVar from_stack_1.global_60
  loc_BDA012: LdPrVar
  loc_BDA014: LateMemCall
  loc_BDA01A: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_BDA027: FFreeAd var_D8 = ""
  loc_BDA02E: FFreeVar var_BC = ""
  loc_BDA035: LitStr "                                      <strong>Hasta: </strong>"
  loc_BDA038: FLdPr Me
  loc_BDA03B: VCallAd Control_ID_CodiSedeHastaMsk
  loc_BDA03E: FStAdFunc var_D8
  loc_BDA041: FLdPr var_D8
  loc_BDA044: LateIdLdVar var_BC DispID_22 0
  loc_BDA04B: CStrVarTmp
  loc_BDA04C: FStStrNoPop var_A8
  loc_BDA04F: ConcatStr
  loc_BDA050: FStStrNoPop var_AC
  loc_BDA053: LitStr " - "
  loc_BDA056: ConcatStr
  loc_BDA057: FStStrNoPop var_C8
  loc_BDA05A: FLdRfVar var_C4
  loc_BDA05D: FLdPr Me
  loc_BDA060: VCallAd Control_ID_DetaSedeHastaLbl
  loc_BDA063: FStAdFunc var_16C
  loc_BDA066: FLdPr var_16C
  loc_BDA069:  = Me.Caption
  loc_BDA06E: ILdRf var_C4
  loc_BDA071: ConcatStr
  loc_BDA072: FStStrNoPop var_CC
  loc_BDA075: LitStr "</td>"
  loc_BDA078: ConcatStr
  loc_BDA079: CVarStr var_E8
  loc_BDA07C: PopAdLdVar
  loc_BDA07D: FLdPr Me
  loc_BDA080: MemLdRfVar from_stack_1.global_60
  loc_BDA083: LdPrVar
  loc_BDA085: LateMemCall
  loc_BDA08B: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_BDA098: FFreeAd var_D8 = ""
  loc_BDA09F: FFreeVar var_BC = ""
  loc_BDA0A6: LitVarStr var_94, "  </tr>"
  loc_BDA0AB: PopAdLdVar
  loc_BDA0AC: FLdPr Me
  loc_BDA0AF: MemLdRfVar from_stack_1.global_60
  loc_BDA0B2: LdPrVar
  loc_BDA0B4: LateMemCall
  loc_BDA0BA: LitVarStr var_94, "</table>"
  loc_BDA0BF: PopAdLdVar
  loc_BDA0C0: FLdPr Me
  loc_BDA0C3: MemLdRfVar from_stack_1.global_60
  loc_BDA0C6: LdPrVar
  loc_BDA0C8: LateMemCall
  loc_BDA0CE: ExitProcHresult
End Function

Private Function Proc_244_32_A0B9C8() 'A0B9C8
  'Data Table: 4D34E0
  loc_A0B988: LitVarStr var_94, "</table>"
  loc_A0B98D: PopAdLdVar
  loc_A0B98E: FLdPr Me
  loc_A0B991: MemLdRfVar from_stack_1.global_60
  loc_A0B994: LdPrVar
  loc_A0B996: LateMemCall
  loc_A0B99C: LitVarStr var_94, "</body>"
  loc_A0B9A1: PopAdLdVar
  loc_A0B9A2: FLdPr Me
  loc_A0B9A5: MemLdRfVar from_stack_1.global_60
  loc_A0B9A8: LdPrVar
  loc_A0B9AA: LateMemCall
  loc_A0B9B0: LitVarStr var_94, "</html>"
  loc_A0B9B5: PopAdLdVar
  loc_A0B9B6: FLdPr Me
  loc_A0B9B9: MemLdRfVar from_stack_1.global_60
  loc_A0B9BC: LdPrVar
  loc_A0B9BE: LateMemCall
  loc_A0B9C4: ExitProcHresult
End Function
