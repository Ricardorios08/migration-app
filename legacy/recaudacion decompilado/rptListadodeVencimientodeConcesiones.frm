VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeVencimientodeConcesiones
  Caption = "Listado de Vencimiento de Concesiones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeVencimientodeConcesiones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9672
  ClientHeight = 5760
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
    Top = 5505
    Width = 9675
    Height = 255
    TabIndex = 25
    OleObjectBlob = "rptListadodeVencimientodeConcesiones.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 4560
    Width = 855
    Height = 735
    TabIndex = 23
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
    Picture = "rptListadodeVencimientodeConcesiones.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeVencimientodeConcesiones.frx":0B9C
    Left = 8640
    Top = 2400
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 4200
    Width = 3255
    Height = 1215
    TabIndex = 21
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
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
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4200
    Width = 4095
    Height = 1215
    TabIndex = 18
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9495
    Height = 4095
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
    Begin VB.Frame Frame5
      Left = 240
      Top = 240
      Width = 3495
      Height = 1575
      TabIndex = 1
      Begin VB.OptionButton ActivasOpt
        Caption = "Cuentas Activas"
        Left = 240
        Top = 360
        Width = 2655
        Height = 300
        TabIndex = 2
      End
      Begin VB.OptionButton InactivasOpt
        Caption = "Cuentas Inactivas"
        Left = 240
        Top = 720
        Width = 2655
        Height = 300
        TabIndex = 3
      End
      Begin VB.OptionButton SinVencimientoOpt
        Caption = "Sin Fecha de Vencimiento"
        Left = 240
        Top = 1080
        Width = 3135
        Height = 300
        TabIndex = 4
      End
    End
    Begin VB.Frame FechaFra
      Caption = "Fecha de Vencimiento de la Concesión"
      Left = 1320
      Top = 2760
      Width = 5655
      Height = 1095
      TabIndex = 13
      Begin MSMask.MaskEdBox FeveDifuHastaMsk
        Left = 3840
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 17
        OleObjectBlob = "rptListadodeVencimientodeConcesiones.frx":0C00
      End
      Begin MSMask.MaskEdBox FeveDifuDesdeMsk
        Left = 1080
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 14
        OleObjectBlob = "rptListadodeVencimientodeConcesiones.frx":0CB0
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 360
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 15
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 3000
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 16
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame Frame4
      Caption = "Cuenta"
      Left = 3840
      Top = 240
      Width = 2895
      Height = 1575
      TabIndex = 5
      Begin MSMask.MaskEdBox CodiDifuDesdeMsk
        Left = 1320
        Top = 480
        Width = 1215
        Height = 360
        TabIndex = 7
        OleObjectBlob = "rptListadodeVencimientodeConcesiones.frx":0D60
      End
      Begin MSMask.MaskEdBox CodiDifuHastaMsk
        Left = 1320
        Top = 960
        Width = 1215
        Height = 360
        TabIndex = 9
        OleObjectBlob = "rptListadodeVencimientodeConcesiones.frx":0DF8
      End
      Begin VB.Label Label2
        Caption = "Desde:"
        Left = 480
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 6
        AutoSize = -1  'True
      End
      Begin VB.Label Label1
        Caption = "Hasta:"
        Left = 540
        Top = 960
        Width = 705
        Height = 300
        TabIndex = 8
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox CodiTiseCbo
      Style = 2
      Left = 2280
      Top = 2040
      Width = 4455
      Height = 420
      TabIndex = 12
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7440
      Top = 480
      Width = 1575
      Height = 615
      TabIndex = 10
    End
    Begin VB.Label Label3
      Caption = "Tipo de Sepultura:"
      Left = 270
      Top = 2040
      Width = 1935
      Height = 300
      TabIndex = 11
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 4800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "rptListadodeVencimientodeConcesiones.frx":0E90
  End
End

Attribute VB_Name = "rptListadodeVencimientodeConcesiones"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560540
  bStruc(32) As Byte ' String fields: 8
End Type


Private Sub FeveDifuDesdeMsk_UnknownEvent_0 '9C5810
  'Data Table: 4D09A4
  loc_9C57FC: FLdPr Me
  loc_9C57FF: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_9C5802: CVarAd
  loc_9C5806: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C580B: FFree1Var var_94 = ""
  loc_9C580E: ExitProcHresult
End Sub

Private Sub FeveDifuDesdeMsk_UnknownEvent_8 'A65280
  'Data Table: 4D09A4
  loc_A65224: FLdPr Me
  loc_A65227: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_A6522A: FStAdFunc var_88
  loc_A6522D: FLdPr var_88
  loc_A65230: LateIdLdVar var_98 DispID_15 0
  loc_A65237: CStrVarTmp
  loc_A65238: FStStrNoPop var_9C
  loc_A6523B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65240: FStStrNoPop var_A0
  loc_A65243: FLdPr Me
  loc_A65246: MemStStrCopy
  loc_A6524A: FFreeStr var_9C = ""
  loc_A65251: FFree1Ad var_88
  loc_A65254: FFree1Var var_98 = ""
  loc_A65257: FLdPr Me
  loc_A6525A: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_A6525D: FStAdFuncNoPop
  loc_A65260: CastAd
  loc_A65263: FStAdFunc var_A4
  loc_A65266: FLdRfVar var_A4
  loc_A65269: FLdPr Me
  loc_A6526C: MemLdStr global_96
  loc_A6526F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65274: IStI2 KeyAscii
  loc_A65277: FFreeAd var_88 = ""
  loc_A6527E: ExitProcHresult
End Sub

Private Sub FeveDifuDesdeMsk_KeyPress(KeyAscii As Integer) 'A24C44
  'Data Table: 4D09A4
  loc_A24BFC: ILdI2 KeyAscii
  loc_A24BFF: CI4UI1
  loc_A24C00: LitI4 &H20
  loc_A24C05: EqI4
  loc_A24C06: BranchF loc_A24C43
  loc_A24C09: LitVar_Missing var_A4
  loc_A24C0C: PopAdLdVar
  loc_A24C0D: LitVarI4
  loc_A24C15: PopAdLdVar
  loc_A24C16: ImpAdLdRf MemVar_D930A4
  loc_A24C19: NewIfNullPr frmCalendario
  loc_A24C1C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24C21: ImpAdLdRf MemVar_D93028
  loc_A24C24: CDargRef
  loc_A24C28: FLdPr Me
  loc_A24C2B: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_A24C2E: FStAdFunc var_A8
  loc_A24C31: FLdPr var_A8
  loc_A24C34: LateIdSt
  loc_A24C39: FFree1Ad var_A8
  loc_A24C3C: LitStr vbNullString
  loc_A24C3F: ImpAdStStrCopy MemVar_D93028
  loc_A24C43: ExitProcHresult
End Sub

Private Sub FeveDifuHastaMsk_UnknownEvent_0 '9C54B0
  'Data Table: 4D09A4
  loc_9C549C: FLdPr Me
  loc_9C549F: VCallAd Control_ID_FeveDifuHastaMsk
  loc_9C54A2: CVarAd
  loc_9C54A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C54AB: FFree1Var var_94 = ""
  loc_9C54AE: ExitProcHresult
End Sub

Private Sub FeveDifuHastaMsk_UnknownEvent_8 'A7E734
  'Data Table: 4D09A4
  loc_A7E6B8: FLdPr Me
  loc_A7E6BB: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A7E6BE: FStAdFunc var_88
  loc_A7E6C1: FLdPr var_88
  loc_A7E6C4: LateIdLdVar var_98 DispID_13 -32767
  loc_A7E6CB: CBoolVar
  loc_A7E6CD: FFree1Ad var_88
  loc_A7E6D0: FFree1Var var_98 = ""
  loc_A7E6D3: BranchF loc_A7E730
  loc_A7E6D6: FLdPr Me
  loc_A7E6D9: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A7E6DC: FStAdFunc var_88
  loc_A7E6DF: FLdPr var_88
  loc_A7E6E2: LateIdLdVar var_98 DispID_15 0
  loc_A7E6E9: CStrVarTmp
  loc_A7E6EA: FStStrNoPop var_9C
  loc_A7E6ED: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A7E6F2: FStStrNoPop var_A0
  loc_A7E6F5: FLdPr Me
  loc_A7E6F8: MemStStrCopy
  loc_A7E6FC: FFreeStr var_9C = ""
  loc_A7E703: FFree1Ad var_88
  loc_A7E706: FFree1Var var_98 = ""
  loc_A7E709: FLdPr Me
  loc_A7E70C: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A7E70F: FStAdFuncNoPop
  loc_A7E712: CastAd
  loc_A7E715: FStAdFunc var_A4
  loc_A7E718: FLdRfVar var_A4
  loc_A7E71B: FLdPr Me
  loc_A7E71E: MemLdStr global_96
  loc_A7E721: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A7E726: IStI2 KeyAscii
  loc_A7E729: FFreeAd var_88 = ""
  loc_A7E730: ExitProcHresult
End Sub

Private Sub FeveDifuHastaMsk_KeyPress(KeyAscii As Integer) 'A24CC0
  'Data Table: 4D09A4
  loc_A24C78: ILdI2 KeyAscii
  loc_A24C7B: CI4UI1
  loc_A24C7C: LitI4 &H20
  loc_A24C81: EqI4
  loc_A24C82: BranchF loc_A24CBF
  loc_A24C85: LitVar_Missing var_A4
  loc_A24C88: PopAdLdVar
  loc_A24C89: LitVarI4
  loc_A24C91: PopAdLdVar
  loc_A24C92: ImpAdLdRf MemVar_D930A4
  loc_A24C95: NewIfNullPr frmCalendario
  loc_A24C98: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24C9D: ImpAdLdRf MemVar_D93028
  loc_A24CA0: CDargRef
  loc_A24CA4: FLdPr Me
  loc_A24CA7: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A24CAA: FStAdFunc var_A8
  loc_A24CAD: FLdPr var_A8
  loc_A24CB0: LateIdSt
  loc_A24CB5: FFree1Ad var_A8
  loc_A24CB8: LitStr vbNullString
  loc_A24CBB: ImpAdStStrCopy MemVar_D93028
  loc_A24CBF: ExitProcHresult
End Sub

Private Sub InactivasOpt_Click() 'A64C4C
  'Data Table: 4D09A4
  loc_A64BE4: LitI2_Byte 2
  loc_A64BE6: CUI1I2
  loc_A64BE8: FLdPr Me
  loc_A64BEB: MemStUI1
  loc_A64BEF: FLdRfVar var_8A
  loc_A64BF2: FLdPr Me
  loc_A64BF5: VCallAd Control_ID_InactivasOpt
  loc_A64BF8: FStAdFunc var_88
  loc_A64BFB: FLdPr var_88
  loc_A64BFE:  = Me.Enabled
  loc_A64C03: FLdI2 var_8A
  loc_A64C06: FFree1Ad var_88
  loc_A64C09: BranchF loc_A64C48
  loc_A64C0C: LitVar_TRUE var_9C
  loc_A64C0F: PopAdLdVar
  loc_A64C10: FLdPr Me
  loc_A64C13: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A64C16: FStAdFunc var_88
  loc_A64C19: FLdPr var_88
  loc_A64C1C: LateIdSt
  loc_A64C21: FFree1Ad var_88
  loc_A64C24: LitI2_Byte 0
  loc_A64C26: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A64C2B: CStrDate
  loc_A64C2D: CVarStr var_BC
  loc_A64C30: PopAdLdVar
  loc_A64C31: FLdPr Me
  loc_A64C34: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A64C37: FStAdFunc var_88
  loc_A64C3A: FLdPr var_88
  loc_A64C3D: LateIdSt
  loc_A64C42: FFree1Ad var_88
  loc_A64C45: FFree1Var var_BC = ""
  loc_A64C48: ExitProcHresult
End Sub

Private Sub SinVencimientoOpt_Click() 'A7F99C
  'Data Table: 4D09A4
  loc_A7F90C: LitI2_Byte 3
  loc_A7F90E: CUI1I2
  loc_A7F910: FLdPr Me
  loc_A7F913: MemStUI1
  loc_A7F917: FLdRfVar var_8A
  loc_A7F91A: FLdPr Me
  loc_A7F91D: VCallAd Control_ID_SinVencimientoOpt
  loc_A7F920: FStAdFunc var_88
  loc_A7F923: FLdPr var_88
  loc_A7F926:  = Me.Enabled
  loc_A7F92B: FLdI2 var_8A
  loc_A7F92E: FFree1Ad var_88
  loc_A7F931: BranchF loc_A7F99A
  loc_A7F934: LitVar_FALSE
  loc_A7F938: PopAdLdVar
  loc_A7F939: FLdPr Me
  loc_A7F93C: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_A7F93F: FStAdFunc var_88
  loc_A7F942: FLdPr var_88
  loc_A7F945: LateIdSt
  loc_A7F94A: FFree1Ad var_88
  loc_A7F94D: LitVar_FALSE
  loc_A7F951: PopAdLdVar
  loc_A7F952: FLdPr Me
  loc_A7F955: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A7F958: FStAdFunc var_88
  loc_A7F95B: FLdPr var_88
  loc_A7F95E: LateIdSt
  loc_A7F963: FFree1Ad var_88
  loc_A7F966: LitVarStr var_9C, vbNullString
  loc_A7F96B: PopAdLdVar
  loc_A7F96C: FLdPr Me
  loc_A7F96F: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_A7F972: FStAdFunc var_88
  loc_A7F975: FLdPr var_88
  loc_A7F978: LateIdSt
  loc_A7F97D: FFree1Ad var_88
  loc_A7F980: LitVarStr var_9C, vbNullString
  loc_A7F985: PopAdLdVar
  loc_A7F986: FLdPr Me
  loc_A7F989: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A7F98C: FStAdFunc var_88
  loc_A7F98F: FLdPr var_88
  loc_A7F992: LateIdSt
  loc_A7F997: FFree1Ad var_88
  loc_A7F99A: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CC2C0
  'Data Table: 4D09A4
  loc_9CC2A8: LitI2_Byte 0
  loc_9CC2AA: ILdRf Me
  loc_9CC2AD: CastAd
  loc_9CC2B0: FStAdFunc var_88
  loc_9CC2B3: FLdRfVar var_88
  loc_9CC2B6: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CC2BB: FFree1Ad var_88
  loc_9CC2BE: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E104C
  'Data Table: 4D09A4
  loc_9E1030: LitI2_Byte &HFF
  loc_9E1032: LitI2_Byte 0
  loc_9E1034: ILdRf Me
  loc_9E1037: CastAd
  loc_9E103A: FStAdFunc var_88
  loc_9E103D: FLdRfVar var_88
  loc_9E1040: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E1045: FFree1Ad var_88
  loc_9E1048: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CC228
  'Data Table: 4D09A4
  loc_9CC210: ILdRf Me
  loc_9CC213: CastAd
  loc_9CC216: FStAdFunc var_88
  loc_9CC219: FLdRfVar var_88
  loc_9CC21C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CC221: FFree1Ad var_88
  loc_9CC224: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E145C
  'Data Table: 4D09A4
  loc_9E1440: LitI2_Byte 0
  loc_9E1442: PopTmpLdAd2 var_8A
  loc_9E1445: ILdRf Me
  loc_9E1448: CastAd
  loc_9E144B: FStAdFunc var_88
  loc_9E144E: FLdRfVar var_88
  loc_9E1451: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E1456: FFree1Ad var_88
  loc_9E1459: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1EC70
  'Data Table: 4D09A4
  loc_A1EC38: FLdPr Me
  loc_A1EC3B: VCallAd Control_ID_statusBar
  loc_A1EC3E: FStAdFunc var_88
  loc_A1EC41: FLdPr var_88
  loc_A1EC44: LateIdLdVar var_98 DispID_1 0
  loc_A1EC4B: CStrVarTmp
  loc_A1EC4C: CVarStr var_A8
  loc_A1EC4F: PopAdLdVar
  loc_A1EC50: FLdPr Me
  loc_A1EC53: VCallAd Control_ID_statusBar
  loc_A1EC56: FStAdFunc var_BC
  loc_A1EC59: FLdPr var_BC
  loc_A1EC5C: LateIdSt
  loc_A1EC61: FFreeAd var_88 = ""
  loc_A1EC68: FFreeVar var_98 = ""
  loc_A1EC6F: ExitProcHresult
