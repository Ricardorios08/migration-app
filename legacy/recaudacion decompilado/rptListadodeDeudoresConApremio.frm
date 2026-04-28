VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeDeudoresConApremio
  Caption = "Listado de Deudores con Apremio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeDeudoresConApremio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11052
  ClientHeight = 8016
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 6360
    Width = 10815
    Height = 150
    Visible = 0   'False
    TabIndex = 22
    OleObjectBlob = "rptListadodeDeudoresConApremio.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7764
    Width = 11052
    Height = 252
    TabIndex = 31
    OleObjectBlob = "rptListadodeDeudoresConApremio.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9720
    Top = 6720
    Width = 855
    Height = 735
    TabIndex = 30
    Cancel = -1  'True
    Picture = "rptListadodeDeudoresConApremio.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeDeudoresConApremio.frx":0C04
    Left = 9960
    Top = 6840
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 6480
    Width = 3255
    Height = 1215
    TabIndex = 26
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
      TabIndex = 28
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
      TabIndex = 27
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
    Top = 6480
    Width = 4095
    Height = 1215
    TabIndex = 23
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
      TabIndex = 25
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
      TabIndex = 24
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
    Width = 10815
    Height = 6255
    TabIndex = 0
    Begin VB.CheckBox SoloApremioChk
      Caption = "Solo cuentas con Apremio"
      Left = 2160
      Top = 1560
      Width = 3255
      Height = 375
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
    End
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1440
      Top = 5520
      Width = 2175
      Height = 420
      TabIndex = 21
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton OficinaOpt
      Caption = "Por Oficina"
      Left = 240
      Top = 5040
      Width = 1815
      Height = 255
      TabIndex = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton ConceptoOpt
      Caption = "Por Concepto"
      Left = 240
      Top = 3840
      Width = 1815
      Height = 255
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
      CausesValidation = 0   'False
    End
    Begin VB.OptionButton CuentaContableOpt
      Caption = "Por Cuenta Contable"
      Left = 240
      Top = 2400
      Width = 2655
      Height = 255
      TabIndex = 12
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      CausesValidation = 0   'False
    End
    Begin VB.Frame Frame4
      Caption = "Ordenado según:"
      Left = 5640
      Top = 240
      Width = 3135
      Height = 1215
      TabIndex = 8
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.OptionButton NombreOpt
        Caption = "Apellido y Nombre"
        Left = 600
        Top = 720
        Width = 2295
        Height = 375
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
      End
      Begin VB.OptionButton CuentaOpt
        Caption = "Cuenta"
        Left = 600
        Top = 360
        Width = 2295
        Height = 375
        TabIndex = 9
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
    Begin VB.CommandButton HastaFechaCmd
      Left = 3600
      Top = 885
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptListadodeDeudoresConApremio.frx":0C68
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeFechaCmd
      Left = 3600
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptListadodeDeudoresConApremio.frx":11AA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9000
      Top = 360
      Width = 1575
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
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2160
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptListadodeDeudoresConApremio.frx":16EC
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2160
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 6
      OleObjectBlob = "rptListadodeDeudoresConApremio.frx":179C
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1440
      Top = 4200
      Width = 1215
      Height = 360
      TabIndex = 18
      OleObjectBlob = "rptListadodeDeudoresConApremio.frx":184C
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2160
      Top = 2760
      Width = 1575
      Height = 360
      TabIndex = 14
      OleObjectBlob = "rptListadodeDeudoresConApremio.frx":18E4
    End
    Begin VB.Label DetaActiLbl
      ForeColor = &HFF0000&
      Left = 3840
      Top = 2760
      Width = 6615
      Height = 360
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label8
      Caption = "Cuenta Contable:"
      Left = 240
      Top = 2760
      Width = 1860
      Height = 300
      TabIndex = 13
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
    Begin VB.Label Label2
      Caption = "Concepto:"
      Left = 240
      Top = 4200
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
      Top = 4200
      Width = 7575
      Height = 375
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1380
      Top = 885
      Width = 705
      Height = 300
      TabIndex = 5
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
      Left = 1320
      Top = 360
      Width = 765
      Height = 300
      TabIndex = 1
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
    Left = 9960
    Top = 6600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 29
    OleObjectBlob = "rptListadodeDeudoresConApremio.frx":1982
  End
End

Attribute VB_Name = "rptListadodeDeudoresConApremio"

Public bGenerado As Boolean

Private Type UDT_1_00565DE4
  bStruc(52) As Byte ' String fields: 13
End Type

Private Type UDT_2_00565E24
  bStruc(60) As Byte ' String fields: 3
End Type


Private Sub cmdNueva_Click() 'A08830
  'Data Table: 4F55A0
  loc_A087F8: LitI2_Byte 0
  loc_A087FA: FLdPr Me
  loc_A087FD: MemStI2 bGenerado
  loc_A08800: LitI2_Byte 0
  loc_A08802: ILdRf Me
  loc_A08805: CastAd
  loc_A08808: FStAdFunc var_88
  loc_A0880B: FLdRfVar var_88
  loc_A0880E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A08813: FFree1Ad var_88
  loc_A08816: Call HabilitarCriterio()
  loc_A0881B: ILdRf Me
  loc_A0881E: CastAd
  loc_A08821: FStAdFunc var_88
  loc_A08824: FLdRfVar var_88
  loc_A08827: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0882C: FFree1Ad var_88
  loc_A0882F: ExitProcHresult
End Sub

Private Sub OficinaCbo_Click() 'A651F0
  'Data Table: 4F55A0
  loc_A65184: FLdRfVar var_8A
  loc_A65187: FLdPr Me
  loc_A6518A: VCallAd Control_ID_OficinaCbo
  loc_A6518D: FStAdFunc var_88
  loc_A65190: FLdPr var_88
  loc_A65193:  = Me.ListIndex
  loc_A65198: FLdI2 var_8A
  loc_A6519B: FStI2 var_8C
  loc_A6519E: FFree1Ad var_88
  loc_A651A1: FLdI2 var_8C
  loc_A651A4: LitI2_Byte 0
  loc_A651A6: EqI2
  loc_A651A7: BranchF loc_A651B5
  loc_A651AA: LitI2_Byte 1
  loc_A651AC: CUI1I2
  loc_A651AE: ImpAdStUI1 MemVar_D93038
  loc_A651B2: Branch loc_A651EE
  loc_A651B5: FLdI2 var_8C
  loc_A651B8: LitI2_Byte 1
  loc_A651BA: EqI2
  loc_A651BB: BranchF loc_A651C9
  loc_A651BE: LitI2_Byte 2
  loc_A651C0: CUI1I2
  loc_A651C2: ImpAdStUI1 MemVar_D93038
  loc_A651C6: Branch loc_A651EE
  loc_A651C9: FLdI2 var_8C
  loc_A651CC: LitI2_Byte 2
  loc_A651CE: EqI2
  loc_A651CF: BranchF loc_A651DD
  loc_A651D2: LitI2_Byte 3
  loc_A651D4: CUI1I2
  loc_A651D6: ImpAdStUI1 MemVar_D93038
  loc_A651DA: Branch loc_A651EE
  loc_A651DD: FLdI2 var_8C
  loc_A651E0: LitI2_Byte 3
  loc_A651E2: EqI2
  loc_A651E3: BranchF loc_A651EE
  loc_A651E6: LitI2_Byte 4
  loc_A651E8: CUI1I2
  loc_A651EA: ImpAdStUI1 MemVar_D93038
  loc_A651EE: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A057CC
  'Data Table: 4F55A0
  loc_A0579C: LitVarStr var_94, "Cerrando..."
  loc_A057A1: PopAdLdVar
  loc_A057A2: FLdPr Me
  loc_A057A5: VCallAd Control_ID_statusBar
  loc_A057A8: FStAdFunc var_A8
  loc_A057AB: FLdPr var_A8
  loc_A057AE: LateIdSt
  loc_A057B3: FFree1Ad var_A8
  loc_A057B6: ILdRf Me
  loc_A057B9: FStAdNoPop
  loc_A057BD: ImpAdLdRf MemVar_D9C5D8
  loc_A057C0: NewIfNullPr Global
  loc_A057C3: Global.Unload from_stack_1
  loc_A057C8: FFree1Ad var_A8
  loc_A057CB: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0A994
  'Data Table: 4F55A0
  loc_A0A958: LitVar_Missing var_A4
  loc_A0A95B: PopAdLdVar
  loc_A0A95C: LitVarI4
  loc_A0A964: PopAdLdVar
  loc_A0A965: ImpAdLdRf MemVar_D930A4
  loc_A0A968: NewIfNullPr frmCalendario
  loc_A0A96B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0A970: ImpAdLdRf MemVar_D93028
  loc_A0A973: CDargRef
  loc_A0A977: FLdPr Me
  loc_A0A97A: VCallAd Control_ID_DesdeMsk
  loc_A0A97D: FStAdFunc var_A8
  loc_A0A980: FLdPr var_A8
  loc_A0A983: LateIdSt
  loc_A0A988: FFree1Ad var_A8
  loc_A0A98B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0A990: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0A924
  'Data Table: 4F55A0
  loc_A0A8E8: LitVar_Missing var_A4
  loc_A0A8EB: PopAdLdVar
  loc_A0A8EC: LitVarI4
  loc_A0A8F4: PopAdLdVar
  loc_A0A8F5: ImpAdLdRf MemVar_D930A4
  loc_A0A8F8: NewIfNullPr frmCalendario
  loc_A0A8FB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0A900: ImpAdLdRf MemVar_D93028
  loc_A0A903: CDargRef
  loc_A0A907: FLdPr Me
  loc_A0A90A: VCallAd Control_ID_HastaMsk
  loc_A0A90D: FStAdFunc var_A8
  loc_A0A910: FLdPr var_A8
  loc_A0A913: LateIdSt
  loc_A0A918: FFree1Ad var_A8
  loc_A0A91B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0A920: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9C1A30
  'Data Table: 4F55A0
  loc_9C1A1C: FLdPr Me
  loc_9C1A1F: VCallAd Control_ID_DesdeMsk
  loc_9C1A22: CVarAd
  loc_9C1A26: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1A2B: FFree1Var var_94 = ""
  loc_9C1A2E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A642E0
  'Data Table: 4F55A0
  loc_A64284: FLdPr Me
  loc_A64287: VCallAd Control_ID_DesdeMsk
  loc_A6428A: FStAdFunc var_88
  loc_A6428D: FLdPr var_88
  loc_A64290: LateIdLdVar var_98 DispID_15 0
  loc_A64297: CStrVarTmp
  loc_A64298: FStStrNoPop var_9C
  loc_A6429B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A642A0: FStStrNoPop var_A0
  loc_A642A3: FLdPr Me
  loc_A642A6: MemStStrCopy
  loc_A642AA: FFreeStr var_9C = ""
  loc_A642B1: FFree1Ad var_88
  loc_A642B4: FFree1Var var_98 = ""
  loc_A642B7: FLdPr Me
  loc_A642BA: VCallAd Control_ID_DesdeMsk
  loc_A642BD: FStAdFuncNoPop
  loc_A642C0: CastAd
  loc_A642C3: FStAdFunc var_A4
  loc_A642C6: FLdRfVar var_A4
  loc_A642C9: FLdPr Me
  loc_A642CC: MemLdStr global_108
  loc_A642CF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A642D4: IStI2 arg_C
  loc_A642D7: FFreeAd var_88 = ""
  loc_A642DE: ExitProcHresult
End Function

Private Sub ActiConcMsk_UnknownEvent_0 '9C6A58
  'Data Table: 4F55A0
  loc_9C6A44: FLdPr Me
  loc_9C6A47: VCallAd Control_ID_ActiConcMsk
  loc_9C6A4A: CVarAd
  loc_9C6A4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6A53: FFree1Var var_94 = ""
  loc_9C6A56: ExitProcHresult
End Sub

Private Function ActiConcMsk_UnknownEvent_8(arg_C) 'AF9E10
  'Data Table: 4F55A0
  loc_AF9C58: FLdRfVar var_8A
  loc_AF9C5B: FLdPr Me
  loc_AF9C5E: VCallAd Control_ID_CuentaContableOpt
  loc_AF9C61: FStAdFunc var_88
  loc_AF9C64: FLdPr var_88
  loc_AF9C67:  = Me.Value
  loc_AF9C6C: FLdI2 var_8A
  loc_AF9C6F: LitI2_Byte &HFF
  loc_AF9C71: EqI2
  loc_AF9C72: FFree1Ad var_88
  loc_AF9C75: BranchF loc_AF9E0D
  loc_AF9C78: FLdPr Me
  loc_AF9C7B: VCallAd Control_ID_DesdeMsk
  loc_AF9C7E: FStAdFunc var_88
  loc_AF9C81: FLdPr var_88
  loc_AF9C84: LateIdLdVar var_9C DispID_15 0
  loc_AF9C8B: CStrVarTmp
  loc_AF9C8C: CVarStr var_AC
  loc_AF9C8F: FLdRfVar var_BC
  loc_AF9C92: ImpAdCallFPR4  = Year()
  loc_AF9C97: FLdPr Me
  loc_AF9C9A: VCallAd Control_ID_ActiConcMsk
  loc_AF9C9D: FStAdFunc var_C0
  loc_AF9CA0: FLdPr var_C0
  loc_AF9CA3: LateIdLdVar var_D0 DispID_22 0
  loc_AF9CAA: PopAd
  loc_AF9CAC: LitI4 0
  loc_AF9CB1: LitI4 0
  loc_AF9CB6: FLdRfVar var_DC
  loc_AF9CB9: Redim
  loc_AF9CC3: LitVarStr var_EC, "1"
  loc_AF9CC8: LitI4 0
  loc_AF9CCD: ILdRf var_DC
  loc_AF9CD0: Ary1StVarCopy
  loc_AF9CD2: FLdRfVar var_DC
  loc_AF9CD5: FLdRfVar var_D0
  loc_AF9CD8: CStrVarTmp
  loc_AF9CD9: FStStrNoPop var_D8
  loc_AF9CDC: FLdRfVar var_BC
  loc_AF9CDF: CStrVarVal var_D4
  loc_AF9CE3: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AF9CE8: FStStr var_F0
  loc_AF9CEB: FLdRfVar var_DC
  loc_AF9CEE: Erase
  loc_AF9CEF: ILdRf var_F0
  loc_AF9CF2: FLdPr Me
  loc_AF9CF5: MemStStrCopy
  loc_AF9CF9: FFreeStr var_D4 = "": var_D8 = ""
  loc_AF9D02: FFreeAd var_88 = ""
  loc_AF9D09: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_AF9D14: FLdPr Me
  loc_AF9D17: VCallAd Control_ID_ActiConcMsk
  loc_AF9D1A: FStAdFuncNoPop
  loc_AF9D1D: CastAd
  loc_AF9D20: FStAdFunc var_C0
  loc_AF9D23: FLdRfVar var_C0
  loc_AF9D26: FLdPr Me
  loc_AF9D29: MemLdStr global_108
  loc_AF9D2C: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AF9D31: IStI2 arg_C
  loc_AF9D34: FFreeAd var_88 = ""
  loc_AF9D3B: ILdI2 arg_C
  loc_AF9D3E: NotI4
  loc_AF9D3F: BranchF loc_AF9DF9
  loc_AF9D42: FLdPr Me
  loc_AF9D45: VCallAd Control_ID_DesdeMsk
  loc_AF9D48: FStAdFunc var_88
  loc_AF9D4B: FLdPr var_88
  loc_AF9D4E: LateIdLdVar var_9C DispID_15 0
  loc_AF9D55: CStrVarTmp
  loc_AF9D56: CVarStr var_AC
  loc_AF9D59: FLdRfVar var_BC
  loc_AF9D5C: ImpAdCallFPR4  = Year()
  loc_AF9D61: FLdPr Me
  loc_AF9D64: VCallAd Control_ID_ActiConcMsk
  loc_AF9D67: FStAdFunc var_C0
  loc_AF9D6A: FLdPr var_C0
  loc_AF9D6D: LateIdLdVar var_D0 DispID_22 0
  loc_AF9D74: CStrVarTmp
  loc_AF9D75: FStStrNoPop var_D4
  loc_AF9D78: FLdRfVar var_BC
  loc_AF9D7B: CI2Var
  loc_AF9D7C: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AF9D81: FStStrNoPop var_D8
  loc_AF9D84: FLdPr Me
  loc_AF9D87: VCallAd Control_ID_DetaActiLbl
  loc_AF9D8A: FStAdFunc var_F4
  loc_AF9D8D: FLdPr var_F4
  loc_AF9D90: Me.Caption = from_stack_1
  loc_AF9D95: FFreeStr var_D4 = ""
  loc_AF9D9C: FFreeAd var_88 = "": var_C0 = ""
  loc_AF9DA5: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_AF9DB0: LitVarStr var_EC, "Listado de Deudores Con Apremio"
  loc_AF9DB5: LitVarStr var_104, " - "
  loc_AF9DBA: ConcatVar var_9C
  loc_AF9DBE: FLdPr Me
  loc_AF9DC1: VCallAd Control_ID_ActiConcMsk
  loc_AF9DC4: FStAdFunc var_88
  loc_AF9DC7: FLdPr var_88
  loc_AF9DCA: LateIdLdVar var_AC DispID_22 0
  loc_AF9DD1: CStrVarTmp
  loc_AF9DD2: CVarStr var_BC
  loc_AF9DD5: ConcatVar var_D0
  loc_AF9DD9: CStrVarVal var_D4
  loc_AF9DDD: FLdPr Me
  loc_AF9DE0: Me.Caption = from_stack_1
  loc_AF9DE5: FFree1Str var_D4
  loc_AF9DE8: FFree1Ad var_88
  loc_AF9DEB: FFreeVar var_AC = "": var_9C = "": var_BC = ""
  loc_AF9DF6: Branch loc_AF9E0D
  loc_AF9DF9: LitVarStr var_EC, "Listado de Deudores Con Apremio"
  loc_AF9DFE: CStrVarVal var_D4
  loc_AF9E02: FLdPr Me
  loc_AF9E05: Me.Caption = from_stack_1
  loc_AF9E0A: FFree1Str var_D4
  loc_AF9E0D: ExitProcHresult
End Function

Private Sub ActiConcMsk_KeyPress(KeyAscii As Integer) 'AE5F74
  'Data Table: 4F55A0
  loc_AE5E14: ILdI2 KeyAscii
  loc_AE5E17: LitI2_Byte &H20
  loc_AE5E19: EqI2
  loc_AE5E1A: BranchF loc_AE5F70
  loc_AE5E1D: LitI2_Byte 0
  loc_AE5E1F: IStI2 KeyAscii
  loc_AE5E22: ImpAdLdRf MemVar_D9468C
  loc_AE5E25: NewIfNullAd
  loc_AE5E28: FStAd var_88 
  loc_AE5E2C: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AE5E2F: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AE5E32: ConcatStr
  loc_AE5E33: FStStrNoPop var_8C
  loc_AE5E36: LitStr " WHERE co.PeriInfo = "
  loc_AE5E39: ConcatStr
  loc_AE5E3A: CVarStr var_D0
  loc_AE5E3D: FLdPr Me
  loc_AE5E40: VCallAd Control_ID_DesdeMsk
  loc_AE5E43: FStAdFunc var_90
  loc_AE5E46: FLdPr var_90
  loc_AE5E49: LateIdLdVar var_A0 DispID_15 0
  loc_AE5E50: CStrVarTmp
  loc_AE5E51: CVarStr var_B0
  loc_AE5E54: FLdRfVar var_C0
  loc_AE5E57: ImpAdCallFPR4  = Year()
  loc_AE5E5C: FLdRfVar var_C0
  loc_AE5E5F: ConcatVar var_E0
  loc_AE5E63: LitVarStr var_F0, " ORDER BY co.ActiConc"
  loc_AE5E68: ConcatVar var_100
  loc_AE5E6C: CStrVarVal var_104
  loc_AE5E70: FLdPr var_88
  loc_AE5E73: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AE5E78: FFreeStr var_8C = ""
  loc_AE5E7F: FFree1Ad var_90
  loc_AE5E82: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_C0 = "": var_E0 = ""
  loc_AE5E91: LitVar_Missing var_114
  loc_AE5E94: PopAdLdVar
  loc_AE5E95: LitVarI4
  loc_AE5E9D: PopAdLdVar
  loc_AE5E9E: FLdPr var_88
  loc_AE5EA1: Me.Show from_stack_1, from_stack_2
  loc_AE5EA6: FLdRfVar var_8C
  loc_AE5EA9: FLdPr var_88
  loc_AE5EAC: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AE5EB1: FLdZeroAd var_8C
  loc_AE5EB4: CVarStr var_A0
  loc_AE5EB7: PopAdLdVar
  loc_AE5EB8: FLdPr Me
  loc_AE5EBB: VCallAd Control_ID_ActiConcMsk
  loc_AE5EBE: FStAdFunc var_90
  loc_AE5EC1: FLdPr var_90
  loc_AE5EC4: LateIdSt
  loc_AE5EC9: FFree1Ad var_90
  loc_AE5ECC: FFree1Var var_A0 = ""
  loc_AE5ECF: LitStr vbNullString
  loc_AE5ED2: FLdPr var_88
  loc_AE5ED5: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AE5EDA: FLdRfVar var_8C
  loc_AE5EDD: FLdPr var_88
  loc_AE5EE0: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AE5EE5: ILdRf var_8C
  loc_AE5EE8: FLdPr Me
  loc_AE5EEB: VCallAd Control_ID_DetaActiLbl
  loc_AE5EEE: FStAdFunc var_90
  loc_AE5EF1: FLdPr var_90
  loc_AE5EF4: Me.Caption = from_stack_1
  loc_AE5EF9: FFree1Str var_8C
  loc_AE5EFC: FFree1Ad var_90
  loc_AE5EFF: FLdRfVar var_8C
  loc_AE5F02: FLdPr var_88
  loc_AE5F05: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AE5F0A: ILdRf var_8C
  loc_AE5F0D: LitStr vbNullString
  loc_AE5F10: NeStr
  loc_AE5F12: FFree1Str var_8C
  loc_AE5F15: BranchF loc_AE5F56
  loc_AE5F18: LitVarStr var_F0, "Listado de Deudores Con Apremio"
  loc_AE5F1D: FLdPr Me
  loc_AE5F20: VCallAd Control_ID_ActiConcMsk
  loc_AE5F23: FStAdFunc var_90
  loc_AE5F26: FLdPr var_90
  loc_AE5F29: LateIdLdVar var_A0 DispID_22 0
  loc_AE5F30: CStrVarTmp
  loc_AE5F31: CVarStr var_B0
  loc_AE5F34: ConcatVar var_C0
  loc_AE5F38: CStrVarVal var_8C
  loc_AE5F3C: FLdPr Me
  loc_AE5F3F: Me.Caption = from_stack_1
  loc_AE5F44: FFree1Str var_8C
  loc_AE5F47: FFree1Ad var_90
  loc_AE5F4A: FFreeVar var_A0 = "": var_B0 = ""
  loc_AE5F53: Branch loc_AE5F6A
  loc_AE5F56: LitVarStr var_F0, "Listado de Deudores Con Apremio"
  loc_AE5F5B: CStrVarVal var_8C
  loc_AE5F5F: FLdPr Me
  loc_AE5F62: Me.Caption = from_stack_1
  loc_AE5F67: FFree1Str var_8C
  loc_AE5F6A: LitNothing
  loc_AE5F6C: FStAd var_88 
  loc_AE5F70: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C1EF8
  'Data Table: 4F55A0
  loc_9C1EE4: FLdPr Me
  loc_9C1EE7: VCallAd Control_ID_CodiConcMsk
  loc_9C1EEA: CVarAd
  loc_9C1EEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1EF3: FFree1Var var_94 = ""
  loc_9C1EF6: ExitProcHresult
  loc_9C1EF7: MulCyI2
End Sub

Private Sub CodiConcMsk_UnknownEvent_8 'ADB388
  'Data Table: 4F55A0
  loc_ADB250: FLdRfVar var_8A
  loc_ADB253: FLdPr Me
  loc_ADB256: VCallAd Control_ID_ConceptoOpt
  loc_ADB259: FStAdFunc var_88
  loc_ADB25C: FLdPr var_88
  loc_ADB25F:  = Me.Value
  loc_ADB264: FLdI2 var_8A
  loc_ADB267: LitI2_Byte &HFF
  loc_ADB269: EqI2
  loc_ADB26A: FFree1Ad var_88
  loc_ADB26D: BranchF loc_ADB385
  loc_ADB270: FLdPr Me
  loc_ADB273: VCallAd Control_ID_DesdeMsk
  loc_ADB276: FStAdFunc var_88
  loc_ADB279: FLdPr var_88
  loc_ADB27C: LateIdLdVar var_9C DispID_15 0
  loc_ADB283: CStrVarTmp
  loc_ADB284: CVarStr var_AC
  loc_ADB287: FLdRfVar var_BC
  loc_ADB28A: ImpAdCallFPR4  = Year()
  loc_ADB28F: FLdPr Me
  loc_ADB292: VCallAd Control_ID_CodiConcMsk
  loc_ADB295: FStAdFunc var_C0
  loc_ADB298: FLdPr var_C0
  loc_ADB29B: LateIdLdVar var_D0 DispID_22 0
  loc_ADB2A2: PopAd
  loc_ADB2A4: LitI2_Byte 0
  loc_ADB2A6: LitI2_Byte 0
  loc_ADB2A8: LitI2_Byte 0
  loc_ADB2AA: LitI2_Byte 0
  loc_ADB2AC: LitI2_Byte 0
  loc_ADB2AE: LitI2_Byte 0
  loc_ADB2B0: LitI2_Byte 0
  loc_ADB2B2: LitI2_Byte 0
  loc_ADB2B4: LitI2_Byte 0
  loc_ADB2B6: FLdRfVar var_D0
  loc_ADB2B9: CStrVarTmp
  loc_ADB2BA: FStStrNoPop var_D4
  loc_ADB2BD: FLdRfVar var_BC
  loc_ADB2C0: CI2Var
  loc_ADB2C1: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ADB2C6: FStStrNoPop var_D8
  loc_ADB2C9: FLdPr Me
  loc_ADB2CC: MemStStrCopy
  loc_ADB2D0: FFreeStr var_D4 = ""
  loc_ADB2D7: FFreeAd var_88 = ""
  loc_ADB2DE: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_ADB2E9: FLdPr Me
  loc_ADB2EC: VCallAd Control_ID_CodiConcMsk
  loc_ADB2EF: FStAdFuncNoPop
  loc_ADB2F2: CastAd
  loc_ADB2F5: FStAdFunc var_C0
  loc_ADB2F8: FLdRfVar var_C0
  loc_ADB2FB: FLdPr Me
  loc_ADB2FE: MemLdStr global_108
  loc_ADB301: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ADB306: IStI2 KeyAscii
  loc_ADB309: FFreeAd var_88 = ""
  loc_ADB310: ILdI2 KeyAscii
  loc_ADB313: NotI4
  loc_ADB314: BranchF loc_ADB385
  loc_ADB317: FLdPr Me
  loc_ADB31A: VCallAd Control_ID_DesdeMsk
  loc_ADB31D: FStAdFunc var_88
  loc_ADB320: FLdPr var_88
  loc_ADB323: LateIdLdVar var_9C DispID_15 0
  loc_ADB32A: CStrVarTmp
  loc_ADB32B: CVarStr var_AC
  loc_ADB32E: FLdRfVar var_BC
  loc_ADB331: ImpAdCallFPR4  = Year()
  loc_ADB336: FLdPr Me
  loc_ADB339: VCallAd Control_ID_CodiConcMsk
  loc_ADB33C: FStAdFunc var_C0
  loc_ADB33F: FLdPr var_C0
  loc_ADB342: LateIdLdVar var_D0 DispID_22 0
  loc_ADB349: CStrVarTmp
  loc_ADB34A: FStStrNoPop var_D4
  loc_ADB34D: FLdRfVar var_BC
  loc_ADB350: CI2Var
  loc_ADB351: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ADB356: FStStrNoPop var_D8
  loc_ADB359: FLdPr Me
  loc_ADB35C: VCallAd Control_ID_DetaConcLbl
  loc_ADB35F: FStAdFunc var_DC
  loc_ADB362: FLdPr var_DC
  loc_ADB365: Me.Caption = from_stack_1
  loc_ADB36A: FFreeStr var_D4 = ""
  loc_ADB371: FFreeAd var_88 = "": var_C0 = ""
  loc_ADB37A: FFreeVar var_9C = "": var_AC = "": var_D0 = ""
  loc_ADB385: ExitProcHresult
  loc_ADB386: FnLBound
End Sub

