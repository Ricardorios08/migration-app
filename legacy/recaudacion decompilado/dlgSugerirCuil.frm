VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form dlgSugerirCuil
  Caption = "Generador de CUIT/CUIL"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 4 'Fixed ToolWindow
  'Icon = n/a
  LinkTopic = "dlgSugerirCuil"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 48
  ClientTop = 360
  ClientWidth = 4668
  ClientHeight = 3312
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame4
    Caption = "CUIT / CUIL"
    Left = 120
    Top = 2400
    Width = 4215
    Height = 855
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
    Begin VB.CommandButton butGenerar
      Caption = "Generar"
      Left = 2160
      Top = 360
      Width = 1455
      Height = 375
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
    End
    Begin VB.Label labelCuitCuil
      Left = 120
      Top = 360
      Width = 1935
      Height = 375
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
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
  Begin VB.Frame Frame3
    Caption = "Documento"
    Left = 120
    Top = 1560
    Width = 4215
    Height = 735
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
    Begin MSMask.MaskEdBox DocumentoMsk
      Left = 2400
      Top = 240
      Width = 1455
      Height = 360
      TabIndex = 10
      OleObjectBlob = "dlgSugerirCuil.frx":0000
    End
  End
  Begin VB.Frame Frame2
    Caption = "Sexo"
    Left = 120
    Top = 840
    Width = 4215
    Height = 615
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optFemenino
      Caption = "Femenino"
      Left = 2520
      Top = 240
      Width = 1455
      Height = 255
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
    Begin VB.OptionButton optMasculino
      Caption = "Masculino"
      Left = 840
      Top = 240
      Width = 1575
      Height = 255
      TabIndex = 4
      Value = 255
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
    Caption = "Persona"
    Left = 120
    Top = 120
    Width = 4215
    Height = 615
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.OptionButton optJuridica
      Caption = "Jurídica"
      Left = 2520
      Top = 240
      Width = 1215
      Height = 255
      TabIndex = 2
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
    Begin VB.OptionButton optFisica
      Caption = "Física"
      Left = 840
      Top = 240
      Width = 1575
      Height = 255
      TabIndex = 1
      Value = 255
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
End

Attribute VB_Name = "dlgSugerirCuil"


Private Sub butGenerar_Click() 'ACC1E4
  'Data Table: 41E220
  loc_ACC0D4: FLdRfVar var_92
  loc_ACC0D7: FLdPrThis
  loc_ACC0D8: VCallAd Control_ID_optFisica
  loc_ACC0DB: FStAdFunc var_90
  loc_ACC0DE: FLdPr var_90
  loc_ACC0E1:  = Me.Value
  loc_ACC0E6: FLdI2 var_92
  loc_ACC0E9: FStI2 var_86
  loc_ACC0EC: FFree1Ad var_90
  loc_ACC0EF: FLdRfVar var_92
  loc_ACC0F2: FLdPrThis
  loc_ACC0F3: VCallAd Control_ID_optMasculino
  loc_ACC0F6: FStAdFunc var_90
  loc_ACC0F9: FLdPr var_90
  loc_ACC0FC:  = Me.Value
  loc_ACC101: FLdI2 var_92
  loc_ACC104: FStI2 var_88
  loc_ACC107: FFree1Ad var_90
  loc_ACC10A: FLdPrThis
  loc_ACC10B: VCallAd Control_ID_DocumentoMsk
  loc_ACC10E: FStAdFunc var_90
  loc_ACC111: FLdPr var_90
  loc_ACC114: LateIdLdVar var_A4 DispID_22 0
  loc_ACC11B: CStrVarTmp
  loc_ACC11C: CVarStr var_B4
  loc_ACC11F: FLdRfVar var_C4
  loc_ACC122: ImpAdCallFPR4  = Trim()
  loc_ACC127: FLdRfVar var_C4
  loc_ACC12A: CStrVarTmp
  loc_ACC12B: FStStr var_8C
  loc_ACC12E: FFree1Ad var_90
  loc_ACC131: FFreeVar var_A4 = "": var_B4 = ""
  loc_ACC13A: LitI2_Byte 0
  loc_ACC13C: PopTmpLdAd2 var_92
  loc_ACC13F: Call DocumentoMsk_UnknownEvent_8()
  loc_ACC144: FLdPr Me
  loc_ACC147: MemLdStr global_52
  loc_ACC14A: LitStr vbNullString
  loc_ACC14D: NeStr
  loc_ACC14F: BranchF loc_ACC153
  loc_ACC152: ExitProcHresult
  loc_ACC153: FLdRfVar var_8C
  loc_ACC156: FLdRfVar var_88
  loc_ACC159: FLdRfVar var_86
  loc_ACC15C: ImpAdCallI2 Proc_270_136_B3CF04(, , )
  loc_ACC161: FStStrNoPop var_C8
  loc_ACC164: FLdPrThis
  loc_ACC165: VCallAd Control_ID_labelCuitCuil
  loc_ACC168: FStAdFunc var_90
  loc_ACC16B: FLdPr var_90
  loc_ACC16E: Me.Caption = from_stack_1
  loc_ACC173: FFree1Str var_C8
  loc_ACC176: FFree1Ad var_90
  loc_ACC179: FLdRfVar var_C8
  loc_ACC17C: FLdPrThis
  loc_ACC17D: VCallAd Control_ID_labelCuitCuil
  loc_ACC180: FStAdFunc var_90
  loc_ACC183: FLdPr var_90
  loc_ACC186:  = Me.Caption
  loc_ACC18B: LitI4 0
  loc_ACC190: LitI4 -1
  loc_ACC195: LitI4 1
  loc_ACC19A: LitStr vbNullString
  loc_ACC19D: LitStr "-"
  loc_ACC1A0: ILdRf var_C8
  loc_ACC1A3: ImpAdCallI2 Replace(, , , , , )
  loc_ACC1A8: FStStrNoPop var_CC
  loc_ACC1AB: ImpAdLdRf MemVar_D94A10
  loc_ACC1AE: NewIfNullPr dlgCreaPersona
  loc_ACC1B1: VCallAd Control_ID_CucuPersTxt
  loc_ACC1B4: FStAdFunc var_D0
  loc_ACC1B7: FLdPr var_D0
  loc_ACC1BA: dlgCreaPersona.TextBox.Text = from_stack_1
  loc_ACC1BF: FFreeStr var_C8 = ""
  loc_ACC1C6: FFreeAd var_90 = ""
  loc_ACC1CD: ILdRf Me
  loc_ACC1D0: FStAdNoPop
  loc_ACC1D4: ImpAdLdRf MemVar_D9C5D8
  loc_ACC1D7: NewIfNullPr Global
  loc_ACC1DA: Global.Unload from_stack_1
  loc_ACC1DF: FFree1Ad var_90
  loc_ACC1E2: ExitProcHresult