End Sub

Private Sub CodiDifuHastaMsk_UnknownEvent_0 '9C5660
  'Data Table: 4D09A4
  loc_9C564C: FLdPr Me
  loc_9C564F: VCallAd Control_ID_CodiDifuHastaMsk
  loc_9C5652: CVarAd
  loc_9C5656: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C565B: FFree1Var var_94 = ""
  loc_9C565E: ExitProcHresult
End Sub

Private Sub CodiDifuHastaMsk_UnknownEvent_8 'A88E90
  'Data Table: 4D09A4
  loc_A88E00: FLdPr Me
  loc_A88E03: VCallAd Control_ID_CodiDifuHastaMsk
  loc_A88E06: FStAdFunc var_88
  loc_A88E09: FLdPr var_88
  loc_A88E0C: LateIdLdVar var_98 DispID_22 0
  loc_A88E13: CStrVarTmp
  loc_A88E14: FStStrNoPop var_9C
  loc_A88E17: LitStr vbNullString
  loc_A88E1A: NeStr
  loc_A88E1C: FFree1Str var_9C
  loc_A88E1F: FFree1Ad var_88
  loc_A88E22: FFree1Var var_98 = ""
  loc_A88E25: BranchF loc_A88E8E
  loc_A88E28: FLdPr Me
  loc_A88E2B: VCallAd Control_ID_CodiDifuHastaMsk
  loc_A88E2E: FStAdFunc var_88
  loc_A88E31: FLdPr var_88
  loc_A88E34: LateIdLdVar var_98 DispID_22 0
  loc_A88E3B: PopAd
  loc_A88E3D: LitI2_Byte 0
  loc_A88E3F: LitI2_Byte 0
  loc_A88E41: FLdRfVar var_98
  loc_A88E44: CStrVarTmp
  loc_A88E45: FStStrNoPop var_9C
  loc_A88E48: LitStr "Cuenta"
  loc_A88E4B: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A88E50: FStStrNoPop var_A0
  loc_A88E53: FLdPr Me
  loc_A88E56: MemStStrCopy
  loc_A88E5A: FFreeStr var_9C = ""
  loc_A88E61: FFree1Ad var_88
  loc_A88E64: FFree1Var var_98 = ""
  loc_A88E67: FLdPr Me
  loc_A88E6A: VCallAd Control_ID_CodiDifuHastaMsk
  loc_A88E6D: FStAdFuncNoPop
  loc_A88E70: CastAd
  loc_A88E73: FStAdFunc var_A4
  loc_A88E76: FLdRfVar var_A4
  loc_A88E79: FLdPr Me
  loc_A88E7C: MemLdStr global_96
  loc_A88E7F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A88E84: IStI2 Button
  loc_A88E87: FFreeAd var_88 = ""
  loc_A88E8E: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A02568
  'Data Table: 4D09A4
  loc_A02538: LitVarStr var_94, "Cerrando..."
  loc_A0253D: PopAdLdVar
  loc_A0253E: FLdPr Me
  loc_A02541: VCallAd Control_ID_statusBar
  loc_A02544: FStAdFunc var_A8
  loc_A02547: FLdPr var_A8
  loc_A0254A: LateIdSt
  loc_A0254F: FFree1Ad var_A8
  loc_A02552: ILdRf Me
  loc_A02555: FStAdNoPop
  loc_A02559: ImpAdLdRf MemVar_D9C5D8
  loc_A0255C: NewIfNullPr Global
  loc_A0255F: Global.Unload from_stack_1
  loc_A02564: FFree1Ad var_A8
  loc_A02567: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AB3784
  'Data Table: 4D09A4
  loc_AB369C: LitI2_Byte 0
  loc_AB369E: FLdPr Me
  loc_AB36A1: MemStI2 bGenerado
  loc_AB36A4: LitI2_Byte &HFF
  loc_AB36A6: FLdPr Me
  loc_AB36A9: MemStI2 bLogos
  loc_AB36AC: LitI2_Byte 0
  loc_AB36AE: ILdRf Me
  loc_AB36B1: CastAd
  loc_AB36B4: FStAdFunc var_88
  loc_AB36B7: FLdRfVar var_88
  loc_AB36BA: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AB36BF: FFree1Ad var_88
  loc_AB36C2: LitI2_Byte &HFF
  loc_AB36C4: FLdPr Me
  loc_AB36C7: VCallAd Control_ID_ActivasOpt
  loc_AB36CA: FStAdFunc var_88
  loc_AB36CD: FLdPr var_88
  loc_AB36D0: Me.Value = from_stack_1b
  loc_AB36D5: FFree1Ad var_88
  loc_AB36D8: LitVarStr var_98, vbNullString
  loc_AB36DD: PopAdLdVar
  loc_AB36DE: FLdPr Me
  loc_AB36E1: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_AB36E4: FStAdFunc var_88
  loc_AB36E7: FLdPr var_88
  loc_AB36EA: LateIdSt
  loc_AB36EF: FFree1Ad var_88
  loc_AB36F2: LitVarStr var_98, vbNullString
  loc_AB36F7: PopAdLdVar
  loc_AB36F8: FLdPr Me
  loc_AB36FB: VCallAd Control_ID_CodiDifuHastaMsk
  loc_AB36FE: FStAdFunc var_88
  loc_AB3701: FLdPr var_88
  loc_AB3704: LateIdSt
  loc_AB3709: FFree1Ad var_88
  loc_AB370C: LitI2_Byte 0
  loc_AB370E: FLdPr Me
  loc_AB3711: VCallAd Control_ID_CodiTiseCbo
  loc_AB3714: FStAdFunc var_88
  loc_AB3717: FLdPr var_88
  loc_AB371A: Me.ListIndex = from_stack_1
  loc_AB371F: FFree1Ad var_88
  loc_AB3722: LitI2_Byte 0
  loc_AB3724: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB3729: CStrDate
  loc_AB372B: CVarStr var_B8
  loc_AB372E: PopAdLdVar
  loc_AB372F: FLdPr Me
  loc_AB3732: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_AB3735: FStAdFunc var_88
  loc_AB3738: FLdPr var_88
  loc_AB373B: LateIdSt
  loc_AB3740: FFree1Ad var_88
  loc_AB3743: FFree1Var var_B8 = ""
  loc_AB3746: LitI2_Byte 0
  loc_AB3748: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB374D: CStrDate
  loc_AB374F: CVarStr var_B8
  loc_AB3752: PopAdLdVar
  loc_AB3753: FLdPr Me
  loc_AB3756: VCallAd Control_ID_FeveDifuHastaMsk
  loc_AB3759: FStAdFunc var_88
  loc_AB375C: FLdPr var_88
  loc_AB375F: LateIdSt
  loc_AB3764: FFree1Ad var_88
  loc_AB3767: FFree1Var var_B8 = ""
  loc_AB376A: Call HabilitarCriterio()
  loc_AB376F: ILdRf Me
  loc_AB3772: CastAd
  loc_AB3775: FStAdFunc var_88
  loc_AB3778: FLdRfVar var_88
  loc_AB377B: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AB3780: FFree1Ad var_88
  loc_AB3783: ExitProcHresult
End Sub

Private Sub ActivasOpt_Click() 'A64CEC
  'Data Table: 4D09A4
  loc_A64C84: LitI2_Byte 1
  loc_A64C86: CUI1I2
  loc_A64C88: FLdPr Me
  loc_A64C8B: MemStUI1
  loc_A64C8F: FLdRfVar var_8A
  loc_A64C92: FLdPr Me
  loc_A64C95: VCallAd Control_ID_ActivasOpt
  loc_A64C98: FStAdFunc var_88
  loc_A64C9B: FLdPr var_88
  loc_A64C9E:  = Me.Enabled
  loc_A64CA3: FLdI2 var_8A
  loc_A64CA6: FFree1Ad var_88
  loc_A64CA9: BranchF loc_A64CE8
  loc_A64CAC: LitVar_TRUE var_9C
  loc_A64CAF: PopAdLdVar
  loc_A64CB0: FLdPr Me
  loc_A64CB3: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A64CB6: FStAdFunc var_88
  loc_A64CB9: FLdPr var_88
  loc_A64CBC: LateIdSt
  loc_A64CC1: FFree1Ad var_88
  loc_A64CC4: LitI2_Byte 0
  loc_A64CC6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A64CCB: CStrDate
  loc_A64CCD: CVarStr var_BC
  loc_A64CD0: PopAdLdVar
  loc_A64CD1: FLdPr Me
  loc_A64CD4: VCallAd Control_ID_FeveDifuHastaMsk
  loc_A64CD7: FStAdFunc var_88
  loc_A64CDA: FLdPr var_88
  loc_A64CDD: LateIdSt
  loc_A64CE2: FFree1Ad var_88
  loc_A64CE5: FFree1Var var_BC = ""
  loc_A64CE8: ExitProcHresult
End Sub

Private Sub CodiDifuDesdeMsk_UnknownEvent_0 '9C56A8
  'Data Table: 4D09A4
  loc_9C5694: FLdPr Me
  loc_9C5697: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_9C569A: CVarAd
  loc_9C569E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C56A3: FFree1Var var_94 = ""
  loc_9C56A6: ExitProcHresult
End Sub

Private Function CodiDifuDesdeMsk_UnknownEvent_8(arg_C) 'A89038
  'Data Table: 4D09A4
  loc_A88FA8: FLdPr Me
  loc_A88FAB: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_A88FAE: FStAdFunc var_88
  loc_A88FB1: FLdPr var_88
  loc_A88FB4: LateIdLdVar var_98 DispID_22 0
  loc_A88FBB: CStrVarTmp
  loc_A88FBC: FStStrNoPop var_9C
  loc_A88FBF: LitStr vbNullString
  loc_A88FC2: NeStr
  loc_A88FC4: FFree1Str var_9C
  loc_A88FC7: FFree1Ad var_88
  loc_A88FCA: FFree1Var var_98 = ""
  loc_A88FCD: BranchF loc_A89036
  loc_A88FD0: FLdPr Me
  loc_A88FD3: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_A88FD6: FStAdFunc var_88
  loc_A88FD9: FLdPr var_88
  loc_A88FDC: LateIdLdVar var_98 DispID_22 0
  loc_A88FE3: PopAd
  loc_A88FE5: LitI2_Byte 0
  loc_A88FE7: LitI2_Byte 0
  loc_A88FE9: FLdRfVar var_98
  loc_A88FEC: CStrVarTmp
  loc_A88FED: FStStrNoPop var_9C
  loc_A88FF0: LitStr "Cuenta"
  loc_A88FF3: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A88FF8: FStStrNoPop var_A0
  loc_A88FFB: FLdPr Me
  loc_A88FFE: MemStStrCopy
  loc_A89002: FFreeStr var_9C = ""
  loc_A89009: FFree1Ad var_88
  loc_A8900C: FFree1Var var_98 = ""
  loc_A8900F: FLdPr Me
  loc_A89012: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_A89015: FStAdFuncNoPop
  loc_A89018: CastAd
  loc_A8901B: FStAdFunc var_A4
  loc_A8901E: FLdRfVar var_A4
  loc_A89021: FLdPr Me
  loc_A89024: MemLdStr global_96
  loc_A89027: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A8902C: IStI2 arg_C
  loc_A8902F: FFreeAd var_88 = ""
  loc_A89036: ExitProcHresult
End Function