Private Sub CodiConcMsk_KeyPress(KeyAscii As Integer) 'AC3A48
  'Data Table: 4F55A0
  loc_AC394C: ILdI2 KeyAscii
  loc_AC394F: LitI2_Byte &H20
  loc_AC3951: EqI2
  loc_AC3952: BranchF loc_AC3A46
  loc_AC3955: LitI2_Byte 0
  loc_AC3957: IStI2 KeyAscii
  loc_AC395A: FLdPr Me
  loc_AC395D: VCallAd Control_ID_DesdeMsk
  loc_AC3960: FStAdFunc var_88
  loc_AC3963: FLdPr var_88
  loc_AC3966: LateIdLdVar var_98 DispID_15 0
  loc_AC396D: CStrVarTmp
  loc_AC396E: CVarStr var_A8
  loc_AC3971: FLdRfVar var_B8
  loc_AC3974: ImpAdCallFPR4  = Year()
  loc_AC3979: FLdRfVar var_B8
  loc_AC397C: CI2Var
  loc_AC397D: ImpAdLdRf MemVar_D94354
  loc_AC3980: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC3983: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC3988: FFree1Ad var_88
  loc_AC398B: FFreeVar var_98 = "": var_A8 = ""
  loc_AC3994: LitVar_Missing var_D8
  loc_AC3997: PopAdLdVar
  loc_AC3998: LitVarI4
  loc_AC39A0: PopAdLdVar
  loc_AC39A1: ImpAdLdRf MemVar_D94354
  loc_AC39A4: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC39A7: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC39AC: FLdRfVar var_DC
  loc_AC39AF: FLdRfVar var_88
  loc_AC39B2: ImpAdLdRf MemVar_D94354
  loc_AC39B5: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC39B8: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC39BD: FLdPr var_88
  loc_AC39C0: from_stack_1 = clsconcepto.RecordCount
  loc_AC39C5: ILdRf var_DC
  loc_AC39C8: LitI4 0
  loc_AC39CD: GtI4
  loc_AC39CE: FFree1Ad var_88
  loc_AC39D1: BranchF loc_AC3A46
  loc_AC39D4: FLdRfVar var_E0
  loc_AC39D7: FLdRfVar var_88
  loc_AC39DA: ImpAdLdRf MemVar_D94354
  loc_AC39DD: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC39E0: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC39E5: FLdPr var_88
  loc_AC39E8: from_stack_1 = clsconcepto.CodiConc
  loc_AC39ED: FLdZeroAd var_E0
  loc_AC39F0: CVarStr var_98
  loc_AC39F3: PopAdLdVar
  loc_AC39F4: FLdPr Me
  loc_AC39F7: VCallAd Control_ID_CodiConcMsk
  loc_AC39FA: FStAdFunc var_E4
  loc_AC39FD: FLdPr var_E4
  loc_AC3A00: LateIdSt
  loc_AC3A05: FFreeAd var_88 = ""
  loc_AC3A0C: FFree1Var var_98 = ""
  loc_AC3A0F: FLdRfVar var_E0
  loc_AC3A12: FLdRfVar var_88
  loc_AC3A15: ImpAdLdRf MemVar_D94354
  loc_AC3A18: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC3A1B: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC3A20: FLdPr var_88
  loc_AC3A23: from_stack_1 = clsconcepto.DetaConc
  loc_AC3A28: ILdRf var_E0
  loc_AC3A2B: FLdPr Me
  loc_AC3A2E: VCallAd Control_ID_DetaConcLbl
  loc_AC3A31: FStAdFunc var_E4
  loc_AC3A34: FLdPr var_E4
  loc_AC3A37: Me.Caption = from_stack_1
  loc_AC3A3C: FFree1Str var_E0
  loc_AC3A3F: FFreeAd var_88 = ""
  loc_AC3A46: ExitProcHresult
End Sub

Private Sub ConceptoOpt_Click() 'A877B4
  'Data Table: 4F55A0
  loc_A87718: FLdRfVar var_8A
  loc_A8771B: FLdPr Me
  loc_A8771E: VCallAd Control_ID_ConceptoOpt
  loc_A87721: FStAdFunc var_88
  loc_A87724: FLdPr var_88
  loc_A87727:  = Me.Value
  loc_A8772C: FLdI2 var_8A
  loc_A8772F: LitI2_Byte &HFF
  loc_A87731: EqI2
  loc_A87732: FFree1Ad var_88
  loc_A87735: BranchF loc_A877B0
  loc_A87738: LitVar_TRUE var_9C
  loc_A8773B: PopAdLdVar
  loc_A8773C: FLdPr Me
  loc_A8773F: VCallAd Control_ID_CodiConcMsk
  loc_A87742: FStAdFunc var_88
  loc_A87745: FLdPr var_88
  loc_A87748: LateIdSt
  loc_A8774D: FFree1Ad var_88
  loc_A87750: LitVar_FALSE
  loc_A87754: PopAdLdVar
  loc_A87755: FLdPr Me
  loc_A87758: VCallAd Control_ID_ActiConcMsk
  loc_A8775B: FStAdFunc var_88
  loc_A8775E: FLdPr var_88
  loc_A87761: LateIdSt
  loc_A87766: FFree1Ad var_88
  loc_A87769: LitI2_Byte 0
  loc_A8776B: FLdPr Me
  loc_A8776E: VCallAd Control_ID_OficinaCbo
  loc_A87771: FStAdFunc var_88
  loc_A87774: FLdPr var_88
  loc_A87777: Me.Enabled = from_stack_1b
  loc_A8777C: FFree1Ad var_88
  loc_A8777F: LitVarStr var_9C, vbNullString
  loc_A87784: PopAdLdVar
  loc_A87785: FLdPr Me
  loc_A87788: VCallAd Control_ID_ActiConcMsk
  loc_A8778B: FStAdFunc var_88
  loc_A8778E: FLdPr var_88
  loc_A87791: LateIdSt
  loc_A87796: FFree1Ad var_88
  loc_A87799: LitStr vbNullString
  loc_A8779C: FLdPr Me
  loc_A8779F: VCallAd Control_ID_DetaActiLbl
  loc_A877A2: FStAdFunc var_88
  loc_A877A5: FLdPr var_88
  loc_A877A8: Me.Caption = from_stack_1
  loc_A877AD: FFree1Ad var_88
  loc_A877B0: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DFABC
  'Data Table: 4F55A0
  loc_9DFAA0: LitI2_Byte 0
  loc_9DFAA2: LitI2_Byte 0
  loc_9DFAA4: ILdRf Me
  loc_9DFAA7: CastAd
  loc_9DFAAA: FStAdFunc var_88
  loc_9DFAAD: FLdRfVar var_88
  loc_9DFAB0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DFAB5: FFree1Ad var_88
  loc_9DFAB8: ExitProcHresult
End Sub

Private Sub CuentaContableOpt_Click() 'A87A24
  'Data Table: 4F55A0
  loc_A87988: FLdRfVar var_8A
  loc_A8798B: FLdPr Me
  loc_A8798E: VCallAd Control_ID_CuentaContableOpt
  loc_A87991: FStAdFunc var_88
  loc_A87994: FLdPr var_88
  loc_A87997:  = Me.Value
  loc_A8799C: FLdI2 var_8A
  loc_A8799F: LitI2_Byte &HFF
  loc_A879A1: EqI2
  loc_A879A2: FFree1Ad var_88
  loc_A879A5: BranchF loc_A87A20
  loc_A879A8: LitVar_TRUE var_9C
  loc_A879AB: PopAdLdVar
  loc_A879AC: FLdPr Me
  loc_A879AF: VCallAd Control_ID_ActiConcMsk
  loc_A879B2: FStAdFunc var_88
  loc_A879B5: FLdPr var_88
  loc_A879B8: LateIdSt
  loc_A879BD: FFree1Ad var_88
  loc_A879C0: LitVar_FALSE
  loc_A879C4: PopAdLdVar
  loc_A879C5: FLdPr Me
  loc_A879C8: VCallAd Control_ID_CodiConcMsk
  loc_A879CB: FStAdFunc var_88
  loc_A879CE: FLdPr var_88
  loc_A879D1: LateIdSt
  loc_A879D6: FFree1Ad var_88
  loc_A879D9: LitI2_Byte 0
  loc_A879DB: FLdPr Me
  loc_A879DE: VCallAd Control_ID_OficinaCbo
  loc_A879E1: FStAdFunc var_88
  loc_A879E4: FLdPr var_88
  loc_A879E7: Me.Enabled = from_stack_1b
  loc_A879EC: FFree1Ad var_88
  loc_A879EF: LitVarStr var_9C, vbNullString
  loc_A879F4: PopAdLdVar
  loc_A879F5: FLdPr Me
  loc_A879F8: VCallAd Control_ID_CodiConcMsk
  loc_A879FB: FStAdFunc var_88
  loc_A879FE: FLdPr var_88
  loc_A87A01: LateIdSt
  loc_A87A06: FFree1Ad var_88
  loc_A87A09: LitStr vbNullString
  loc_A87A0C: FLdPr Me
  loc_A87A0F: VCallAd Control_ID_DetaConcLbl
  loc_A87A12: FStAdFunc var_88
  loc_A87A15: FLdPr var_88
  loc_A87A18: Me.Caption = from_stack_1
  loc_A87A1D: FFree1Ad var_88
  loc_A87A20: ExitProcHresult
  loc_A87A21: LitI2_Byte 0
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9C1A78
  'Data Table: 4F55A0
  loc_9C1A64: FLdPr Me
  loc_9C1A67: VCallAd Control_ID_HastaMsk
  loc_9C1A6A: CVarAd
  loc_9C1A6E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1A73: FFree1Var var_94 = ""
  loc_9C1A76: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'AA5AB8
  'Data Table: 4F55A0
  loc_AA5A08: FLdPr Me
  loc_AA5A0B: VCallAd Control_ID_HastaMsk
  loc_AA5A0E: FStAdFunc var_88
  loc_AA5A11: FLdPr var_88
  loc_AA5A14: LateIdLdVar var_98 DispID_15 0
  loc_AA5A1B: CStrVarTmp
  loc_AA5A1C: CVarStr var_A8
  loc_AA5A1F: ImpAdCallI2 IsDate()
  loc_AA5A24: FFree1Ad var_88
  loc_AA5A27: FFreeVar var_98 = ""
  loc_AA5A2E: BranchF loc_AA5AB4
  loc_AA5A31: FLdPr Me
  loc_AA5A34: VCallAd Control_ID_HastaMsk
  loc_AA5A37: FStAdFunc var_88
  loc_AA5A3A: FLdPr var_88
  loc_AA5A3D: LateIdLdVar var_98 DispID_15 0
  loc_AA5A44: CStrVarTmp
  loc_AA5A45: CVarStr var_A8
  loc_AA5A48: FLdRfVar var_B8
  loc_AA5A4B: ImpAdCallFPR4  = Year()
  loc_AA5A50: FLdRfVar var_B8
  loc_AA5A53: FLdPr Me
  loc_AA5A56: VCallAd Control_ID_DesdeMsk
  loc_AA5A59: FStAdFunc var_BC
  loc_AA5A5C: FLdPr var_BC
  loc_AA5A5F: LateIdLdVar var_CC DispID_15 0
  loc_AA5A66: CStrVarTmp
  loc_AA5A67: CVarStr var_DC
  loc_AA5A6A: FLdRfVar var_EC
  loc_AA5A6D: ImpAdCallFPR4  = Year()
  loc_AA5A72: FLdRfVar var_EC
  loc_AA5A75: NeVarBool
  loc_AA5A77: FFreeAd var_88 = ""
  loc_AA5A7E: FFreeVar var_98 = "": var_A8 = "": var_CC = "": var_DC = "": var_B8 = ""
  loc_AA5A8D: BranchF loc_AA5AB4
  loc_AA5A90: FLdPr Me
  loc_AA5A93: VCallAd Control_ID_HastaMsk
  loc_AA5A96: FStAdFuncNoPop
  loc_AA5A99: CastAd
  loc_AA5A9C: FStAdFunc var_BC
  loc_AA5A9F: FLdRfVar var_BC
  loc_AA5AA2: LitStr "Debe ingresar una fecha válida. Ambas fechas deben corresponder al mismo periodo"
  loc_AA5AA5: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AA5AAA: IStI2 arg_C
  loc_AA5AAD: FFreeAd var_88 = ""
  loc_AA5AB4: ExitProcHresult
  loc_AA5AB5: LtI4
  loc_AA5AB6: FnAbsI2
End Function

Private Sub Form_Load(arg_28) 'B14214
  'Data Table: 4F55A0
  loc_B13FD4: ILdRf Me
  loc_B13FD7: CastAd
  loc_B13FDA: FStAdFunc var_88
  loc_B13FDD: FLdRfVar var_88
  loc_B13FE0: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_B13FE5: FFree1Ad var_88
  loc_B13FE8: LitVarStr var_98, "Listado de Deudores Con Apremio"
  loc_B13FED: CStrVarVal var_9C
  loc_B13FF1: FLdPr Me
  loc_B13FF4: Me.Caption = from_stack_1
  loc_B13FF9: FFree1Str var_9C
  loc_B13FFC: Call cmdNueva_Click()
  loc_B14001: LitVarStr var_98, vbNullString
  loc_B14006: PopAdLdVar
  loc_B14007: FLdPr Me
  loc_B1400A: VCallAd Control_ID_ActiConcMsk
  loc_B1400D: FStAdFunc var_88
  loc_B14010: FLdPr var_88
  loc_B14013: LateIdSt
  loc_B14018: FFree1Ad var_88
  loc_B1401B: LitStr vbNullString
  loc_B1401E: FLdPr Me
  loc_B14021: VCallAd Control_ID_DetaActiLbl
  loc_B14024: FStAdFunc var_88
  loc_B14027: FLdPr var_88
  loc_B1402A: Me.Caption = from_stack_1
  loc_B1402F: FFree1Ad var_88
  loc_B14032: LitI2_Byte 0
  loc_B14034: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B14039: CVarDate var_BC
  loc_B1403D: FLdRfVar var_CC
  loc_B14040: ImpAdCallFPR4  = Year()
  loc_B14045: LitI2_Byte 0
  loc_B14047: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B1404C: CVarDate var_DC
  loc_B14050: FLdRfVar var_EC
  loc_B14053: ImpAdCallFPR4  = Month()
  loc_B14058: LitI2_Byte 1
  loc_B1405A: FLdRfVar var_EC
  loc_B1405D: LitVarI2 var_FC, 1
  loc_B14062: SubVar var_10C
  loc_B14066: CI2Var
  loc_B14067: FLdRfVar var_CC
  loc_B1406A: CI2Var
  loc_B1406B: FLdRfVar var_11C
  loc_B1406E: ImpAdCallFPR4  = DateSerial(, , )
  loc_B14073: FLdRfVar var_11C
  loc_B14076: CStrVarTmp
  loc_B14077: CVarStr var_12C
  loc_B1407A: PopAdLdVar
  loc_B1407B: FLdPr Me
  loc_B1407E: VCallAd Control_ID_DesdeMsk
  loc_B14081: FStAdFunc var_88
  loc_B14084: FLdPr var_88
  loc_B14087: LateIdSt
  loc_B1408C: FFree1Ad var_88
  loc_B1408F: FFreeVar var_BC = "": var_DC = "": var_EC = "": var_CC = "": var_11C = ""
  loc_B1409E: FLdPr Me
  loc_B140A1: VCallAd Control_ID_DesdeMsk
  loc_B140A4: FStAdFunc var_88
  loc_B140A7: FLdPr var_88
  loc_B140AA: LateIdLdVar var_BC DispID_15 0
  loc_B140B1: CStrVarTmp
  loc_B140B2: CVarStr var_CC
  loc_B140B5: FLdRfVar var_DC
  loc_B140B8: ImpAdCallFPR4  = Year()
  loc_B140BD: FLdPr Me
  loc_B140C0: VCallAd Control_ID_DesdeMsk
  loc_B140C3: FStAdFunc var_140
  loc_B140C6: FLdPr var_140
  loc_B140C9: LateIdLdVar var_EC DispID_15 0
  loc_B140D0: CStrVarTmp
  loc_B140D1: CVarStr var_10C
  loc_B140D4: FLdRfVar var_11C
  loc_B140D7: ImpAdCallFPR4  = Month()
  loc_B140DC: LitI2_Byte 1
  loc_B140DE: FLdRfVar var_11C
  loc_B140E1: LitVarI2 var_98, 1
  loc_B140E6: AddVar var_12C
  loc_B140EA: CI2Var
  loc_B140EB: FLdRfVar var_DC
  loc_B140EE: CI2Var
  loc_B140EF: FLdRfVar var_150
  loc_B140F2: ImpAdCallFPR4  = DateSerial(, , )
  loc_B140F7: FLdRfVar var_150
  loc_B140FA: LitVarI2 var_AC, 1
  loc_B140FF: SubVar var_160
  loc_B14103: CStrVarTmp
  loc_B14104: CVarStr var_170
  loc_B14107: PopAdLdVar
  loc_B14108: FLdPr Me
  loc_B1410B: VCallAd Control_ID_HastaMsk
  loc_B1410E: FStAdFunc var_174
  loc_B14111: FLdPr var_174
  loc_B14114: LateIdSt
  loc_B14119: FFreeAd var_88 = "": var_140 = ""
  loc_B14122: FFreeVar var_BC = "": var_CC = "": var_EC = "": var_10C = "": var_11C = "": var_DC = "": var_12C = "": var_150 = ""
  loc_B14137: LitI2_Byte 0
  loc_B14139: FLdPr Me
  loc_B1413C: VCallAd Control_ID_SoloApremioChk
  loc_B1413F: FStAdFunc var_88
  loc_B14142: FLdPr var_88
  loc_B14145: Me.Value = from_stack_1
  loc_B1414A: FFree1Ad var_88
  loc_B1414D: LitI2_Byte &HFF
  loc_B1414F: FLdPr Me
  loc_B14152: VCallAd Control_ID_CuentaOpt
  loc_B14155: FStAdFunc var_88
  loc_B14158: FLdPr var_88
  loc_B1415B: Me.Value = from_stack_1b
  loc_B14160: FFree1Ad var_88
  loc_B14163: LitI2_Byte &HFF
  loc_B14165: FLdPr Me
  loc_B14168: VCallAd Control_ID_CuentaContableOpt
  loc_B1416B: FStAdFunc var_88
  loc_B1416E: FLdPr var_88
  loc_B14171: Me.Value = from_stack_1b
  loc_B14176: FFree1Ad var_88
  loc_B14179: LitI2_Byte 0
  loc_B1417B: FLdPr Me
  loc_B1417E: VCallAd Control_ID_OficinaOpt
  loc_B14181: FStAdFunc var_88
  loc_B14184: FLdPr var_88
  loc_B14187: Me.Value = from_stack_1b
  loc_B1418C: FFree1Ad var_88
  loc_B1418F: LitVar_Missing var_98
  loc_B14192: PopAdLdVar
  loc_B14193: LitStr "Inmueble"
  loc_B14196: FLdPr Me
  loc_B14199: VCallAd Control_ID_OficinaCbo
  loc_B1419C: FStAdFunc var_88
  loc_B1419F: FLdPr var_88
  loc_B141A2: Me.AddItem from_stack_1, from_stack_2
  loc_B141A7: FFree1Ad var_88
  loc_B141AA: LitVar_Missing var_98
  loc_B141AD: PopAdLdVar
  loc_B141AE: LitStr "Comercio"
  loc_B141B1: FLdPr Me
  loc_B141B4: VCallAd Control_ID_OficinaCbo
  loc_B141B7: FStAdFunc var_88
  loc_B141BA: FLdPr var_88
  loc_B141BD: Me.AddItem from_stack_1, from_stack_2
  loc_B141C2: FFree1Ad var_88
  loc_B141C5: LitVar_Missing var_98
  loc_B141C8: PopAdLdVar
  loc_B141C9: LitStr "Deudores Varios"
  loc_B141CC: FLdPr Me
  loc_B141CF: VCallAd Control_ID_OficinaCbo
  loc_B141D2: FStAdFunc var_88
  loc_B141D5: FLdPr var_88
  loc_B141D8: Me.AddItem from_stack_1, from_stack_2
  loc_B141DD: FFree1Ad var_88
  loc_B141E0: LitVar_Missing var_98
  loc_B141E3: PopAdLdVar
  loc_B141E4: LitStr "Cementerio"
  loc_B141E7: FLdPr Me
  loc_B141EA: VCallAd Control_ID_OficinaCbo
  loc_B141ED: FStAdFunc var_88
  loc_B141F0: FLdPr var_88
  loc_B141F3: Me.AddItem from_stack_1, from_stack_2
  loc_B141F8: FFree1Ad var_88
  loc_B141FB: LitI2_Byte 0
  loc_B141FD: FLdPr Me
  loc_B14200: VCallAd Control_ID_OficinaCbo
  loc_B14203: FStAdFunc var_88
  loc_B14206: FLdPr var_88
  loc_B14209: Me.ListIndex = from_stack_1
  loc_B1420E: FFree1Ad var_88
  loc_B14211: ExitProcHresult
  loc_B14212: FLdPr arg_2800
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D2634
  'Data Table: 4F55A0
  loc_9D261C: FLdPr Me
  loc_9D261F: VCallAd Control_ID_wbbReporte
  loc_9D2622: FStAdFunc var_88
  loc_9D2625: FLdRfVar var_88
  loc_9D2628: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D262D: FFree1Ad var_88
  loc_9D2630: ExitProcHresult
End Sub