End Sub

Private Sub DocumentoMsk_UnknownEvent_0 '9BC4B0
  'Data Table: 41E220
  loc_9BC49C: FLdPr Me
  loc_9BC49F: VCallAd Control_ID_DocumentoMsk
  loc_9BC4A2: CVarAd
  loc_9BC4A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC4AB: FFree1Var var_94 = ""
  loc_9BC4AE: ExitProcHresult
End Sub

Private Function DocumentoMsk_UnknownEvent_8(arg_C) 'AA32E0
  'Data Table: 41E220
  loc_AA3224: FLdPr Me
  loc_AA3227: VCallAd Control_ID_DocumentoMsk
  loc_AA322A: FStAdFunc var_88
  loc_AA322D: FLdPr var_88
  loc_AA3230: LateIdLdVar var_98 DispID_0 0
  loc_AA3237: PopAd
  loc_AA3239: LitI2_Byte 0
  loc_AA323B: LitI2_Byte 0
  loc_AA323D: FLdRfVar var_98
  loc_AA3240: CStrVarTmp
  loc_AA3241: FStStrNoPop var_9C
  loc_AA3244: LitStr "Numero de Documento"
  loc_AA3247: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AA324C: FStStrNoPop var_A0
  loc_AA324F: FLdPr Me
  loc_AA3252: MemStStrCopy
  loc_AA3256: FFreeStr var_9C = ""
  loc_AA325D: FFree1Ad var_88
  loc_AA3260: FFree1Var var_98 = ""
  loc_AA3263: FLdPr Me
  loc_AA3266: MemLdStr global_52
  loc_AA3269: LitStr vbNullString
  loc_AA326C: NeStr
  loc_AA326E: BranchF loc_AA3294
  loc_AA3271: FLdPr Me
  loc_AA3274: MemLdStr global_52
  loc_AA3277: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA327C: FLdPr Me
  loc_AA327F: VCallAd Control_ID_DocumentoMsk
  loc_AA3282: CVarAd
  loc_AA3286: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA328B: FFree1Var var_98 = ""
  loc_AA328E: LitI2_Byte &HFF
  loc_AA3290: IStI2 arg_C
  loc_AA3293: ExitProcHresult
  loc_AA3294: FLdPr Me
  loc_AA3297: VCallAd Control_ID_DocumentoMsk
  loc_AA329A: FStAdFunc var_88
  loc_AA329D: FLdPr var_88
  loc_AA32A0: LateIdLdVar var_98 DispID_22 0
  loc_AA32A7: CStrVarTmp
  loc_AA32A8: FStStrNoPop var_9C
  loc_AA32AB: FnLenStr
  loc_AA32AC: LitI4 8
  loc_AA32B1: LtI4
  loc_AA32B2: FFree1Str var_9C
  loc_AA32B5: FFree1Ad var_88
  loc_AA32B8: FFree1Var var_98 = ""
  loc_AA32BB: BranchF loc_AA32DE
  loc_AA32BE: LitStr "Debe ingresar 8 dígitos. Verifique..."
  loc_AA32C1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AA32C6: FLdPr Me
  loc_AA32C9: VCallAd Control_ID_DocumentoMsk
  loc_AA32CC: CVarAd
  loc_AA32D0: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AA32D5: FFree1Var var_98 = ""
  loc_AA32D8: LitI2_Byte &HFF
  loc_AA32DA: IStI2 arg_C
  loc_AA32DD: ExitProcHresult
  loc_AA32DE: ExitProcHresult
End Function