Private Sub Form_Load() 'AC7EAC
  'Data Table: 4D09A4
  loc_AC7DA0: ILdRf Me
  loc_AC7DA3: CastAd
  loc_AC7DA6: FStAdFunc var_8C
  loc_AC7DA9: FLdRfVar var_8C
  loc_AC7DAC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AC7DB1: FFree1Ad var_8C
  loc_AC7DB4: FLdRfVar var_88
  loc_AC7DB7: NewIfNullAd
  loc_AC7DBA: FStAd var_90 
  loc_AC7DBE: FLdPr Me
  loc_AC7DC1: VCallAd Control_ID_CodiTiseCbo
  loc_AC7DC4: FStAdFunc var_8C
  loc_AC7DC7: FLdPr var_8C
  loc_AC7DCA: Me.Clear
  loc_AC7DCF: FFree1Ad var_8C
  loc_AC7DD2: LitVar_Missing var_A0
  loc_AC7DD5: PopAdLdVar
  loc_AC7DD6: LitStr "TODOS"
  loc_AC7DD9: FLdPr Me
  loc_AC7DDC: VCallAd Control_ID_CodiTiseCbo
  loc_AC7DDF: FStAdFunc var_8C
  loc_AC7DE2: FLdPr var_8C
  loc_AC7DE5: Me.AddItem from_stack_1, from_stack_2
  loc_AC7DEA: FFree1Ad var_8C
  loc_AC7DED: LitStr "SELECT CodiTise, DetaTise FROM tiposepu ORDER BY CodiTise"
  loc_AC7DF0: FLdPr var_90
  loc_AC7DF3: Call clstiposepu.RedefineRS(from_stack_1v)
  loc_AC7DF8: FLdRfVar var_A4
  loc_AC7DFB: FLdPr var_90
  loc_AC7DFE: from_stack_1 = clstiposepu.RecordCount
  loc_AC7E03: ILdRf var_A4
  loc_AC7E06: LitI4 0
  loc_AC7E0B: GtI4
  loc_AC7E0C: BranchF loc_AC7E9E
  loc_AC7E0F: FLdPr var_90
  loc_AC7E12: Call clstiposepu.MoveFirst()
  loc_AC7E17: LitVar_Missing var_A0
  loc_AC7E1A: PopAdLdVar
  loc_AC7E1B: FLdRfVar var_A8
  loc_AC7E1E: FLdPr var_90
  loc_AC7E21: from_stack_1 = clstiposepu.DetaTise
  loc_AC7E26: ILdRf var_A8
  loc_AC7E29: FLdPr Me
  loc_AC7E2C: VCallAd Control_ID_CodiTiseCbo
  loc_AC7E2F: FStAdFunc var_8C
  loc_AC7E32: FLdPr var_8C
  loc_AC7E35: Me.AddItem from_stack_1, from_stack_2
  loc_AC7E3A: FFree1Str var_A8
  loc_AC7E3D: FFree1Ad var_8C
  loc_AC7E40: FLdRfVar var_AA
  loc_AC7E43: FLdPr var_90
  loc_AC7E46: from_stack_1 = clstiposepu.CodiTise
  loc_AC7E4B: FLdUI1
  loc_AC7E4F: CI4UI1
  loc_AC7E50: FLdRfVar var_AC
  loc_AC7E53: FLdPr Me
  loc_AC7E56: VCallAd Control_ID_CodiTiseCbo
  loc_AC7E59: FStAdFunc var_8C
  loc_AC7E5C: FLdPr var_8C
  loc_AC7E5F:  = Me.NewIndex
  loc_AC7E64: FLdI2 var_AC
  loc_AC7E67: FLdPr Me
  loc_AC7E6A: VCallAd Control_ID_CodiTiseCbo
  loc_AC7E6D: FStAdFunc var_B0
  loc_AC7E70: FLdPr var_B0
  loc_AC7E73: Me.ItemData = from_stack_1
  loc_AC7E78: FFreeAd var_8C = ""
  loc_AC7E7F: LitI2_Byte 1
  loc_AC7E81: PopTmpLdAd2 var_AA
  loc_AC7E84: FLdPr var_90
  loc_AC7E87: Call clstiposepu.Move(from_stack_1v)
  loc_AC7E8C: FLdRfVar var_AA
  loc_AC7E8F: FLdPr var_90
  loc_AC7E92: from_stack_1 = clstiposepu.EOF
  loc_AC7E97: FLdI2 var_AA
  loc_AC7E9A: NotI4
  loc_AC7E9B: BranchT loc_AC7E17
  loc_AC7E9E: LitNothing
  loc_AC7EA0: FStAd var_90 
  loc_AC7EA4: Call cmdNueva_Click()
  loc_AC7EA9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CC818
  'Data Table: 4D09A4
  loc_9CC800: FLdPr Me
  loc_9CC803: VCallAd Control_ID_wbbReporte
  loc_9CC806: FStAdFunc var_88
  loc_9CC809: FLdRfVar var_88
  loc_9CC80C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CC811: FFree1Ad var_88
  loc_9CC814: ExitProcHresult
  loc_9CC815: StAryRecCopy
End Sub