Private Sub OficinaOpt_Click() 'A87C94
  'Data Table: 4F55A0
  loc_A87BF8: FLdRfVar var_8A
  loc_A87BFB: FLdPr Me
  loc_A87BFE: VCallAd Control_ID_OficinaOpt
  loc_A87C01: FStAdFunc var_88
  loc_A87C04: FLdPr var_88
  loc_A87C07:  = Me.Value
  loc_A87C0C: FLdI2 var_8A
  loc_A87C0F: LitI2_Byte &HFF
  loc_A87C11: EqI2
  loc_A87C12: FFree1Ad var_88
  loc_A87C15: BranchF loc_A87C91
  loc_A87C18: LitI2_Byte &HFF
  loc_A87C1A: FLdPr Me
  loc_A87C1D: VCallAd Control_ID_OficinaCbo
  loc_A87C20: FStAdFunc var_88
  loc_A87C23: FLdPr var_88
  loc_A87C26: Me.Enabled = from_stack_1b
  loc_A87C2B: FFree1Ad var_88
  loc_A87C2E: LitVar_FALSE
  loc_A87C32: PopAdLdVar
  loc_A87C33: FLdPr Me
  loc_A87C36: VCallAd Control_ID_CodiConcMsk
  loc_A87C39: FStAdFunc var_88
  loc_A87C3C: FLdPr var_88
  loc_A87C3F: LateIdSt
  loc_A87C44: FFree1Ad var_88
  loc_A87C47: LitVar_FALSE
  loc_A87C4B: PopAdLdVar
  loc_A87C4C: FLdPr Me
  loc_A87C4F: VCallAd Control_ID_ActiConcMsk
  loc_A87C52: FStAdFunc var_88
  loc_A87C55: FLdPr var_88
  loc_A87C58: LateIdSt
  loc_A87C5D: FFree1Ad var_88
  loc_A87C60: LitVarStr var_9C, vbNullString
  loc_A87C65: PopAdLdVar
  loc_A87C66: FLdPr Me
  loc_A87C69: VCallAd Control_ID_ActiConcMsk
  loc_A87C6C: FStAdFunc var_88
  loc_A87C6F: FLdPr var_88
  loc_A87C72: LateIdSt
  loc_A87C77: FFree1Ad var_88
  loc_A87C7A: LitStr vbNullString
  loc_A87C7D: FLdPr Me
  loc_A87C80: VCallAd Control_ID_DetaActiLbl
  loc_A87C83: FStAdFunc var_88
  loc_A87C86: FLdPr var_88
  loc_A87C89: Me.Caption = from_stack_1
  loc_A87C8E: FFree1Ad var_88
  loc_A87C91: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D1D98
  'Data Table: 4F55A0
  loc_9D1D80: ILdRf Me
  loc_9D1D83: CastAd
  loc_9D1D86: FStAdFunc var_88
  loc_9D1D89: FLdRfVar var_88
  loc_9D1D8C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D1D91: FFree1Ad var_88
  loc_9D1D94: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DFB5C
  'Data Table: 4F55A0
  loc_9DFB40: LitI2_Byte 0
  loc_9DFB42: PopTmpLdAd2 var_8A
  loc_9DFB45: ILdRf Me
  loc_9DFB48: CastAd
  loc_9DFB4B: FStAdFunc var_88
  loc_9DFB4E: FLdRfVar var_88
  loc_9DFB51: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DFB56: FFree1Ad var_88
  loc_9DFB59: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9D2044
  'Data Table: 4F55A0
  loc_9D202C: LitI2_Byte 0
  loc_9D202E: ILdRf Me
  loc_9D2031: CastAd
  loc_9D2034: FStAdFunc var_88
  loc_9D2037: FLdRfVar var_88
  loc_9D203A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D203F: FFree1Ad var_88
  loc_9D2042: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A144A0
  'Data Table: 4F55A0
  loc_A14468: FLdPr Me
  loc_A1446B: VCallAd Control_ID_statusBar
  loc_A1446E: FStAdFunc var_88
  loc_A14471: FLdPr var_88
  loc_A14474: LateIdLdVar var_98 DispID_1 0
  loc_A1447B: CStrVarTmp
  loc_A1447C: CVarStr var_A8
  loc_A1447F: PopAdLdVar
  loc_A14480: FLdPr Me
  loc_A14483: VCallAd Control_ID_statusBar
  loc_A14486: FStAdFunc var_BC
  loc_A14489: FLdPr var_BC
  loc_A1448C: LateIdSt
  loc_A14491: FFreeAd var_88 = ""
  loc_A14498: FFreeVar var_98 = ""
  loc_A1449F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4F6C60
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4F6C6F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AE62D4
  'Data Table: 4F55A0
  loc_AE6184: LitI4 0
  loc_AE6189: LitI4 9
  loc_AE618E: FLdRfVar var_88
  loc_AE6191: Redim
  loc_AE619B: FLdPr Me
  loc_AE619E: VCallAd Control_ID_DesdeMsk
  loc_AE61A1: CVarAd
  loc_AE61A5: ParmAry1St
  loc_AE61AB: FLdPr Me
  loc_AE61AE: VCallAd Control_ID_DesdeFechaCmd
  loc_AE61B1: CVarAd
  loc_AE61B5: ParmAry1St
  loc_AE61BB: FLdPr Me
  loc_AE61BE: VCallAd Control_ID_HastaMsk
  loc_AE61C1: CVarAd
  loc_AE61C5: ParmAry1St
  loc_AE61CB: FLdPr Me
  loc_AE61CE: VCallAd Control_ID_HastaFechaCmd
  loc_AE61D1: CVarAd
  loc_AE61D5: ParmAry1St
  loc_AE61DB: FLdPr Me
  loc_AE61DE: VCallAd Control_ID_SoloApremioChk
  loc_AE61E1: CVarAd
  loc_AE61E5: ParmAry1St
  loc_AE61EB: FLdPr Me
  loc_AE61EE: VCallAd Control_ID_CuentaOpt
  loc_AE61F1: CVarAd
  loc_AE61F5: ParmAry1St
  loc_AE61FB: FLdPr Me
  loc_AE61FE: VCallAd Control_ID_NombreOpt
  loc_AE6201: CVarAd
  loc_AE6205: ParmAry1St
  loc_AE620B: FLdPr Me
  loc_AE620E: VCallAd Control_ID_CuentaContableOpt
  loc_AE6211: CVarAd
  loc_AE6215: ParmAry1St
  loc_AE621B: FLdPr Me
  loc_AE621E: VCallAd Control_ID_ConceptoOpt
  loc_AE6221: CVarAd
  loc_AE6225: ParmAry1St
  loc_AE622B: FLdPr Me
  loc_AE622E: VCallAd Control_ID_OficinaCbo
  loc_AE6231: CVarAd
  loc_AE6235: ParmAry1St
  loc_AE623B: FLdRfVar var_88
  loc_AE623E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE6243: FLdRfVar var_88
  loc_AE6246: Erase
  loc_AE6247: FLdRfVar var_12E
  loc_AE624A: FLdPr Me
  loc_AE624D: VCallAd Control_ID_CuentaContableOpt
  loc_AE6250: FStAdFunc var_12C
  loc_AE6253: FLdPr var_12C
  loc_AE6256:  = Me.Value
  loc_AE625B: FLdI2 var_12E
  loc_AE625E: LitI2_Byte &HFF
  loc_AE6260: EqI2
  loc_AE6261: FFree1Ad var_12C
  loc_AE6264: BranchF loc_AE629D
  loc_AE6267: LitI4 0
  loc_AE626C: LitI4 0
  loc_AE6271: FLdRfVar var_88
  loc_AE6274: Redim
  loc_AE627E: FLdPr Me
  loc_AE6281: VCallAd Control_ID_ActiConcMsk
  loc_AE6284: CVarAd
  loc_AE6288: ParmAry1St
  loc_AE628E: FLdRfVar var_88
  loc_AE6291: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE6296: FLdRfVar var_88
  loc_AE6299: Erase
  loc_AE629A: Branch loc_AE62D0
  loc_AE629D: LitI4 0
  loc_AE62A2: LitI4 0
  loc_AE62A7: FLdRfVar var_88
  loc_AE62AA: Redim
  loc_AE62B4: FLdPr Me
  loc_AE62B7: VCallAd Control_ID_CodiConcMsk
  loc_AE62BA: CVarAd
  loc_AE62BE: ParmAry1St
  loc_AE62C4: FLdRfVar var_88
  loc_AE62C7: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE62CC: FLdRfVar var_88
  loc_AE62CF: Erase
  loc_AE62D0: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C61DFC
  'Data Table: 4F55A0
  loc_C60F50: FLdPr Me
  loc_C60F53: MemLdI2 bGenerado
  loc_C60F56: BranchF loc_C60F5A
  loc_C60F59: ExitProcHresult
  loc_C60F5A: LitVarStr var_A0, "Generando reporte..."
  loc_C60F5F: PopAdLdVar
  loc_C60F60: FLdPr Me
  loc_C60F63: VCallAd Control_ID_statusBar
  loc_C60F66: FStAdFunc var_B4
  loc_C60F69: FLdPr var_B4
  loc_C60F6C: LateIdSt
  loc_C60F71: FFree1Ad var_B4
  loc_C60F74: LitI4 &HB
  loc_C60F79: CI2I4
  loc_C60F7A: FLdPr Me
  loc_C60F7D: Me.MousePointer = from_stack_1
  loc_C60F82: LitI2_Byte 0
  loc_C60F84: PopTmpLdAd2 var_B6
  loc_C60F87: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C60F8C: FLdPr Me
  loc_C60F8F: MemLdStr global_108
  loc_C60F92: LitStr vbNullString
  loc_C60F95: NeStr
  loc_C60F97: BranchF loc_C60F9D
  loc_C60F9A: Branch loc_C61DD1
  loc_C60F9D: LitI2_Byte 0
  loc_C60F9F: PopTmpLdAd2 var_B6
  loc_C60FA2: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C60FA7: FLdPr Me
  loc_C60FAA: MemLdStr global_108
  loc_C60FAD: LitStr vbNullString
  loc_C60FB0: NeStr
  loc_C60FB2: BranchF loc_C60FB8
  loc_C60FB5: Branch loc_C61DD1
  loc_C60FB8: FLdRfVar var_B6
  loc_C60FBB: FLdPr Me
  loc_C60FBE: VCallAd Control_ID_CuentaContableOpt
  loc_C60FC1: FStAdFunc var_B4
  loc_C60FC4: FLdPr var_B4
  loc_C60FC7:  = Me.Value
  loc_C60FCC: FLdI2 var_B6
  loc_C60FCF: LitI2_Byte &HFF
  loc_C60FD1: EqI2
  loc_C60FD2: FFree1Ad var_B4
  loc_C60FD5: BranchF loc_C60FF3
  loc_C60FD8: LitI2_Byte 0
  loc_C60FDA: PopTmpLdAd2 var_B6
  loc_C60FDD: from_stack_2v = ActiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_C60FE2: FLdPr Me
  loc_C60FE5: MemLdStr global_108
  loc_C60FE8: LitStr vbNullString
  loc_C60FEB: NeStr
  loc_C60FED: BranchF loc_C60FF3
  loc_C60FF0: Branch loc_C61DD1
  loc_C60FF3: FLdRfVar var_B6
  loc_C60FF6: FLdPr Me
  loc_C60FF9: VCallAd Control_ID_ConceptoOpt
  loc_C60FFC: FStAdFunc var_B4
  loc_C60FFF: FLdPr var_B4
  loc_C61002:  = Me.Value
  loc_C61007: FLdI2 var_B6
  loc_C6100A: LitI2_Byte &HFF
  loc_C6100C: EqI2
  loc_C6100D: FFree1Ad var_B4
  loc_C61010: BranchF loc_C6102E
  loc_C61013: LitI2_Byte 0
  loc_C61015: PopTmpLdAd2 var_B6
  loc_C61018: Call CodiConcMsk_UnknownEvent_8()
  loc_C6101D: FLdPr Me
  loc_C61020: MemLdStr global_108
  loc_C61023: LitStr vbNullString
  loc_C61026: NeStr
  loc_C61028: BranchF loc_C6102E
  loc_C6102B: Branch loc_C61DD1
  loc_C6102E: FLdPr Me
  loc_C61031: VCallAd Control_ID_DesdeMsk
  loc_C61034: FStAdFunc var_B4
  loc_C61037: FLdPr var_B4
  loc_C6103A: LateIdLdVar var_C8 DispID_15 0
  loc_C61041: PopAd
  loc_C61043: LitI4 1
  loc_C61048: LitI4 1
  loc_C6104D: LitVarStr var_A0, "yyyy-mm-dd"
  loc_C61052: FStVarCopyObj var_E8
  loc_C61055: FLdRfVar var_E8
  loc_C61058: FLdRfVar var_C8
  loc_C6105B: CStrVarTmp
  loc_C6105C: CVarStr var_D8
  loc_C6105F: ImpAdCallI2 Format$(, )
  loc_C61064: FStStr var_88
  loc_C61067: FFree1Ad var_B4
  loc_C6106A: FFreeVar var_C8 = "": var_D8 = ""
  loc_C61073: FLdPr Me
  loc_C61076: VCallAd Control_ID_HastaMsk
  loc_C61079: FStAdFunc var_B4
  loc_C6107C: FLdPr var_B4
  loc_C6107F: LateIdLdVar var_C8 DispID_15 0
  loc_C61086: PopAd
  loc_C61088: LitI4 1
  loc_C6108D: LitI4 1
  loc_C61092: LitVarStr var_A0, "yyyy-mm-dd"
  loc_C61097: FStVarCopyObj var_E8
  loc_C6109A: FLdRfVar var_E8
  loc_C6109D: FLdRfVar var_C8
  loc_C610A0: CStrVarTmp
  loc_C610A1: CVarStr var_D8
  loc_C610A4: ImpAdCallI2 Format$(, )
  loc_C610A9: FStStr var_8C
  loc_C610AC: FFree1Ad var_B4
  loc_C610AF: FFreeVar var_C8 = "": var_D8 = ""
  loc_C610B8: FLdRfVar var_B6
  loc_C610BB: FLdPr Me
  loc_C610BE: VCallAd Control_ID_SoloApremioChk
  loc_C610C1: FStAdFunc var_B4
  loc_C610C4: FLdPr var_B4
  loc_C610C7:  = Me.Value
  loc_C610CC: LitVarStr var_F8, " AND NumeApre <> 0"
  loc_C610D1: FStVarCopyObj var_D8
  loc_C610D4: FLdRfVar var_D8
  loc_C610D7: LitVarStr var_B0, vbNullString
  loc_C610DC: FStVarCopyObj var_C8
  loc_C610DF: FLdRfVar var_C8
  loc_C610E2: FLdI2 var_B6
  loc_C610E5: LitI2_Byte 0
  loc_C610E7: EqI2
  loc_C610E8: CVarBoolI2 var_A0
  loc_C610EC: FLdRfVar var_E8
  loc_C610EF: ImpAdCallFPR4  = IIf(, , )
  loc_C610F4: FLdRfVar var_E8
  loc_C610F7: CStrVarTmp
  loc_C610F8: FStStr var_90
  loc_C610FB: FFree1Ad var_B4
  loc_C610FE: FFreeVar var_A0 = "": var_C8 = "": var_D8 = ""
  loc_C61109: FLdPr Me
  loc_C6110C: MemLdRfVar from_stack_1.global_92
  loc_C6110F: NewIfNullAd
  loc_C61112: FStAd var_FC 
  loc_C61116: FLdRfVar var_B6
  loc_C61119: FLdPr Me
  loc_C6111C: VCallAd Control_ID_CuentaContableOpt
  loc_C6111F: FStAdFunc var_B4
  loc_C61122: FLdPr var_B4
  loc_C61125:  = Me.Value
  loc_C6112A: FLdI2 var_B6
  loc_C6112D: LitI2_Byte &HFF
  loc_C6112F: EqI2
  loc_C61130: FFree1Ad var_B4
  loc_C61133: BranchF loc_C61420
  loc_C61136: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C61139: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C6113C: ConcatStr
  loc_C6113D: FStStrNoPop var_100
  loc_C61140: LitStr " sum(if(CodiTimo in (10,19,22,24),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C61143: ConcatStr
  loc_C61144: FStStrNoPop var_104
  loc_C61147: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct,"
  loc_C6114A: ConcatStr
  loc_C6114B: FStStrNoPop var_108
  loc_C6114E: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) as CobrCtct, ctacte.NumeApre"
  loc_C61151: ConcatStr
  loc_C61152: FStStrNoPop var_10C
  loc_C61155: LitStr " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C61158: ConcatStr
  loc_C61159: CVarStr var_D8
  loc_C6115C: FLdRfVar var_88
  loc_C6115F: CVarRef
  loc_C61164: FLdRfVar var_C8
  loc_C61167: ImpAdCallFPR4  = Year()
  loc_C6116C: FLdRfVar var_C8
  loc_C6116F: ConcatVar var_E8
  loc_C61173: LitVarStr var_B0, " AND concepto.ActiConc = '"
  loc_C61178: ConcatVar var_11C
  loc_C6117C: FLdPr Me
  loc_C6117F: VCallAd Control_ID_ActiConcMsk
  loc_C61182: FStAdFunc var_B4
  loc_C61185: FLdPr var_B4
  loc_C61188: LateIdLdVar var_12C DispID_22 0
  loc_C6118F: CStrVarTmp
  loc_C61190: CVarStr var_13C
  loc_C61193: ConcatVar var_14C
  loc_C61197: LitVarStr var_F8, "'"
  loc_C6119C: ConcatVar var_15C
  loc_C611A0: LitVarStr var_16C, " WHERE ctacte.FealCtct BETWEEN '"
  loc_C611A5: ConcatVar var_17C
  loc_C611A9: ILdRf var_88
  loc_C611AC: CVarStr var_18C
  loc_C611AF: ConcatVar var_19C
  loc_C611B3: LitVarStr var_1AC, "' AND '"
  loc_C611B8: ConcatVar var_1BC
  loc_C611BC: ILdRf var_8C
  loc_C611BF: CVarStr var_1CC
  loc_C611C2: ConcatVar var_1DC
  loc_C611C6: LitVarStr var_1EC, "'"
  loc_C611CB: ConcatVar var_1FC
  loc_C611CF: ILdRf var_90
  loc_C611D2: CVarStr var_20C
  loc_C611D5: ConcatVar var_21C
  loc_C611D9: LitVarStr var_22C, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.NumeApre) UNION ALL "
  loc_C611DE: ConcatVar var_23C
  loc_C611E2: LitVarStr var_24C, " (SELECT ctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct, 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct, ctacte.NumeApre"
  loc_C611E7: ConcatVar var_25C
  loc_C611EB: LitVarStr var_26C, " FROM ctacte INNER JOIN concepto ON concepto.CodiConc = ctacte.CodiConc AND concepto.PeriInfo = "
  loc_C611F0: ConcatVar var_27C
  loc_C611F4: FLdRfVar var_88
  loc_C611F7: CVarRef
  loc_C611FC: FLdRfVar var_29C
  loc_C611FF: ImpAdCallFPR4  = Year()
  loc_C61204: FLdRfVar var_29C
  loc_C61207: ConcatVar var_2AC
  loc_C6120B: LitVarStr var_2BC, " AND concepto.ActiConc = '"
  loc_C61210: ConcatVar var_2CC
  loc_C61214: FLdPr Me
  loc_C61217: VCallAd Control_ID_ActiConcMsk
  loc_C6121A: FStAdFunc var_2D0
  loc_C6121D: FLdPr var_2D0
  loc_C61220: LateIdLdVar var_2E0 DispID_22 0
  loc_C61227: CStrVarTmp
  loc_C61228: CVarStr var_2F0
  loc_C6122B: ConcatVar var_300
  loc_C6122F: LitVarStr var_310, "'"
  loc_C61234: ConcatVar var_320
  loc_C61238: LitVarStr var_330, " WHERE ctacte.FealCtct < '"
  loc_C6123D: ConcatVar var_340
  loc_C61241: ILdRf var_88
  loc_C61244: CVarStr var_350
  loc_C61247: ConcatVar var_360
  loc_C6124B: LitVarStr var_370, "'"
  loc_C61250: ConcatVar var_380
  loc_C61254: ILdRf var_90
  loc_C61257: CVarStr var_390
  loc_C6125A: ConcatVar var_3A0
  loc_C6125E: LitVarStr var_3B0, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.NumeApre) UNION ALL "
  loc_C61263: ConcatVar var_3C0
  loc_C61267: LitVarStr var_3D0, " (SELECT histoctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C6126C: ConcatVar var_3E0
  loc_C61270: LitVarStr var_3F0, " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct, histoctacte.NumeApre"
  loc_C61275: ConcatVar var_400
  loc_C61279: LitVarStr var_410, " FROM recahisto.histoctacte INNER JOIN concepto ON concepto.CodiConc = histoctacte.CodiConc AND concepto.PeriInfo = "
  loc_C6127E: ConcatVar var_420
  loc_C61282: FLdRfVar var_88
  loc_C61285: CVarRef
  loc_C6128A: FLdRfVar var_440
  loc_C6128D: ImpAdCallFPR4  = Year()
  loc_C61292: FLdRfVar var_440
  loc_C61295: ConcatVar var_450
  loc_C61299: LitVarStr var_460, " AND concepto.ActiConc = '"
  loc_C6129E: ConcatVar var_470
  loc_C612A2: FLdPr Me
  loc_C612A5: VCallAd Control_ID_ActiConcMsk
  loc_C612A8: FStAdFunc var_474
  loc_C612AB: FLdPr var_474
  loc_C612AE: LateIdLdVar var_484 DispID_22 0
  loc_C612B5: CStrVarTmp
  loc_C612B6: CVarStr var_494
  loc_C612B9: ConcatVar var_4A4
  loc_C612BD: LitVarStr var_4B4, "'"
  loc_C612C2: ConcatVar var_4C4
  loc_C612C6: LitVarStr var_4D4, " WHERE histoctacte.FealCtct < '"
  loc_C612CB: ConcatVar var_4E4
  loc_C612CF: ILdRf var_88
  loc_C612D2: CVarStr var_4F4
  loc_C612D5: ConcatVar var_504
  loc_C612D9: LitVarStr var_514, "'"
  loc_C612DE: ConcatVar var_524
  loc_C612E2: ILdRf var_90
  loc_C612E5: CVarStr var_534
  loc_C612E8: ConcatVar var_544
  loc_C612EC: LitVarStr var_554, " GROUP BY histoctacte.CodiOfic, histoctacte.CuenCtct, histoctacte.NumeApre);"
  loc_C612F1: ConcatVar var_564
  loc_C612F5: LitVarStr var_574, " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic, NumeApre);"
  loc_C612FA: ConcatVar var_584
  loc_C612FE: CStrVarVal var_588
  loc_C61302: FLdPr var_FC
  loc_C61305: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6130A: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_C61317: FFreeAd var_B4 = "": var_2D0 = ""
  loc_C61320: FFreeVar var_400 = "": var_420 = "": var_440 = "": var_450 = "": var_484 = "": var_470 = "": var_494 = "": var_4A4 = "": var_4C4 = "": var_4E4 = "": var_504 = "": var_524 = "": var_544 = "": var_564 = "": var_584 = "": var_D8 = "": var_C8 = "": var_E8 = "": var_12C = "": var_11C = "": var_13C = "": var_14C = "": var_15C = "": var_17C = "": var_19C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = "": var_29C = "": var_2AC = "": var_2E0 = "": var_2CC = "": var_2F0 = "": var_300 = "": var_320 = "": var_340 = "": var_360 = "": var_380 = "": var_3A0 = "": var_3C0 = ""
  loc_C6137D: FLdRfVar var_B6
  loc_C61380: FLdPr Me
  loc_C61383: VCallAd Control_ID_CuentaOpt
  loc_C61386: FStAdFunc var_B4
  loc_C61389: FLdPr var_B4
  loc_C6138C:  = Me.Value
  loc_C61391: LitStr "SELECT tribu.CuenCtct, tribu.CodiOfic, relacion.CucuPers, DetaPers, sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C61394: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C61397: ConcatStr
  loc_C61398: FStStrNoPop var_100
  loc_C6139B: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(Presctct)-sum(CredCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct, "
  loc_C6139E: ConcatStr
  loc_C6139F: FStStrNoPop var_104
  loc_C613A2: LitStr " tribu.NumeApre, IFNULL(apremio.AutoApre,0) AS AutoApre, IFNULL(apremio.CodiInju,0) as CodiInju "
  loc_C613A5: ConcatStr
  loc_C613A6: FStStrNoPop var_108
  loc_C613A9: LitStr " FROM tribu INNER JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_C613AC: ConcatStr
  loc_C613AD: FStStrNoPop var_10C
  loc_C613B0: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C613B3: ConcatStr
  loc_C613B4: FStStrNoPop var_588
  loc_C613B7: LitStr " LEFT JOIN apremio ON apremio.NumeApre = tribu.NumeApre"
  loc_C613BA: ConcatStr
  loc_C613BB: FStStrNoPop var_58C
  loc_C613BE: LitStr " GROUP BY tribu.CodiOfic, tribu.CuenCtct, tribu.NumeApre"
  loc_C613C1: ConcatStr
  loc_C613C2: CVarStr var_11C
  loc_C613C5: LitVarStr var_F8, " ORDER BY DetaPers"
  loc_C613CA: FStVarCopyObj var_D8
  loc_C613CD: FLdRfVar var_D8
  loc_C613D0: LitVarStr var_B0, " ORDER BY CodiOfic, CuenCtct, NumeApre"
  loc_C613D5: FStVarCopyObj var_C8
  loc_C613D8: FLdRfVar var_C8
  loc_C613DB: FLdI2 var_B6
  loc_C613DE: CVarBoolI2 var_A0
  loc_C613E2: FLdRfVar var_E8
  loc_C613E5: ImpAdCallFPR4  = IIf(, , )
  loc_C613EA: FLdRfVar var_E8
  loc_C613ED: ConcatVar var_12C
  loc_C613F1: CStrVarVal var_590
  loc_C613F5: FLdPr var_FC
  loc_C613F8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C613FD: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_588 = "": var_58C = ""
  loc_C6140E: FFree1Ad var_B4
  loc_C61411: FFreeVar var_A0 = "": var_C8 = "": var_D8 = "": var_11C = "": var_E8 = ""
  loc_C61420: FLdRfVar var_B6
  loc_C61423: FLdPr Me
  loc_C61426: VCallAd Control_ID_ConceptoOpt
  loc_C61429: FStAdFunc var_B4
  loc_C6142C: FLdPr var_B4
  loc_C6142F:  = Me.Value
  loc_C61434: FLdI2 var_B6
  loc_C61437: LitI2_Byte &HFF
  loc_C61439: EqI2
  loc_C6143A: FFree1Ad var_B4
  loc_C6143D: BranchF loc_C61692
  loc_C61440: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C61443: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C61446: ConcatStr
  loc_C61447: FStStrNoPop var_100
  loc_C6144A: LitStr " sum(if(CodiTimo in (10,19,22,24),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C6144D: ConcatStr
  loc_C6144E: FStStrNoPop var_104
  loc_C61451: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct,"
  loc_C61454: ConcatStr
  loc_C61455: FStStrNoPop var_108
  loc_C61458: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) as CobrCtct, ctacte.NumeApre"
  loc_C6145B: ConcatStr
  loc_C6145C: FStStrNoPop var_10C
  loc_C6145F: LitStr " FROM ctacte "
  loc_C61462: ConcatStr
  loc_C61463: FStStrNoPop var_588
  loc_C61466: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_C61469: ConcatStr
  loc_C6146A: FStStrNoPop var_58C
  loc_C6146D: ILdRf var_88
  loc_C61470: ConcatStr
  loc_C61471: FStStrNoPop var_590
  loc_C61474: LitStr "' AND '"
  loc_C61477: ConcatStr
  loc_C61478: FStStrNoPop var_594
  loc_C6147B: ILdRf var_8C
  loc_C6147E: ConcatStr
  loc_C6147F: FStStrNoPop var_598
  loc_C61482: LitStr "'"
  loc_C61485: ConcatStr
  loc_C61486: FStStrNoPop var_59C
  loc_C61489: ILdRf var_90
  loc_C6148C: ConcatStr
  loc_C6148D: FStStrNoPop var_5A0
  loc_C61490: LitStr " AND CodiConc = '"
  loc_C61493: ConcatStr
  loc_C61494: FStStrNoPop var_5A4
  loc_C61497: FLdPr Me
  loc_C6149A: VCallAd Control_ID_CodiConcMsk
  loc_C6149D: FStAdFunc var_B4
  loc_C614A0: FLdPr var_B4
  loc_C614A3: LateIdLdVar var_C8 DispID_22 0
  loc_C614AA: CStrVarTmp
  loc_C614AB: FStStrNoPop var_5A8
  loc_C614AE: ConcatStr
  loc_C614AF: FStStrNoPop var_5AC
  loc_C614B2: LitStr "'"
  loc_C614B5: ConcatStr
  loc_C614B6: FStStrNoPop var_5B0
  loc_C614B9: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.NumeApre) UNION ALL "
  loc_C614BC: ConcatStr
  loc_C614BD: FStStrNoPop var_5B4
  loc_C614C0: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct, 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct, NumeApre"
  loc_C614C3: ConcatStr
  loc_C614C4: FStStrNoPop var_5B8
  loc_C614C7: LitStr " FROM ctacte "
  loc_C614CA: ConcatStr
  loc_C614CB: FStStrNoPop var_5BC
  loc_C614CE: LitStr " WHERE ctacte.FealCtct < '"
  loc_C614D1: ConcatStr
  loc_C614D2: FStStrNoPop var_5C0
  loc_C614D5: ILdRf var_88
  loc_C614D8: ConcatStr
  loc_C614D9: FStStrNoPop var_5C4
  loc_C614DC: LitStr "'"
  loc_C614DF: ConcatStr
  loc_C614E0: FStStrNoPop var_5C8
  loc_C614E3: LitStr " AND CodiConc = '"
  loc_C614E6: ConcatStr
  loc_C614E7: FStStrNoPop var_5CC
  loc_C614EA: FLdPr Me
  loc_C614ED: VCallAd Control_ID_CodiConcMsk
  loc_C614F0: FStAdFunc var_2D0
  loc_C614F3: FLdPr var_2D0
  loc_C614F6: LateIdLdVar var_D8 DispID_22 0
  loc_C614FD: CStrVarTmp
  loc_C614FE: FStStrNoPop var_5D0
  loc_C61501: ConcatStr
  loc_C61502: FStStrNoPop var_5D4
  loc_C61505: LitStr "'"
  loc_C61508: ConcatStr
  loc_C61509: FStStrNoPop var_5D8
  loc_C6150C: ILdRf var_90
  loc_C6150F: ConcatStr
  loc_C61510: FStStrNoPop var_5DC
  loc_C61513: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.NumeApre) UNION ALL "
  loc_C61516: ConcatStr
  loc_C61517: FStStrNoPop var_5E0
  loc_C6151A: LitStr " (SELECT histoctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C6151D: ConcatStr
  loc_C6151E: FStStrNoPop var_5E4
  loc_C61521: LitStr " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct, NumeApre"
  loc_C61524: ConcatStr
  loc_C61525: FStStrNoPop var_5E8
  loc_C61528: LitStr " FROM recahisto.histoctacte "
  loc_C6152B: ConcatStr
  loc_C6152C: FStStrNoPop var_5EC
  loc_C6152F: LitStr " WHERE histoctacte.FealCtct < '"
  loc_C61532: ConcatStr
  loc_C61533: FStStrNoPop var_5F0
  loc_C61536: ILdRf var_88
  loc_C61539: ConcatStr
  loc_C6153A: FStStrNoPop var_5F4
  loc_C6153D: LitStr "'"
  loc_C61540: ConcatStr
  loc_C61541: FStStrNoPop var_5F8
  loc_C61544: LitStr " AND CodiConc = '"
  loc_C61547: ConcatStr
  loc_C61548: FStStrNoPop var_5FC
  loc_C6154B: FLdPr Me
  loc_C6154E: VCallAd Control_ID_CodiConcMsk
  loc_C61551: FStAdFunc var_474
  loc_C61554: FLdPr var_474
  loc_C61557: LateIdLdVar var_E8 DispID_22 0
  loc_C6155E: CStrVarTmp
  loc_C6155F: FStStrNoPop var_600
  loc_C61562: ConcatStr
  loc_C61563: FStStrNoPop var_604
  loc_C61566: LitStr "'"
  loc_C61569: ConcatStr
  loc_C6156A: FStStrNoPop var_608
  loc_C6156D: ILdRf var_90
  loc_C61570: ConcatStr
  loc_C61571: FStStrNoPop var_60C
  loc_C61574: LitStr " GROUP BY histoctacte.CodiOfic, histoctacte.CuenCtct, histoctacte.NumeApre);"
  loc_C61577: ConcatStr
  loc_C61578: FStStrNoPop var_610
  loc_C6157B: LitStr " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic, NumeApre);"
  loc_C6157E: ConcatStr
  loc_C6157F: FStStrNoPop var_614
  loc_C61582: FLdPr var_FC
  loc_C61585: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6158A: FFreeStr var_5F0 = "": var_5F4 = "": var_5F8 = "": var_5FC = "": var_600 = "": var_604 = "": var_608 = "": var_60C = "": var_610 = "": var_614 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_588 = "": var_58C = "": var_590 = "": var_594 = "": var_598 = "": var_59C = "": var_5A0 = "": var_5A4 = "": var_5A8 = "": var_5AC = "": var_5B0 = "": var_5B4 = "": var_5B8 = "": var_5BC = "": var_5C0 = "": var_5C4 = "": var_5C8 = "": var_5CC = "": var_5D0 = "": var_5D4 = "": var_5D8 = "": var_5DC = "": var_5E0 = "": var_5E4 = "": var_5E8 = ""
  loc_C615DD: FFreeAd var_B4 = "": var_2D0 = ""
  loc_C615E6: FFreeVar var_C8 = "": var_D8 = ""
  loc_C615EF: FLdRfVar var_B6
  loc_C615F2: FLdPr Me
  loc_C615F5: VCallAd Control_ID_CuentaOpt
  loc_C615F8: FStAdFunc var_B4
  loc_C615FB: FLdPr var_B4
  loc_C615FE:  = Me.Value
  loc_C61603: LitStr "SELECT tribu.CuenCtct, tribu.CodiOfic, relacion.CucuPers, DetaPers, sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C61606: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C61609: ConcatStr
  loc_C6160A: FStStrNoPop var_100
  loc_C6160D: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(Presctct)-sum(CredCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct,"
  loc_C61610: ConcatStr
  loc_C61611: FStStrNoPop var_104
  loc_C61614: LitStr " tribu.NumeApre, IFNULL(apremio.AutoApre,0) AS AutoApre, IFNULL(apremio.CodiInju,0) as CodiInju "
  loc_C61617: ConcatStr
  loc_C61618: FStStrNoPop var_108
  loc_C6161B: LitStr " FROM tribu INNER JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_C6161E: ConcatStr
  loc_C6161F: FStStrNoPop var_10C
  loc_C61622: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C61625: ConcatStr
  loc_C61626: FStStrNoPop var_588
  loc_C61629: LitStr " LEFT JOIN apremio ON apremio.NumeApre = tribu.NumeApre"
  loc_C6162C: ConcatStr
  loc_C6162D: FStStrNoPop var_58C
  loc_C61630: LitStr " GROUP BY tribu.CodiOfic, tribu.CuenCtct, tribu.NumeApre"
  loc_C61633: ConcatStr
  loc_C61634: CVarStr var_11C
  loc_C61637: LitVarStr var_F8, " ORDER BY DetaPers"
  loc_C6163C: FStVarCopyObj var_D8
  loc_C6163F: FLdRfVar var_D8
  loc_C61642: LitVarStr var_B0, " ORDER BY CodiOfic, CuenCtct, NumeApre"
  loc_C61647: FStVarCopyObj var_C8
  loc_C6164A: FLdRfVar var_C8
  loc_C6164D: FLdI2 var_B6
  loc_C61650: CVarBoolI2 var_A0
  loc_C61654: FLdRfVar var_E8
  loc_C61657: ImpAdCallFPR4  = IIf(, , )
  loc_C6165C: FLdRfVar var_E8
  loc_C6165F: ConcatVar var_12C
  loc_C61663: CStrVarVal var_590
  loc_C61667: FLdPr var_FC
  loc_C6166A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6166F: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_588 = "": var_58C = ""
  loc_C61680: FFree1Ad var_B4
  loc_C61683: FFreeVar var_A0 = "": var_C8 = "": var_D8 = "": var_11C = "": var_E8 = ""
  loc_C61692: FLdRfVar var_B6
  loc_C61695: FLdPr Me
  loc_C61698: VCallAd Control_ID_OficinaOpt
  loc_C6169B: FStAdFunc var_B4
  loc_C6169E: FLdPr var_B4
  loc_C616A1:  = Me.Value
  loc_C616A6: FLdI2 var_B6
  loc_C616A9: LitI2_Byte &HFF
  loc_C616AB: EqI2
  loc_C616AC: FFree1Ad var_B4
  loc_C616AF: BranchF loc_C618AD
  loc_C616B2: LitStr "DROP TEMPORARY TABLE IF EXISTS tribu; CREATE TEMPORARY TABLE tribu"
  loc_C616B5: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, 000000000.00 AS SainCtct, sum(if(CodiTimo=1,DebeCtct,000000000.00)) as AforCtct,"
  loc_C616B8: ConcatStr
  loc_C616B9: FStStrNoPop var_100
  loc_C616BC: LitStr " sum(if(CodiTimo in (10,19,22,24),DebeCtct,000000000.00)) as DebeCtct, sum(if(CodiTimo in (11,20,23),CredCtct,000000000.00)) as CredCtct,"
  loc_C616BF: ConcatStr
  loc_C616C0: FStStrNoPop var_104
  loc_C616C3: LitStr " sum(if(CodiTimo=12,CredCtct,000000000.00)) as PresCtct, sum(if(CodiTimo=14,CredCtct,000000000.00)) as CondCtct, sum(if(CodiTimo=15,CredCtct,000000000.00)) as ExenCtct,"
  loc_C616C6: ConcatStr
  loc_C616C7: FStStrNoPop var_108
  loc_C616CA: LitStr " sum(if(CodiTimo in (6,7),CredCtct,000000000.00)) as DescCtct, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,000000000.00)) as CobrCtct, ctacte.NumeApre"
  loc_C616CD: ConcatStr
  loc_C616CE: FStStrNoPop var_10C
  loc_C616D1: LitStr " FROM ctacte "
  loc_C616D4: ConcatStr
  loc_C616D5: FStStrNoPop var_588
  loc_C616D8: LitStr " WHERE ctacte.FealCtct BETWEEN '"
  loc_C616DB: ConcatStr
  loc_C616DC: FStStrNoPop var_58C
  loc_C616DF: ILdRf var_88
  loc_C616E2: ConcatStr
  loc_C616E3: FStStrNoPop var_590
  loc_C616E6: LitStr "' AND '"
  loc_C616E9: ConcatStr
  loc_C616EA: FStStrNoPop var_594
  loc_C616ED: ILdRf var_8C
  loc_C616F0: ConcatStr
  loc_C616F1: FStStrNoPop var_598
  loc_C616F4: LitStr "'"
  loc_C616F7: ConcatStr
  loc_C616F8: FStStrNoPop var_59C
  loc_C616FB: LitStr " AND ctacte.CodiOfic = "
  loc_C616FE: ConcatStr
  loc_C616FF: FStStrNoPop var_5A0
  loc_C61702: ImpAdLdUI1
  loc_C61706: CStrI2
  loc_C61708: FStStrNoPop var_5A4
  loc_C6170B: ConcatStr
  loc_C6170C: FStStrNoPop var_5A8
  loc_C6170F: ILdRf var_90
  loc_C61712: ConcatStr
  loc_C61713: FStStrNoPop var_5AC
  loc_C61716: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.NumeApre) UNION ALL "
  loc_C61719: ConcatStr
  loc_C6171A: FStStrNoPop var_5B0
  loc_C6171D: LitStr " (SELECT ctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct, 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct, NumeApre"
  loc_C61720: ConcatStr
  loc_C61721: FStStrNoPop var_5B4
  loc_C61724: LitStr " FROM ctacte "
  loc_C61727: ConcatStr
  loc_C61728: FStStrNoPop var_5B8
  loc_C6172B: LitStr " WHERE ctacte.FealCtct < '"
  loc_C6172E: ConcatStr
  loc_C6172F: FStStrNoPop var_5BC
  loc_C61732: ILdRf var_88
  loc_C61735: ConcatStr
  loc_C61736: FStStrNoPop var_5C0
  loc_C61739: LitStr "'"
  loc_C6173C: ConcatStr
  loc_C6173D: FStStrNoPop var_5C4
  loc_C61740: LitStr " AND ctacte.CodiOfic = "
  loc_C61743: ConcatStr
  loc_C61744: FStStrNoPop var_5C8
  loc_C61747: ImpAdLdUI1
  loc_C6174B: CStrI2
  loc_C6174D: FStStrNoPop var_5CC
  loc_C61750: ConcatStr
  loc_C61751: FStStrNoPop var_5D0
  loc_C61754: ILdRf var_90
  loc_C61757: ConcatStr
  loc_C61758: FStStrNoPop var_5D4
  loc_C6175B: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.NumeApre) UNION ALL "
  loc_C6175E: ConcatStr
  loc_C6175F: FStStrNoPop var_5D8
  loc_C61762: LitStr " (SELECT histoctacte.CuenCtct, CodiOfic, sum(DebeCtct-CredCtct) as SainCtct,"
  loc_C61765: ConcatStr
  loc_C61766: FStStrNoPop var_5DC
  loc_C61769: LitStr " 000000000.00 as AforCtct, 000000000.00 as DebeCtct, 000000000.00 as CredCtct, 000000000.00 as PresCtct, 000000000.00 as CondCtct, 000000000.00 as ExenCtct, 000000000.00 as DescCtct, 000000000.00 as CobrCtct, NumeApre"
  loc_C6176C: ConcatStr
  loc_C6176D: FStStrNoPop var_5E0
  loc_C61770: LitStr " FROM recahisto.histoctacte "
  loc_C61773: ConcatStr
  loc_C61774: FStStrNoPop var_5E4
  loc_C61777: LitStr " WHERE histoctacte.FealCtct < '"
  loc_C6177A: ConcatStr
  loc_C6177B: FStStrNoPop var_5E8
  loc_C6177E: ILdRf var_88
  loc_C61781: ConcatStr
  loc_C61782: FStStrNoPop var_5EC
  loc_C61785: LitStr "'"
  loc_C61788: ConcatStr
  loc_C61789: FStStrNoPop var_5F0
  loc_C6178C: LitStr " AND histoctacte.CodiOfic = "
  loc_C6178F: ConcatStr
  loc_C61790: FStStrNoPop var_5F4
  loc_C61793: ImpAdLdUI1
  loc_C61797: CStrI2
  loc_C61799: FStStrNoPop var_5F8
  loc_C6179C: ConcatStr
  loc_C6179D: FStStrNoPop var_5FC
  loc_C617A0: ILdRf var_90
  loc_C617A3: ConcatStr
  loc_C617A4: FStStrNoPop var_600
  loc_C617A7: LitStr " GROUP BY histoctacte.CodiOfic, histoctacte.CuenCtct, histoctacte.NumeApre);"
  loc_C617AA: ConcatStr
  loc_C617AB: FStStrNoPop var_604
  loc_C617AE: LitStr " CREATE INDEX i_tribu ON tribu (CuenCtct, CodiOfic, NumeApre);"
  loc_C617B1: ConcatStr
  loc_C617B2: FStStrNoPop var_608
  loc_C617B5: FLdPr var_FC
  loc_C617B8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C617BD: FFreeStr var_5F0 = "": var_5F4 = "": var_5F8 = "": var_5FC = "": var_600 = "": var_604 = "": var_608 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_588 = "": var_58C = "": var_590 = "": var_594 = "": var_598 = "": var_59C = "": var_5A0 = "": var_5A4 = "": var_5A8 = "": var_5AC = "": var_5B0 = "": var_5B4 = "": var_5B8 = "": var_5BC = "": var_5C0 = "": var_5C4 = "": var_5C8 = "": var_5CC = "": var_5D0 = "": var_5D4 = "": var_5D8 = "": var_5DC = "": var_5E0 = "": var_5E4 = "": var_5E8 = ""
  loc_C6180A: FLdRfVar var_B6
  loc_C6180D: FLdPr Me
  loc_C61810: VCallAd Control_ID_CuentaOpt
  loc_C61813: FStAdFunc var_B4
  loc_C61816: FLdPr var_B4
  loc_C61819:  = Me.Value
  loc_C6181E: LitStr "SELECT tribu.CuenCtct, tribu.CodiOfic, relacion.CucuPers, DetaPers, sum(SainCtct) as SainCtct, sum(AforCtct) as AforCtct,"
  loc_C61821: LitStr " sum(DebeCtct) as DebeCtct, sum(CredCtct) as CredCtct, sum(PresCtct) as PresCtct, sum(CondCtct) as CondCtct, sum(ExenCtct) as ExenCtct,"
  loc_C61824: ConcatStr
  loc_C61825: FStStrNoPop var_100
  loc_C61828: LitStr " sum(DescCtct) as DescCtct, sum(CobrCtct) as CobrCtct, sum(SainCtct)+sum(AforCtct)+sum(DebeCtct)-sum(Presctct)-sum(CredCtct)-sum(CondCtct)-sum(ExenCtct)-sum(DescCtct)-sum(CobrCtct) as SafiCtct,"
  loc_C6182B: ConcatStr
  loc_C6182C: FStStrNoPop var_104
  loc_C6182F: LitStr " tribu.NumeApre, IFNULL(apremio.AutoApre,0) AS AutoApre, IFNULL(apremio.CodiInju,0) as CodiInju "
  loc_C61832: ConcatStr
  loc_C61833: FStStrNoPop var_108
  loc_C61836: LitStr " FROM tribu INNER JOIN relacion ON relacion.CodiOfic = tribu.CodiOfic AND relacion.CuenCtct = tribu.CuenCtct AND relacion.TipoRela='Titular'"
  loc_C61839: ConcatStr
  loc_C6183A: FStStrNoPop var_10C
  loc_C6183D: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C61840: ConcatStr
  loc_C61841: FStStrNoPop var_588
  loc_C61844: LitStr " LEFT JOIN apremio ON apremio.NumeApre = tribu.NumeApre"
  loc_C61847: ConcatStr
  loc_C61848: FStStrNoPop var_58C
  loc_C6184B: LitStr " GROUP BY tribu.CodiOfic, tribu.CuenCtct, tribu.NumeApre"
  loc_C6184E: ConcatStr
  loc_C6184F: CVarStr var_11C
  loc_C61852: LitVarStr var_F8, " ORDER BY DetaPers"
  loc_C61857: FStVarCopyObj var_D8
  loc_C6185A: FLdRfVar var_D8
  loc_C6185D: LitVarStr var_B0, " ORDER BY CodiOfic, CuenCtct, NumeApre"
  loc_C61862: FStVarCopyObj var_C8
  loc_C61865: FLdRfVar var_C8
  loc_C61868: FLdI2 var_B6
  loc_C6186B: CVarBoolI2 var_A0
  loc_C6186F: FLdRfVar var_E8
  loc_C61872: ImpAdCallFPR4  = IIf(, , )
  loc_C61877: FLdRfVar var_E8
  loc_C6187A: ConcatVar var_12C
  loc_C6187E: CStrVarVal var_590
  loc_C61882: FLdPr var_FC
  loc_C61885: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C6188A: FFreeStr var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_588 = "": var_58C = ""
  loc_C6189B: FFree1Ad var_B4
  loc_C6189E: FFreeVar var_A0 = "": var_C8 = "": var_D8 = "": var_11C = "": var_E8 = ""
  loc_C618AD: FLdRfVar var_618
  loc_C618B0: FLdPr var_FC
  loc_C618B3: from_stack_1 = clsctacte.RecordCount
  loc_C618B8: ILdRf var_618
  loc_C618BB: LitI4 0
  loc_C618C0: EqI4
  loc_C618C1: BranchF loc_C618CF
  loc_C618C4: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C618C7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C618CC: Branch loc_C61DD1
  loc_C618CF: LitI4 0
  loc_C618D4: LitI4 1
  loc_C618D9: FLdPr Me
  loc_C618DC: MemLdRfVar from_stack_1.global_104
  loc_C618DF: Redim
  loc_C618E9: LitI4 0
  loc_C618EE: FLdRfVar var_618
  loc_C618F1: FLdPr var_FC
  loc_C618F4: from_stack_1 = clsctacte.RecordCount
  loc_C618F9: ILdRf var_618
  loc_C618FC: FLdPr Me
  loc_C618FF: MemLdRfVar from_stack_1.global_96
  loc_C61902: Redim
  loc_C6190C: FLdPr var_FC
  loc_C6190F: Call clsctacte.MoveFirst()
  loc_C61914: FLdRfVar var_618
  loc_C61917: FLdPr var_FC
  loc_C6191A: from_stack_1 = clsctacte.RecordCount
  loc_C6191F: ILdRf var_618
  loc_C61922: CR8I4
  loc_C61923: CVarR4
  loc_C61927: PopAdLdVar
  loc_C61928: FLdPrThis
  loc_C61929: VCallAd Control_ID_Pbar
  loc_C6192C: FStAdFunc var_B4
  loc_C6192F: FLdPr var_B4
  loc_C61932: LateIdSt
  loc_C61937: FFree1Ad var_B4
  loc_C6193A: LitVar_TRUE var_A0
  loc_C6193D: PopAdLdVar
  loc_C6193E: FLdPrThis
  loc_C6193F: VCallAd Control_ID_Pbar
  loc_C61942: FStAdFunc var_B4
  loc_C61945: FLdPr var_B4
  loc_C61948: LateIdSt
  loc_C6194D: FFree1Ad var_B4
  loc_C61950: LitI4 1
  loc_C61955: FLdPr Me
  loc_C61958: MemLdRfVar from_stack_1.global_100
  loc_C6195B: FLdPr Me
  loc_C6195E: MemLdStr global_96
  loc_C61961: LitI2_Byte 1
  loc_C61963: FnUBound
  loc_C61965: ForI4 var_620
  loc_C6196B: FLdPr Me
  loc_C6196E: MemLdStr global_100
  loc_C61971: CR8I4
  loc_C61972: CVarR4
  loc_C61976: PopAdLdVar
  loc_C61977: FLdPrThis
  loc_C61978: VCallAd Control_ID_Pbar
  loc_C6197B: FStAdFunc var_B4
  loc_C6197E: FLdPr var_B4
  loc_C61981: LateIdSt
  loc_C61986: FFree1Ad var_B4
  loc_C61989: FLdRfVar var_100
  loc_C6198C: FLdPr var_FC
  loc_C6198F: from_stack_1 = clsctacte.CuenCtct
  loc_C61994: LitI2_Byte 0
  loc_C61996: LitVar_Missing var_D8
  loc_C61999: LitI2_Byte 0
  loc_C6199B: FLdZeroAd var_100
  loc_C6199E: CVarStr var_C8
  loc_C619A1: PopAdLdVar
  loc_C619A2: FLdPr Me
  loc_C619A5: MemLdStr global_100
  loc_C619A8: FLdPr Me
  loc_C619AB: MemLdStr global_96
  loc_C619AE: AryLock
  loc_C619B1: Ary1LdPr
  loc_C619B2: MemLdRfVar from_stack_1.global_0
  loc_C619B5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C619BA: AryUnlock
  loc_C619BD: FFreeVar var_C8 = ""
  loc_C619C4: FLdRfVar var_C8
  loc_C619C7: FLdPr var_FC
  loc_C619CA: from_stack_1 = clsctacte.DetaPers
  loc_C619CF: LitI2_Byte 0
  loc_C619D1: LitVar_Missing var_D8
  loc_C619D4: LitI2_Byte 0
  loc_C619D6: FLdVar var_C8
  loc_C619DA: FLdPr Me
  loc_C619DD: MemLdStr global_100
  loc_C619E0: FLdPr Me
  loc_C619E3: MemLdStr global_96
  loc_C619E6: AryLock
  loc_C619E9: Ary1LdPr
  loc_C619EA: MemLdRfVar from_stack_1.global_4
  loc_C619ED: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C619F2: AryUnlock
  loc_C619F5: FFreeVar var_C8 = ""
  loc_C619FC: FLdRfVar var_C8
  loc_C619FF: FLdPr var_FC
  loc_C61A02: from_stack_1 = clsctacte.SainCtct
  loc_C61A07: LitI2_Byte 0
  loc_C61A09: LitI4 1
  loc_C61A0E: FLdPr Me
  loc_C61A11: MemLdStr global_104
  loc_C61A14: AryLock
  loc_C61A17: Ary1LdPr
  loc_C61A18: MemLdRfVar from_stack_1.global_0
  loc_C61A1B: CVarRef
  loc_C61A20: LitI2_Byte &HFF
  loc_C61A22: FLdVar var_C8
  loc_C61A26: FLdPr Me
  loc_C61A29: MemLdStr global_100
  loc_C61A2C: FLdPr Me
  loc_C61A2F: MemLdStr global_96
  loc_C61A32: AryLock
  loc_C61A35: Ary1LdPr
  loc_C61A36: MemLdRfVar from_stack_1.global_8
  loc_C61A39: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61A3E: AryUnlock
  loc_C61A41: AryUnlock
  loc_C61A44: FFree1Var var_C8 = ""
  loc_C61A47: FLdRfVar var_C8
  loc_C61A4A: FLdPr var_FC
  loc_C61A4D: from_stack_1 = clsctacte.AforCtct
  loc_C61A52: LitI2_Byte 0
  loc_C61A54: LitI4 1
  loc_C61A59: FLdPr Me
  loc_C61A5C: MemLdStr global_104
  loc_C61A5F: AryLock
  loc_C61A62: Ary1LdPr
  loc_C61A63: MemLdRfVar from_stack_1.global_4
  loc_C61A66: CVarRef
  loc_C61A6B: LitI2_Byte &HFF
  loc_C61A6D: FLdVar var_C8
  loc_C61A71: FLdPr Me
  loc_C61A74: MemLdStr global_100
  loc_C61A77: FLdPr Me
  loc_C61A7A: MemLdStr global_96
  loc_C61A7D: AryLock
  loc_C61A80: Ary1LdPr
  loc_C61A81: MemLdRfVar from_stack_1.global_12
  loc_C61A84: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61A89: AryUnlock
  loc_C61A8C: AryUnlock
  loc_C61A8F: FFree1Var var_C8 = ""
  loc_C61A92: FLdRfVar var_630
  loc_C61A95: FLdPr var_FC
  loc_C61A98: from_stack_1 = clsctacte.DebeCtct
  loc_C61A9D: LitI2_Byte 0
  loc_C61A9F: LitI4 1
  loc_C61AA4: FLdPr Me
  loc_C61AA7: MemLdStr global_104
  loc_C61AAA: AryLock
  loc_C61AAD: Ary1LdPr
  loc_C61AAE: MemLdRfVar from_stack_1.global_8
  loc_C61AB1: CVarRef
  loc_C61AB6: LitI2_Byte &HFF
  loc_C61AB8: FLdFPR8 var_630
  loc_C61ABB: CVarR8
  loc_C61ABF: PopAdLdVar
  loc_C61AC0: FLdPr Me
  loc_C61AC3: MemLdStr global_100
  loc_C61AC6: FLdPr Me
  loc_C61AC9: MemLdStr global_96
  loc_C61ACC: AryLock
  loc_C61ACF: Ary1LdPr
  loc_C61AD0: MemLdRfVar from_stack_1.global_16
  loc_C61AD3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61AD8: AryUnlock
  loc_C61ADB: AryUnlock
  loc_C61ADE: FLdRfVar var_630
  loc_C61AE1: FLdPr var_FC
  loc_C61AE4: from_stack_1 = clsctacte.CredCtct
  loc_C61AE9: LitI2_Byte 0
  loc_C61AEB: LitI4 1
  loc_C61AF0: FLdPr Me
  loc_C61AF3: MemLdStr global_104
  loc_C61AF6: AryLock
  loc_C61AF9: Ary1LdPr
  loc_C61AFA: MemLdRfVar from_stack_1.global_12
  loc_C61AFD: CVarRef
  loc_C61B02: LitI2_Byte &HFF
  loc_C61B04: FLdFPR8 var_630
  loc_C61B07: CVarR8
  loc_C61B0B: PopAdLdVar
  loc_C61B0C: FLdPr Me
  loc_C61B0F: MemLdStr global_100
  loc_C61B12: FLdPr Me
  loc_C61B15: MemLdStr global_96
  loc_C61B18: AryLock
  loc_C61B1B: Ary1LdPr
  loc_C61B1C: MemLdRfVar from_stack_1.global_20
  loc_C61B1F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61B24: AryUnlock
  loc_C61B27: AryUnlock
  loc_C61B2A: FLdRfVar var_C8
  loc_C61B2D: FLdPr var_FC
  loc_C61B30: from_stack_1 = clsctacte.PresCtct
  loc_C61B35: LitI2_Byte 0
  loc_C61B37: LitI4 1
  loc_C61B3C: FLdPr Me
  loc_C61B3F: MemLdStr global_104
  loc_C61B42: AryLock
  loc_C61B45: Ary1LdPr
  loc_C61B46: MemLdRfVar from_stack_1.global_16
  loc_C61B49: CVarRef
  loc_C61B4E: LitI2_Byte &HFF
  loc_C61B50: FLdVar var_C8
  loc_C61B54: FLdPr Me
  loc_C61B57: MemLdStr global_100
  loc_C61B5A: FLdPr Me
  loc_C61B5D: MemLdStr global_96
  loc_C61B60: AryLock
  loc_C61B63: Ary1LdPr
  loc_C61B64: MemLdRfVar from_stack_1.global_24
  loc_C61B67: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61B6C: AryUnlock
  loc_C61B6F: AryUnlock
  loc_C61B72: FFree1Var var_C8 = ""
  loc_C61B75: FLdRfVar var_C8
  loc_C61B78: FLdPr var_FC
  loc_C61B7B: from_stack_1 = clsctacte.CondCtct
  loc_C61B80: LitI2_Byte 0
  loc_C61B82: LitI4 1
  loc_C61B87: FLdPr Me
  loc_C61B8A: MemLdStr global_104
  loc_C61B8D: AryLock
  loc_C61B90: Ary1LdPr
  loc_C61B91: MemLdRfVar from_stack_1.global_20
  loc_C61B94: CVarRef
  loc_C61B99: LitI2_Byte &HFF
  loc_C61B9B: FLdVar var_C8
  loc_C61B9F: FLdPr Me
  loc_C61BA2: MemLdStr global_100
  loc_C61BA5: FLdPr Me
  loc_C61BA8: MemLdStr global_96
  loc_C61BAB: AryLock
  loc_C61BAE: Ary1LdPr
  loc_C61BAF: MemLdRfVar from_stack_1.global_28
  loc_C61BB2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61BB7: AryUnlock
  loc_C61BBA: AryUnlock
  loc_C61BBD: FFree1Var var_C8 = ""
  loc_C61BC0: FLdRfVar var_C8
  loc_C61BC3: FLdPr var_FC
  loc_C61BC6: from_stack_1 = clsctacte.ExenCtct
  loc_C61BCB: LitI2_Byte 0
  loc_C61BCD: LitI4 1
  loc_C61BD2: FLdPr Me
  loc_C61BD5: MemLdStr global_104
  loc_C61BD8: AryLock
  loc_C61BDB: Ary1LdPr
  loc_C61BDC: MemLdRfVar from_stack_1.global_24
  loc_C61BDF: CVarRef
  loc_C61BE4: LitI2_Byte &HFF
  loc_C61BE6: FLdVar var_C8
  loc_C61BEA: FLdPr Me
  loc_C61BED: MemLdStr global_100
  loc_C61BF0: FLdPr Me
  loc_C61BF3: MemLdStr global_96
  loc_C61BF6: AryLock
  loc_C61BF9: Ary1LdPr
  loc_C61BFA: MemLdRfVar from_stack_1.global_32
  loc_C61BFD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61C02: AryUnlock
  loc_C61C05: AryUnlock
  loc_C61C08: FFree1Var var_C8 = ""
  loc_C61C0B: FLdRfVar var_C8
  loc_C61C0E: FLdPr var_FC
  loc_C61C11: from_stack_1 = clsctacte.DescCtct
  loc_C61C16: LitI2_Byte 0
  loc_C61C18: LitI4 1
  loc_C61C1D: FLdPr Me
  loc_C61C20: MemLdStr global_104
  loc_C61C23: AryLock
  loc_C61C26: Ary1LdPr
  loc_C61C27: MemLdRfVar from_stack_1.global_28
  loc_C61C2A: CVarRef
  loc_C61C2F: LitI2_Byte &HFF
  loc_C61C31: FLdVar var_C8
  loc_C61C35: FLdPr Me
  loc_C61C38: MemLdStr global_100
  loc_C61C3B: FLdPr Me
  loc_C61C3E: MemLdStr global_96
  loc_C61C41: AryLock
  loc_C61C44: Ary1LdPr
  loc_C61C45: MemLdRfVar from_stack_1.global_36
  loc_C61C48: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61C4D: AryUnlock
  loc_C61C50: AryUnlock
  loc_C61C53: FFree1Var var_C8 = ""
  loc_C61C56: FLdRfVar var_C8
  loc_C61C59: FLdPr var_FC
  loc_C61C5C: from_stack_1 = clsctacte.CobrCtct
  loc_C61C61: LitI2_Byte 0
  loc_C61C63: LitI4 1
  loc_C61C68: FLdPr Me
  loc_C61C6B: MemLdStr global_104
  loc_C61C6E: AryLock
  loc_C61C71: Ary1LdPr
  loc_C61C72: MemLdRfVar from_stack_1.global_32
  loc_C61C75: CVarRef
  loc_C61C7A: LitI2_Byte &HFF
  loc_C61C7C: FLdVar var_C8
  loc_C61C80: FLdPr Me
  loc_C61C83: MemLdStr global_100
  loc_C61C86: FLdPr Me
  loc_C61C89: MemLdStr global_96
  loc_C61C8C: AryLock
  loc_C61C8F: Ary1LdPr
  loc_C61C90: MemLdRfVar from_stack_1.global_40
  loc_C61C93: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61C98: AryUnlock
  loc_C61C9B: AryUnlock
  loc_C61C9E: FFree1Var var_C8 = ""
  loc_C61CA1: FLdRfVar var_C8
  loc_C61CA4: FLdPr var_FC
  loc_C61CA7: from_stack_1 = clsctacte.SafiCtct
  loc_C61CAC: LitI2_Byte 0
  loc_C61CAE: LitI4 1
  loc_C61CB3: FLdPr Me
  loc_C61CB6: MemLdStr global_104
  loc_C61CB9: AryLock
  loc_C61CBC: Ary1LdPr
  loc_C61CBD: MemLdRfVar from_stack_1.global_36
  loc_C61CC0: CVarRef
  loc_C61CC5: LitI2_Byte &HFF
  loc_C61CC7: FLdVar var_C8
  loc_C61CCB: FLdPr Me
  loc_C61CCE: MemLdStr global_100
  loc_C61CD1: FLdPr Me
  loc_C61CD4: MemLdStr global_96
  loc_C61CD7: AryLock
  loc_C61CDA: Ary1LdPr
  loc_C61CDB: MemLdRfVar from_stack_1.global_44
  loc_C61CDE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61CE3: AryUnlock
  loc_C61CE6: AryUnlock
  loc_C61CE9: FFree1Var var_C8 = ""
  loc_C61CEC: FLdRfVar var_618
  loc_C61CEF: FLdPr var_FC
  loc_C61CF2: from_stack_1 = clsctacte.NumeApre
  loc_C61CF7: LitI2_Byte 0
  loc_C61CF9: LitVar_Missing var_C8
  loc_C61CFC: LitI2_Byte 0
  loc_C61CFE: ILdRf var_618
  loc_C61D01: CVarI4
  loc_C61D05: PopAdLdVar
  loc_C61D06: FLdPr Me
  loc_C61D09: MemLdStr global_100
  loc_C61D0C: FLdPr Me
  loc_C61D0F: MemLdStr global_96
  loc_C61D12: AryLock
  loc_C61D15: Ary1LdPr
  loc_C61D16: MemLdRfVar from_stack_1.global_48
  loc_C61D19: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61D1E: AryUnlock
  loc_C61D21: FFree1Var var_C8 = ""
  loc_C61D24: FLdRfVar var_618
  loc_C61D27: FLdPr var_FC
  loc_C61D2A: from_stack_1 = clsctacte.AutoApre
  loc_C61D2F: LitI2_Byte 0
  loc_C61D31: LitVar_Missing var_C8
  loc_C61D34: LitI2_Byte 0
  loc_C61D36: ILdRf var_618
  loc_C61D39: CVarI4
  loc_C61D3D: PopAdLdVar
  loc_C61D3E: FLdPr Me
  loc_C61D41: MemLdStr global_100
  loc_C61D44: FLdPr Me
  loc_C61D47: MemLdStr global_96
  loc_C61D4A: AryLock
  loc_C61D4D: Ary1LdPr
  loc_C61D4E: MemLdRfVar from_stack_1.bGenerado
  loc_C61D51: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61D56: AryUnlock
  loc_C61D59: FFree1Var var_C8 = ""
  loc_C61D5C: FLdRfVar var_C8
  loc_C61D5F: FLdPr var_FC
  loc_C61D62: from_stack_1 = clsctacte.CodiInju
  loc_C61D67: LitI2_Byte 0
  loc_C61D69: LitVar_Missing var_D8
  loc_C61D6C: LitI2_Byte 0
  loc_C61D6E: FLdVar var_C8
  loc_C61D72: FLdPr Me
  loc_C61D75: MemLdStr global_100
  loc_C61D78: FLdPr Me
  loc_C61D7B: MemLdStr global_96
  loc_C61D7E: AryLock
  loc_C61D81: Ary1LdPr
  loc_C61D82: MemLdRfVar from_stack_1.global_56
  loc_C61D85: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C61D8A: AryUnlock
  loc_C61D8D: FFreeVar var_C8 = ""
  loc_C61D94: LitI2_Byte 1
  loc_C61D96: PopTmpLdAd2 var_B6
  loc_C61D99: FLdPr var_FC
  loc_C61D9C: Call clsctacte.Move(from_stack_1v)
  loc_C61DA1: FLdPr Me
  loc_C61DA4: MemLdRfVar from_stack_1.global_100
  loc_C61DA7: NextI4 var_620, loc_C6196B
  loc_C61DAC: LitVar_FALSE
  loc_C61DB0: PopAdLdVar
  loc_C61DB1: FLdPrThis
  loc_C61DB2: VCallAd Control_ID_Pbar
  loc_C61DB5: FStAdFunc var_B4
  loc_C61DB8: FLdPr var_B4
  loc_C61DBB: LateIdSt
  loc_C61DC0: FFree1Ad var_B4
  loc_C61DC3: LitNothing
  loc_C61DC5: FStAd var_FC 
  loc_C61DC9: LitI2_Byte &HFF
  loc_C61DCB: FLdPr Me
  loc_C61DCE: MemStI2 bGenerado
  loc_C61DD1: LitI4 0
  loc_C61DD6: CI2I4
  loc_C61DD7: FLdPr Me
  loc_C61DDA: Me.MousePointer = from_stack_1
  loc_C61DDF: LitVarStr var_A0, vbNullString
  loc_C61DE4: PopAdLdVar
  loc_C61DE5: FLdPr Me
  loc_C61DE8: VCallAd Control_ID_statusBar
  loc_C61DEB: FStAdFunc var_B4
  loc_C61DEE: FLdPr var_B4
  loc_C61DF1: LateIdSt
  loc_C61DF6: FFree1Ad var_B4
  loc_C61DF9: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B24BD4
  'Data Table: 4F55A0
  loc_B2496C: LitStr "	"
  loc_B2496F: FStStrCopy var_8C
  loc_B24972: FLdRfVar var_90
  loc_B24975: LitI2_Byte 0
  loc_B24977: LitI2_Byte &HFF
  loc_B24979: ImpAdLdI4 MemVar_D93030
  loc_B2497C: FLdPr Me
  loc_B2497F: MemLdRfVar from_stack_1.global_56
  loc_B24982: NewIfNullPr IFileSystem3
  loc_B24985: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B2498A: ILdRf var_90
  loc_B2498D: FLdPr Me
  loc_B24990: MemStVarAd
  loc_B24994: FFree1Ad var_90
  loc_B24997: LitStr "Cuenta"
  loc_B2499A: ILdRf var_8C
  loc_B2499D: ConcatStr
  loc_B2499E: FStStrNoPop var_94
  loc_B249A1: LitStr "Apellido y Nombre"
  loc_B249A4: ConcatStr
  loc_B249A5: FStStrNoPop var_98
  loc_B249A8: ILdRf var_8C
  loc_B249AB: ConcatStr
  loc_B249AC: FStStrNoPop var_9C
  loc_B249AF: LitStr "Saldo Inicial"
  loc_B249B2: ConcatStr
  loc_B249B3: FStStrNoPop var_A0
  loc_B249B6: ILdRf var_8C
  loc_B249B9: ConcatStr
  loc_B249BA: FStStrNoPop var_A4
  loc_B249BD: LitStr "Aforos"
  loc_B249C0: ConcatStr
  loc_B249C1: FStStrNoPop var_A8
  loc_B249C4: ILdRf var_8C
  loc_B249C7: ConcatStr
  loc_B249C8: FStStrNoPop var_AC
  loc_B249CB: LitStr "Débitos"
  loc_B249CE: ConcatStr
  loc_B249CF: FStStrNoPop var_B0
  loc_B249D2: ILdRf var_8C
  loc_B249D5: ConcatStr
  loc_B249D6: FStStrNoPop var_B4
  loc_B249D9: LitStr "Créditos"
  loc_B249DC: ConcatStr
  loc_B249DD: FStStrNoPop var_B8
  loc_B249E0: ILdRf var_8C
  loc_B249E3: ConcatStr
  loc_B249E4: FStStrNoPop var_BC
  loc_B249E7: LitStr "Pres."
  loc_B249EA: ConcatStr
  loc_B249EB: FStStrNoPop var_C0
  loc_B249EE: ILdRf var_8C
  loc_B249F1: ConcatStr
  loc_B249F2: FStStrNoPop var_C4
  loc_B249F5: LitStr "Condo."
  loc_B249F8: ConcatStr
  loc_B249F9: FStStrNoPop var_C8
  loc_B249FC: ILdRf var_8C
  loc_B249FF: ConcatStr
  loc_B24A00: FStStrNoPop var_CC
  loc_B24A03: LitStr "Exenc."
  loc_B24A06: ConcatStr
  loc_B24A07: FStStrNoPop var_D0
  loc_B24A0A: ILdRf var_8C
  loc_B24A0D: ConcatStr
  loc_B24A0E: FStStrNoPop var_D4
  loc_B24A11: LitStr "Desc."
  loc_B24A14: ConcatStr
  loc_B24A15: FStStrNoPop var_D8
  loc_B24A18: ILdRf var_8C
  loc_B24A1B: ConcatStr
  loc_B24A1C: FStStrNoPop var_DC
  loc_B24A1F: LitStr "Cobrado"
  loc_B24A22: ConcatStr
  loc_B24A23: FStStrNoPop var_E0
  loc_B24A26: ILdRf var_8C
  loc_B24A29: ConcatStr
  loc_B24A2A: FStStrNoPop var_E4
  loc_B24A2D: LitStr "Saldo Final"
  loc_B24A30: ConcatStr
  loc_B24A31: CVarStr var_F4
  loc_B24A34: PopAdLdVar
  loc_B24A35: FLdPr Me
  loc_B24A38: MemLdRfVar from_stack_1.global_76
  loc_B24A3B: LdPrVar
  loc_B24A3D: LateMemCall
  loc_B24A43: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B24A70: FFree1Var var_F4 = ""
  loc_B24A73: LitI4 1
  loc_B24A78: FLdPr Me
  loc_B24A7B: MemLdRfVar from_stack_1.global_100
  loc_B24A7E: FLdPr Me
  loc_B24A81: MemLdStr global_96
  loc_B24A84: LitI2_Byte 1
  loc_B24A86: FnUBound
  loc_B24A88: ForI4 var_10C
  loc_B24A8E: FLdPr Me
  loc_B24A91: MemLdStr global_100
  loc_B24A94: FLdPr Me
  loc_B24A97: MemLdStr global_96
  loc_B24A9A: AryLock
  loc_B24A9D: Ary1LdPr
  loc_B24A9E: MemLdRfVar from_stack_1.global_8
  loc_B24AA1: FStR4 var_114
  loc_B24AA4: FLdPr Me
  loc_B24AA7: MemLdStr global_100
  loc_B24AAA: FLdPr Me
  loc_B24AAD: MemLdStr global_96
  loc_B24AB0: Ary1LdPr
  loc_B24AB1: MemLdStr global_0
  loc_B24AB4: ILdRf var_8C
  loc_B24AB7: ConcatStr
  loc_B24AB8: FStStrNoPop var_94
  loc_B24ABB: FLdPr Me
  loc_B24ABE: MemLdStr global_100
  loc_B24AC1: FLdPr Me
  loc_B24AC4: MemLdStr global_96
  loc_B24AC7: Ary1LdPr
  loc_B24AC8: MemLdStr global_4
  loc_B24ACB: ConcatStr
  loc_B24ACC: FStStrNoPop var_98
  loc_B24ACF: ILdRf var_8C
  loc_B24AD2: ConcatStr
  loc_B24AD3: FStStrNoPop var_9C
  loc_B24AD6: FMemLdR4 var_114(0)
  loc_B24ADB: ConcatStr
  loc_B24ADC: FStStrNoPop var_A0
  loc_B24ADF: ILdRf var_8C
  loc_B24AE2: ConcatStr
  loc_B24AE3: FStStrNoPop var_A4
  loc_B24AE6: FMemLdR4 var_114(4)
  loc_B24AEB: ConcatStr
  loc_B24AEC: FStStrNoPop var_A8
  loc_B24AEF: ILdRf var_8C
  loc_B24AF2: ConcatStr
  loc_B24AF3: FStStrNoPop var_AC
  loc_B24AF6: FMemLdR4 var_114(8)
  loc_B24AFB: ConcatStr
  loc_B24AFC: FStStrNoPop var_B0
  loc_B24AFF: ILdRf var_8C
  loc_B24B02: ConcatStr
  loc_B24B03: FStStrNoPop var_B4
  loc_B24B06: FMemLdR4 var_114(12)
  loc_B24B0B: ConcatStr
  loc_B24B0C: FStStrNoPop var_B8
  loc_B24B0F: ILdRf var_8C
  loc_B24B12: ConcatStr
  loc_B24B13: FStStrNoPop var_BC
  loc_B24B16: FMemLdR4 var_114(16)
  loc_B24B1B: ConcatStr
  loc_B24B1C: FStStrNoPop var_C0
  loc_B24B1F: ILdRf var_8C
  loc_B24B22: ConcatStr
  loc_B24B23: FStStrNoPop var_C4
  loc_B24B26: FMemLdR4 var_114(20)
  loc_B24B2B: ConcatStr
  loc_B24B2C: FStStrNoPop var_C8
  loc_B24B2F: ILdRf var_8C
  loc_B24B32: ConcatStr
  loc_B24B33: FStStrNoPop var_CC
  loc_B24B36: FMemLdR4 var_114(24)
  loc_B24B3B: ConcatStr
  loc_B24B3C: FStStrNoPop var_D0
  loc_B24B3F: ILdRf var_8C
  loc_B24B42: ConcatStr
  loc_B24B43: FStStrNoPop var_D4
  loc_B24B46: FMemLdR4 var_114(28)
  loc_B24B4B: ConcatStr
  loc_B24B4C: FStStrNoPop var_D8
  loc_B24B4F: ILdRf var_8C
  loc_B24B52: ConcatStr
  loc_B24B53: FStStrNoPop var_DC
  loc_B24B56: FMemLdR4 var_114(32)
  loc_B24B5B: ConcatStr
  loc_B24B5C: FStStrNoPop var_E0
  loc_B24B5F: ILdRf var_8C
  loc_B24B62: ConcatStr
  loc_B24B63: FStStrNoPop var_E4
  loc_B24B66: FMemLdR4 var_114(36)
  loc_B24B6B: ConcatStr
  loc_B24B6C: CVarStr var_F4
  loc_B24B6F: PopAdLdVar
  loc_B24B70: FLdPr Me
  loc_B24B73: MemLdRfVar from_stack_1.global_76
  loc_B24B76: LdPrVar
  loc_B24B78: LateMemCall
  loc_B24B7E: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_B24BAB: FFree1Var var_F4 = ""
  loc_B24BAE: LitI4 0
  loc_B24BB3: FStR4 var_114
  loc_B24BB6: AryUnlock
  loc_B24BB9: FLdPr Me
  loc_B24BBC: MemLdRfVar from_stack_1.global_100
  loc_B24BBF: NextI4 var_10C, loc_B24A8E
  loc_B24BC4: FLdPr Me
  loc_B24BC7: MemLdRfVar from_stack_1.global_76
  loc_B24BCA: LdPrVar
  loc_B24BCC: LateMemCall
  loc_B24BD2: ExitProcHresult
End Sub

Public Sub GeneraXLS(arg_20) 'C3C7F0
  'Data Table: 4F55A0
  loc_C3BC0C: ImpAdLdI4 MemVar_D93030
  loc_C3BC0F: FStStrCopy var_88
  loc_C3BC12: LitI4 0
  loc_C3BC17: LitStr "Excel.Application"
  loc_C3BC1A: FLdRfVar var_B4
  loc_C3BC1D: ImpAdCallFPR4  = CreateObject(, )
  loc_C3BC22: FLdRfVar var_B4
  loc_C3BC25: FLdRfVar var_98
  loc_C3BC28: SetVarVarFunc
  loc_C3BC2A: FLdRfVar var_98
  loc_C3BC2D: VarLateMemLdVar var_B4, .Workbooks
  loc_C3BC33: CastAdVar Me
  loc_C3BC37: FStAdFunc var_9C
  loc_C3BC3A: FFree1Var var_B4 = ""
  loc_C3BC3D: FLdRfVar var_E0
  loc_C3BC40: LitVarI2 var_DC, 1
  loc_C3BC45: PopAdLdVar
  loc_C3BC46: FLdRfVar var_CC
  loc_C3BC49: FLdRfVar var_C8
  loc_C3BC4C: LitI4 &H409
  loc_C3BC51: LitVar_Missing var_C4
  loc_C3BC54: PopAdLdVar
  loc_C3BC55: FLdPr var_9C
  loc_C3BC58:  = Forms
  loc_C3BC5D: FLdPr var_C8
  loc_C3BC60: Call 0.Method_arg_20C ()
  loc_C3BC65: FLdPr var_CC
  loc_C3BC68: Me.BackColor = from_stack_1
  loc_C3BC6D: ILdRf var_E0
  loc_C3BC70: CastAd
  loc_C3BC73: FStAdFunc var_A0
  loc_C3BC76: FFreeAd var_C8 = "": var_CC = ""
  loc_C3BC7F: LitVar_TRUE var_C4
  loc_C3BC82: PopAdLdVar
  loc_C3BC83: FLdRfVar var_98
  loc_C3BC86: VarLateMemSt .Visible
  loc_C3BC8A: LitVarI2 var_C4, 1
  loc_C3BC8F: PopAdLdVar
  loc_C3BC90: LitVarI2 var_F0, 1
  loc_C3BC95: PopAdLdVar
  loc_C3BC96: LitVarStr var_110, "Cuenta"
  loc_C3BC9B: PopAdLdVar
  loc_C3BC9C: FLdRfVar var_C8
  loc_C3BC9F: FLdPr var_A0
  loc_C3BCA2:  = Me.FontUnderline
  loc_C3BCA7: FLdPr var_C8
  loc_C3BCAA: LateIdCallSt
  loc_C3BCB2: FFree1Ad var_C8
  loc_C3BCB5: LitVarI2 var_C4, 1
  loc_C3BCBA: PopAdLdVar
  loc_C3BCBB: LitVarI2 var_F0, 2
  loc_C3BCC0: PopAdLdVar
  loc_C3BCC1: LitVarStr var_110, "Apellido y Nombre"
  loc_C3BCC6: PopAdLdVar
  loc_C3BCC7: FLdRfVar var_C8
  loc_C3BCCA: FLdPr var_A0
  loc_C3BCCD:  = Me.FontUnderline
  loc_C3BCD2: FLdPr var_C8
  loc_C3BCD5: LateIdCallSt
  loc_C3BCDD: FFree1Ad var_C8
  loc_C3BCE0: LitVarI2 var_C4, 1
  loc_C3BCE5: PopAdLdVar
  loc_C3BCE6: LitVarI2 var_F0, 3
  loc_C3BCEB: PopAdLdVar
  loc_C3BCEC: LitVarStr var_110, "Saldo Inicial"
  loc_C3BCF1: PopAdLdVar
  loc_C3BCF2: FLdRfVar var_C8
  loc_C3BCF5: FLdPr var_A0
  loc_C3BCF8:  = Me.FontUnderline
  loc_C3BCFD: FLdPr var_C8
  loc_C3BD00: LateIdCallSt
  loc_C3BD08: FFree1Ad var_C8
  loc_C3BD0B: LitVarI2 var_C4, 1
  loc_C3BD10: PopAdLdVar
  loc_C3BD11: LitVarI2 var_F0, 4
  loc_C3BD16: PopAdLdVar
  loc_C3BD17: LitVarStr var_110, "Aforos"
  loc_C3BD1C: PopAdLdVar
  loc_C3BD1D: FLdRfVar var_C8
  loc_C3BD20: FLdPr var_A0
  loc_C3BD23:  = Me.FontUnderline
  loc_C3BD28: FLdPr var_C8
  loc_C3BD2B: LateIdCallSt
  loc_C3BD33: FFree1Ad var_C8
  loc_C3BD36: LitVarI2 var_C4, 1
  loc_C3BD3B: PopAdLdVar
  loc_C3BD3C: LitVarI2 var_F0, 5
  loc_C3BD41: PopAdLdVar
  loc_C3BD42: LitVarStr var_110, "Débitos"
  loc_C3BD47: PopAdLdVar
  loc_C3BD48: FLdRfVar var_C8
  loc_C3BD4B: FLdPr var_A0
  loc_C3BD4E:  = Me.FontUnderline
  loc_C3BD53: FLdPr var_C8
  loc_C3BD56: LateIdCallSt
  loc_C3BD5E: FFree1Ad var_C8
  loc_C3BD61: LitVarI2 var_C4, 1
  loc_C3BD66: PopAdLdVar
  loc_C3BD67: LitVarI2 var_F0, 6
  loc_C3BD6C: PopAdLdVar
  loc_C3BD6D: LitVarStr var_110, "Créditos"
  loc_C3BD72: PopAdLdVar
  loc_C3BD73: FLdRfVar var_C8
  loc_C3BD76: FLdPr var_A0
  loc_C3BD79:  = Me.FontUnderline
  loc_C3BD7E: FLdPr var_C8
  loc_C3BD81: LateIdCallSt
  loc_C3BD89: FFree1Ad var_C8
  loc_C3BD8C: LitVarI2 var_C4, 1
  loc_C3BD91: PopAdLdVar
  loc_C3BD92: LitVarI2 var_F0, 7
  loc_C3BD97: PopAdLdVar
  loc_C3BD98: LitVarStr var_110, "Pres."
  loc_C3BD9D: PopAdLdVar
  loc_C3BD9E: FLdRfVar var_C8
  loc_C3BDA1: FLdPr var_A0
  loc_C3BDA4:  = Me.FontUnderline
  loc_C3BDA9: FLdPr var_C8
  loc_C3BDAC: LateIdCallSt
  loc_C3BDB4: FFree1Ad var_C8
  loc_C3BDB7: LitVarI2 var_C4, 1
  loc_C3BDBC: PopAdLdVar
  loc_C3BDBD: LitVarI2 var_F0, 8
  loc_C3BDC2: PopAdLdVar
  loc_C3BDC3: LitVarStr var_110, "Condo."
  loc_C3BDC8: PopAdLdVar
  loc_C3BDC9: FLdRfVar var_C8
  loc_C3BDCC: FLdPr var_A0
  loc_C3BDCF:  = Me.FontUnderline
  loc_C3BDD4: FLdPr var_C8
  loc_C3BDD7: LateIdCallSt
  loc_C3BDDF: FFree1Ad var_C8
  loc_C3BDE2: LitVarI2 var_C4, 1
  loc_C3BDE7: PopAdLdVar
  loc_C3BDE8: LitVarI2 var_F0, 9
  loc_C3BDED: PopAdLdVar
  loc_C3BDEE: LitVarStr var_110, "Exenc."
  loc_C3BDF3: PopAdLdVar
  loc_C3BDF4: FLdRfVar var_C8
  loc_C3BDF7: FLdPr var_A0
  loc_C3BDFA:  = Me.FontUnderline
  loc_C3BDFF: FLdPr var_C8
  loc_C3BE02: LateIdCallSt
  loc_C3BE0A: FFree1Ad var_C8
  loc_C3BE0D: LitVarI2 var_C4, 1
  loc_C3BE12: PopAdLdVar
  loc_C3BE13: LitVarI2 var_F0, 10
  loc_C3BE18: PopAdLdVar
  loc_C3BE19: LitVarStr var_110, "Desc."
  loc_C3BE1E: PopAdLdVar
  loc_C3BE1F: FLdRfVar var_C8
  loc_C3BE22: FLdPr var_A0
  loc_C3BE25:  = Me.FontUnderline
  loc_C3BE2A: FLdPr var_C8
  loc_C3BE2D: LateIdCallSt
  loc_C3BE35: FFree1Ad var_C8
  loc_C3BE38: LitVarI2 var_C4, 1
  loc_C3BE3D: PopAdLdVar
  loc_C3BE3E: LitVarI2 var_F0, 11
  loc_C3BE43: PopAdLdVar
  loc_C3BE44: LitVarStr var_110, "Cobrado"
  loc_C3BE49: PopAdLdVar
  loc_C3BE4A: FLdRfVar var_C8
  loc_C3BE4D: FLdPr var_A0
  loc_C3BE50:  = Me.FontUnderline
  loc_C3BE55: FLdPr var_C8
  loc_C3BE58: LateIdCallSt
  loc_C3BE60: FFree1Ad var_C8
  loc_C3BE63: LitVarI2 var_C4, 1
  loc_C3BE68: PopAdLdVar
  loc_C3BE69: LitVarI2 var_F0, 12
  loc_C3BE6E: PopAdLdVar
  loc_C3BE6F: LitVarStr var_110, "Saldo Final"
  loc_C3BE74: PopAdLdVar
  loc_C3BE75: FLdRfVar var_C8
  loc_C3BE78: FLdPr var_A0
  loc_C3BE7B:  = Me.FontUnderline
  loc_C3BE80: FLdPr var_C8
  loc_C3BE83: LateIdCallSt
  loc_C3BE8B: FFree1Ad var_C8
  loc_C3BE8E: LitVarI2 var_C4, 1
  loc_C3BE93: PopAdLdVar
  loc_C3BE94: LitVarI2 var_F0, 13
  loc_C3BE99: PopAdLdVar
  loc_C3BE9A: LitVarStr var_110, "Apremio"
  loc_C3BE9F: PopAdLdVar
  loc_C3BEA0: FLdRfVar var_C8
  loc_C3BEA3: FLdPr var_A0
  loc_C3BEA6:  = Me.FontUnderline
  loc_C3BEAB: FLdPr var_C8
  loc_C3BEAE: LateIdCallSt
  loc_C3BEB6: FFree1Ad var_C8
  loc_C3BEB9: LitVarI2 var_C4, 1
  loc_C3BEBE: PopAdLdVar
  loc_C3BEBF: LitVarI2 var_F0, 14
  loc_C3BEC4: PopAdLdVar
  loc_C3BEC5: LitVarStr var_110, "Juicio"
  loc_C3BECA: PopAdLdVar
  loc_C3BECB: FLdRfVar var_C8
  loc_C3BECE: FLdPr var_A0
  loc_C3BED1:  = Me.FontUnderline
  loc_C3BED6: FLdPr var_C8
  loc_C3BED9: LateIdCallSt
  loc_C3BEE1: FFree1Ad var_C8
  loc_C3BEE4: LitVarI2 var_C4, 1
  loc_C3BEE9: PopAdLdVar
  loc_C3BEEA: LitVarI2 var_F0, 15
  loc_C3BEEF: PopAdLdVar
  loc_C3BEF0: LitVarStr var_110, "Inst."
  loc_C3BEF5: PopAdLdVar
  loc_C3BEF6: FLdRfVar var_C8
  loc_C3BEF9: FLdPr var_A0
  loc_C3BEFC:  = Me.FontUnderline
  loc_C3BF01: FLdPr var_C8
  loc_C3BF04: LateIdCallSt
  loc_C3BF0C: FFree1Ad var_C8
  loc_C3BF0F: LitI2_Byte 1
  loc_C3BF11: FStI2 var_A2
  loc_C3BF14: LitI4 1
  loc_C3BF19: FLdPr Me
  loc_C3BF1C: MemLdRfVar from_stack_1.global_100
  loc_C3BF1F: FLdPr Me
  loc_C3BF22: MemLdStr global_96
  loc_C3BF25: LitI2_Byte 1
  loc_C3BF27: FnUBound
  loc_C3BF29: ForI4 var_128
  loc_C3BF2F: FLdPr Me
  loc_C3BF32: MemLdStr global_100
  loc_C3BF35: FLdPr Me
  loc_C3BF38: MemLdStr global_96
  loc_C3BF3B: AryLock
  loc_C3BF3E: Ary1LdPr
  loc_C3BF3F: MemLdRfVar from_stack_1.global_8
  loc_C3BF42: FStR4 var_130
  loc_C3BF45: FLdI2 var_A2
  loc_C3BF48: CI4UI1
  loc_C3BF49: FLdPr Me
  loc_C3BF4C: MemLdStr global_100
  loc_C3BF4F: AddI4
  loc_C3BF50: CVarI4
  loc_C3BF54: PopAdLdVar
  loc_C3BF55: LitVarI2 var_F0, 1
  loc_C3BF5A: PopAdLdVar
  loc_C3BF5B: FLdPr Me
  loc_C3BF5E: MemLdStr global_100
  loc_C3BF61: FLdPr Me
  loc_C3BF64: MemLdStr global_96
  loc_C3BF67: Ary1LdPr
  loc_C3BF68: MemLdStr global_0
  loc_C3BF6B: CVarStr var_110
  loc_C3BF6E: PopAdLdVar
  loc_C3BF6F: FLdRfVar var_C8
  loc_C3BF72: FLdPr var_A0
  loc_C3BF75:  = Me.FontUnderline
  loc_C3BF7A: FLdPr var_C8
  loc_C3BF7D: LateIdCallSt
  loc_C3BF85: FFree1Ad var_C8
  loc_C3BF88: FLdI2 var_A2
  loc_C3BF8B: CI4UI1
  loc_C3BF8C: FLdPr Me
  loc_C3BF8F: MemLdStr global_100
  loc_C3BF92: AddI4
  loc_C3BF93: CVarI4
  loc_C3BF97: PopAdLdVar
  loc_C3BF98: LitVarI2 var_F0, 2
  loc_C3BF9D: PopAdLdVar
  loc_C3BF9E: FLdPr Me
  loc_C3BFA1: MemLdStr global_100
  loc_C3BFA4: FLdPr Me
  loc_C3BFA7: MemLdStr global_96
  loc_C3BFAA: Ary1LdPr
  loc_C3BFAB: MemLdStr global_4
  loc_C3BFAE: CVarStr var_110
  loc_C3BFB1: PopAdLdVar
  loc_C3BFB2: FLdRfVar var_C8
  loc_C3BFB5: FLdPr var_A0
  loc_C3BFB8:  = Me.FontUnderline
  loc_C3BFBD: FLdPr var_C8
  loc_C3BFC0: LateIdCallSt
  loc_C3BFC8: FFree1Ad var_C8
  loc_C3BFCB: FLdI2 var_A2
  loc_C3BFCE: CI4UI1
  loc_C3BFCF: FLdPr Me
  loc_C3BFD2: MemLdStr global_100
  loc_C3BFD5: AddI4
  loc_C3BFD6: CVarI4
  loc_C3BFDA: PopAdLdVar
  loc_C3BFDB: LitVarI2 var_F0, 3
  loc_C3BFE0: PopAdLdVar
  loc_C3BFE1: FMemLdR4 var_130(0)
  loc_C3BFE6: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3BFEB: CVarR8
  loc_C3BFEF: PopAdLdVar
  loc_C3BFF0: FLdRfVar var_C8
  loc_C3BFF3: FLdPr var_A0
  loc_C3BFF6:  = Me.FontUnderline
  loc_C3BFFB: FLdPr var_C8
  loc_C3BFFE: LateIdCallSt
  loc_C3C006: FFree1Ad var_C8
  loc_C3C009: FLdI2 var_A2
  loc_C3C00C: CI4UI1
  loc_C3C00D: FLdPr Me
  loc_C3C010: MemLdStr global_100
  loc_C3C013: AddI4
  loc_C3C014: CVarI4
  loc_C3C018: PopAdLdVar
  loc_C3C019: LitVarI2 var_F0, 4
  loc_C3C01E: PopAdLdVar
  loc_C3C01F: FMemLdR4 var_130(4)
  loc_C3C024: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C029: CVarR8
  loc_C3C02D: PopAdLdVar
  loc_C3C02E: FLdRfVar var_C8
  loc_C3C031: FLdPr var_A0
  loc_C3C034:  = Me.FontUnderline
  loc_C3C039: FLdPr var_C8
  loc_C3C03C: LateIdCallSt
  loc_C3C044: FFree1Ad var_C8
  loc_C3C047: FLdI2 var_A2
  loc_C3C04A: CI4UI1
  loc_C3C04B: FLdPr Me
  loc_C3C04E: MemLdStr global_100
  loc_C3C051: AddI4
  loc_C3C052: CVarI4
  loc_C3C056: PopAdLdVar
  loc_C3C057: LitVarI2 var_F0, 5
  loc_C3C05C: PopAdLdVar
  loc_C3C05D: FMemLdR4 var_130(8)
  loc_C3C062: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C067: CVarR8
  loc_C3C06B: PopAdLdVar
  loc_C3C06C: FLdRfVar var_C8
  loc_C3C06F: FLdPr var_A0
  loc_C3C072:  = Me.FontUnderline
  loc_C3C077: FLdPr var_C8
  loc_C3C07A: LateIdCallSt
  loc_C3C082: FFree1Ad var_C8
  loc_C3C085: FLdI2 var_A2
  loc_C3C088: CI4UI1
  loc_C3C089: FLdPr Me
  loc_C3C08C: MemLdStr global_100
  loc_C3C08F: AddI4
  loc_C3C090: CVarI4
  loc_C3C094: PopAdLdVar
  loc_C3C095: LitVarI2 var_F0, 6
  loc_C3C09A: PopAdLdVar
  loc_C3C09B: FMemLdR4 var_130(12)
  loc_C3C0A0: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C0A5: CVarR8
  loc_C3C0A9: PopAdLdVar
  loc_C3C0AA: FLdRfVar var_C8
  loc_C3C0AD: FLdPr var_A0
  loc_C3C0B0:  = Me.FontUnderline
  loc_C3C0B5: FLdPr var_C8
  loc_C3C0B8: LateIdCallSt
  loc_C3C0C0: FFree1Ad var_C8
  loc_C3C0C3: FLdI2 var_A2
  loc_C3C0C6: CI4UI1
  loc_C3C0C7: FLdPr Me
  loc_C3C0CA: MemLdStr global_100
  loc_C3C0CD: AddI4
  loc_C3C0CE: CVarI4
  loc_C3C0D2: PopAdLdVar
  loc_C3C0D3: LitVarI2 var_F0, 7
  loc_C3C0D8: PopAdLdVar
  loc_C3C0D9: FMemLdR4 var_130(16)
  loc_C3C0DE: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C0E3: CVarR8
  loc_C3C0E7: PopAdLdVar
  loc_C3C0E8: FLdRfVar var_C8
  loc_C3C0EB: FLdPr var_A0
  loc_C3C0EE:  = Me.FontUnderline
  loc_C3C0F3: FLdPr var_C8
  loc_C3C0F6: LateIdCallSt
  loc_C3C0FE: FFree1Ad var_C8
  loc_C3C101: FLdI2 var_A2
  loc_C3C104: CI4UI1
  loc_C3C105: FLdPr Me
  loc_C3C108: MemLdStr global_100
  loc_C3C10B: AddI4
  loc_C3C10C: CVarI4
  loc_C3C110: PopAdLdVar
  loc_C3C111: LitVarI2 var_F0, 8
  loc_C3C116: PopAdLdVar
  loc_C3C117: FMemLdR4 var_130(20)
  loc_C3C11C: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C121: CVarR8
  loc_C3C125: PopAdLdVar
  loc_C3C126: FLdRfVar var_C8
  loc_C3C129: FLdPr var_A0
  loc_C3C12C:  = Me.FontUnderline
  loc_C3C131: FLdPr var_C8
  loc_C3C134: LateIdCallSt
  loc_C3C13C: FFree1Ad var_C8
  loc_C3C13F: FLdI2 var_A2
  loc_C3C142: CI4UI1
  loc_C3C143: FLdPr Me
  loc_C3C146: MemLdStr global_100
  loc_C3C149: AddI4
  loc_C3C14A: CVarI4
  loc_C3C14E: PopAdLdVar
  loc_C3C14F: LitVarI2 var_F0, 9
  loc_C3C154: PopAdLdVar
  loc_C3C155: FMemLdR4 var_130(24)
  loc_C3C15A: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C15F: CVarR8
  loc_C3C163: PopAdLdVar
  loc_C3C164: FLdRfVar var_C8
  loc_C3C167: FLdPr var_A0
  loc_C3C16A:  = Me.FontUnderline
  loc_C3C16F: FLdPr var_C8
  loc_C3C172: LateIdCallSt
  loc_C3C17A: FFree1Ad var_C8
  loc_C3C17D: FLdI2 var_A2
  loc_C3C180: CI4UI1
  loc_C3C181: FLdPr Me
  loc_C3C184: MemLdStr global_100
  loc_C3C187: AddI4
  loc_C3C188: CVarI4
  loc_C3C18C: PopAdLdVar
  loc_C3C18D: LitVarI2 var_F0, 10
  loc_C3C192: PopAdLdVar
  loc_C3C193: FMemLdR4 var_130(28)
  loc_C3C198: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C19D: CVarR8
  loc_C3C1A1: PopAdLdVar
  loc_C3C1A2: FLdRfVar var_C8
  loc_C3C1A5: FLdPr var_A0
  loc_C3C1A8:  = Me.FontUnderline
  loc_C3C1AD: FLdPr var_C8
  loc_C3C1B0: LateIdCallSt
  loc_C3C1B8: FFree1Ad var_C8
  loc_C3C1BB: FLdI2 var_A2
  loc_C3C1BE: CI4UI1
  loc_C3C1BF: FLdPr Me
  loc_C3C1C2: MemLdStr global_100
  loc_C3C1C5: AddI4
  loc_C3C1C6: CVarI4
  loc_C3C1CA: PopAdLdVar
  loc_C3C1CB: LitVarI2 var_F0, 11
  loc_C3C1D0: PopAdLdVar
  loc_C3C1D1: FMemLdR4 var_130(32)
  loc_C3C1D6: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C1DB: CVarR8
  loc_C3C1DF: PopAdLdVar
  loc_C3C1E0: FLdRfVar var_C8
  loc_C3C1E3: FLdPr var_A0
  loc_C3C1E6:  = Me.FontUnderline
  loc_C3C1EB: FLdPr var_C8
  loc_C3C1EE: LateIdCallSt
  loc_C3C1F6: FFree1Ad var_C8
  loc_C3C1F9: FLdI2 var_A2
  loc_C3C1FC: CI4UI1
  loc_C3C1FD: FLdPr Me
  loc_C3C200: MemLdStr global_100
  loc_C3C203: AddI4
  loc_C3C204: CVarI4
  loc_C3C208: PopAdLdVar
  loc_C3C209: LitVarI2 var_F0, 12
  loc_C3C20E: PopAdLdVar
  loc_C3C20F: FMemLdR4 var_130(36)
  loc_C3C214: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C219: CVarR8
  loc_C3C21D: PopAdLdVar
  loc_C3C21E: FLdRfVar var_C8
  loc_C3C221: FLdPr var_A0
  loc_C3C224:  = Me.FontUnderline
  loc_C3C229: FLdPr var_C8
  loc_C3C22C: LateIdCallSt
  loc_C3C234: FFree1Ad var_C8
  loc_C3C237: FLdI2 var_A2
  loc_C3C23A: CI4UI1
  loc_C3C23B: FLdPr Me
  loc_C3C23E: MemLdStr global_100
  loc_C3C241: AddI4
  loc_C3C242: CVarI4
  loc_C3C246: PopAdLdVar
  loc_C3C247: LitVarI2 var_F0, 13
  loc_C3C24C: PopAdLdVar
  loc_C3C24D: FMemLdR4 var_130(40)
  loc_C3C252: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C257: CVarR8
  loc_C3C25B: PopAdLdVar
  loc_C3C25C: FLdRfVar var_C8
  loc_C3C25F: FLdPr var_A0
  loc_C3C262:  = Me.FontUnderline
  loc_C3C267: FLdPr var_C8
  loc_C3C26A: LateIdCallSt
  loc_C3C272: FFree1Ad var_C8
  loc_C3C275: FLdI2 var_A2
  loc_C3C278: CI4UI1
  loc_C3C279: FLdPr Me
  loc_C3C27C: MemLdStr global_100
  loc_C3C27F: AddI4
  loc_C3C280: CVarI4
  loc_C3C284: PopAdLdVar
  loc_C3C285: LitVarI2 var_F0, 14
  loc_C3C28A: PopAdLdVar
  loc_C3C28B: FMemLdR4 var_130(44)
  loc_C3C290: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C295: CVarR8
  loc_C3C299: PopAdLdVar
  loc_C3C29A: FLdRfVar var_C8
  loc_C3C29D: FLdPr var_A0
  loc_C3C2A0:  = Me.FontUnderline
  loc_C3C2A5: FLdPr var_C8
  loc_C3C2A8: LateIdCallSt
  loc_C3C2B0: FFree1Ad var_C8
  loc_C3C2B3: FLdI2 var_A2
  loc_C3C2B6: CI4UI1
  loc_C3C2B7: FLdPr Me
  loc_C3C2BA: MemLdStr global_100
  loc_C3C2BD: AddI4
  loc_C3C2BE: CVarI4
  loc_C3C2C2: PopAdLdVar
  loc_C3C2C3: LitVarI2 var_F0, 15
  loc_C3C2C8: PopAdLdVar
  loc_C3C2C9: FMemLdR4 var_130(48)
  loc_C3C2CE: ImpAdCallFPR4 Proc_272_39_9FF87C()
  loc_C3C2D3: CVarR8
  loc_C3C2D7: PopAdLdVar
  loc_C3C2D8: FLdRfVar var_C8
  loc_C3C2DB: FLdPr var_A0
  loc_C3C2DE:  = Me.FontUnderline
  loc_C3C2E3: FLdPr var_C8
  loc_C3C2E6: LateIdCallSt
  loc_C3C2EE: FFree1Ad var_C8
  loc_C3C2F1: LitI4 0
  loc_C3C2F6: FStR4 var_130
  loc_C3C2F9: AryUnlock
  loc_C3C2FC: FLdPr Me
  loc_C3C2FF: MemLdRfVar from_stack_1.global_100
  loc_C3C302: NextI4 var_128, loc_C3BF2F
  loc_C3C307: FLdI2 var_A2
  loc_C3C30A: CI4UI1
  loc_C3C30B: FLdPr Me
  loc_C3C30E: MemLdStr global_100
  loc_C3C311: AddI4
  loc_C3C312: CVarI4
  loc_C3C316: PopAdLdVar
  loc_C3C317: LitVarI2 var_F0, 2
  loc_C3C31C: PopAdLdVar
  loc_C3C31D: LitVarStr var_110, "TOTALES"
  loc_C3C322: PopAdLdVar
  loc_C3C323: FLdRfVar var_C8
  loc_C3C326: FLdPr var_A0
  loc_C3C329:  = Me.FontUnderline
  loc_C3C32E: FLdPr var_C8
  loc_C3C331: LateIdCallSt
  loc_C3C339: FFree1Ad var_C8
  loc_C3C33C: FLdI2 var_A2
  loc_C3C33F: CI4UI1
  loc_C3C340: FLdPr Me
  loc_C3C343: MemLdStr global_100
  loc_C3C346: AddI4
  loc_C3C347: CVarI4
  loc_C3C34B: PopAdLdVar
  loc_C3C34C: LitVarI2 var_F0, 3
  loc_C3C351: PopAdLdVar
  loc_C3C352: LitStr "=SUM(R[-"
  loc_C3C355: FLdPr Me
  loc_C3C358: MemLdStr global_96
  loc_C3C35B: LitI2_Byte 1
  loc_C3C35D: FnUBound
  loc_C3C35F: CStrI4
  loc_C3C361: FStStrNoPop var_134
  loc_C3C364: ConcatStr
  loc_C3C365: FStStrNoPop var_138
  loc_C3C368: LitStr "]C:R[-1]C)"
  loc_C3C36B: ConcatStr
  loc_C3C36C: CVarStr var_B4
  loc_C3C36F: PopAdLdVar
  loc_C3C370: FLdRfVar var_C8
  loc_C3C373: FLdPr var_A0
  loc_C3C376:  = Me.FontUnderline
  loc_C3C37B: FLdPr var_C8
  loc_C3C37E: LateIdCallSt
  loc_C3C386: FFreeStr var_134 = ""
  loc_C3C38D: FFree1Ad var_C8
  loc_C3C390: FFree1Var var_B4 = ""
  loc_C3C393: FLdI2 var_A2
  loc_C3C396: CI4UI1
  loc_C3C397: FLdPr Me
  loc_C3C39A: MemLdStr global_100
  loc_C3C39D: AddI4
  loc_C3C39E: CVarI4
  loc_C3C3A2: PopAdLdVar
  loc_C3C3A3: LitVarI2 var_F0, 4
  loc_C3C3A8: PopAdLdVar
  loc_C3C3A9: LitStr "=SUM(R[-"
  loc_C3C3AC: FLdPr Me
  loc_C3C3AF: MemLdStr global_96
  loc_C3C3B2: LitI2_Byte 1
  loc_C3C3B4: FnUBound
  loc_C3C3B6: CStrI4
  loc_C3C3B8: FStStrNoPop var_134
  loc_C3C3BB: ConcatStr
  loc_C3C3BC: FStStrNoPop var_138
  loc_C3C3BF: LitStr "]C:R[-1]C)"
  loc_C3C3C2: ConcatStr
  loc_C3C3C3: CVarStr var_B4
  loc_C3C3C6: PopAdLdVar
  loc_C3C3C7: FLdRfVar var_C8
  loc_C3C3CA: FLdPr var_A0
  loc_C3C3CD:  = Me.FontUnderline
  loc_C3C3D2: FLdPr var_C8
  loc_C3C3D5: LateIdCallSt
  loc_C3C3DD: FFreeStr var_134 = ""
  loc_C3C3E4: FFree1Ad var_C8
  loc_C3C3E7: FFree1Var var_B4 = ""
  loc_C3C3EA: FLdI2 var_A2
  loc_C3C3ED: CI4UI1
  loc_C3C3EE: FLdPr Me
  loc_C3C3F1: MemLdStr global_100
  loc_C3C3F4: AddI4
  loc_C3C3F5: CVarI4
  loc_C3C3F9: PopAdLdVar
  loc_C3C3FA: LitVarI2 var_F0, 5
  loc_C3C3FF: PopAdLdVar
  loc_C3C400: LitStr "=SUM(R[-"
  loc_C3C403: FLdPr Me
  loc_C3C406: MemLdStr global_96
  loc_C3C409: LitI2_Byte 1
  loc_C3C40B: FnUBound
  loc_C3C40D: CStrI4
  loc_C3C40F: FStStrNoPop var_134
  loc_C3C412: ConcatStr
  loc_C3C413: FStStrNoPop var_138
  loc_C3C416: LitStr "]C:R[-1]C)"
  loc_C3C419: ConcatStr
  loc_C3C41A: CVarStr var_B4
  loc_C3C41D: PopAdLdVar
  loc_C3C41E: FLdRfVar var_C8
  loc_C3C421: FLdPr var_A0
  loc_C3C424:  = Me.FontUnderline
  loc_C3C429: FLdPr var_C8
  loc_C3C42C: LateIdCallSt
  loc_C3C434: FFreeStr var_134 = ""
  loc_C3C43B: FFree1Ad var_C8
  loc_C3C43E: FFree1Var var_B4 = ""
  loc_C3C441: FLdI2 var_A2
  loc_C3C444: CI4UI1
  loc_C3C445: FLdPr Me
  loc_C3C448: MemLdStr global_100
  loc_C3C44B: AddI4
  loc_C3C44C: CVarI4
  loc_C3C450: PopAdLdVar
  loc_C3C451: LitVarI2 var_F0, 6
  loc_C3C456: PopAdLdVar
  loc_C3C457: LitStr "=SUM(R[-"
  loc_C3C45A: FLdPr Me
  loc_C3C45D: MemLdStr global_96
  loc_C3C460: LitI2_Byte 1
  loc_C3C462: FnUBound
  loc_C3C464: CStrI4
  loc_C3C466: FStStrNoPop var_134
  loc_C3C469: ConcatStr
  loc_C3C46A: FStStrNoPop var_138
  loc_C3C46D: LitStr "]C:R[-1]C)"
  loc_C3C470: ConcatStr
  loc_C3C471: CVarStr var_B4
  loc_C3C474: PopAdLdVar
  loc_C3C475: FLdRfVar var_C8
  loc_C3C478: FLdPr var_A0
  loc_C3C47B:  = Me.FontUnderline
  loc_C3C480: FLdPr var_C8
  loc_C3C483: LateIdCallSt
  loc_C3C48B: FFreeStr var_134 = ""
  loc_C3C492: FFree1Ad var_C8
  loc_C3C495: FFree1Var var_B4 = ""
  loc_C3C498: FLdI2 var_A2
  loc_C3C49B: CI4UI1
  loc_C3C49C: FLdPr Me
  loc_C3C49F: MemLdStr global_100
  loc_C3C4A2: AddI4
  loc_C3C4A3: CVarI4
  loc_C3C4A7: PopAdLdVar
  loc_C3C4A8: LitVarI2 var_F0, 7
  loc_C3C4AD: PopAdLdVar
  loc_C3C4AE: LitStr "=SUM(R[-"
  loc_C3C4B1: FLdPr Me
  loc_C3C4B4: MemLdStr global_96
  loc_C3C4B7: LitI2_Byte 1
  loc_C3C4B9: FnUBound
  loc_C3C4BB: CStrI4
  loc_C3C4BD: FStStrNoPop var_134
  loc_C3C4C0: ConcatStr
  loc_C3C4C1: FStStrNoPop var_138
  loc_C3C4C4: LitStr "]C:R[-1]C)"
  loc_C3C4C7: ConcatStr
  loc_C3C4C8: CVarStr var_B4
  loc_C3C4CB: PopAdLdVar
  loc_C3C4CC: FLdRfVar var_C8
  loc_C3C4CF: FLdPr var_A0
  loc_C3C4D2:  = Me.FontUnderline
  loc_C3C4D7: FLdPr var_C8
  loc_C3C4DA: LateIdCallSt
  loc_C3C4E2: FFreeStr var_134 = ""
  loc_C3C4E9: FFree1Ad var_C8
  loc_C3C4EC: FFree1Var var_B4 = ""
  loc_C3C4EF: FLdI2 var_A2
  loc_C3C4F2: CI4UI1
  loc_C3C4F3: FLdPr Me
  loc_C3C4F6: MemLdStr global_100
  loc_C3C4F9: AddI4
  loc_C3C4FA: CVarI4
  loc_C3C4FE: PopAdLdVar
  loc_C3C4FF: LitVarI2 var_F0, 8
  loc_C3C504: PopAdLdVar
  loc_C3C505: LitStr "=SUM(R[-"
  loc_C3C508: FLdPr Me
  loc_C3C50B: MemLdStr global_96
  loc_C3C50E: LitI2_Byte 1
  loc_C3C510: FnUBound
  loc_C3C512: CStrI4
  loc_C3C514: FStStrNoPop var_134
  loc_C3C517: ConcatStr
  loc_C3C518: FStStrNoPop var_138
  loc_C3C51B: LitStr "]C:R[-1]C)"
  loc_C3C51E: ConcatStr
  loc_C3C51F: CVarStr var_B4
  loc_C3C522: PopAdLdVar
  loc_C3C523: FLdRfVar var_C8
  loc_C3C526: FLdPr var_A0
  loc_C3C529:  = Me.FontUnderline
  loc_C3C52E: FLdPr var_C8
  loc_C3C531: LateIdCallSt
  loc_C3C539: FFreeStr var_134 = ""
  loc_C3C540: FFree1Ad var_C8
  loc_C3C543: FFree1Var var_B4 = ""
  loc_C3C546: FLdI2 var_A2
  loc_C3C549: CI4UI1
  loc_C3C54A: FLdPr Me
  loc_C3C54D: MemLdStr global_100
  loc_C3C550: AddI4
  loc_C3C551: CVarI4
  loc_C3C555: PopAdLdVar
  loc_C3C556: LitVarI2 var_F0, 9
  loc_C3C55B: PopAdLdVar
  loc_C3C55C: LitStr "=SUM(R[-"
  loc_C3C55F: FLdPr Me
  loc_C3C562: MemLdStr global_96
  loc_C3C565: LitI2_Byte 1
  loc_C3C567: FnUBound
  loc_C3C569: CStrI4
  loc_C3C56B: FStStrNoPop var_134
  loc_C3C56E: ConcatStr
  loc_C3C56F: FStStrNoPop var_138
  loc_C3C572: LitStr "]C:R[-1]C)"
  loc_C3C575: ConcatStr
  loc_C3C576: CVarStr var_B4
  loc_C3C579: PopAdLdVar
  loc_C3C57A: FLdRfVar var_C8
  loc_C3C57D: FLdPr var_A0
  loc_C3C580:  = Me.FontUnderline
  loc_C3C585: FLdPr var_C8
  loc_C3C588: LateIdCallSt
  loc_C3C590: FFreeStr var_134 = ""
  loc_C3C597: FFree1Ad var_C8
  loc_C3C59A: FFree1Var var_B4 = ""
  loc_C3C59D: FLdI2 var_A2
  loc_C3C5A0: CI4UI1
  loc_C3C5A1: FLdPr Me
  loc_C3C5A4: MemLdStr global_100
  loc_C3C5A7: AddI4
  loc_C3C5A8: CVarI4
  loc_C3C5AC: PopAdLdVar
  loc_C3C5AD: LitVarI2 var_F0, 10
  loc_C3C5B2: PopAdLdVar
  loc_C3C5B3: LitStr "=SUM(R[-"
  loc_C3C5B6: FLdPr Me
  loc_C3C5B9: MemLdStr global_96
  loc_C3C5BC: LitI2_Byte 1
  loc_C3C5BE: FnUBound
  loc_C3C5C0: CStrI4
  loc_C3C5C2: FStStrNoPop var_134
  loc_C3C5C5: ConcatStr
  loc_C3C5C6: FStStrNoPop var_138
  loc_C3C5C9: LitStr "]C:R[-1]C)"
  loc_C3C5CC: ConcatStr
  loc_C3C5CD: CVarStr var_B4
  loc_C3C5D0: PopAdLdVar
  loc_C3C5D1: FLdRfVar var_C8
  loc_C3C5D4: FLdPr var_A0
  loc_C3C5D7:  = Me.FontUnderline
  loc_C3C5DC: FLdPr var_C8
  loc_C3C5DF: LateIdCallSt
  loc_C3C5E7: FFreeStr var_134 = ""
  loc_C3C5EE: FFree1Ad var_C8
  loc_C3C5F1: FFree1Var var_B4 = ""
  loc_C3C5F4: FLdI2 var_A2
  loc_C3C5F7: CI4UI1
  loc_C3C5F8: FLdPr Me
  loc_C3C5FB: MemLdStr global_100
  loc_C3C5FE: AddI4
  loc_C3C5FF: CVarI4
  loc_C3C603: PopAdLdVar
  loc_C3C604: LitVarI2 var_F0, 11
  loc_C3C609: PopAdLdVar
  loc_C3C60A: LitStr "=SUM(R[-"
  loc_C3C60D: FLdPr Me
  loc_C3C610: MemLdStr global_96
  loc_C3C613: LitI2_Byte 1
  loc_C3C615: FnUBound
  loc_C3C617: CStrI4
  loc_C3C619: FStStrNoPop var_134
  loc_C3C61C: ConcatStr
  loc_C3C61D: FStStrNoPop var_138
  loc_C3C620: LitStr "]C:R[-1]C)"
  loc_C3C623: ConcatStr
  loc_C3C624: CVarStr var_B4
  loc_C3C627: PopAdLdVar
  loc_C3C628: FLdRfVar var_C8
  loc_C3C62B: FLdPr var_A0
  loc_C3C62E:  = Me.FontUnderline
  loc_C3C633: FLdPr var_C8
  loc_C3C636: LateIdCallSt
  loc_C3C63E: FFreeStr var_134 = ""
  loc_C3C645: FFree1Ad var_C8
  loc_C3C648: FFree1Var var_B4 = ""
  loc_C3C64B: FLdI2 var_A2
  loc_C3C64E: CI4UI1
  loc_C3C64F: FLdPr Me
  loc_C3C652: MemLdStr global_100
  loc_C3C655: AddI4
  loc_C3C656: CVarI4
  loc_C3C65A: PopAdLdVar
  loc_C3C65B: LitVarI2 var_F0, 12
  loc_C3C660: PopAdLdVar
  loc_C3C661: LitStr "=SUM(R[-"
  loc_C3C664: FLdPr Me
  loc_C3C667: MemLdStr global_96
  loc_C3C66A: LitI2_Byte 1
  loc_C3C66C: FnUBound
  loc_C3C66E: CStrI4
  loc_C3C670: FStStrNoPop var_134
  loc_C3C673: ConcatStr
  loc_C3C674: FStStrNoPop var_138
  loc_C3C677: LitStr "]C:R[-1]C)"
  loc_C3C67A: ConcatStr
  loc_C3C67B: CVarStr var_B4
  loc_C3C67E: PopAdLdVar
  loc_C3C67F: FLdRfVar var_C8
  loc_C3C682: FLdPr var_A0
  loc_C3C685:  = Me.FontUnderline
  loc_C3C68A: FLdPr var_C8
  loc_C3C68D: LateIdCallSt
  loc_C3C695: FFreeStr var_134 = ""
  loc_C3C69C: FFree1Ad var_C8
  loc_C3C69F: FFree1Var var_B4 = ""
  loc_C3C6A2: LitVar_TRUE var_F0
  loc_C3C6A5: PopAdLdVar
  loc_C3C6A6: FLdRfVar var_C8
  loc_C3C6A9: LitVar_Missing var_DC
  loc_C3C6AC: PopAdLdVar
  loc_C3C6AD: LitVarStr var_C4, "A1:O1"
  loc_C3C6B2: PopAdLdVar
  loc_C3C6B3: FLdPr var_A0
  loc_C3C6B6:  = Me.Image
  loc_C3C6BB: FLdPr var_C8
  loc_C3C6BE: LateIdLdVar var_B4 DispID_146 0
  loc_C3C6C5: CastAdVar Me
  loc_C3C6C9: FStAdFunc var_CC
  loc_C3C6CC: FLdPr var_CC
  loc_C3C6CF: LateIdSt
  loc_C3C6D4: FFreeAd var_C8 = ""
  loc_C3C6DB: FFree1Var var_B4 = ""
  loc_C3C6DE: LitVar_TRUE var_DC
  loc_C3C6E1: PopAdLdVar
  loc_C3C6E2: FLdRfVar var_C8
  loc_C3C6E5: LitVar_Missing var_C4
  loc_C3C6E8: PopAdLdVar
  loc_C3C6E9: LitStr "B"
  loc_C3C6EC: FLdPr Me
  loc_C3C6EF: MemLdStr global_100
  loc_C3C6F2: LitI4 1
  loc_C3C6F7: AddI4
  loc_C3C6F8: CStrI4
  loc_C3C6FA: FStStrNoPop var_134
  loc_C3C6FD: ConcatStr
  loc_C3C6FE: FStStrNoPop var_138
  loc_C3C701: LitStr ":O"
  loc_C3C704: ConcatStr
  loc_C3C705: FStStrNoPop var_13C
  loc_C3C708: FLdPr Me
  loc_C3C70B: MemLdStr global_100
  loc_C3C70E: LitI4 1
  loc_C3C713: AddI4
  loc_C3C714: CStrI4
  loc_C3C716: FStStrNoPop var_140
  loc_C3C719: ConcatStr
  loc_C3C71A: CVarStr var_B4
  loc_C3C71D: PopAdLdVar
  loc_C3C71E: FLdPr var_A0
  loc_C3C721:  = Me.Image
  loc_C3C726: FLdPr var_C8
  loc_C3C729: LateIdLdVar var_150 DispID_146 0
  loc_C3C730: CastAdVar Me
  loc_C3C734: FStAdFunc var_CC
  loc_C3C737: FLdPr var_CC
  loc_C3C73A: LateIdSt
  loc_C3C73F: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_C3C74A: FFreeAd var_C8 = ""
  loc_C3C751: FFreeVar var_B4 = ""
  loc_C3C758: LitVarStr var_F0, "###,###,###,###,##0.00"
  loc_C3C75D: PopAdLdVar
  loc_C3C75E: LitVarStr var_C4, "C:L"
  loc_C3C763: PopAdLdVar
  loc_C3C764: FLdRfVar var_C8
  loc_C3C767: FLdPr var_A0
  loc_C3C76A:  = Me.CurrentY
  loc_C3C76F: FLdPr var_C8
  loc_C3C772: LateIdCallLdVar
  loc_C3C77C: VarLateMemSt .NumberFormat
  loc_C3C780: FFree1Ad var_C8
  loc_C3C783: FFree1Var var_B4 = ""
  loc_C3C786: LitVarStr var_C4, "A:O"
  loc_C3C78B: PopAdLdVar
  loc_C3C78C: FLdRfVar var_C8
  loc_C3C78F: FLdPr var_A0
  loc_C3C792:  = Me.CurrentY
  loc_C3C797: FLdPr var_C8
  loc_C3C79A: LateIdCallLdVar
  loc_C3C7A4: LdPrVar
  loc_C3C7A6: LateMemCall
  loc_C3C7AC: FFree1Ad var_C8
  loc_C3C7AF: FFree1Var var_150 = ""
  loc_C3C7B2: LitVar_Missing var_180
  loc_C3C7B5: PopAdLdVar
  loc_C3C7B6: LitVar_Missing var_170
  loc_C3C7B9: PopAdLdVar
  loc_C3C7BA: LitVar_Missing var_160
  loc_C3C7BD: PopAdLdVar
  loc_C3C7BE: LitVar_Missing var_120
  loc_C3C7C1: PopAdLdVar
  loc_C3C7C2: LitVar_Missing var_110
  loc_C3C7C5: PopAdLdVar
  loc_C3C7C6: LitVar_Missing var_100
  loc_C3C7C9: PopAdLdVar
  loc_C3C7CA: LitVar_Missing var_F0
  loc_C3C7CD: PopAdLdVar
  loc_C3C7CE: LitVar_Missing var_DC
  loc_C3C7D1: PopAdLdVar
  loc_C3C7D2: LitVar_Missing var_C4
  loc_C3C7D5: PopAdLdVar
  loc_C3C7D6: ILdRf var_88
  loc_C3C7D9: FLdPr var_A0
  loc_C3C7DC: Me.MouseIcon = from_stack_1
  loc_C3C7E1: LitI4 &H409
  loc_C3C7E6: FLdPr var_9C
  loc_C3C7EE: ExitProcHresult
  loc_C3C7EF: CI2Var