Public Function bLogosGet() '4D1C48
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4D1C57
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4D1C66
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4D1C75
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AA488C
  'Data Table: 4D09A4
  loc_AA47E8: LitI4 0
  loc_AA47ED: LitI4 7
  loc_AA47F2: FLdRfVar var_88
  loc_AA47F5: Redim
  loc_AA47FF: FLdPr Me
  loc_AA4802: VCallAd Control_ID_ActivasOpt
  loc_AA4805: CVarAd
  loc_AA4809: ParmAry1St
  loc_AA480F: FLdPr Me
  loc_AA4812: VCallAd Control_ID_InactivasOpt
  loc_AA4815: CVarAd
  loc_AA4819: ParmAry1St
  loc_AA481F: FLdPr Me
  loc_AA4822: VCallAd Control_ID_SinVencimientoOpt
  loc_AA4825: CVarAd
  loc_AA4829: ParmAry1St
  loc_AA482F: FLdPr Me
  loc_AA4832: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_AA4835: CVarAd
  loc_AA4839: ParmAry1St
  loc_AA483F: FLdPr Me
  loc_AA4842: VCallAd Control_ID_CodiDifuHastaMsk
  loc_AA4845: CVarAd
  loc_AA4849: ParmAry1St
  loc_AA484F: FLdPr Me
  loc_AA4852: VCallAd Control_ID_CodiTiseCbo
  loc_AA4855: CVarAd
  loc_AA4859: ParmAry1St
  loc_AA485F: FLdPr Me
  loc_AA4862: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_AA4865: CVarAd
  loc_AA4869: ParmAry1St
  loc_AA486F: FLdPr Me
  loc_AA4872: VCallAd Control_ID_FeveDifuHastaMsk
  loc_AA4875: CVarAd
  loc_AA4879: ParmAry1St
  loc_AA487F: FLdRfVar var_88
  loc_AA4882: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA4887: FLdRfVar var_88
  loc_AA488A: Erase
  loc_AA488B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BF92BC
  'Data Table: 4D09A4
  loc_BF8A84: FLdPr Me
  loc_BF8A87: MemLdI2 bGenerado
  loc_BF8A8A: BranchF loc_BF8A8E
  loc_BF8A8D: ExitProcHresult
  loc_BF8A8E: LitVarStr var_A8, "Generando reporte..."
  loc_BF8A93: PopAdLdVar
  loc_BF8A94: FLdPr Me
  loc_BF8A97: VCallAd Control_ID_statusBar
  loc_BF8A9A: FStAdFunc var_BC
  loc_BF8A9D: FLdPr var_BC
  loc_BF8AA0: LateIdSt
  loc_BF8AA5: FFree1Ad var_BC
  loc_BF8AA8: LitI4 &HB
  loc_BF8AAD: CI2I4
  loc_BF8AAE: FLdPr Me
  loc_BF8AB1: Me.MousePointer = from_stack_1
  loc_BF8AB6: LitI2_Byte 0
  loc_BF8AB8: PopTmpLdAd2 var_BE
  loc_BF8ABB: from_stack_2v = CodiDifuDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BF8AC0: FLdPr Me
  loc_BF8AC3: MemLdStr global_96
  loc_BF8AC6: LitStr vbNullString
  loc_BF8AC9: NeStr
  loc_BF8ACB: BranchF loc_BF8AD1
  loc_BF8ACE: Branch loc_BF9293
  loc_BF8AD1: LitI2_Byte 0
  loc_BF8AD3: PopTmpLdAd2 var_BE
  loc_BF8AD6: Call CodiDifuHastaMsk_UnknownEvent_8()
  loc_BF8ADB: FLdPr Me
  loc_BF8ADE: MemLdStr global_96
  loc_BF8AE1: LitStr vbNullString
  loc_BF8AE4: NeStr
  loc_BF8AE6: BranchF loc_BF8AEC
  loc_BF8AE9: Branch loc_BF9293
  loc_BF8AEC: LitI2_Byte 0
  loc_BF8AEE: PopTmpLdAd2 var_BE
  loc_BF8AF1: Call FeveDifuHastaMsk_UnknownEvent_8()
  loc_BF8AF6: FLdPr Me
  loc_BF8AF9: MemLdStr global_96
  loc_BF8AFC: LitStr vbNullString
  loc_BF8AFF: NeStr
  loc_BF8B01: BranchF loc_BF8B07
  loc_BF8B04: Branch loc_BF9293
  loc_BF8B07: FLdPr Me
  loc_BF8B0A: MemLdUI1 global_92
  loc_BF8B0E: FStUI1 var_C0
  loc_BF8B12: FLdUI1
  loc_BF8B16: LitI2_Byte 1
  loc_BF8B18: CUI1I2
  loc_BF8B1A: EqI2
  loc_BF8B1B: BranchF loc_BF8B61
  loc_BF8B1E: LitStr " FeveDifu is not null AND difunto.BajaFeho IS NULL"
  loc_BF8B21: FStStrCopy var_98
  loc_BF8B24: FLdRfVar var_C4
  loc_BF8B27: FLdPr Me
  loc_BF8B2A: VCallAd Control_ID_ActivasOpt
  loc_BF8B2D: FStAdFunc var_BC
  loc_BF8B30: FLdPr var_BC
  loc_BF8B33:  = Me.Caption
  loc_BF8B38: ILdRf var_C4
  loc_BF8B3B: FLdPr Me
  loc_BF8B3E: MemStStrCopy
  loc_BF8B42: FFree1Str var_C4
  loc_BF8B45: FFree1Ad var_BC
  loc_BF8B48: LitI2_Byte &HFF
  loc_BF8B4A: FLdPr Me
  loc_BF8B4D: VCallAd Control_ID_ActivasOpt
  loc_BF8B50: FStAdFunc var_BC
  loc_BF8B53: FLdPr var_BC
  loc_BF8B56: Me.Value = from_stack_1b
  loc_BF8B5B: FFree1Ad var_BC
  loc_BF8B5E: Branch loc_BF8BFC
  loc_BF8B61: FLdUI1
  loc_BF8B65: LitI2_Byte 2
  loc_BF8B67: CUI1I2
  loc_BF8B69: EqI2
  loc_BF8B6A: BranchF loc_BF8BB0
  loc_BF8B6D: LitStr " FeveDifu is not null AND difunto.BajaFeho IS NOT NULL"
  loc_BF8B70: FStStrCopy var_98
  loc_BF8B73: FLdRfVar var_C4
  loc_BF8B76: FLdPr Me
  loc_BF8B79: VCallAd Control_ID_InactivasOpt
  loc_BF8B7C: FStAdFunc var_BC
  loc_BF8B7F: FLdPr var_BC
  loc_BF8B82:  = Me.Caption
  loc_BF8B87: ILdRf var_C4
  loc_BF8B8A: FLdPr Me
  loc_BF8B8D: MemStStrCopy
  loc_BF8B91: FFree1Str var_C4
  loc_BF8B94: FFree1Ad var_BC
  loc_BF8B97: LitI2_Byte &HFF
  loc_BF8B99: FLdPr Me
  loc_BF8B9C: VCallAd Control_ID_InactivasOpt
  loc_BF8B9F: FStAdFunc var_BC
  loc_BF8BA2: FLdPr var_BC
  loc_BF8BA5: Me.Value = from_stack_1b
  loc_BF8BAA: FFree1Ad var_BC
  loc_BF8BAD: Branch loc_BF8BFC
  loc_BF8BB0: FLdUI1
  loc_BF8BB4: LitI2_Byte 3
  loc_BF8BB6: CUI1I2
  loc_BF8BB8: EqI2
  loc_BF8BB9: BranchF loc_BF8BFC
  loc_BF8BBC: LitStr " FeveDifu IS NULL"
  loc_BF8BBF: FStStrCopy var_98
  loc_BF8BC2: FLdRfVar var_C4
  loc_BF8BC5: FLdPr Me
  loc_BF8BC8: VCallAd Control_ID_SinVencimientoOpt
  loc_BF8BCB: FStAdFunc var_BC
  loc_BF8BCE: FLdPr var_BC
  loc_BF8BD1:  = Me.Caption
  loc_BF8BD6: ILdRf var_C4
  loc_BF8BD9: FLdPr Me
  loc_BF8BDC: MemStStrCopy
  loc_BF8BE0: FFree1Str var_C4
  loc_BF8BE3: FFree1Ad var_BC
  loc_BF8BE6: LitI2_Byte &HFF
  loc_BF8BE8: FLdPr Me
  loc_BF8BEB: VCallAd Control_ID_SinVencimientoOpt
  loc_BF8BEE: FStAdFunc var_BC
  loc_BF8BF1: FLdPr var_BC
  loc_BF8BF4: Me.Value = from_stack_1b
  loc_BF8BF9: FFree1Ad var_BC
  loc_BF8BFC: FLdPr Me
  loc_BF8BFF: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_BF8C02: FStAdFunc var_BC
  loc_BF8C05: FLdPr var_BC
  loc_BF8C08: LateIdLdVar var_D4 DispID_22 0
  loc_BF8C0F: PopAd
  loc_BF8C11: FLdPr Me
  loc_BF8C14: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_BF8C17: FStAdFunc var_D8
  loc_BF8C1A: FLdPr var_D8
  loc_BF8C1D: LateIdLdVar var_E8 DispID_22 0
  loc_BF8C24: PopAd
  loc_BF8C26: LitVarStr var_B8, vbNullString
  loc_BF8C2B: FStVarCopyObj var_110
  loc_BF8C2E: FLdRfVar var_110
  loc_BF8C31: LitStr " difunto.CodiDifu >= '"
  loc_BF8C34: FLdRfVar var_E8
  loc_BF8C37: CStrVarTmp
  loc_BF8C38: FStStrNoPop var_EC
  loc_BF8C3B: ConcatStr
  loc_BF8C3C: FStStrNoPop var_F0
  loc_BF8C3F: LitStr "' AND "
  loc_BF8C42: ConcatStr
  loc_BF8C43: CVarStr var_100
  loc_BF8C46: FLdRfVar var_D4
  loc_BF8C49: CStrVarTmp
  loc_BF8C4A: FStStrNoPop var_C4
  loc_BF8C4D: LitStr vbNullString
  loc_BF8C50: NeStr
  loc_BF8C52: CVarBoolI2 var_A8
  loc_BF8C56: FLdRfVar var_120
  loc_BF8C59: ImpAdCallFPR4  = IIf(, , )
  loc_BF8C5E: FLdRfVar var_120
  loc_BF8C61: CStrVarTmp
  loc_BF8C62: FStStr var_88
  loc_BF8C65: FFreeStr var_C4 = "": var_EC = ""
  loc_BF8C6E: FFreeAd var_BC = ""
  loc_BF8C75: FFreeVar var_D4 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_BF8C84: FLdPr Me
  loc_BF8C87: VCallAd Control_ID_CodiDifuHastaMsk
  loc_BF8C8A: FStAdFunc var_BC
  loc_BF8C8D: FLdPr var_BC
  loc_BF8C90: LateIdLdVar var_D4 DispID_22 0
  loc_BF8C97: PopAd
  loc_BF8C99: FLdPr Me
  loc_BF8C9C: VCallAd Control_ID_CodiDifuHastaMsk
  loc_BF8C9F: FStAdFunc var_D8
  loc_BF8CA2: FLdPr var_D8
  loc_BF8CA5: LateIdLdVar var_E8 DispID_22 0
  loc_BF8CAC: PopAd
  loc_BF8CAE: LitVarStr var_B8, vbNullString
  loc_BF8CB3: FStVarCopyObj var_110
  loc_BF8CB6: FLdRfVar var_110
  loc_BF8CB9: LitStr " difunto.CodiDifu <= '"
  loc_BF8CBC: FLdRfVar var_E8
  loc_BF8CBF: CStrVarTmp
  loc_BF8CC0: FStStrNoPop var_EC
  loc_BF8CC3: ConcatStr
  loc_BF8CC4: FStStrNoPop var_F0
  loc_BF8CC7: LitStr "' AND "
  loc_BF8CCA: ConcatStr
  loc_BF8CCB: CVarStr var_100
  loc_BF8CCE: FLdRfVar var_D4
  loc_BF8CD1: CStrVarTmp
  loc_BF8CD2: FStStrNoPop var_C4
  loc_BF8CD5: LitStr vbNullString
  loc_BF8CD8: NeStr
  loc_BF8CDA: CVarBoolI2 var_A8
  loc_BF8CDE: FLdRfVar var_120
  loc_BF8CE1: ImpAdCallFPR4  = IIf(, , )
  loc_BF8CE6: FLdRfVar var_120
  loc_BF8CE9: CStrVarTmp
  loc_BF8CEA: FStStr var_8C
  loc_BF8CED: FFreeStr var_C4 = "": var_EC = ""
  loc_BF8CF6: FFreeAd var_BC = ""
  loc_BF8CFD: FFreeVar var_D4 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_BF8D0C: FLdRfVar var_BE
  loc_BF8D0F: FLdPr Me
  loc_BF8D12: VCallAd Control_ID_CodiTiseCbo
  loc_BF8D15: FStAdFunc var_BC
  loc_BF8D18: FLdPr var_BC
  loc_BF8D1B:  = Me.ListIndex
  loc_BF8D20: FLdRfVar var_122
  loc_BF8D23: FLdPr Me
  loc_BF8D26: VCallAd Control_ID_CodiTiseCbo
  loc_BF8D29: FStAdFunc var_D8
  loc_BF8D2C: FLdPr var_D8
  loc_BF8D2F:  = Me.ListIndex
  loc_BF8D34: FLdRfVar var_12C
  loc_BF8D37: FLdI2 var_122
  loc_BF8D3A: FLdPr Me
  loc_BF8D3D: VCallAd Control_ID_CodiTiseCbo
  loc_BF8D40: FStAdFunc var_128
  loc_BF8D43: FLdPr var_128
  loc_BF8D46:  = Me.ItemData
  loc_BF8D4B: LitVarStr var_B8, vbNullString
  loc_BF8D50: FStVarCopyObj var_E8
  loc_BF8D53: FLdRfVar var_E8
  loc_BF8D56: LitStr " difunto.CodiTise = "
  loc_BF8D59: ILdRf var_12C
  loc_BF8D5C: CStrI4
  loc_BF8D5E: FStStrNoPop var_C4
  loc_BF8D61: ConcatStr
  loc_BF8D62: FStStrNoPop var_EC
  loc_BF8D65: LitStr " AND "
  loc_BF8D68: ConcatStr
  loc_BF8D69: CVarStr var_D4
  loc_BF8D6C: FLdI2 var_BE
  loc_BF8D6F: LitI2_Byte 0
  loc_BF8D71: GtI2
  loc_BF8D72: CVarBoolI2 var_A8
  loc_BF8D76: FLdRfVar var_100
  loc_BF8D79: ImpAdCallFPR4  = IIf(, , )
  loc_BF8D7E: FLdRfVar var_100
  loc_BF8D81: CStrVarTmp
  loc_BF8D82: FStStr var_90
  loc_BF8D85: FFreeStr var_C4 = ""
  loc_BF8D8C: FFreeAd var_BC = "": var_D8 = ""
  loc_BF8D95: FFreeVar var_A8 = "": var_D4 = "": var_E8 = ""
  loc_BF8DA0: FLdPr Me
  loc_BF8DA3: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_BF8DA6: FStAdFunc var_BC
  loc_BF8DA9: FLdPr var_BC
  loc_BF8DAC: LateIdLdVar var_D4 DispID_15 0
  loc_BF8DB3: PopAd
  loc_BF8DB5: FLdPr Me
  loc_BF8DB8: VCallAd Control_ID_FeveDifuHastaMsk
  loc_BF8DBB: FStAdFunc var_D8
  loc_BF8DBE: FLdPr var_D8
  loc_BF8DC1: LateIdLdVar var_15C DispID_15 0
  loc_BF8DC8: PopAd
  loc_BF8DCA: LitVarStr var_B8, " FeveDifu >= "
  loc_BF8DCF: LitI4 1
  loc_BF8DD4: LitI4 1
  loc_BF8DD9: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_BF8DDE: FStVarCopyObj var_100
  loc_BF8DE1: FLdRfVar var_100
  loc_BF8DE4: FLdRfVar var_D4
  loc_BF8DE7: CStrVarTmp
  loc_BF8DE8: CVarStr var_E8
  loc_BF8DEB: FLdRfVar var_110
  loc_BF8DEE: ImpAdCallFPR4  = Format(, )
  loc_BF8DF3: FLdRfVar var_110
  loc_BF8DF6: ConcatVar var_120
  loc_BF8DFA: LitVarStr var_13C, " AND FeveDifu <= "
  loc_BF8DFF: ConcatVar var_14C
  loc_BF8E03: LitI4 1
  loc_BF8E08: LitI4 1
  loc_BF8E0D: LitVarStr var_17C, "'yyyy-mm-dd'"
  loc_BF8E12: FStVarCopyObj var_18C
  loc_BF8E15: FLdRfVar var_18C
  loc_BF8E18: FLdRfVar var_15C
  loc_BF8E1B: CStrVarTmp
  loc_BF8E1C: CVarStr var_16C
  loc_BF8E1F: FLdRfVar var_19C
  loc_BF8E22: ImpAdCallFPR4  = Format(, )
  loc_BF8E27: FLdRfVar var_19C
  loc_BF8E2A: ConcatVar var_1AC
  loc_BF8E2E: LitVarStr var_1BC, " AND "
  loc_BF8E33: ConcatVar var_1CC
  loc_BF8E37: LitVarStr var_1EC, vbNullString
  loc_BF8E3C: FStVarCopyObj var_1FC
  loc_BF8E3F: FLdRfVar var_1FC
  loc_BF8E42: FLdPr Me
  loc_BF8E45: MemLdUI1 global_92
  loc_BF8E49: CI2UI1
  loc_BF8E4B: LitI2_Byte 3
  loc_BF8E4D: EqI2
  loc_BF8E4E: CVarBoolI2 var_1DC
  loc_BF8E52: FLdRfVar var_20C
  loc_BF8E55: ImpAdCallFPR4  = IIf(, , )
  loc_BF8E5A: FLdRfVar var_20C
  loc_BF8E5D: CStrVarTmp
  loc_BF8E5E: FStStr var_94
  loc_BF8E61: FFreeAd var_BC = ""
  loc_BF8E68: FFreeVar var_D4 = "": var_E8 = "": var_100 = "": var_110 = "": var_120 = "": var_15C = "": var_16C = "": var_18C = "": var_14C = "": var_19C = "": var_1AC = "": var_1DC = "": var_1FC = "": var_1CC = ""
  loc_BF8E89: FLdPr Me
  loc_BF8E8C: MemLdRfVar from_stack_1.global_76
  loc_BF8E8F: NewIfNullAd
  loc_BF8E92: FStAd var_210 
  loc_BF8E96: LitStr "SELECT difunto.CodiDifu, DetaPers, DetaTise, NumeDifu, FilaDifu, SeccDifu, FeveDifu, "
  loc_BF8E99: LitStr " (SELECT GROUP_CONCAT(DetaDedi SEPARATOR ' - ') FROM detadifu WHERE detadifu.CodiDifu = difunto.CodiDifu AND detadifu.BajaFeho IS NULL) DetaDedi "
  loc_BF8E9C: ConcatStr
  loc_BF8E9D: FStStrNoPop var_C4
  loc_BF8EA0: LitStr " FROM difunto"
  loc_BF8EA3: ConcatStr
  loc_BF8EA4: FStStrNoPop var_EC
  loc_BF8EA7: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_BF8EAA: ConcatStr
  loc_BF8EAB: FStStrNoPop var_F0
  loc_BF8EAE: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_BF8EB1: ConcatStr
  loc_BF8EB2: FStStrNoPop var_214
  loc_BF8EB5: LitStr " WHERE "
  loc_BF8EB8: ConcatStr
  loc_BF8EB9: FStStrNoPop var_218
  loc_BF8EBC: ILdRf var_88
  loc_BF8EBF: ConcatStr
  loc_BF8EC0: FStStrNoPop var_21C
  loc_BF8EC3: ILdRf var_8C
  loc_BF8EC6: ConcatStr
  loc_BF8EC7: FStStrNoPop var_220
  loc_BF8ECA: ILdRf var_90
  loc_BF8ECD: ConcatStr
  loc_BF8ECE: FStStrNoPop var_224
  loc_BF8ED1: ILdRf var_94
  loc_BF8ED4: ConcatStr
  loc_BF8ED5: FStStrNoPop var_228
  loc_BF8ED8: ILdRf var_98
  loc_BF8EDB: ConcatStr
  loc_BF8EDC: FStStrNoPop var_22C
  loc_BF8EDF: FLdPr var_210
  loc_BF8EE2: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_BF8EE7: FFreeStr var_C4 = "": var_EC = "": var_F0 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = ""
  loc_BF8EFE: FLdRfVar var_12C
  loc_BF8F01: FLdPr var_210
  loc_BF8F04: from_stack_1 = clsdifunto.RecordCount
  loc_BF8F09: ILdRf var_12C
  loc_BF8F0C: LitI4 0
  loc_BF8F11: EqI4
  loc_BF8F12: BranchF loc_BF8F20
  loc_BF8F15: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF8F18: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF8F1D: Branch loc_BF9293
  loc_BF8F20: LitI4 0
  loc_BF8F25: FLdRfVar var_12C
  loc_BF8F28: FLdPr var_210
  loc_BF8F2B: from_stack_1 = clsdifunto.RecordCount
  loc_BF8F30: ILdRf var_12C
  loc_BF8F33: FLdPr Me
  loc_BF8F36: MemLdRfVar from_stack_1.global_80
  loc_BF8F39: Redim
  loc_BF8F43: FLdPr var_210
  loc_BF8F46: Call clsdifunto.MoveFirst()
  loc_BF8F4B: LitI4 1
  loc_BF8F50: FLdPr Me
  loc_BF8F53: MemLdRfVar from_stack_1.global_84
  loc_BF8F56: FLdPr Me
  loc_BF8F59: MemLdStr global_80
  loc_BF8F5C: LitI2_Byte 1
  loc_BF8F5E: FnUBound
  loc_BF8F60: ForI4 var_234
  loc_BF8F66: FLdRfVar var_128
  loc_BF8F69: LitVarStr var_A8, "CodiDifu"
  loc_BF8F6E: PopAdLdVar
  loc_BF8F6F: FLdRfVar var_D8
  loc_BF8F72: FLdRfVar var_BC
  loc_BF8F75: FLdPr var_210
  loc_BF8F78: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF8F7D: FLdPr var_BC
  loc_BF8F80:  = Me.Fields
  loc_BF8F85: FLdPr var_D8
  loc_BF8F88: from_stack_2 = Me.Item(from_stack_1)
  loc_BF8F8D: LitI2_Byte 0
  loc_BF8F8F: LitVar_Missing var_E8
  loc_BF8F92: LitI2_Byte 0
  loc_BF8F94: FLdZeroAd var_128
  loc_BF8F97: CVarAd
  loc_BF8F9B: PopAdLdVar
  loc_BF8F9C: FLdPr Me
  loc_BF8F9F: MemLdStr global_84
  loc_BF8FA2: FLdPr Me
  loc_BF8FA5: MemLdStr global_80
  loc_BF8FA8: AryLock
  loc_BF8FAB: Ary1LdPr
  loc_BF8FAC: MemLdRfVar from_stack_1.global_0
  loc_BF8FAF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF8FB4: AryUnlock
  loc_BF8FB7: FFreeAd var_BC = ""
  loc_BF8FBE: FFreeVar var_D4 = ""
  loc_BF8FC5: FLdRfVar var_128
  loc_BF8FC8: LitVarStr var_A8, "DetaPers"
  loc_BF8FCD: PopAdLdVar
  loc_BF8FCE: FLdRfVar var_D8
  loc_BF8FD1: FLdRfVar var_BC
  loc_BF8FD4: FLdPr var_210
  loc_BF8FD7: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF8FDC: FLdPr var_BC
  loc_BF8FDF:  = Me.Fields
  loc_BF8FE4: FLdPr var_D8
  loc_BF8FE7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF8FEC: LitI2_Byte 0
  loc_BF8FEE: LitVar_Missing var_E8
  loc_BF8FF1: LitI2_Byte 0
  loc_BF8FF3: FLdZeroAd var_128
  loc_BF8FF6: CVarAd
  loc_BF8FFA: PopAdLdVar
  loc_BF8FFB: FLdPr Me
  loc_BF8FFE: MemLdStr global_84
  loc_BF9001: FLdPr Me
  loc_BF9004: MemLdStr global_80
  loc_BF9007: AryLock
  loc_BF900A: Ary1LdPr
  loc_BF900B: MemLdRfVar from_stack_1.global_4
  loc_BF900E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF9013: AryUnlock
  loc_BF9016: FFreeAd var_BC = ""
  loc_BF901D: FFreeVar var_D4 = ""
  loc_BF9024: FLdRfVar var_128
  loc_BF9027: LitVarStr var_A8, "DetaDedi"
  loc_BF902C: PopAdLdVar
  loc_BF902D: FLdRfVar var_D8
  loc_BF9030: FLdRfVar var_BC
  loc_BF9033: FLdPr var_210
  loc_BF9036: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF903B: FLdPr var_BC
  loc_BF903E:  = Me.Fields
  loc_BF9043: FLdPr var_D8
  loc_BF9046: from_stack_2 = Me.Item(from_stack_1)
  loc_BF904B: LitI2_Byte 0
  loc_BF904D: LitVar_Missing var_E8
  loc_BF9050: LitI2_Byte 0
  loc_BF9052: FLdZeroAd var_128
  loc_BF9055: CVarAd
  loc_BF9059: PopAdLdVar
  loc_BF905A: FLdPr Me
  loc_BF905D: MemLdStr global_84
  loc_BF9060: FLdPr Me
  loc_BF9063: MemLdStr global_80
  loc_BF9066: AryLock
  loc_BF9069: Ary1LdPr
  loc_BF906A: MemLdRfVar from_stack_1.global_8
  loc_BF906D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF9072: AryUnlock
  loc_BF9075: FFreeAd var_BC = ""
  loc_BF907C: FFreeVar var_D4 = ""
  loc_BF9083: FLdRfVar var_128
  loc_BF9086: LitVarStr var_A8, "DetaTise"
  loc_BF908B: PopAdLdVar
  loc_BF908C: FLdRfVar var_D8
  loc_BF908F: FLdRfVar var_BC
  loc_BF9092: FLdPr var_210
  loc_BF9095: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF909A: FLdPr var_BC
  loc_BF909D:  = Me.Fields
  loc_BF90A2: FLdPr var_D8
  loc_BF90A5: from_stack_2 = Me.Item(from_stack_1)
  loc_BF90AA: LitI2_Byte 0
  loc_BF90AC: LitVar_Missing var_E8
  loc_BF90AF: LitI2_Byte 0
  loc_BF90B1: FLdZeroAd var_128
  loc_BF90B4: CVarAd
  loc_BF90B8: PopAdLdVar
  loc_BF90B9: FLdPr Me
  loc_BF90BC: MemLdStr global_84
  loc_BF90BF: FLdPr Me
  loc_BF90C2: MemLdStr global_80
  loc_BF90C5: AryLock
  loc_BF90C8: Ary1LdPr
  loc_BF90C9: MemLdRfVar from_stack_1.global_12
  loc_BF90CC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF90D1: AryUnlock
  loc_BF90D4: FFreeAd var_BC = ""
  loc_BF90DB: FFreeVar var_D4 = ""
  loc_BF90E2: FLdRfVar var_128
  loc_BF90E5: LitVarStr var_A8, "NumeDifu"
  loc_BF90EA: PopAdLdVar
  loc_BF90EB: FLdRfVar var_D8
  loc_BF90EE: FLdRfVar var_BC
  loc_BF90F1: FLdPr var_210
  loc_BF90F4: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF90F9: FLdPr var_BC
  loc_BF90FC:  = Me.Fields
  loc_BF9101: FLdPr var_D8
  loc_BF9104: from_stack_2 = Me.Item(from_stack_1)
  loc_BF9109: LitI2_Byte 0
  loc_BF910B: LitVar_Missing var_E8
  loc_BF910E: LitI2_Byte 0
  loc_BF9110: FLdZeroAd var_128
  loc_BF9113: CVarAd
  loc_BF9117: PopAdLdVar
  loc_BF9118: FLdPr Me
  loc_BF911B: MemLdStr global_84
  loc_BF911E: FLdPr Me
  loc_BF9121: MemLdStr global_80
  loc_BF9124: AryLock
  loc_BF9127: Ary1LdPr
  loc_BF9128: MemLdRfVar from_stack_1.global_16
  loc_BF912B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF9130: AryUnlock
  loc_BF9133: FFreeAd var_BC = ""
  loc_BF913A: FFreeVar var_D4 = ""
  loc_BF9141: FLdRfVar var_128
  loc_BF9144: LitVarStr var_A8, "FilaDifu"
  loc_BF9149: PopAdLdVar
  loc_BF914A: FLdRfVar var_D8
  loc_BF914D: FLdRfVar var_BC
  loc_BF9150: FLdPr var_210
  loc_BF9153: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF9158: FLdPr var_BC
  loc_BF915B:  = Me.Fields
  loc_BF9160: FLdPr var_D8
  loc_BF9163: from_stack_2 = Me.Item(from_stack_1)
  loc_BF9168: LitI2_Byte 0
  loc_BF916A: LitVar_Missing var_E8
  loc_BF916D: LitI2_Byte 0
  loc_BF916F: FLdZeroAd var_128
  loc_BF9172: CVarAd
  loc_BF9176: PopAdLdVar
  loc_BF9177: FLdPr Me
  loc_BF917A: MemLdStr global_84
  loc_BF917D: FLdPr Me
  loc_BF9180: MemLdStr global_80
  loc_BF9183: AryLock
  loc_BF9186: Ary1LdPr
  loc_BF9187: MemLdRfVar from_stack_1.global_20
  loc_BF918A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF918F: AryUnlock
  loc_BF9192: FFreeAd var_BC = ""
  loc_BF9199: FFreeVar var_D4 = ""
  loc_BF91A0: FLdRfVar var_128
  loc_BF91A3: LitVarStr var_A8, "SeccDifu"
  loc_BF91A8: PopAdLdVar
  loc_BF91A9: FLdRfVar var_D8
  loc_BF91AC: FLdRfVar var_BC
  loc_BF91AF: FLdPr var_210
  loc_BF91B2: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF91B7: FLdPr var_BC
  loc_BF91BA:  = Me.Fields
  loc_BF91BF: FLdPr var_D8
  loc_BF91C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BF91C7: LitI2_Byte 0
  loc_BF91C9: LitVar_Missing var_E8
  loc_BF91CC: LitI2_Byte 0
  loc_BF91CE: FLdZeroAd var_128
  loc_BF91D1: CVarAd
  loc_BF91D5: PopAdLdVar
  loc_BF91D6: FLdPr Me
  loc_BF91D9: MemLdStr global_84
  loc_BF91DC: FLdPr Me
  loc_BF91DF: MemLdStr global_80
  loc_BF91E2: AryLock
  loc_BF91E5: Ary1LdPr
  loc_BF91E6: MemLdRfVar from_stack_1.global_24
  loc_BF91E9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF91EE: AryUnlock
  loc_BF91F1: FFreeAd var_BC = ""
  loc_BF91F8: FFreeVar var_D4 = ""
  loc_BF91FF: FLdPr Me
  loc_BF9202: MemLdUI1 global_92
  loc_BF9206: CI2UI1
  loc_BF9208: LitI2_Byte 3
  loc_BF920A: NeI2
  loc_BF920B: BranchF loc_BF926D
  loc_BF920E: FLdRfVar var_128
  loc_BF9211: LitVarStr var_A8, "FeveDifu"
  loc_BF9216: PopAdLdVar
  loc_BF9217: FLdRfVar var_D8
  loc_BF921A: FLdRfVar var_BC
  loc_BF921D: FLdPr var_210
  loc_BF9220: from_stack_1v = clsdifunto.RsFrmGet()
  loc_BF9225: FLdPr var_BC
  loc_BF9228:  = Me.Fields
  loc_BF922D: FLdPr var_D8
  loc_BF9230: from_stack_2 = Me.Item(from_stack_1)
  loc_BF9235: LitI2_Byte 0
  loc_BF9237: LitVar_Missing var_E8
  loc_BF923A: LitI2_Byte 0
  loc_BF923C: FLdZeroAd var_128
  loc_BF923F: CVarAd
  loc_BF9243: PopAdLdVar
  loc_BF9244: FLdPr Me
  loc_BF9247: MemLdStr global_84
  loc_BF924A: FLdPr Me
  loc_BF924D: MemLdStr global_80
  loc_BF9250: AryLock
  loc_BF9253: Ary1LdPr
  loc_BF9254: MemLdRfVar from_stack_1.global_28
  loc_BF9257: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BF925C: AryUnlock
  loc_BF925F: FFreeAd var_BC = ""
  loc_BF9266: FFreeVar var_D4 = ""
  loc_BF926D: LitI2_Byte 1
  loc_BF926F: PopTmpLdAd2 var_BE
  loc_BF9272: FLdPr var_210
  loc_BF9275: Call clsdifunto.Move(from_stack_1v)
  loc_BF927A: FLdPr Me
  loc_BF927D: MemLdRfVar from_stack_1.global_84
  loc_BF9280: NextI4 var_234, loc_BF8F66
  loc_BF9285: LitNothing
  loc_BF9287: FStAd var_210 
  loc_BF928B: LitI2_Byte &HFF
  loc_BF928D: FLdPr Me
  loc_BF9290: MemStI2 bGenerado
  loc_BF9293: LitI4 0
  loc_BF9298: CI2I4
  loc_BF9299: FLdPr Me
  loc_BF929C: Me.MousePointer = from_stack_1
  loc_BF92A1: LitVarStr var_A8, vbNullString
  loc_BF92A6: PopAdLdVar
  loc_BF92A7: FLdPr Me
  loc_BF92AA: VCallAd Control_ID_statusBar
  loc_BF92AD: FStAdFunc var_BC
  loc_BF92B0: FLdPr var_BC
  loc_BF92B3: LateIdSt
  loc_BF92B8: FFree1Ad var_BC
  loc_BF92BB: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B4387C
  'Data Table: 4D09A4
  loc_B43554: FLdRfVar var_88
  loc_B43557: LitI2_Byte 0
  loc_B43559: LitI2_Byte &HFF
  loc_B4355B: ImpAdLdI4 MemVar_D93C84
  loc_B4355E: FLdPr Me
  loc_B43561: MemLdRfVar from_stack_1.global_56
  loc_B43564: NewIfNullPr IFileSystem3
  loc_B43567: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B4356C: ILdRf var_88
  loc_B4356F: FLdPr Me
  loc_B43572: MemStVarAd
  loc_B43576: FFree1Ad var_88
  loc_B43579: LitI2_Byte &HFF
  loc_B4357B: ImpAdStI2 MemVar_D93C8A
  loc_B4357E: Call Proc_247_30_BFDC04()
  loc_B43583: LitI4 1
  loc_B43588: FLdPr Me
  loc_B4358B: MemLdRfVar from_stack_1.global_84
  loc_B4358E: FLdPr Me
  loc_B43591: MemLdStr global_80
  loc_B43594: LitI2_Byte 1
  loc_B43596: FnUBound
  loc_B43598: ForI4 var_90
  loc_B4359E: FLdPr Me
  loc_B435A1: MemLdStr global_84
  loc_B435A4: FLdPr Me
  loc_B435A7: MemLdStr global_80
  loc_B435AA: AryLock
  loc_B435AD: Ary1LdRf
  loc_B435AE: FStR4 var_98
  loc_B435B1: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B435B6: PopAdLdVar
  loc_B435B7: FLdPr Me
  loc_B435BA: MemLdRfVar from_stack_1.global_60
  loc_B435BD: LdPrVar
  loc_B435BF: LateMemCall
  loc_B435C5: LitStr vbNullString
  loc_B435C8: LitI2_Byte 0
  loc_B435CA: LitI2_Byte 0
  loc_B435CC: LitI2_Byte 0
  loc_B435CE: LitStr "right"
  loc_B435D1: FMemLdR4 var_98(0)
  loc_B435D6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B435DB: CVarStr var_C8
  loc_B435DE: PopAdLdVar
  loc_B435DF: FLdPr Me
  loc_B435E2: MemLdRfVar from_stack_1.global_60
  loc_B435E5: LdPrVar
  loc_B435E7: LateMemCall
  loc_B435ED: FFree1Var var_C8 = ""
  loc_B435F0: LitStr vbNullString
  loc_B435F3: LitI2_Byte 0
  loc_B435F5: LitI2_Byte 0
  loc_B435F7: LitI2_Byte 0
  loc_B435F9: LitStr "left"
  loc_B435FC: FMemLdR4 var_98(4)
  loc_B43601: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B43606: CVarStr var_C8
  loc_B43609: PopAdLdVar
  loc_B4360A: FLdPr Me
  loc_B4360D: MemLdRfVar from_stack_1.global_60
  loc_B43610: LdPrVar
  loc_B43612: LateMemCall
  loc_B43618: FFree1Var var_C8 = ""
  loc_B4361B: LitStr vbNullString
  loc_B4361E: LitI2_Byte 0
  loc_B43620: LitI2_Byte 0
  loc_B43622: LitI2_Byte 0
  loc_B43624: LitStr "left"
  loc_B43627: FMemLdR4 var_98(8)
  loc_B4362C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B43631: CVarStr var_C8
  loc_B43634: PopAdLdVar
  loc_B43635: FLdPr Me
  loc_B43638: MemLdRfVar from_stack_1.global_60
  loc_B4363B: LdPrVar
  loc_B4363D: LateMemCall
  loc_B43643: FFree1Var var_C8 = ""
  loc_B43646: LitStr vbNullString
  loc_B43649: LitI2_Byte 0
  loc_B4364B: LitI2_Byte 0
  loc_B4364D: LitI2_Byte 0
  loc_B4364F: LitStr "left"
  loc_B43652: FMemLdR4 var_98(12)
  loc_B43657: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4365C: CVarStr var_C8
  loc_B4365F: PopAdLdVar
  loc_B43660: FLdPr Me
  loc_B43663: MemLdRfVar from_stack_1.global_60
  loc_B43666: LdPrVar
  loc_B43668: LateMemCall
  loc_B4366E: FFree1Var var_C8 = ""
  loc_B43671: LitStr vbNullString
  loc_B43674: LitI2_Byte 0
  loc_B43676: LitI2_Byte 0
  loc_B43678: LitI2_Byte 0
  loc_B4367A: LitStr "right"
  loc_B4367D: FMemLdR4 var_98(16)
  loc_B43682: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B43687: CVarStr var_C8
  loc_B4368A: PopAdLdVar
  loc_B4368B: FLdPr Me
  loc_B4368E: MemLdRfVar from_stack_1.global_60
  loc_B43691: LdPrVar
  loc_B43693: LateMemCall
  loc_B43699: FFree1Var var_C8 = ""
  loc_B4369C: LitStr vbNullString
  loc_B4369F: LitI2_Byte 0
  loc_B436A1: LitI2_Byte 0
  loc_B436A3: LitI2_Byte 0
  loc_B436A5: LitStr "right"
  loc_B436A8: FMemLdR4 var_98(20)
  loc_B436AD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B436B2: CVarStr var_C8
  loc_B436B5: PopAdLdVar
  loc_B436B6: FLdPr Me
  loc_B436B9: MemLdRfVar from_stack_1.global_60
  loc_B436BC: LdPrVar
  loc_B436BE: LateMemCall
  loc_B436C4: FFree1Var var_C8 = ""
  loc_B436C7: LitStr vbNullString
  loc_B436CA: LitI2_Byte 0
  loc_B436CC: LitI2_Byte 0
  loc_B436CE: LitI2_Byte 0
  loc_B436D0: LitStr "right"
  loc_B436D3: FMemLdR4 var_98(24)
  loc_B436D8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B436DD: CVarStr var_C8
  loc_B436E0: PopAdLdVar
  loc_B436E1: FLdPr Me
  loc_B436E4: MemLdRfVar from_stack_1.global_60
  loc_B436E7: LdPrVar
  loc_B436E9: LateMemCall
  loc_B436EF: FFree1Var var_C8 = ""
  loc_B436F2: FLdPr Me
  loc_B436F5: MemLdUI1 global_92
  loc_B436F9: CI2UI1
  loc_B436FB: LitI2_Byte 3
  loc_B436FD: NeI2
  loc_B436FE: BranchF loc_B4372C
  loc_B43701: LitStr vbNullString
  loc_B43704: LitI2_Byte 0
  loc_B43706: LitI2_Byte 0
  loc_B43708: LitI2_Byte 0
  loc_B4370A: LitStr "center"
  loc_B4370D: FMemLdR4 var_98(28)
  loc_B43712: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B43717: CVarStr var_C8
  loc_B4371A: PopAdLdVar
  loc_B4371B: FLdPr Me
  loc_B4371E: MemLdRfVar from_stack_1.global_60
  loc_B43721: LdPrVar
  loc_B43723: LateMemCall
  loc_B43729: FFree1Var var_C8 = ""
  loc_B4372C: LitVarStr var_A8, "     </tr>"
  loc_B43731: PopAdLdVar
  loc_B43732: FLdPr Me
  loc_B43735: MemLdRfVar from_stack_1.global_60
  loc_B43738: LdPrVar
  loc_B4373A: LateMemCall
  loc_B43740: LitI4 0
  loc_B43745: FStR4 var_98
  loc_B43748: AryUnlock
  loc_B4374B: FLdPr Me
  loc_B4374E: MemLdRfVar from_stack_1.global_84
  loc_B43751: NextI4 var_90, loc_B4359E
  loc_B43756: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B4375B: PopAdLdVar
  loc_B4375C: FLdPr Me
  loc_B4375F: MemLdRfVar from_stack_1.global_60
  loc_B43762: LdPrVar
  loc_B43764: LateMemCall
  loc_B4376A: LitVarStr var_108, "    <th colspan="""
  loc_B4376F: LitVarI2 var_E8, 8
  loc_B43774: LitVarI2 var_C8, 7
  loc_B43779: FLdPr Me
  loc_B4377C: MemLdUI1 global_92
  loc_B43780: CI2UI1
  loc_B43782: LitI2_Byte 3
  loc_B43784: EqI2
  loc_B43785: CVarBoolI2 var_A8
  loc_B43789: FLdRfVar var_F8
  loc_B4378C: ImpAdCallFPR4  = IIf(, , )
  loc_B43791: FLdRfVar var_F8
  loc_B43794: ConcatVar var_118
  loc_B43798: LitVarStr var_128, """>"
  loc_B4379D: ConcatVar var_138
  loc_B437A1: LitI4 -1
  loc_B437A6: LitI4 0
  loc_B437AB: LitI4 -1
  loc_B437B0: LitI4 0
  loc_B437B5: FLdPr Me
  loc_B437B8: MemLdStr global_80
  loc_B437BB: LitI2_Byte 1
  loc_B437BD: FnUBound
  loc_B437BF: CVarI4
  loc_B437C3: ImpAdCallI2 FormatNumber(, , , , )
  loc_B437C8: CVarStr var_168
  loc_B437CB: ConcatVar var_178
  loc_B437CF: LitVarStr var_188, " cuenta"
  loc_B437D4: ConcatVar var_198
  loc_B437D8: LitVarStr var_1D8, vbNullString
  loc_B437DD: FStVarCopyObj var_1E8
  loc_B437E0: FLdRfVar var_1E8
  loc_B437E3: LitVarStr var_1B8, "s"
  loc_B437E8: FStVarCopyObj var_1C8
  loc_B437EB: FLdRfVar var_1C8
  loc_B437EE: FLdPr Me
  loc_B437F1: MemLdStr global_80
  loc_B437F4: LitI2_Byte 1
  loc_B437F6: FnUBound
  loc_B437F8: LitI4 1
  loc_B437FD: GtI4
  loc_B437FE: CVarBoolI2 var_1A8
  loc_B43802: FLdRfVar var_1F8
  loc_B43805: ImpAdCallFPR4  = IIf(, , )
  loc_B4380A: FLdRfVar var_1F8
  loc_B4380D: ConcatVar var_208
  loc_B43811: LitVarStr var_218, ".</th>"
  loc_B43816: ConcatVar var_228
  loc_B4381A: PopAdLdVar
  loc_B4381B: FLdPr Me
  loc_B4381E: MemLdRfVar from_stack_1.global_60
  loc_B43821: LdPrVar
  loc_B43823: LateMemCall
  loc_B43829: FFreeVar var_A8 = "": var_C8 = "": var_E8 = "": var_F8 = "": var_118 = "": var_158 = "": var_138 = "": var_168 = "": var_178 = "": var_1A8 = "": var_1C8 = "": var_1E8 = "": var_198 = "": var_1F8 = "": var_208 = ""
  loc_B4384C: LitVarStr var_A8, "  </tr>"
  loc_B43851: PopAdLdVar
  loc_B43852: FLdPr Me
  loc_B43855: MemLdRfVar from_stack_1.global_60
  loc_B43858: LdPrVar
  loc_B4385A: LateMemCall
  loc_B43860: Call Proc_247_31_A0E208()
  loc_B43865: FLdPr Me
  loc_B43868: MemLdRfVar from_stack_1.global_60
  loc_B4386B: LdPrVar
  loc_B4386D: LateMemCall
  loc_B43873: LitStr vbNullString
  loc_B43876: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B4387B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C546C
  'Data Table: 4D09A4
  loc_9C5454: LitI2_Byte 0
  loc_9C5456: FLdPr Me
  loc_9C5459: MemStI2 bLogos
  loc_9C545C: Call GeneraHTML()
  loc_9C5461: LitI2_Byte &HFF
  loc_9C5463: FLdPr Me
  loc_9C5466: MemStI2 bLogos
  loc_9C5469: ExitProcHresult
End Sub

Private Function Proc_247_30_BFDC04() 'BFDC04
  'Data Table: 4D09A4
  loc_BFD32C: LitVarStr var_98, "<html>"
  loc_BFD331: PopAdLdVar
  loc_BFD332: FLdPr Me
  loc_BFD335: MemLdRfVar from_stack_1.global_60
  loc_BFD338: LdPrVar
  loc_BFD33A: LateMemCall
  loc_BFD340: LitVarStr var_98, "<head>"
  loc_BFD345: PopAdLdVar
  loc_BFD346: FLdPr Me
  loc_BFD349: MemLdRfVar from_stack_1.global_60
  loc_BFD34C: LdPrVar
  loc_BFD34E: LateMemCall
  loc_BFD354: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BFD359: PopAdLdVar
  loc_BFD35A: FLdPr Me
  loc_BFD35D: MemLdRfVar from_stack_1.global_60
  loc_BFD360: LdPrVar
  loc_BFD362: LateMemCall
  loc_BFD368: LitStr "<title>"
  loc_BFD36B: FLdRfVar var_AC
  loc_BFD36E: FLdPr Me
  loc_BFD371:  = Me.Caption
  loc_BFD376: ILdRf var_AC
  loc_BFD379: ConcatStr
  loc_BFD37A: FStStrNoPop var_B0
  loc_BFD37D: LitStr "</title>"
  loc_BFD380: ConcatStr
  loc_BFD381: CVarStr var_C0
  loc_BFD384: PopAdLdVar
  loc_BFD385: FLdPr Me
  loc_BFD388: MemLdRfVar from_stack_1.global_60
  loc_BFD38B: LdPrVar
  loc_BFD38D: LateMemCall
  loc_BFD393: FFreeStr var_AC = ""
  loc_BFD39A: FFree1Var var_C0 = ""
  loc_BFD39D: LitVarStr var_98, "<style type=""text/css"">"
  loc_BFD3A2: PopAdLdVar
  loc_BFD3A3: FLdPr Me
  loc_BFD3A6: MemLdRfVar from_stack_1.global_60
  loc_BFD3A9: LdPrVar
  loc_BFD3AB: LateMemCall
  loc_BFD3B1: LitVarStr var_98, ".Titulo1 {"
  loc_BFD3B6: PopAdLdVar
  loc_BFD3B7: FLdPr Me
  loc_BFD3BA: MemLdRfVar from_stack_1.global_60
  loc_BFD3BD: LdPrVar
  loc_BFD3BF: LateMemCall
  loc_BFD3C5: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BFD3CA: PopAdLdVar
  loc_BFD3CB: FLdPr Me
  loc_BFD3CE: MemLdRfVar from_stack_1.global_60
  loc_BFD3D1: LdPrVar
  loc_BFD3D3: LateMemCall
  loc_BFD3D9: LitVarStr var_98, " font-size: 18px;"
  loc_BFD3DE: PopAdLdVar
  loc_BFD3DF: FLdPr Me
  loc_BFD3E2: MemLdRfVar from_stack_1.global_60
  loc_BFD3E5: LdPrVar
  loc_BFD3E7: LateMemCall
  loc_BFD3ED: LitVarStr var_98, " font-weight: bold;"
  loc_BFD3F2: PopAdLdVar
  loc_BFD3F3: FLdPr Me
  loc_BFD3F6: MemLdRfVar from_stack_1.global_60
  loc_BFD3F9: LdPrVar
  loc_BFD3FB: LateMemCall
  loc_BFD401: LitVarStr var_98, "}"
  loc_BFD406: PopAdLdVar
  loc_BFD407: FLdPr Me
  loc_BFD40A: MemLdRfVar from_stack_1.global_60
  loc_BFD40D: LdPrVar
  loc_BFD40F: LateMemCall
  loc_BFD415: LitVarStr var_98, ".Titulo2 {"
  loc_BFD41A: PopAdLdVar
  loc_BFD41B: FLdPr Me
  loc_BFD41E: MemLdRfVar from_stack_1.global_60
  loc_BFD421: LdPrVar
  loc_BFD423: LateMemCall
  loc_BFD429: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BFD42E: PopAdLdVar
  loc_BFD42F: FLdPr Me
  loc_BFD432: MemLdRfVar from_stack_1.global_60
  loc_BFD435: LdPrVar
  loc_BFD437: LateMemCall
  loc_BFD43D: LitVarStr var_98, " font-size: 14px;"
  loc_BFD442: PopAdLdVar
  loc_BFD443: FLdPr Me
  loc_BFD446: MemLdRfVar from_stack_1.global_60
  loc_BFD449: LdPrVar
  loc_BFD44B: LateMemCall
  loc_BFD451: LitVarStr var_98, " font-weight: bold;"
  loc_BFD456: PopAdLdVar
  loc_BFD457: FLdPr Me
  loc_BFD45A: MemLdRfVar from_stack_1.global_60
  loc_BFD45D: LdPrVar
  loc_BFD45F: LateMemCall
  loc_BFD465: LitVarStr var_98, "}"
  loc_BFD46A: PopAdLdVar
  loc_BFD46B: FLdPr Me
  loc_BFD46E: MemLdRfVar from_stack_1.global_60
  loc_BFD471: LdPrVar
  loc_BFD473: LateMemCall
  loc_BFD479: LitVarStr var_98, ".Normal {"
  loc_BFD47E: PopAdLdVar
  loc_BFD47F: FLdPr Me
  loc_BFD482: MemLdRfVar from_stack_1.global_60
  loc_BFD485: LdPrVar
  loc_BFD487: LateMemCall
  loc_BFD48D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BFD492: PopAdLdVar
  loc_BFD493: FLdPr Me
  loc_BFD496: MemLdRfVar from_stack_1.global_60
  loc_BFD499: LdPrVar
  loc_BFD49B: LateMemCall
  loc_BFD4A1: LitVarStr var_98, " font-size: 12px;"
  loc_BFD4A6: PopAdLdVar
  loc_BFD4A7: FLdPr Me
  loc_BFD4AA: MemLdRfVar from_stack_1.global_60
  loc_BFD4AD: LdPrVar
  loc_BFD4AF: LateMemCall
  loc_BFD4B5: LitVarStr var_98, " font-style: normal;"
  loc_BFD4BA: PopAdLdVar
  loc_BFD4BB: FLdPr Me
  loc_BFD4BE: MemLdRfVar from_stack_1.global_60
  loc_BFD4C1: LdPrVar
  loc_BFD4C3: LateMemCall
  loc_BFD4C9: LitVarStr var_98, " font-weight: normal;"
  loc_BFD4CE: PopAdLdVar
  loc_BFD4CF: FLdPr Me
  loc_BFD4D2: MemLdRfVar from_stack_1.global_60
  loc_BFD4D5: LdPrVar
  loc_BFD4D7: LateMemCall
  loc_BFD4DD: LitVarStr var_98, " font-variant: normal;"
  loc_BFD4E2: PopAdLdVar
  loc_BFD4E3: FLdPr Me
  loc_BFD4E6: MemLdRfVar from_stack_1.global_60
  loc_BFD4E9: LdPrVar
  loc_BFD4EB: LateMemCall
  loc_BFD4F1: LitVarStr var_98, "}"
  loc_BFD4F6: PopAdLdVar
  loc_BFD4F7: FLdPr Me
  loc_BFD4FA: MemLdRfVar from_stack_1.global_60
  loc_BFD4FD: LdPrVar
  loc_BFD4FF: LateMemCall
  loc_BFD505: LitVarStr var_98, ".Encabezado {"
  loc_BFD50A: PopAdLdVar
  loc_BFD50B: FLdPr Me
  loc_BFD50E: MemLdRfVar from_stack_1.global_60
  loc_BFD511: LdPrVar
  loc_BFD513: LateMemCall
  loc_BFD519: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BFD51E: PopAdLdVar
  loc_BFD51F: FLdPr Me
  loc_BFD522: MemLdRfVar from_stack_1.global_60
  loc_BFD525: LdPrVar
  loc_BFD527: LateMemCall
  loc_BFD52D: LitVarStr var_98, " font-size: 11px;"
  loc_BFD532: PopAdLdVar
  loc_BFD533: FLdPr Me
  loc_BFD536: MemLdRfVar from_stack_1.global_60
  loc_BFD539: LdPrVar
  loc_BFD53B: LateMemCall
  loc_BFD541: LitVarStr var_98, " font-weight: bold;"
  loc_BFD546: PopAdLdVar
  loc_BFD547: FLdPr Me
  loc_BFD54A: MemLdRfVar from_stack_1.global_60
  loc_BFD54D: LdPrVar
  loc_BFD54F: LateMemCall
  loc_BFD555: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BFD55A: PopAdLdVar
  loc_BFD55B: FLdPr Me
  loc_BFD55E: MemLdRfVar from_stack_1.global_60
  loc_BFD561: LdPrVar
  loc_BFD563: LateMemCall
  loc_BFD569: LitVarStr var_98, "}"
  loc_BFD56E: PopAdLdVar
  loc_BFD56F: FLdPr Me
  loc_BFD572: MemLdRfVar from_stack_1.global_60
  loc_BFD575: LdPrVar
  loc_BFD577: LateMemCall
  loc_BFD57D: LitVarStr var_98, ".LineaDato {"
  loc_BFD582: PopAdLdVar
  loc_BFD583: FLdPr Me
  loc_BFD586: MemLdRfVar from_stack_1.global_60
  loc_BFD589: LdPrVar
  loc_BFD58B: LateMemCall
  loc_BFD591: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BFD596: PopAdLdVar
  loc_BFD597: FLdPr Me
  loc_BFD59A: MemLdRfVar from_stack_1.global_60
  loc_BFD59D: LdPrVar
  loc_BFD59F: LateMemCall
  loc_BFD5A5: LitVarStr var_98, " font-size: 10px;"
  loc_BFD5AA: PopAdLdVar
  loc_BFD5AB: FLdPr Me
  loc_BFD5AE: MemLdRfVar from_stack_1.global_60
  loc_BFD5B1: LdPrVar
  loc_BFD5B3: LateMemCall
  loc_BFD5B9: LitVarStr var_98, "}"
  loc_BFD5BE: PopAdLdVar
  loc_BFD5BF: FLdPr Me
  loc_BFD5C2: MemLdRfVar from_stack_1.global_60
  loc_BFD5C5: LdPrVar
  loc_BFD5C7: LateMemCall
  loc_BFD5CD: LitVarStr var_98, ".Totales {"
  loc_BFD5D2: PopAdLdVar
  loc_BFD5D3: FLdPr Me
  loc_BFD5D6: MemLdRfVar from_stack_1.global_60
  loc_BFD5D9: LdPrVar
  loc_BFD5DB: LateMemCall
  loc_BFD5E1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BFD5E6: PopAdLdVar
  loc_BFD5E7: FLdPr Me
  loc_BFD5EA: MemLdRfVar from_stack_1.global_60
  loc_BFD5ED: LdPrVar
  loc_BFD5EF: LateMemCall
  loc_BFD5F5: LitVarStr var_98, " font-size: 12px;"
  loc_BFD5FA: PopAdLdVar
  loc_BFD5FB: FLdPr Me
  loc_BFD5FE: MemLdRfVar from_stack_1.global_60
  loc_BFD601: LdPrVar
  loc_BFD603: LateMemCall
  loc_BFD609: LitVarStr var_98, " font-weight: bold;"
  loc_BFD60E: PopAdLdVar
  loc_BFD60F: FLdPr Me
  loc_BFD612: MemLdRfVar from_stack_1.global_60
  loc_BFD615: LdPrVar
  loc_BFD617: LateMemCall
  loc_BFD61D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BFD622: PopAdLdVar
  loc_BFD623: FLdPr Me
  loc_BFD626: MemLdRfVar from_stack_1.global_60
  loc_BFD629: LdPrVar
  loc_BFD62B: LateMemCall
  loc_BFD631: LitVarStr var_98, "}"
  loc_BFD636: PopAdLdVar
  loc_BFD637: FLdPr Me
  loc_BFD63A: MemLdRfVar from_stack_1.global_60
  loc_BFD63D: LdPrVar
  loc_BFD63F: LateMemCall
  loc_BFD645: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BFD64A: PopAdLdVar
  loc_BFD64B: FLdPr Me
  loc_BFD64E: MemLdRfVar from_stack_1.global_60
  loc_BFD651: LdPrVar
  loc_BFD653: LateMemCall
  loc_BFD659: LitVarStr var_98, "</style>"
  loc_BFD65E: PopAdLdVar
  loc_BFD65F: FLdPr Me
  loc_BFD662: MemLdRfVar from_stack_1.global_60
  loc_BFD665: LdPrVar
  loc_BFD667: LateMemCall
  loc_BFD66D: LitI4 0
  loc_BFD672: FStStrCopy var_B0
  loc_BFD675: FLdRfVar var_B0
  loc_BFD678: LitI4 0
  loc_BFD67D: FStStrCopy var_AC
  loc_BFD680: FLdRfVar var_AC
  loc_BFD683: LitI2_Byte 0
  loc_BFD685: PopTmpLdAd2 var_C2
  loc_BFD688: FLdPr Me
  loc_BFD68B: MemLdRfVar from_stack_1.global_60
  loc_BFD68E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BFD693: FFreeStr var_AC = ""
  loc_BFD69A: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BFD69F: PopAdLdVar
  loc_BFD6A0: FLdPr Me
  loc_BFD6A3: MemLdRfVar from_stack_1.global_60
  loc_BFD6A6: LdPrVar
  loc_BFD6A8: LateMemCall
  loc_BFD6AE: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BFD6B3: PopAdLdVar
  loc_BFD6B4: FLdPr Me
  loc_BFD6B7: MemLdRfVar from_stack_1.global_60
  loc_BFD6BA: LdPrVar
  loc_BFD6BC: LateMemCall
  loc_BFD6C2: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p> "
  loc_BFD6C7: PopAdLdVar
  loc_BFD6C8: FLdPr Me
  loc_BFD6CB: MemLdRfVar from_stack_1.global_60
  loc_BFD6CE: LdPrVar
  loc_BFD6D0: LateMemCall
  loc_BFD6D6: FLdPr Me
  loc_BFD6D9: MemLdI2 bLogos
  loc_BFD6DC: BranchF loc_BFD737
  loc_BFD6DF: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BFD6E2: LitI2_Byte &H5F
  loc_BFD6E4: CStrUI1
  loc_BFD6E6: FStStrNoPop var_AC
  loc_BFD6E9: ConcatStr
  loc_BFD6EA: FStStrNoPop var_B0
  loc_BFD6ED: LitStr """ height="""
  loc_BFD6F0: ConcatStr
  loc_BFD6F1: FStStrNoPop var_C8
  loc_BFD6F4: LitI2_Byte &H3C
  loc_BFD6F6: CStrUI1
  loc_BFD6F8: FStStrNoPop var_CC
  loc_BFD6FB: ConcatStr
  loc_BFD6FC: FStStrNoPop var_D0
  loc_BFD6FF: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BFD702: ConcatStr
  loc_BFD703: FStStrNoPop var_D4
  loc_BFD706: LitStr "Municipalidad de Guaymallén"
  loc_BFD709: ConcatStr
  loc_BFD70A: FStStrNoPop var_D8
  loc_BFD70D: LitStr "</p>"
  loc_BFD710: ConcatStr
  loc_BFD711: CVarStr var_C0
  loc_BFD714: PopAdLdVar
  loc_BFD715: FLdPr Me
  loc_BFD718: MemLdRfVar from_stack_1.global_60
  loc_BFD71B: LdPrVar
  loc_BFD71D: LateMemCall
  loc_BFD723: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BFD734: FFree1Var var_C0 = ""
  loc_BFD737: LitStr "    <p>"
  loc_BFD73A: FLdRfVar var_AC
  loc_BFD73D: FLdPr Me
  loc_BFD740:  = Me.Caption
  loc_BFD745: ILdRf var_AC
  loc_BFD748: ConcatStr
  loc_BFD749: FStStrNoPop var_B0
  loc_BFD74C: LitStr "</p></th>"
  loc_BFD74F: ConcatStr
  loc_BFD750: CVarStr var_C0
  loc_BFD753: PopAdLdVar
  loc_BFD754: FLdPr Me
  loc_BFD757: MemLdRfVar from_stack_1.global_60
  loc_BFD75A: LdPrVar
  loc_BFD75C: LateMemCall
  loc_BFD762: FFreeStr var_AC = ""
  loc_BFD769: FFree1Var var_C0 = ""
  loc_BFD76C: LitVarStr var_98, "  </tr>"
  loc_BFD771: PopAdLdVar
  loc_BFD772: FLdPr Me
  loc_BFD775: MemLdRfVar from_stack_1.global_60
  loc_BFD778: LdPrVar
  loc_BFD77A: LateMemCall
  loc_BFD780: LitVarStr var_98, "  <tr>"
  loc_BFD785: PopAdLdVar
  loc_BFD786: FLdPr Me
  loc_BFD789: MemLdRfVar from_stack_1.global_60
  loc_BFD78C: LdPrVar
  loc_BFD78E: LateMemCall
  loc_BFD794: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BFD799: PopAdLdVar
  loc_BFD79A: FLdPr Me
  loc_BFD79D: MemLdRfVar from_stack_1.global_60
  loc_BFD7A0: LdPrVar
  loc_BFD7A2: LateMemCall
  loc_BFD7A8: LitVarStr var_98, "  </tr>"
  loc_BFD7AD: PopAdLdVar
  loc_BFD7AE: FLdPr Me
  loc_BFD7B1: MemLdRfVar from_stack_1.global_60
  loc_BFD7B4: LdPrVar
  loc_BFD7B6: LateMemCall
  loc_BFD7BC: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BFD7C1: PopAdLdVar
  loc_BFD7C2: FLdPr Me
  loc_BFD7C5: MemLdRfVar from_stack_1.global_60
  loc_BFD7C8: LdPrVar
  loc_BFD7CA: LateMemCall
  loc_BFD7D0: LitStr "    <td align=""left""><strong>"
  loc_BFD7D3: FLdPr Me
  loc_BFD7D6: MemLdStr global_88
  loc_BFD7D9: ConcatStr
  loc_BFD7DA: FStStrNoPop var_AC
  loc_BFD7DD: LitStr "</strong>"
  loc_BFD7E0: ConcatStr
  loc_BFD7E1: CVarStr var_C0
  loc_BFD7E4: PopAdLdVar
  loc_BFD7E5: FLdPr Me
  loc_BFD7E8: MemLdRfVar from_stack_1.global_60
  loc_BFD7EB: LdPrVar
  loc_BFD7ED: LateMemCall
  loc_BFD7F3: FFree1Str var_AC
  loc_BFD7F6: FFree1Var var_C0 = ""
  loc_BFD7F9: FLdRfVar var_C2
  loc_BFD7FC: FLdPr Me
  loc_BFD7FF: VCallAd Control_ID_CodiTiseCbo
  loc_BFD802: FStAdFunc var_DC
  loc_BFD805: FLdPr var_DC
  loc_BFD808:  = Me.ListIndex
  loc_BFD80D: FLdI2 var_C2
  loc_BFD810: LitI2_Byte 0
  loc_BFD812: GtI2
  loc_BFD813: FFree1Ad var_DC
  loc_BFD816: BranchF loc_BFD84F
  loc_BFD819: LitStr "                   <br><strong>Tipo de Sepultura: </strong>"
  loc_BFD81C: FLdRfVar var_AC
  loc_BFD81F: FLdPr Me
  loc_BFD822: VCallAd Control_ID_CodiTiseCbo
  loc_BFD825: FStAdFunc var_DC
  loc_BFD828: FLdPr var_DC
  loc_BFD82B:  = Me.Text
  loc_BFD830: ILdRf var_AC
  loc_BFD833: ConcatStr
  loc_BFD834: CVarStr var_C0
  loc_BFD837: PopAdLdVar
  loc_BFD838: FLdPr Me
  loc_BFD83B: MemLdRfVar from_stack_1.global_60
  loc_BFD83E: LdPrVar
  loc_BFD840: LateMemCall
  loc_BFD846: FFree1Str var_AC
  loc_BFD849: FFree1Ad var_DC
  loc_BFD84C: FFree1Var var_C0 = ""
  loc_BFD84F: LitVarStr var_98, "    </td>"
  loc_BFD854: PopAdLdVar
  loc_BFD855: FLdPr Me
  loc_BFD858: MemLdRfVar from_stack_1.global_60
  loc_BFD85B: LdPrVar
  loc_BFD85D: LateMemCall
  loc_BFD863: LitVarStr var_98, "    <td align=""left"">"
  loc_BFD868: PopAdLdVar
  loc_BFD869: FLdPr Me
  loc_BFD86C: MemLdRfVar from_stack_1.global_60
  loc_BFD86F: LdPrVar
  loc_BFD871: LateMemCall
  loc_BFD877: FLdPr Me
  loc_BFD87A: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_BFD87D: FStAdFunc var_DC
  loc_BFD880: FLdPr var_DC
  loc_BFD883: LateIdLdVar var_C0 DispID_22 0
  loc_BFD88A: CStrVarTmp
  loc_BFD88B: FStStrNoPop var_AC
  loc_BFD88E: LitStr vbNullString
  loc_BFD891: NeStr
  loc_BFD893: FFree1Str var_AC
  loc_BFD896: FFree1Ad var_DC
  loc_BFD899: FFree1Var var_C0 = ""
  loc_BFD89C: BranchF loc_BFD8E4
  loc_BFD89F: LitStr "         <strong>Desde Cuenta: </strong>"
  loc_BFD8A2: FLdPr Me
  loc_BFD8A5: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_BFD8A8: FStAdFunc var_DC
  loc_BFD8AB: FLdPr var_DC
  loc_BFD8AE: LateIdLdVar var_C0 DispID_22 0
  loc_BFD8B5: CStrVarTmp
  loc_BFD8B6: FStStrNoPop var_AC
  loc_BFD8B9: ConcatStr
  loc_BFD8BA: FStStrNoPop var_B0
  loc_BFD8BD: LitStr "<br>"
  loc_BFD8C0: ConcatStr
  loc_BFD8C1: CVarStr var_EC
  loc_BFD8C4: PopAdLdVar
  loc_BFD8C5: FLdPr Me
  loc_BFD8C8: MemLdRfVar from_stack_1.global_60
  loc_BFD8CB: LdPrVar
  loc_BFD8CD: LateMemCall
  loc_BFD8D3: FFreeStr var_AC = ""
  loc_BFD8DA: FFree1Ad var_DC
  loc_BFD8DD: FFreeVar var_C0 = ""
  loc_BFD8E4: FLdPr Me
  loc_BFD8E7: VCallAd Control_ID_CodiDifuHastaMsk
  loc_BFD8EA: FStAdFunc var_DC
  loc_BFD8ED: FLdPr var_DC
  loc_BFD8F0: LateIdLdVar var_C0 DispID_22 0
  loc_BFD8F7: CStrVarTmp
  loc_BFD8F8: FStStrNoPop var_AC
  loc_BFD8FB: LitStr vbNullString
  loc_BFD8FE: NeStr
  loc_BFD900: FFree1Str var_AC
  loc_BFD903: FFree1Ad var_DC
  loc_BFD906: FFree1Var var_C0 = ""
  loc_BFD909: BranchF loc_BFD946
  loc_BFD90C: LitStr "         <strong>Hasta Cuenta: </strong>"
  loc_BFD90F: FLdPr Me
  loc_BFD912: VCallAd Control_ID_CodiDifuHastaMsk
  loc_BFD915: FStAdFunc var_DC
  loc_BFD918: FLdPr var_DC
  loc_BFD91B: LateIdLdVar var_C0 DispID_22 0
  loc_BFD922: CStrVarTmp
  loc_BFD923: FStStrNoPop var_AC
  loc_BFD926: ConcatStr
  loc_BFD927: CVarStr var_EC
  loc_BFD92A: PopAdLdVar
  loc_BFD92B: FLdPr Me
  loc_BFD92E: MemLdRfVar from_stack_1.global_60
  loc_BFD931: LdPrVar
  loc_BFD933: LateMemCall
  loc_BFD939: FFree1Str var_AC
  loc_BFD93C: FFree1Ad var_DC
  loc_BFD93F: FFreeVar var_C0 = ""
  loc_BFD946: FLdPr Me
  loc_BFD949: VCallAd Control_ID_CodiDifuDesdeMsk
  loc_BFD94C: FStAdFunc var_DC
  loc_BFD94F: FLdPr var_DC
  loc_BFD952: LateIdLdVar var_C0 DispID_22 0
  loc_BFD959: CStrVarTmp
  loc_BFD95A: FStStrNoPop var_AC
  loc_BFD95D: LitStr vbNullString
  loc_BFD960: EqStr
  loc_BFD962: FLdPr Me
  loc_BFD965: VCallAd Control_ID_CodiDifuHastaMsk
  loc_BFD968: FStAdFunc var_F0
  loc_BFD96B: FLdPr var_F0
  loc_BFD96E: LateIdLdVar var_EC DispID_22 0
  loc_BFD975: CStrVarTmp
  loc_BFD976: FStStrNoPop var_B0
  loc_BFD979: LitStr vbNullString
  loc_BFD97C: EqStr
  loc_BFD97E: AndI4
  loc_BFD97F: FFreeStr var_AC = ""
  loc_BFD986: FFreeAd var_DC = ""
  loc_BFD98D: FFreeVar var_C0 = ""
  loc_BFD994: BranchF loc_BFD9AB
  loc_BFD997: LitVarStr var_98, "    &nbsp;"
  loc_BFD99C: PopAdLdVar
  loc_BFD99D: FLdPr Me
  loc_BFD9A0: MemLdRfVar from_stack_1.global_60
  loc_BFD9A3: LdPrVar
  loc_BFD9A5: LateMemCall
  loc_BFD9AB: LitVarStr var_98, "    </td>"
  loc_BFD9B0: PopAdLdVar
  loc_BFD9B1: FLdPr Me
  loc_BFD9B4: MemLdRfVar from_stack_1.global_60
  loc_BFD9B7: LdPrVar
  loc_BFD9B9: LateMemCall
  loc_BFD9BF: LitVarStr var_98, "    <td align=""left"">"
  loc_BFD9C4: PopAdLdVar
  loc_BFD9C5: FLdPr Me
  loc_BFD9C8: MemLdRfVar from_stack_1.global_60
  loc_BFD9CB: LdPrVar
  loc_BFD9CD: LateMemCall
  loc_BFD9D3: FLdPr Me
  loc_BFD9D6: MemLdUI1 global_92
  loc_BFD9DA: CI2UI1
  loc_BFD9DC: LitI2_Byte 3
  loc_BFD9DE: EqI2
  loc_BFD9DF: BranchF loc_BFD9F9
  loc_BFD9E2: LitVarStr var_98, "      &nbsp;"
  loc_BFD9E7: PopAdLdVar
  loc_BFD9E8: FLdPr Me
  loc_BFD9EB: MemLdRfVar from_stack_1.global_60
  loc_BFD9EE: LdPrVar
  loc_BFD9F0: LateMemCall
  loc_BFD9F6: Branch loc_BFDA78
  loc_BFD9F9: LitStr "      <strong>Desde Fecha de Vto. de Concesión: </strong>"
  loc_BFD9FC: FLdPr Me
  loc_BFD9FF: VCallAd Control_ID_FeveDifuDesdeMsk
  loc_BFDA02: FStAdFunc var_DC
  loc_BFDA05: FLdPr var_DC
  loc_BFDA08: LateIdLdVar var_C0 DispID_15 0
  loc_BFDA0F: CStrVarTmp
  loc_BFDA10: FStStrNoPop var_AC
  loc_BFDA13: ConcatStr
  loc_BFDA14: FStStrNoPop var_B0
  loc_BFDA17: LitStr "<br>"
  loc_BFDA1A: ConcatStr
  loc_BFDA1B: CVarStr var_EC
  loc_BFDA1E: PopAdLdVar
  loc_BFDA1F: FLdPr Me
  loc_BFDA22: MemLdRfVar from_stack_1.global_60
  loc_BFDA25: LdPrVar
  loc_BFDA27: LateMemCall
  loc_BFDA2D: FFreeStr var_AC = ""
  loc_BFDA34: FFree1Ad var_DC
  loc_BFDA37: FFreeVar var_C0 = ""
  loc_BFDA3E: LitStr "      <strong>Hasta Fecha de Vto. de Concesión: </strong>"
  loc_BFDA41: FLdPr Me
  loc_BFDA44: VCallAd Control_ID_FeveDifuHastaMsk
  loc_BFDA47: FStAdFunc var_DC
  loc_BFDA4A: FLdPr var_DC
  loc_BFDA4D: LateIdLdVar var_C0 DispID_15 0
  loc_BFDA54: CStrVarTmp
  loc_BFDA55: FStStrNoPop var_AC
  loc_BFDA58: ConcatStr
  loc_BFDA59: CVarStr var_EC
  loc_BFDA5C: PopAdLdVar
  loc_BFDA5D: FLdPr Me
  loc_BFDA60: MemLdRfVar from_stack_1.global_60
  loc_BFDA63: LdPrVar
  loc_BFDA65: LateMemCall
  loc_BFDA6B: FFree1Str var_AC
  loc_BFDA6E: FFree1Ad var_DC
  loc_BFDA71: FFreeVar var_C0 = ""
  loc_BFDA78: LitVarStr var_98, "    </td>"
  loc_BFDA7D: PopAdLdVar
  loc_BFDA7E: FLdPr Me
  loc_BFDA81: MemLdRfVar from_stack_1.global_60
  loc_BFDA84: LdPrVar
  loc_BFDA86: LateMemCall
  loc_BFDA8C: LitVarStr var_98, "  </tr>"
  loc_BFDA91: PopAdLdVar
  loc_BFDA92: FLdPr Me
  loc_BFDA95: MemLdRfVar from_stack_1.global_60
  loc_BFDA98: LdPrVar
  loc_BFDA9A: LateMemCall
  loc_BFDAA0: LitVarStr var_98, "</table>"
  loc_BFDAA5: PopAdLdVar
  loc_BFDAA6: FLdPr Me
  loc_BFDAA9: MemLdRfVar from_stack_1.global_60
  loc_BFDAAC: LdPrVar
  loc_BFDAAE: LateMemCall
  loc_BFDAB4: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BFDAB9: PopAdLdVar
  loc_BFDABA: FLdPr Me
  loc_BFDABD: MemLdRfVar from_stack_1.global_60
  loc_BFDAC0: LdPrVar
  loc_BFDAC2: LateMemCall
  loc_BFDAC8: LitVarStr var_98, "  <thead>"
  loc_BFDACD: PopAdLdVar
  loc_BFDACE: FLdPr Me
  loc_BFDAD1: MemLdRfVar from_stack_1.global_60
  loc_BFDAD4: LdPrVar
  loc_BFDAD6: LateMemCall
  loc_BFDADC: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BFDAE1: PopAdLdVar
  loc_BFDAE2: FLdPr Me
  loc_BFDAE5: MemLdRfVar from_stack_1.global_60
  loc_BFDAE8: LdPrVar
  loc_BFDAEA: LateMemCall
  loc_BFDAF0: LitVarStr var_98, "    <th rowspan=2>Cuenta</th>"
  loc_BFDAF5: PopAdLdVar
  loc_BFDAF6: FLdPr Me
  loc_BFDAF9: MemLdRfVar from_stack_1.global_60
  loc_BFDAFC: LdPrVar
  loc_BFDAFE: LateMemCall
  loc_BFDB04: LitVarStr var_98, "    <th rowspan=2>Titular</th>"
  loc_BFDB09: PopAdLdVar
  loc_BFDB0A: FLdPr Me
  loc_BFDB0D: MemLdRfVar from_stack_1.global_60
  loc_BFDB10: LdPrVar
  loc_BFDB12: LateMemCall
  loc_BFDB18: LitVarStr var_98, "    <th rowspan=2>Difunto</th>"
  loc_BFDB1D: PopAdLdVar
  loc_BFDB1E: FLdPr Me
  loc_BFDB21: MemLdRfVar from_stack_1.global_60
  loc_BFDB24: LdPrVar
  loc_BFDB26: LateMemCall
  loc_BFDB2C: LitVarStr var_98, "    <th colspan=4>Ubicación</th>"
  loc_BFDB31: PopAdLdVar
  loc_BFDB32: FLdPr Me
  loc_BFDB35: MemLdRfVar from_stack_1.global_60
  loc_BFDB38: LdPrVar
  loc_BFDB3A: LateMemCall
  loc_BFDB40: FLdPr Me
  loc_BFDB43: MemLdUI1 global_92
  loc_BFDB47: CI2UI1
  loc_BFDB49: LitI2_Byte 3
  loc_BFDB4B: NeI2
  loc_BFDB4C: BranchF loc_BFDB63
  loc_BFDB4F: LitVarStr var_98, "    <th rowspan=2>Fecha de Vencimiento</th>"
  loc_BFDB54: PopAdLdVar
  loc_BFDB55: FLdPr Me
  loc_BFDB58: MemLdRfVar from_stack_1.global_60
  loc_BFDB5B: LdPrVar
  loc_BFDB5D: LateMemCall
  loc_BFDB63: LitVarStr var_98, "  </tr>"
  loc_BFDB68: PopAdLdVar
  loc_BFDB69: FLdPr Me
  loc_BFDB6C: MemLdRfVar from_stack_1.global_60
  loc_BFDB6F: LdPrVar
  loc_BFDB71: LateMemCall
  loc_BFDB77: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BFDB7C: PopAdLdVar
  loc_BFDB7D: FLdPr Me
  loc_BFDB80: MemLdRfVar from_stack_1.global_60
  loc_BFDB83: LdPrVar
  loc_BFDB85: LateMemCall
  loc_BFDB8B: LitVarStr var_98, "    <th>Sepu.</th>"
  loc_BFDB90: PopAdLdVar
  loc_BFDB91: FLdPr Me
  loc_BFDB94: MemLdRfVar from_stack_1.global_60
  loc_BFDB97: LdPrVar
  loc_BFDB99: LateMemCall
  loc_BFDB9F: LitVarStr var_98, "    <th>Nume.</th>"
  loc_BFDBA4: PopAdLdVar
  loc_BFDBA5: FLdPr Me
  loc_BFDBA8: MemLdRfVar from_stack_1.global_60
  loc_BFDBAB: LdPrVar
  loc_BFDBAD: LateMemCall
  loc_BFDBB3: LitVarStr var_98, "    <th>Fila</th>"
  loc_BFDBB8: PopAdLdVar
  loc_BFDBB9: FLdPr Me
  loc_BFDBBC: MemLdRfVar from_stack_1.global_60
  loc_BFDBBF: LdPrVar
  loc_BFDBC1: LateMemCall
  loc_BFDBC7: LitVarStr var_98, "    <th>Secc.</th>"
  loc_BFDBCC: PopAdLdVar
  loc_BFDBCD: FLdPr Me
  loc_BFDBD0: MemLdRfVar from_stack_1.global_60
  loc_BFDBD3: LdPrVar
  loc_BFDBD5: LateMemCall
  loc_BFDBDB: LitVarStr var_98, "  </tr>"
  loc_BFDBE0: PopAdLdVar
  loc_BFDBE1: FLdPr Me
  loc_BFDBE4: MemLdRfVar from_stack_1.global_60
  loc_BFDBE7: LdPrVar
  loc_BFDBE9: LateMemCall
  loc_BFDBEF: LitVarStr var_98, "  </thead>"
  loc_BFDBF4: PopAdLdVar
  loc_BFDBF5: FLdPr Me
  loc_BFDBF8: MemLdRfVar from_stack_1.global_60
  loc_BFDBFB: LdPrVar
  loc_BFDBFD: LateMemCall
  loc_BFDC03: ExitProcHresult
End Function

Private Function Proc_247_31_A0E208() 'A0E208
  'Data Table: 4D09A4
  loc_A0E1C8: LitVarStr var_94, "</table>"
  loc_A0E1CD: PopAdLdVar
  loc_A0E1CE: FLdPr Me
  loc_A0E1D1: MemLdRfVar from_stack_1.global_60
  loc_A0E1D4: LdPrVar
  loc_A0E1D6: LateMemCall
  loc_A0E1DC: LitVarStr var_94, "</body>"
  loc_A0E1E1: PopAdLdVar
  loc_A0E1E2: FLdPr Me
  loc_A0E1E5: MemLdRfVar from_stack_1.global_60
  loc_A0E1E8: LdPrVar
  loc_A0E1EA: LateMemCall
  loc_A0E1F0: LitVarStr var_94, "</html>"
  loc_A0E1F5: PopAdLdVar
  loc_A0E1F6: FLdPr Me
  loc_A0E1F9: MemLdRfVar from_stack_1.global_60
  loc_A0E1FC: LdPrVar
  loc_A0E1FE: LateMemCall
  loc_A0E204: ExitProcHresult
  loc_A0E205: Ary1LdRf
End Function