End Sub

Public Sub GeneraHTML() 'B9E11C
  'Data Table: 4F55A0
  loc_B9DB48: FLdRfVar var_88
  loc_B9DB4B: LitI2_Byte 0
  loc_B9DB4D: LitI2_Byte &HFF
  loc_B9DB4F: ImpAdLdI4 MemVar_D93C84
  loc_B9DB52: FLdPr Me
  loc_B9DB55: MemLdRfVar from_stack_1.global_56
  loc_B9DB58: NewIfNullPr IFileSystem3
  loc_B9DB5B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B9DB60: ILdRf var_88
  loc_B9DB63: FLdPr Me
  loc_B9DB66: MemStVarAd
  loc_B9DB6A: FFree1Ad var_88
  loc_B9DB6D: LitI2_Byte &HFF
  loc_B9DB6F: ImpAdStI2 MemVar_D93C8A
  loc_B9DB72: Call Proc_98_32_C162CC()
  loc_B9DB77: LitI4 1
  loc_B9DB7C: FLdPr Me
  loc_B9DB7F: MemLdRfVar from_stack_1.global_100
  loc_B9DB82: FLdPr Me
  loc_B9DB85: MemLdStr global_96
  loc_B9DB88: LitI2_Byte 1
  loc_B9DB8A: FnUBound
  loc_B9DB8C: ForI4 var_90
  loc_B9DB92: FLdPr Me
  loc_B9DB95: MemLdStr global_100
  loc_B9DB98: FLdPr Me
  loc_B9DB9B: MemLdStr global_96
  loc_B9DB9E: AryLock
  loc_B9DBA1: Ary1LdRf
  loc_B9DBA2: FStR4 var_98
  loc_B9DBA5: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B9DBAA: PopAdLdVar
  loc_B9DBAB: FLdPr Me
  loc_B9DBAE: MemLdRfVar from_stack_1.global_60
  loc_B9DBB1: LdPrVar
  loc_B9DBB3: LateMemCall
  loc_B9DBB9: LitStr vbNullString
  loc_B9DBBC: LitI2_Byte 0
  loc_B9DBBE: LitI2_Byte 0
  loc_B9DBC0: LitI2_Byte 0
  loc_B9DBC2: LitStr "right"
  loc_B9DBC5: FMemLdR4 var_98(0)
  loc_B9DBCA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DBCF: CVarStr var_C8
  loc_B9DBD2: PopAdLdVar
  loc_B9DBD3: FLdPr Me
  loc_B9DBD6: MemLdRfVar from_stack_1.global_60
  loc_B9DBD9: LdPrVar
  loc_B9DBDB: LateMemCall
  loc_B9DBE1: FFree1Var var_C8 = ""
  loc_B9DBE4: LitStr vbNullString
  loc_B9DBE7: LitI2_Byte 0
  loc_B9DBE9: LitI2_Byte 0
  loc_B9DBEB: LitI2_Byte 0
  loc_B9DBED: LitStr "left"
  loc_B9DBF0: FMemLdR4 var_98(4)
  loc_B9DBF5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DBFA: CVarStr var_C8
  loc_B9DBFD: PopAdLdVar
  loc_B9DBFE: FLdPr Me
  loc_B9DC01: MemLdRfVar from_stack_1.global_60
  loc_B9DC04: LdPrVar
  loc_B9DC06: LateMemCall
  loc_B9DC0C: FFree1Var var_C8 = ""
  loc_B9DC0F: FMemLdRf unk_4F5509
  loc_B9DC14: FStR4 var_CC
  loc_B9DC17: LitStr vbNullString
  loc_B9DC1A: LitI2_Byte 0
  loc_B9DC1C: LitI2_Byte 0
  loc_B9DC1E: LitI2_Byte 0
  loc_B9DC20: LitStr "right"
  loc_B9DC23: FMemLdR4 var_CC(0)
  loc_B9DC28: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DC2D: CVarStr var_C8
  loc_B9DC30: PopAdLdVar
  loc_B9DC31: FLdPr Me
  loc_B9DC34: MemLdRfVar from_stack_1.global_60
  loc_B9DC37: LdPrVar
  loc_B9DC39: LateMemCall
  loc_B9DC3F: FFree1Var var_C8 = ""
  loc_B9DC42: LitStr vbNullString
  loc_B9DC45: LitI2_Byte 0
  loc_B9DC47: LitI2_Byte 0
  loc_B9DC49: LitI2_Byte 0
  loc_B9DC4B: LitStr "right"
  loc_B9DC4E: FMemLdR4 var_CC(4)
  loc_B9DC53: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DC58: CVarStr var_C8
  loc_B9DC5B: PopAdLdVar
  loc_B9DC5C: FLdPr Me
  loc_B9DC5F: MemLdRfVar from_stack_1.global_60
  loc_B9DC62: LdPrVar
  loc_B9DC64: LateMemCall
  loc_B9DC6A: FFree1Var var_C8 = ""
  loc_B9DC6D: LitStr vbNullString
  loc_B9DC70: LitI2_Byte 0
  loc_B9DC72: LitI2_Byte 0
  loc_B9DC74: LitI2_Byte 0
  loc_B9DC76: LitStr "right"
  loc_B9DC79: FMemLdR4 var_CC(8)
  loc_B9DC7E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DC83: CVarStr var_C8
  loc_B9DC86: PopAdLdVar
  loc_B9DC87: FLdPr Me
  loc_B9DC8A: MemLdRfVar from_stack_1.global_60
  loc_B9DC8D: LdPrVar
  loc_B9DC8F: LateMemCall
  loc_B9DC95: FFree1Var var_C8 = ""
  loc_B9DC98: LitStr vbNullString
  loc_B9DC9B: LitI2_Byte 0
  loc_B9DC9D: LitI2_Byte 0
  loc_B9DC9F: LitI2_Byte 0
  loc_B9DCA1: LitStr "right"
  loc_B9DCA4: FMemLdR4 var_CC(12)
  loc_B9DCA9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DCAE: CVarStr var_C8
  loc_B9DCB1: PopAdLdVar
  loc_B9DCB2: FLdPr Me
  loc_B9DCB5: MemLdRfVar from_stack_1.global_60
  loc_B9DCB8: LdPrVar
  loc_B9DCBA: LateMemCall
  loc_B9DCC0: FFree1Var var_C8 = ""
  loc_B9DCC3: LitStr vbNullString
  loc_B9DCC6: LitI2_Byte 0
  loc_B9DCC8: LitI2_Byte 0
  loc_B9DCCA: LitI2_Byte 0
  loc_B9DCCC: LitStr "right"
  loc_B9DCCF: FMemLdR4 var_CC(16)
  loc_B9DCD4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DCD9: CVarStr var_C8
  loc_B9DCDC: PopAdLdVar
  loc_B9DCDD: FLdPr Me
  loc_B9DCE0: MemLdRfVar from_stack_1.global_60
  loc_B9DCE3: LdPrVar
  loc_B9DCE5: LateMemCall
  loc_B9DCEB: FFree1Var var_C8 = ""
  loc_B9DCEE: LitStr vbNullString
  loc_B9DCF1: LitI2_Byte 0
  loc_B9DCF3: LitI2_Byte 0
  loc_B9DCF5: LitI2_Byte 0
  loc_B9DCF7: LitStr "right"
  loc_B9DCFA: FMemLdR4 var_CC(20)
  loc_B9DCFF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DD04: CVarStr var_C8
  loc_B9DD07: PopAdLdVar
  loc_B9DD08: FLdPr Me
  loc_B9DD0B: MemLdRfVar from_stack_1.global_60
  loc_B9DD0E: LdPrVar
  loc_B9DD10: LateMemCall
  loc_B9DD16: FFree1Var var_C8 = ""
  loc_B9DD19: LitStr vbNullString
  loc_B9DD1C: LitI2_Byte 0
  loc_B9DD1E: LitI2_Byte 0
  loc_B9DD20: LitI2_Byte 0
  loc_B9DD22: LitStr "right"
  loc_B9DD25: FMemLdR4 var_CC(24)
  loc_B9DD2A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DD2F: CVarStr var_C8
  loc_B9DD32: PopAdLdVar
  loc_B9DD33: FLdPr Me
  loc_B9DD36: MemLdRfVar from_stack_1.global_60
  loc_B9DD39: LdPrVar
  loc_B9DD3B: LateMemCall
  loc_B9DD41: FFree1Var var_C8 = ""
  loc_B9DD44: LitStr vbNullString
  loc_B9DD47: LitI2_Byte 0
  loc_B9DD49: LitI2_Byte 0
  loc_B9DD4B: LitI2_Byte 0
  loc_B9DD4D: LitStr "right"
  loc_B9DD50: FMemLdR4 var_CC(28)
  loc_B9DD55: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DD5A: CVarStr var_C8
  loc_B9DD5D: PopAdLdVar
  loc_B9DD5E: FLdPr Me
  loc_B9DD61: MemLdRfVar from_stack_1.global_60
  loc_B9DD64: LdPrVar
  loc_B9DD66: LateMemCall
  loc_B9DD6C: FFree1Var var_C8 = ""
  loc_B9DD6F: LitStr vbNullString
  loc_B9DD72: LitI2_Byte 0
  loc_B9DD74: LitI2_Byte 0
  loc_B9DD76: LitI2_Byte 0
  loc_B9DD78: LitStr "right"
  loc_B9DD7B: FMemLdR4 var_CC(32)
  loc_B9DD80: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DD85: CVarStr var_C8
  loc_B9DD88: PopAdLdVar
  loc_B9DD89: FLdPr Me
  loc_B9DD8C: MemLdRfVar from_stack_1.global_60
  loc_B9DD8F: LdPrVar
  loc_B9DD91: LateMemCall
  loc_B9DD97: FFree1Var var_C8 = ""
  loc_B9DD9A: LitStr vbNullString
  loc_B9DD9D: LitI2_Byte 0
  loc_B9DD9F: LitI2_Byte 0
  loc_B9DDA1: LitI2_Byte 0
  loc_B9DDA3: LitStr "right"
  loc_B9DDA6: FMemLdR4 var_CC(36)
  loc_B9DDAB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DDB0: CVarStr var_C8
  loc_B9DDB3: PopAdLdVar
  loc_B9DDB4: FLdPr Me
  loc_B9DDB7: MemLdRfVar from_stack_1.global_60
  loc_B9DDBA: LdPrVar
  loc_B9DDBC: LateMemCall
  loc_B9DDC2: FFree1Var var_C8 = ""
  loc_B9DDC5: LitStr vbNullString
  loc_B9DDC8: LitI2_Byte 0
  loc_B9DDCA: LitI2_Byte 0
  loc_B9DDCC: LitI2_Byte 0
  loc_B9DDCE: LitStr "right"
  loc_B9DDD1: FMemLdR4 var_CC(40)
  loc_B9DDD6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DDDB: CVarStr var_C8
  loc_B9DDDE: PopAdLdVar
  loc_B9DDDF: FLdPr Me
  loc_B9DDE2: MemLdRfVar from_stack_1.global_60
  loc_B9DDE5: LdPrVar
  loc_B9DDE7: LateMemCall
  loc_B9DDED: FFree1Var var_C8 = ""
  loc_B9DDF0: LitStr vbNullString
  loc_B9DDF3: LitI2_Byte 0
  loc_B9DDF5: LitI2_Byte 0
  loc_B9DDF7: LitI2_Byte 0
  loc_B9DDF9: LitStr "right"
  loc_B9DDFC: FMemLdR4 var_CC(44)
  loc_B9DE01: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DE06: CVarStr var_C8
  loc_B9DE09: PopAdLdVar
  loc_B9DE0A: FLdPr Me
  loc_B9DE0D: MemLdRfVar from_stack_1.global_60
  loc_B9DE10: LdPrVar
  loc_B9DE12: LateMemCall
  loc_B9DE18: FFree1Var var_C8 = ""
  loc_B9DE1B: LitStr vbNullString
  loc_B9DE1E: LitI2_Byte 0
  loc_B9DE20: LitI2_Byte 0
  loc_B9DE22: LitI2_Byte 0
  loc_B9DE24: LitStr "right"
  loc_B9DE27: FMemLdR4 var_CC(48)
  loc_B9DE2C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DE31: CVarStr var_C8
  loc_B9DE34: PopAdLdVar
  loc_B9DE35: FLdPr Me
  loc_B9DE38: MemLdRfVar from_stack_1.global_60
  loc_B9DE3B: LdPrVar
  loc_B9DE3D: LateMemCall
  loc_B9DE43: FFree1Var var_C8 = ""
  loc_B9DE46: LitI4 0
  loc_B9DE4B: FStR4 var_CC
  loc_B9DE4E: LitVarStr var_A8, "     </tr>"
  loc_B9DE53: PopAdLdVar
  loc_B9DE54: FLdPr Me
  loc_B9DE57: MemLdRfVar from_stack_1.global_60
  loc_B9DE5A: LdPrVar
  loc_B9DE5C: LateMemCall
  loc_B9DE62: LitI4 0
  loc_B9DE67: FStR4 var_98
  loc_B9DE6A: AryUnlock
  loc_B9DE6D: FLdPr Me
  loc_B9DE70: MemLdRfVar from_stack_1.global_100
  loc_B9DE73: NextI4 var_90, loc_B9DB92
  loc_B9DE78: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"">"
  loc_B9DE7D: PopAdLdVar
  loc_B9DE7E: FLdPr Me
  loc_B9DE81: MemLdRfVar from_stack_1.global_60
  loc_B9DE84: LdPrVar
  loc_B9DE86: LateMemCall
  loc_B9DE8C: LitVarStr var_A8, "    <td colspan=""2"" align=""right"">Totales</td>"
  loc_B9DE91: PopAdLdVar
  loc_B9DE92: FLdPr Me
  loc_B9DE95: MemLdRfVar from_stack_1.global_60
  loc_B9DE98: LdPrVar
  loc_B9DE9A: LateMemCall
  loc_B9DEA0: LitI4 1
  loc_B9DEA5: FLdPr Me
  loc_B9DEA8: MemLdStr global_104
  loc_B9DEAB: AryLock
  loc_B9DEAE: Ary1LdRf
  loc_B9DEAF: FStR4 var_D4
  loc_B9DEB2: LitStr vbNullString
  loc_B9DEB5: LitI2_Byte 0
  loc_B9DEB7: LitI2_Byte 0
  loc_B9DEB9: LitI2_Byte 0
  loc_B9DEBB: LitStr "right"
  loc_B9DEBE: FMemLdR4 var_D4(0)
  loc_B9DEC3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DEC8: CVarStr var_C8
  loc_B9DECB: PopAdLdVar
  loc_B9DECC: FLdPr Me
  loc_B9DECF: MemLdRfVar from_stack_1.global_60
  loc_B9DED2: LdPrVar
  loc_B9DED4: LateMemCall
  loc_B9DEDA: FFree1Var var_C8 = ""
  loc_B9DEDD: LitStr vbNullString
  loc_B9DEE0: LitI2_Byte 0
  loc_B9DEE2: LitI2_Byte 0
  loc_B9DEE4: LitI2_Byte 0
  loc_B9DEE6: LitStr "right"
  loc_B9DEE9: FMemLdR4 var_D4(4)
  loc_B9DEEE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DEF3: CVarStr var_C8
  loc_B9DEF6: PopAdLdVar
  loc_B9DEF7: FLdPr Me
  loc_B9DEFA: MemLdRfVar from_stack_1.global_60
  loc_B9DEFD: LdPrVar
  loc_B9DEFF: LateMemCall
  loc_B9DF05: FFree1Var var_C8 = ""
  loc_B9DF08: LitStr vbNullString
  loc_B9DF0B: LitI2_Byte 0
  loc_B9DF0D: LitI2_Byte 0
  loc_B9DF0F: LitI2_Byte 0
  loc_B9DF11: LitStr "right"
  loc_B9DF14: FMemLdR4 var_D4(8)
  loc_B9DF19: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DF1E: CVarStr var_C8
  loc_B9DF21: PopAdLdVar
  loc_B9DF22: FLdPr Me
  loc_B9DF25: MemLdRfVar from_stack_1.global_60
  loc_B9DF28: LdPrVar
  loc_B9DF2A: LateMemCall
  loc_B9DF30: FFree1Var var_C8 = ""
  loc_B9DF33: LitStr vbNullString
  loc_B9DF36: LitI2_Byte 0
  loc_B9DF38: LitI2_Byte 0
  loc_B9DF3A: LitI2_Byte 0
  loc_B9DF3C: LitStr "right"
  loc_B9DF3F: FMemLdR4 var_D4(12)
  loc_B9DF44: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DF49: CVarStr var_C8
  loc_B9DF4C: PopAdLdVar
  loc_B9DF4D: FLdPr Me
  loc_B9DF50: MemLdRfVar from_stack_1.global_60
  loc_B9DF53: LdPrVar
  loc_B9DF55: LateMemCall
  loc_B9DF5B: FFree1Var var_C8 = ""
  loc_B9DF5E: LitStr vbNullString
  loc_B9DF61: LitI2_Byte 0
  loc_B9DF63: LitI2_Byte 0
  loc_B9DF65: LitI2_Byte 0
  loc_B9DF67: LitStr "right"
  loc_B9DF6A: FMemLdR4 var_D4(16)
  loc_B9DF6F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DF74: CVarStr var_C8
  loc_B9DF77: PopAdLdVar
  loc_B9DF78: FLdPr Me
  loc_B9DF7B: MemLdRfVar from_stack_1.global_60
  loc_B9DF7E: LdPrVar
  loc_B9DF80: LateMemCall
  loc_B9DF86: FFree1Var var_C8 = ""
  loc_B9DF89: LitStr vbNullString
  loc_B9DF8C: LitI2_Byte 0
  loc_B9DF8E: LitI2_Byte 0
  loc_B9DF90: LitI2_Byte 0
  loc_B9DF92: LitStr "right"
  loc_B9DF95: FMemLdR4 var_D4(20)
  loc_B9DF9A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DF9F: CVarStr var_C8
  loc_B9DFA2: PopAdLdVar
  loc_B9DFA3: FLdPr Me
  loc_B9DFA6: MemLdRfVar from_stack_1.global_60
  loc_B9DFA9: LdPrVar
  loc_B9DFAB: LateMemCall
  loc_B9DFB1: FFree1Var var_C8 = ""
  loc_B9DFB4: LitStr vbNullString
  loc_B9DFB7: LitI2_Byte 0
  loc_B9DFB9: LitI2_Byte 0
  loc_B9DFBB: LitI2_Byte 0
  loc_B9DFBD: LitStr "right"
  loc_B9DFC0: FMemLdR4 var_D4(24)
  loc_B9DFC5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DFCA: CVarStr var_C8
  loc_B9DFCD: PopAdLdVar
  loc_B9DFCE: FLdPr Me
  loc_B9DFD1: MemLdRfVar from_stack_1.global_60
  loc_B9DFD4: LdPrVar
  loc_B9DFD6: LateMemCall
  loc_B9DFDC: FFree1Var var_C8 = ""
  loc_B9DFDF: LitStr vbNullString
  loc_B9DFE2: LitI2_Byte 0
  loc_B9DFE4: LitI2_Byte 0
  loc_B9DFE6: LitI2_Byte 0
  loc_B9DFE8: LitStr "right"
  loc_B9DFEB: FMemLdR4 var_D4(28)
  loc_B9DFF0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9DFF5: CVarStr var_C8
  loc_B9DFF8: PopAdLdVar
  loc_B9DFF9: FLdPr Me
  loc_B9DFFC: MemLdRfVar from_stack_1.global_60
  loc_B9DFFF: LdPrVar
  loc_B9E001: LateMemCall
  loc_B9E007: FFree1Var var_C8 = ""
  loc_B9E00A: LitStr vbNullString
  loc_B9E00D: LitI2_Byte 0
  loc_B9E00F: LitI2_Byte 0
  loc_B9E011: LitI2_Byte 0
  loc_B9E013: LitStr "right"
  loc_B9E016: FMemLdR4 var_D4(32)
  loc_B9E01B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9E020: CVarStr var_C8
  loc_B9E023: PopAdLdVar
  loc_B9E024: FLdPr Me
  loc_B9E027: MemLdRfVar from_stack_1.global_60
  loc_B9E02A: LdPrVar
  loc_B9E02C: LateMemCall
  loc_B9E032: FFree1Var var_C8 = ""
  loc_B9E035: LitStr vbNullString
  loc_B9E038: LitI2_Byte 0
  loc_B9E03A: LitI2_Byte 0
  loc_B9E03C: LitI2_Byte 0
  loc_B9E03E: LitStr "right"
  loc_B9E041: FMemLdR4 var_D4(36)
  loc_B9E046: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9E04B: CVarStr var_C8
  loc_B9E04E: PopAdLdVar
  loc_B9E04F: FLdPr Me
  loc_B9E052: MemLdRfVar from_stack_1.global_60
  loc_B9E055: LdPrVar
  loc_B9E057: LateMemCall
  loc_B9E05D: FFree1Var var_C8 = ""
  loc_B9E060: LitStr vbNullString
  loc_B9E063: LitI2_Byte 0
  loc_B9E065: LitI2_Byte 0
  loc_B9E067: LitI2_Byte 0
  loc_B9E069: LitStr "right"
  loc_B9E06C: FMemLdR4 var_D4(40)
  loc_B9E071: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9E076: CVarStr var_C8
  loc_B9E079: PopAdLdVar
  loc_B9E07A: FLdPr Me
  loc_B9E07D: MemLdRfVar from_stack_1.global_60
  loc_B9E080: LdPrVar
  loc_B9E082: LateMemCall
  loc_B9E088: FFree1Var var_C8 = ""
  loc_B9E08B: LitStr vbNullString
  loc_B9E08E: LitI2_Byte 0
  loc_B9E090: LitI2_Byte 0
  loc_B9E092: LitI2_Byte 0
  loc_B9E094: LitStr "right"
  loc_B9E097: FMemLdR4 var_D4(44)
  loc_B9E09C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9E0A1: CVarStr var_C8
  loc_B9E0A4: PopAdLdVar
  loc_B9E0A5: FLdPr Me
  loc_B9E0A8: MemLdRfVar from_stack_1.global_60
  loc_B9E0AB: LdPrVar
  loc_B9E0AD: LateMemCall
  loc_B9E0B3: FFree1Var var_C8 = ""
  loc_B9E0B6: LitStr vbNullString
  loc_B9E0B9: LitI2_Byte 0
  loc_B9E0BB: LitI2_Byte 0
  loc_B9E0BD: LitI2_Byte 0
  loc_B9E0BF: LitStr "right"
  loc_B9E0C2: FMemLdR4 var_D4(48)
  loc_B9E0C7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B9E0CC: CVarStr var_C8
  loc_B9E0CF: PopAdLdVar
  loc_B9E0D0: FLdPr Me
  loc_B9E0D3: MemLdRfVar from_stack_1.global_60
  loc_B9E0D6: LdPrVar
  loc_B9E0D8: LateMemCall
  loc_B9E0DE: FFree1Var var_C8 = ""
  loc_B9E0E1: LitI4 0
  loc_B9E0E6: FStR4 var_D4
  loc_B9E0E9: AryUnlock
  loc_B9E0EC: LitVarStr var_A8, "     </tr>"
  loc_B9E0F1: PopAdLdVar
  loc_B9E0F2: FLdPr Me
  loc_B9E0F5: MemLdRfVar from_stack_1.global_60
  loc_B9E0F8: LdPrVar
  loc_B9E0FA: LateMemCall
  loc_B9E100: Call Proc_98_33_A0AB58()
  loc_B9E105: FLdPr Me
  loc_B9E108: MemLdRfVar from_stack_1.global_60
  loc_B9E10B: LdPrVar
  loc_B9E10D: LateMemCall
  loc_B9E113: LitStr vbNullString
  loc_B9E116: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B9E11B: ExitProcHresult
End Sub

Private Function Proc_98_32_C162CC() 'C162CC
  'Data Table: 4F55A0
  loc_C158D0: LitVarStr var_98, "<html>"
  loc_C158D5: PopAdLdVar
  loc_C158D6: FLdPr Me
  loc_C158D9: MemLdRfVar from_stack_1.global_60
  loc_C158DC: LdPrVar
  loc_C158DE: LateMemCall
  loc_C158E4: LitVarStr var_98, "<head>"
  loc_C158E9: PopAdLdVar
  loc_C158EA: FLdPr Me
  loc_C158ED: MemLdRfVar from_stack_1.global_60
  loc_C158F0: LdPrVar
  loc_C158F2: LateMemCall
  loc_C158F8: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C158FD: PopAdLdVar
  loc_C158FE: FLdPr Me
  loc_C15901: MemLdRfVar from_stack_1.global_60
  loc_C15904: LdPrVar
  loc_C15906: LateMemCall
  loc_C1590C: LitStr "<title>"
  loc_C1590F: FLdRfVar var_AC
  loc_C15912: FLdPr Me
  loc_C15915:  = Me.Caption
  loc_C1591A: ILdRf var_AC
  loc_C1591D: ConcatStr
  loc_C1591E: FStStrNoPop var_B0
  loc_C15921: LitStr "</title>"
  loc_C15924: ConcatStr
  loc_C15925: CVarStr var_C0
  loc_C15928: PopAdLdVar
  loc_C15929: FLdPr Me
  loc_C1592C: MemLdRfVar from_stack_1.global_60
  loc_C1592F: LdPrVar
  loc_C15931: LateMemCall
  loc_C15937: FFreeStr var_AC = ""
  loc_C1593E: FFree1Var var_C0 = ""
  loc_C15941: LitVarStr var_98, "<style type=""text/css"">"
  loc_C15946: PopAdLdVar
  loc_C15947: FLdPr Me
  loc_C1594A: MemLdRfVar from_stack_1.global_60
  loc_C1594D: LdPrVar
  loc_C1594F: LateMemCall
  loc_C15955: LitVarStr var_98, ".Titulo1 {"
  loc_C1595A: PopAdLdVar
  loc_C1595B: FLdPr Me
  loc_C1595E: MemLdRfVar from_stack_1.global_60
  loc_C15961: LdPrVar
  loc_C15963: LateMemCall
  loc_C15969: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C1596E: PopAdLdVar
  loc_C1596F: FLdPr Me
  loc_C15972: MemLdRfVar from_stack_1.global_60
  loc_C15975: LdPrVar
  loc_C15977: LateMemCall
  loc_C1597D: LitVarStr var_98, " font-size: 18px;"
  loc_C15982: PopAdLdVar
  loc_C15983: FLdPr Me
  loc_C15986: MemLdRfVar from_stack_1.global_60
  loc_C15989: LdPrVar
  loc_C1598B: LateMemCall
  loc_C15991: LitVarStr var_98, " font-weight: bold;"
  loc_C15996: PopAdLdVar
  loc_C15997: FLdPr Me
  loc_C1599A: MemLdRfVar from_stack_1.global_60
  loc_C1599D: LdPrVar
  loc_C1599F: LateMemCall
  loc_C159A5: LitVarStr var_98, "}"
  loc_C159AA: PopAdLdVar
  loc_C159AB: FLdPr Me
  loc_C159AE: MemLdRfVar from_stack_1.global_60
  loc_C159B1: LdPrVar
  loc_C159B3: LateMemCall
  loc_C159B9: LitVarStr var_98, ".Titulo2 {"
  loc_C159BE: PopAdLdVar
  loc_C159BF: FLdPr Me
  loc_C159C2: MemLdRfVar from_stack_1.global_60
  loc_C159C5: LdPrVar
  loc_C159C7: LateMemCall
  loc_C159CD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C159D2: PopAdLdVar
  loc_C159D3: FLdPr Me
  loc_C159D6: MemLdRfVar from_stack_1.global_60
  loc_C159D9: LdPrVar
  loc_C159DB: LateMemCall
  loc_C159E1: LitVarStr var_98, " font-size: 14px;"
  loc_C159E6: PopAdLdVar
  loc_C159E7: FLdPr Me
  loc_C159EA: MemLdRfVar from_stack_1.global_60
  loc_C159ED: LdPrVar
  loc_C159EF: LateMemCall
  loc_C159F5: LitVarStr var_98, " font-weight: bold;"
  loc_C159FA: PopAdLdVar
  loc_C159FB: FLdPr Me
  loc_C159FE: MemLdRfVar from_stack_1.global_60
  loc_C15A01: LdPrVar
  loc_C15A03: LateMemCall
  loc_C15A09: LitVarStr var_98, "}"
  loc_C15A0E: PopAdLdVar
  loc_C15A0F: FLdPr Me
  loc_C15A12: MemLdRfVar from_stack_1.global_60
  loc_C15A15: LdPrVar
  loc_C15A17: LateMemCall
  loc_C15A1D: LitVarStr var_98, ".Normal {"
  loc_C15A22: PopAdLdVar
  loc_C15A23: FLdPr Me
  loc_C15A26: MemLdRfVar from_stack_1.global_60
  loc_C15A29: LdPrVar
  loc_C15A2B: LateMemCall
  loc_C15A31: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C15A36: PopAdLdVar
  loc_C15A37: FLdPr Me
  loc_C15A3A: MemLdRfVar from_stack_1.global_60
  loc_C15A3D: LdPrVar
  loc_C15A3F: LateMemCall
  loc_C15A45: LitVarStr var_98, " font-size: 12px;"
  loc_C15A4A: PopAdLdVar
  loc_C15A4B: FLdPr Me
  loc_C15A4E: MemLdRfVar from_stack_1.global_60
  loc_C15A51: LdPrVar
  loc_C15A53: LateMemCall
  loc_C15A59: LitVarStr var_98, " font-style: normal;"
  loc_C15A5E: PopAdLdVar
  loc_C15A5F: FLdPr Me
  loc_C15A62: MemLdRfVar from_stack_1.global_60
  loc_C15A65: LdPrVar
  loc_C15A67: LateMemCall
  loc_C15A6D: LitVarStr var_98, " font-weight: normal;"
  loc_C15A72: PopAdLdVar
  loc_C15A73: FLdPr Me
  loc_C15A76: MemLdRfVar from_stack_1.global_60
  loc_C15A79: LdPrVar
  loc_C15A7B: LateMemCall
  loc_C15A81: LitVarStr var_98, " font-variant: normal;"
  loc_C15A86: PopAdLdVar
  loc_C15A87: FLdPr Me
  loc_C15A8A: MemLdRfVar from_stack_1.global_60
  loc_C15A8D: LdPrVar
  loc_C15A8F: LateMemCall
  loc_C15A95: LitVarStr var_98, "}"
  loc_C15A9A: PopAdLdVar
  loc_C15A9B: FLdPr Me
  loc_C15A9E: MemLdRfVar from_stack_1.global_60
  loc_C15AA1: LdPrVar
  loc_C15AA3: LateMemCall
  loc_C15AA9: LitVarStr var_98, ".Encabezado {"
  loc_C15AAE: PopAdLdVar
  loc_C15AAF: FLdPr Me
  loc_C15AB2: MemLdRfVar from_stack_1.global_60
  loc_C15AB5: LdPrVar
  loc_C15AB7: LateMemCall
  loc_C15ABD: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C15AC2: PopAdLdVar
  loc_C15AC3: FLdPr Me
  loc_C15AC6: MemLdRfVar from_stack_1.global_60
  loc_C15AC9: LdPrVar
  loc_C15ACB: LateMemCall
  loc_C15AD1: LitVarStr var_98, " font-size: 11px;"
  loc_C15AD6: PopAdLdVar
  loc_C15AD7: FLdPr Me
  loc_C15ADA: MemLdRfVar from_stack_1.global_60
  loc_C15ADD: LdPrVar
  loc_C15ADF: LateMemCall
  loc_C15AE5: LitVarStr var_98, " font-weight: bold;"
  loc_C15AEA: PopAdLdVar
  loc_C15AEB: FLdPr Me
  loc_C15AEE: MemLdRfVar from_stack_1.global_60
  loc_C15AF1: LdPrVar
  loc_C15AF3: LateMemCall
  loc_C15AF9: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C15AFE: PopAdLdVar
  loc_C15AFF: FLdPr Me
  loc_C15B02: MemLdRfVar from_stack_1.global_60
  loc_C15B05: LdPrVar
  loc_C15B07: LateMemCall
  loc_C15B0D: LitVarStr var_98, "}"
  loc_C15B12: PopAdLdVar
  loc_C15B13: FLdPr Me
  loc_C15B16: MemLdRfVar from_stack_1.global_60
  loc_C15B19: LdPrVar
  loc_C15B1B: LateMemCall
  loc_C15B21: LitVarStr var_98, ".LineaDato {"
  loc_C15B26: PopAdLdVar
  loc_C15B27: FLdPr Me
  loc_C15B2A: MemLdRfVar from_stack_1.global_60
  loc_C15B2D: LdPrVar
  loc_C15B2F: LateMemCall
  loc_C15B35: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C15B3A: PopAdLdVar
  loc_C15B3B: FLdPr Me
  loc_C15B3E: MemLdRfVar from_stack_1.global_60
  loc_C15B41: LdPrVar
  loc_C15B43: LateMemCall
  loc_C15B49: LitVarStr var_98, " font-size: 10px;"
  loc_C15B4E: PopAdLdVar
  loc_C15B4F: FLdPr Me
  loc_C15B52: MemLdRfVar from_stack_1.global_60
  loc_C15B55: LdPrVar
  loc_C15B57: LateMemCall
  loc_C15B5D: LitVarStr var_98, "}"
  loc_C15B62: PopAdLdVar
  loc_C15B63: FLdPr Me
  loc_C15B66: MemLdRfVar from_stack_1.global_60
  loc_C15B69: LdPrVar
  loc_C15B6B: LateMemCall
  loc_C15B71: LitVarStr var_98, ".Totales {"
  loc_C15B76: PopAdLdVar
  loc_C15B77: FLdPr Me
  loc_C15B7A: MemLdRfVar from_stack_1.global_60
  loc_C15B7D: LdPrVar
  loc_C15B7F: LateMemCall
  loc_C15B85: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C15B8A: PopAdLdVar
  loc_C15B8B: FLdPr Me
  loc_C15B8E: MemLdRfVar from_stack_1.global_60
  loc_C15B91: LdPrVar
  loc_C15B93: LateMemCall
  loc_C15B99: LitVarStr var_98, " font-size: 12px;"
  loc_C15B9E: PopAdLdVar
  loc_C15B9F: FLdPr Me
  loc_C15BA2: MemLdRfVar from_stack_1.global_60
  loc_C15BA5: LdPrVar
  loc_C15BA7: LateMemCall
  loc_C15BAD: LitVarStr var_98, " font-weight: bold;"
  loc_C15BB2: PopAdLdVar
  loc_C15BB3: FLdPr Me
  loc_C15BB6: MemLdRfVar from_stack_1.global_60
  loc_C15BB9: LdPrVar
  loc_C15BBB: LateMemCall
  loc_C15BC1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C15BC6: PopAdLdVar
  loc_C15BC7: FLdPr Me
  loc_C15BCA: MemLdRfVar from_stack_1.global_60
  loc_C15BCD: LdPrVar
  loc_C15BCF: LateMemCall
  loc_C15BD5: LitVarStr var_98, "}"
  loc_C15BDA: PopAdLdVar
  loc_C15BDB: FLdPr Me
  loc_C15BDE: MemLdRfVar from_stack_1.global_60
  loc_C15BE1: LdPrVar
  loc_C15BE3: LateMemCall
  loc_C15BE9: LitVarStr var_98, ".SubTotales {"
  loc_C15BEE: PopAdLdVar
  loc_C15BEF: FLdPr Me
  loc_C15BF2: MemLdRfVar from_stack_1.global_60
  loc_C15BF5: LdPrVar
  loc_C15BF7: LateMemCall
  loc_C15BFD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C15C02: PopAdLdVar
  loc_C15C03: FLdPr Me
  loc_C15C06: MemLdRfVar from_stack_1.global_60
  loc_C15C09: LdPrVar
  loc_C15C0B: LateMemCall
  loc_C15C11: LitVarStr var_98, " font-size: 10px;"
  loc_C15C16: PopAdLdVar
  loc_C15C17: FLdPr Me
  loc_C15C1A: MemLdRfVar from_stack_1.global_60
  loc_C15C1D: LdPrVar
  loc_C15C1F: LateMemCall
  loc_C15C25: LitVarStr var_98, " font-weight: bold;"
  loc_C15C2A: PopAdLdVar
  loc_C15C2B: FLdPr Me
  loc_C15C2E: MemLdRfVar from_stack_1.global_60
  loc_C15C31: LdPrVar
  loc_C15C33: LateMemCall
  loc_C15C39: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C15C3E: PopAdLdVar
  loc_C15C3F: FLdPr Me
  loc_C15C42: MemLdRfVar from_stack_1.global_60
  loc_C15C45: LdPrVar
  loc_C15C47: LateMemCall
  loc_C15C4D: LitVarStr var_98, "}"
  loc_C15C52: PopAdLdVar
  loc_C15C53: FLdPr Me
  loc_C15C56: MemLdRfVar from_stack_1.global_60
  loc_C15C59: LdPrVar
  loc_C15C5B: LateMemCall
  loc_C15C61: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C15C66: PopAdLdVar
  loc_C15C67: FLdPr Me
  loc_C15C6A: MemLdRfVar from_stack_1.global_60
  loc_C15C6D: LdPrVar
  loc_C15C6F: LateMemCall
  loc_C15C75: LitVarStr var_98, "</style>"
  loc_C15C7A: PopAdLdVar
  loc_C15C7B: FLdPr Me
  loc_C15C7E: MemLdRfVar from_stack_1.global_60
  loc_C15C81: LdPrVar
  loc_C15C83: LateMemCall
  loc_C15C89: LitI4 0
  loc_C15C8E: FStStrCopy var_B0
  loc_C15C91: FLdRfVar var_B0
  loc_C15C94: LitI4 0
  loc_C15C99: FStStrCopy var_AC
  loc_C15C9C: FLdRfVar var_AC
  loc_C15C9F: LitI2_Byte &HFF
  loc_C15CA1: PopTmpLdAd2 var_C2
  loc_C15CA4: FLdPr Me
  loc_C15CA7: MemLdRfVar from_stack_1.global_60
  loc_C15CAA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C15CAF: FFreeStr var_AC = ""
  loc_C15CB6: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C15CBB: PopAdLdVar
  loc_C15CBC: FLdPr Me
  loc_C15CBF: MemLdRfVar from_stack_1.global_60
  loc_C15CC2: LdPrVar
  loc_C15CC4: LateMemCall
  loc_C15CCA: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C15CCF: PopAdLdVar
  loc_C15CD0: FLdPr Me
  loc_C15CD3: MemLdRfVar from_stack_1.global_60
  loc_C15CD6: LdPrVar
  loc_C15CD8: LateMemCall
  loc_C15CDE: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C15CE1: LitI2_Byte &H5F
  loc_C15CE3: CStrUI1
  loc_C15CE5: FStStrNoPop var_AC
  loc_C15CE8: ConcatStr
  loc_C15CE9: FStStrNoPop var_B0
  loc_C15CEC: LitStr """ height="""
  loc_C15CEF: ConcatStr
  loc_C15CF0: FStStrNoPop var_C8
  loc_C15CF3: LitI2_Byte &H3C
  loc_C15CF5: CStrUI1
  loc_C15CF7: FStStrNoPop var_CC
  loc_C15CFA: ConcatStr
  loc_C15CFB: FStStrNoPop var_D0
  loc_C15CFE: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C15D01: ConcatStr
  loc_C15D02: FStStrNoPop var_D4
  loc_C15D05: LitStr "Municipalidad de Guaymallén"
  loc_C15D08: ConcatStr
  loc_C15D09: FStStrNoPop var_D8
  loc_C15D0C: LitStr "</p>"
  loc_C15D0F: ConcatStr
  loc_C15D10: CVarStr var_C0
  loc_C15D13: PopAdLdVar
  loc_C15D14: FLdPr Me
  loc_C15D17: MemLdRfVar from_stack_1.global_60
  loc_C15D1A: LdPrVar
  loc_C15D1C: LateMemCall
  loc_C15D22: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C15D33: FFree1Var var_C0 = ""
  loc_C15D36: LitStr "    <p>"
  loc_C15D39: FLdRfVar var_AC
  loc_C15D3C: FLdPr Me
  loc_C15D3F:  = Me.Caption
  loc_C15D44: ILdRf var_AC
  loc_C15D47: ConcatStr
  loc_C15D48: FStStrNoPop var_B0
  loc_C15D4B: LitStr "</p></th>"
  loc_C15D4E: ConcatStr
  loc_C15D4F: CVarStr var_C0
  loc_C15D52: PopAdLdVar
  loc_C15D53: FLdPr Me
  loc_C15D56: MemLdRfVar from_stack_1.global_60
  loc_C15D59: LdPrVar
  loc_C15D5B: LateMemCall
  loc_C15D61: FFreeStr var_AC = ""
  loc_C15D68: FFree1Var var_C0 = ""
  loc_C15D6B: LitVarStr var_98, "  </tr>"
  loc_C15D70: PopAdLdVar
  loc_C15D71: FLdPr Me
  loc_C15D74: MemLdRfVar from_stack_1.global_60
  loc_C15D77: LdPrVar
  loc_C15D79: LateMemCall
  loc_C15D7F: LitVarStr var_98, "  <tr>"
  loc_C15D84: PopAdLdVar
  loc_C15D85: FLdPr Me
  loc_C15D88: MemLdRfVar from_stack_1.global_60
  loc_C15D8B: LdPrVar
  loc_C15D8D: LateMemCall
  loc_C15D93: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_C15D98: PopAdLdVar
  loc_C15D99: FLdPr Me
  loc_C15D9C: MemLdRfVar from_stack_1.global_60
  loc_C15D9F: LdPrVar
  loc_C15DA1: LateMemCall
  loc_C15DA7: LitVarStr var_98, "  </tr>"
  loc_C15DAC: PopAdLdVar
  loc_C15DAD: FLdPr Me
  loc_C15DB0: MemLdRfVar from_stack_1.global_60
  loc_C15DB3: LdPrVar
  loc_C15DB5: LateMemCall
  loc_C15DBB: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_C15DC0: PopAdLdVar
  loc_C15DC1: FLdPr Me
  loc_C15DC4: MemLdRfVar from_stack_1.global_60
  loc_C15DC7: LdPrVar
  loc_C15DC9: LateMemCall
  loc_C15DCF: FLdRfVar var_C2
  loc_C15DD2: FLdPr Me
  loc_C15DD5: VCallAd Control_ID_CuentaContableOpt
  loc_C15DD8: FStAdFunc var_DC
  loc_C15DDB: FLdPr var_DC
  loc_C15DDE:  = Me.Value
  loc_C15DE3: FLdI2 var_C2
  loc_C15DE6: LitI2_Byte &HFF
  loc_C15DE8: EqI2
  loc_C15DE9: FFree1Ad var_DC
  loc_C15DEC: BranchF loc_C15E60
  loc_C15DEF: LitStr "    <td align=""left"" valign=""top""><strong>Cuenta Contable: </strong>"
  loc_C15DF2: FLdPr Me
  loc_C15DF5: VCallAd Control_ID_ActiConcMsk
  loc_C15DF8: FStAdFunc var_DC
  loc_C15DFB: FLdPr var_DC
  loc_C15DFE: LateIdLdVar var_C0 DispID_22 0
  loc_C15E05: CStrVarTmp
  loc_C15E06: FStStrNoPop var_AC
  loc_C15E09: ConcatStr
  loc_C15E0A: FStStrNoPop var_B0
  loc_C15E0D: LitStr " - "
  loc_C15E10: ConcatStr
  loc_C15E11: FStStrNoPop var_CC
  loc_C15E14: FLdRfVar var_C8
  loc_C15E17: FLdPr Me
  loc_C15E1A: VCallAd Control_ID_DetaActiLbl
  loc_C15E1D: FStAdFunc var_E0
  loc_C15E20: FLdPr var_E0
  loc_C15E23:  = Me.Caption
  loc_C15E28: ILdRf var_C8
  loc_C15E2B: ConcatStr
  loc_C15E2C: FStStrNoPop var_D0
  loc_C15E2F: LitStr "</td>"
  loc_C15E32: ConcatStr
  loc_C15E33: CVarStr var_F0
  loc_C15E36: PopAdLdVar
  loc_C15E37: FLdPr Me
  loc_C15E3A: MemLdRfVar from_stack_1.global_60
  loc_C15E3D: LdPrVar
  loc_C15E3F: LateMemCall
  loc_C15E45: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_C15E52: FFreeAd var_DC = ""
  loc_C15E59: FFreeVar var_C0 = ""
  loc_C15E60: FLdRfVar var_C2
  loc_C15E63: FLdPr Me
  loc_C15E66: VCallAd Control_ID_ConceptoOpt
  loc_C15E69: FStAdFunc var_DC
  loc_C15E6C: FLdPr var_DC
  loc_C15E6F:  = Me.Value
  loc_C15E74: FLdI2 var_C2
  loc_C15E77: LitI2_Byte &HFF
  loc_C15E79: EqI2
  loc_C15E7A: FFree1Ad var_DC
  loc_C15E7D: BranchF loc_C15EF1
  loc_C15E80: LitStr "    <td align=""left"" valign=""top""><strong>Concepto: </strong>"
  loc_C15E83: FLdPr Me
  loc_C15E86: VCallAd Control_ID_CodiConcMsk
  loc_C15E89: FStAdFunc var_DC
  loc_C15E8C: FLdPr var_DC
  loc_C15E8F: LateIdLdVar var_C0 DispID_22 0
  loc_C15E96: CStrVarTmp
  loc_C15E97: FStStrNoPop var_AC
  loc_C15E9A: ConcatStr
  loc_C15E9B: FStStrNoPop var_B0
  loc_C15E9E: LitStr " - "
  loc_C15EA1: ConcatStr
  loc_C15EA2: FStStrNoPop var_CC
  loc_C15EA5: FLdRfVar var_C8
  loc_C15EA8: FLdPr Me
  loc_C15EAB: VCallAd Control_ID_DetaConcLbl
  loc_C15EAE: FStAdFunc var_E0
  loc_C15EB1: FLdPr var_E0
  loc_C15EB4:  = Me.Caption
  loc_C15EB9: ILdRf var_C8
  loc_C15EBC: ConcatStr
  loc_C15EBD: FStStrNoPop var_D0
  loc_C15EC0: LitStr "</td>"
  loc_C15EC3: ConcatStr
  loc_C15EC4: CVarStr var_F0
  loc_C15EC7: PopAdLdVar
  loc_C15EC8: FLdPr Me
  loc_C15ECB: MemLdRfVar from_stack_1.global_60
  loc_C15ECE: LdPrVar
  loc_C15ED0: LateMemCall
  loc_C15ED6: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_C15EE3: FFreeAd var_DC = ""
  loc_C15EEA: FFreeVar var_C0 = ""
  loc_C15EF1: FLdRfVar var_C2
  loc_C15EF4: FLdPr Me
  loc_C15EF7: VCallAd Control_ID_OficinaOpt
  loc_C15EFA: FStAdFunc var_DC
  loc_C15EFD: FLdPr var_DC
  loc_C15F00:  = Me.Value
  loc_C15F05: FLdI2 var_C2
  loc_C15F08: LitI2_Byte &HFF
  loc_C15F0A: EqI2
  loc_C15F0B: FFree1Ad var_DC
  loc_C15F0E: BranchF loc_C15F52
  loc_C15F11: LitStr "    <td align=""left"" valign=""top""><strong>Oficina: </strong>"
  loc_C15F14: FLdRfVar var_AC
  loc_C15F17: FLdPr Me
  loc_C15F1A: VCallAd Control_ID_OficinaCbo
  loc_C15F1D: FStAdFunc var_DC
  loc_C15F20: FLdPr var_DC
  loc_C15F23:  = Me.Text
  loc_C15F28: ILdRf var_AC
  loc_C15F2B: ConcatStr
  loc_C15F2C: FStStrNoPop var_B0
  loc_C15F2F: LitStr "</td>"
  loc_C15F32: ConcatStr
  loc_C15F33: CVarStr var_C0
  loc_C15F36: PopAdLdVar
  loc_C15F37: FLdPr Me
  loc_C15F3A: MemLdRfVar from_stack_1.global_60
  loc_C15F3D: LdPrVar
  loc_C15F3F: LateMemCall
  loc_C15F45: FFreeStr var_AC = ""
  loc_C15F4C: FFree1Ad var_DC
  loc_C15F4F: FFree1Var var_C0 = ""
  loc_C15F52: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_C15F55: FLdPr Me
  loc_C15F58: VCallAd Control_ID_DesdeMsk
  loc_C15F5B: FStAdFunc var_DC
  loc_C15F5E: FLdPr var_DC
  loc_C15F61: LateIdLdVar var_C0 DispID_15 0
  loc_C15F68: CStrVarTmp
  loc_C15F69: FStStrNoPop var_AC
  loc_C15F6C: ConcatStr
  loc_C15F6D: FStStrNoPop var_B0
  loc_C15F70: LitStr "</td>"
  loc_C15F73: ConcatStr
  loc_C15F74: CVarStr var_F0
  loc_C15F77: PopAdLdVar
  loc_C15F78: FLdPr Me
  loc_C15F7B: MemLdRfVar from_stack_1.global_60
  loc_C15F7E: LdPrVar
  loc_C15F80: LateMemCall
  loc_C15F86: FFreeStr var_AC = ""
  loc_C15F8D: FFree1Ad var_DC
  loc_C15F90: FFreeVar var_C0 = ""
  loc_C15F97: LitStr "    <td align=""center"" valign=""top""><strong>Hasta: </strong>"
  loc_C15F9A: FLdPr Me
  loc_C15F9D: VCallAd Control_ID_HastaMsk
  loc_C15FA0: FStAdFunc var_DC
  loc_C15FA3: FLdPr var_DC
  loc_C15FA6: LateIdLdVar var_C0 DispID_15 0
  loc_C15FAD: CStrVarTmp
  loc_C15FAE: FStStrNoPop var_AC
  loc_C15FB1: ConcatStr
  loc_C15FB2: FStStrNoPop var_B0
  loc_C15FB5: LitStr "</td>"
  loc_C15FB8: ConcatStr
  loc_C15FB9: CVarStr var_F0
  loc_C15FBC: PopAdLdVar
  loc_C15FBD: FLdPr Me
  loc_C15FC0: MemLdRfVar from_stack_1.global_60
  loc_C15FC3: LdPrVar
  loc_C15FC5: LateMemCall
  loc_C15FCB: FFreeStr var_AC = ""
  loc_C15FD2: FFree1Ad var_DC
  loc_C15FD5: FFreeVar var_C0 = ""
  loc_C15FDC: LitVarStr var_98, "    <td align=""right"" valign=""top"">&nbsp;</td>"
  loc_C15FE1: PopAdLdVar
  loc_C15FE2: FLdPr Me
  loc_C15FE5: MemLdRfVar from_stack_1.global_60
  loc_C15FE8: LdPrVar
  loc_C15FEA: LateMemCall
  loc_C15FF0: LitVarStr var_98, "  </tr>"
  loc_C15FF5: PopAdLdVar
  loc_C15FF6: FLdPr Me
  loc_C15FF9: MemLdRfVar from_stack_1.global_60
  loc_C15FFC: LdPrVar
  loc_C15FFE: LateMemCall
  loc_C16004: LitVarStr var_98, "</table>"
  loc_C16009: PopAdLdVar
  loc_C1600A: FLdPr Me
  loc_C1600D: MemLdRfVar from_stack_1.global_60
  loc_C16010: LdPrVar
  loc_C16012: LateMemCall
  loc_C16018: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C1601D: PopAdLdVar
  loc_C1601E: FLdPr Me
  loc_C16021: MemLdRfVar from_stack_1.global_60
  loc_C16024: LdPrVar
  loc_C16026: LateMemCall
  loc_C1602C: LitVarStr var_98, "  <thead>"
  loc_C16031: PopAdLdVar
  loc_C16032: FLdPr Me
  loc_C16035: MemLdRfVar from_stack_1.global_60
  loc_C16038: LdPrVar
  loc_C1603A: LateMemCall
  loc_C16040: FLdRfVar var_C2
  loc_C16043: FLdPr Me
  loc_C16046: VCallAd Control_ID_CuentaContableOpt
  loc_C16049: FStAdFunc var_DC
  loc_C1604C: FLdPr var_DC
  loc_C1604F:  = Me.Value
  loc_C16054: FLdI2 var_C2
  loc_C16057: LitI2_Byte &HFF
  loc_C16059: EqI2
  loc_C1605A: FFree1Ad var_DC
  loc_C1605D: BranchF loc_C160D1
  loc_C16060: LitStr "  <tr><th colspan=""15"" align=""center"" class=""Encabezado"">Cuenta Contable: "
  loc_C16063: FLdPr Me
  loc_C16066: VCallAd Control_ID_ActiConcMsk
  loc_C16069: FStAdFunc var_DC
  loc_C1606C: FLdPr var_DC
  loc_C1606F: LateIdLdVar var_C0 DispID_22 0
  loc_C16076: CStrVarTmp
  loc_C16077: FStStrNoPop var_AC
  loc_C1607A: ConcatStr
  loc_C1607B: FStStrNoPop var_B0
  loc_C1607E: LitStr " - "
  loc_C16081: ConcatStr
  loc_C16082: FStStrNoPop var_CC
  loc_C16085: FLdRfVar var_C8
  loc_C16088: FLdPr Me
  loc_C1608B: VCallAd Control_ID_DetaActiLbl
  loc_C1608E: FStAdFunc var_E0
  loc_C16091: FLdPr var_E0
  loc_C16094:  = Me.Caption
  loc_C16099: ILdRf var_C8
  loc_C1609C: ConcatStr
  loc_C1609D: FStStrNoPop var_D0
  loc_C160A0: LitStr "</th></tr>"
  loc_C160A3: ConcatStr
  loc_C160A4: CVarStr var_F0
  loc_C160A7: PopAdLdVar
  loc_C160A8: FLdPr Me
  loc_C160AB: MemLdRfVar from_stack_1.global_60
  loc_C160AE: LdPrVar
  loc_C160B0: LateMemCall
  loc_C160B6: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_C160C3: FFreeAd var_DC = ""
  loc_C160CA: FFreeVar var_C0 = ""
  loc_C160D1: FLdRfVar var_C2
  loc_C160D4: FLdPr Me
  loc_C160D7: VCallAd Control_ID_ConceptoOpt
  loc_C160DA: FStAdFunc var_DC
  loc_C160DD: FLdPr var_DC
  loc_C160E0:  = Me.Value
  loc_C160E5: FLdI2 var_C2
  loc_C160E8: LitI2_Byte &HFF
  loc_C160EA: EqI2
  loc_C160EB: FFree1Ad var_DC
  loc_C160EE: BranchF loc_C16162
  loc_C160F1: LitStr "  <tr><th colspan=""15"" align=""center"" class=""Encabezado"">Concepto: "
  loc_C160F4: FLdPr Me
  loc_C160F7: VCallAd Control_ID_CodiConcMsk
  loc_C160FA: FStAdFunc var_DC
  loc_C160FD: FLdPr var_DC
  loc_C16100: LateIdLdVar var_C0 DispID_22 0
  loc_C16107: CStrVarTmp
  loc_C16108: FStStrNoPop var_AC
  loc_C1610B: ConcatStr
  loc_C1610C: FStStrNoPop var_B0
  loc_C1610F: LitStr " - "
  loc_C16112: ConcatStr
  loc_C16113: FStStrNoPop var_CC
  loc_C16116: FLdRfVar var_C8
  loc_C16119: FLdPr Me
  loc_C1611C: VCallAd Control_ID_DetaConcLbl
  loc_C1611F: FStAdFunc var_E0
  loc_C16122: FLdPr var_E0
  loc_C16125:  = Me.Caption
  loc_C1612A: ILdRf var_C8
  loc_C1612D: ConcatStr
  loc_C1612E: FStStrNoPop var_D0
  loc_C16131: LitStr "</th></tr>"
  loc_C16134: ConcatStr
  loc_C16135: CVarStr var_F0
  loc_C16138: PopAdLdVar
  loc_C16139: FLdPr Me
  loc_C1613C: MemLdRfVar from_stack_1.global_60
  loc_C1613F: LdPrVar
  loc_C16141: LateMemCall
  loc_C16147: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_C8 = ""
  loc_C16154: FFreeAd var_DC = ""
  loc_C1615B: FFreeVar var_C0 = ""
  loc_C16162: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C16167: PopAdLdVar
  loc_C16168: FLdPr Me
  loc_C1616B: MemLdRfVar from_stack_1.global_60
  loc_C1616E: LdPrVar
  loc_C16170: LateMemCall
  loc_C16176: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_C1617B: PopAdLdVar
  loc_C1617C: FLdPr Me
  loc_C1617F: MemLdRfVar from_stack_1.global_60
  loc_C16182: LdPrVar
  loc_C16184: LateMemCall
  loc_C1618A: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_C1618F: PopAdLdVar
  loc_C16190: FLdPr Me
  loc_C16193: MemLdRfVar from_stack_1.global_60
  loc_C16196: LdPrVar
  loc_C16198: LateMemCall
  loc_C1619E: LitVarStr var_98, "    <th>S. Inicial</th>"
  loc_C161A3: PopAdLdVar
  loc_C161A4: FLdPr Me
  loc_C161A7: MemLdRfVar from_stack_1.global_60
  loc_C161AA: LdPrVar
  loc_C161AC: LateMemCall
  loc_C161B2: LitVarStr var_98, "    <th>Aforos</th>"
  loc_C161B7: PopAdLdVar
  loc_C161B8: FLdPr Me
  loc_C161BB: MemLdRfVar from_stack_1.global_60
  loc_C161BE: LdPrVar
  loc_C161C0: LateMemCall
  loc_C161C6: LitVarStr var_98, "    <th>Débitos</th>"
  loc_C161CB: PopAdLdVar
  loc_C161CC: FLdPr Me
  loc_C161CF: MemLdRfVar from_stack_1.global_60
  loc_C161D2: LdPrVar
  loc_C161D4: LateMemCall
  loc_C161DA: LitVarStr var_98, "    <th>Créditos</th>"
  loc_C161DF: PopAdLdVar
  loc_C161E0: FLdPr Me
  loc_C161E3: MemLdRfVar from_stack_1.global_60
  loc_C161E6: LdPrVar
  loc_C161E8: LateMemCall
  loc_C161EE: LitVarStr var_98, "    <th>Pres.</th>"
  loc_C161F3: PopAdLdVar
  loc_C161F4: FLdPr Me
  loc_C161F7: MemLdRfVar from_stack_1.global_60
  loc_C161FA: LdPrVar
  loc_C161FC: LateMemCall
  loc_C16202: LitVarStr var_98, "    <th>Condo.</th>"
  loc_C16207: PopAdLdVar
  loc_C16208: FLdPr Me
  loc_C1620B: MemLdRfVar from_stack_1.global_60
  loc_C1620E: LdPrVar
  loc_C16210: LateMemCall
  loc_C16216: LitVarStr var_98, "    <th>Exenc.</th>"
  loc_C1621B: PopAdLdVar
  loc_C1621C: FLdPr Me
  loc_C1621F: MemLdRfVar from_stack_1.global_60
  loc_C16222: LdPrVar
  loc_C16224: LateMemCall
  loc_C1622A: LitVarStr var_98, "    <th>Desc.</th>"
  loc_C1622F: PopAdLdVar
  loc_C16230: FLdPr Me
  loc_C16233: MemLdRfVar from_stack_1.global_60
  loc_C16236: LdPrVar
  loc_C16238: LateMemCall
  loc_C1623E: LitVarStr var_98, "    <th>Cobrado</th>"
  loc_C16243: PopAdLdVar
  loc_C16244: FLdPr Me
  loc_C16247: MemLdRfVar from_stack_1.global_60
  loc_C1624A: LdPrVar
  loc_C1624C: LateMemCall
  loc_C16252: LitVarStr var_98, "    <th>S. Final</th>"
  loc_C16257: PopAdLdVar
  loc_C16258: FLdPr Me
  loc_C1625B: MemLdRfVar from_stack_1.global_60
  loc_C1625E: LdPrVar
  loc_C16260: LateMemCall
  loc_C16266: LitVarStr var_98, "    <th>Apremio</th>"
  loc_C1626B: PopAdLdVar
  loc_C1626C: FLdPr Me
  loc_C1626F: MemLdRfVar from_stack_1.global_60
  loc_C16272: LdPrVar
  loc_C16274: LateMemCall
  loc_C1627A: LitVarStr var_98, "    <th>Juicio</th>"
  loc_C1627F: PopAdLdVar
  loc_C16280: FLdPr Me
  loc_C16283: MemLdRfVar from_stack_1.global_60
  loc_C16286: LdPrVar
  loc_C16288: LateMemCall
  loc_C1628E: LitVarStr var_98, "    <th>Inst.</th>"
  loc_C16293: PopAdLdVar
  loc_C16294: FLdPr Me
  loc_C16297: MemLdRfVar from_stack_1.global_60
  loc_C1629A: LdPrVar
  loc_C1629C: LateMemCall
  loc_C162A2: LitVarStr var_98, "  </tr>"
  loc_C162A7: PopAdLdVar
  loc_C162A8: FLdPr Me
  loc_C162AB: MemLdRfVar from_stack_1.global_60
  loc_C162AE: LdPrVar
  loc_C162B0: LateMemCall
  loc_C162B6: LitVarStr var_98, "  </thead>"
  loc_C162BB: PopAdLdVar
  loc_C162BC: FLdPr Me
  loc_C162BF: MemLdRfVar from_stack_1.global_60
  loc_C162C2: LdPrVar
  loc_C162C4: LateMemCall
  loc_C162CA: ExitProcHresult
End Function

Private Function Proc_98_33_A0AB58() 'A0AB58
  'Data Table: 4F55A0
  loc_A0AB18: LitVarStr var_94, "</table>"
  loc_A0AB1D: PopAdLdVar
  loc_A0AB1E: FLdPr Me
  loc_A0AB21: MemLdRfVar from_stack_1.global_60
  loc_A0AB24: LdPrVar
  loc_A0AB26: LateMemCall
  loc_A0AB2C: LitVarStr var_94, "</body>"
  loc_A0AB31: PopAdLdVar
  loc_A0AB32: FLdPr Me
  loc_A0AB35: MemLdRfVar from_stack_1.global_60
  loc_A0AB38: LdPrVar
  loc_A0AB3A: LateMemCall
  loc_A0AB40: LitVarStr var_94, "</html>"
  loc_A0AB45: PopAdLdVar
  loc_A0AB46: FLdPr Me
  loc_A0AB49: MemLdRfVar from_stack_1.global_60
  loc_A0AB4C: LdPrVar
  loc_A0AB4E: LateMemCall
  loc_A0AB54: ExitProcHresult
End Function
