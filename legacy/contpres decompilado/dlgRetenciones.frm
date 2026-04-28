VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form dlgRetenciones
  Caption = "Retenciones por proveedor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "dlgRetenciones.frx":0000
  LinkTopic = "Form1"
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 14070
  ClientHeight = 5025
  StartUpPosition = 2 'CenterScreen
  Begin MSFlexGridLib.MSFlexGrid MSFlexGrid
    Left = 120
    Top = 1440
    Width = 13695
    Height = 2415
    TabIndex = 1
    OleObjectBlob = "dlgRetenciones.frx":08CA
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 6240
    Top = 4200
    Width = 1335
    Height = 495
    TabIndex = 0
    Tag = "2"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label LabelDetaProv
    Left = 2760
    Top = 480
    Width = 11055
    Height = 495
    TabIndex = 3
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
  Begin VB.Label LabelCucuPers
    Left = 360
    Top = 480
    Width = 2175
    Height = 495
    TabIndex = 2
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
End

Attribute VB_Name = "dlgRetenciones"


Private Sub OKButton_Click() '955234
  'Data Table: 408C30
  loc_95521C: ILdRf Me
  loc_95521F: FStAdNoPop
  loc_955223: ImpAdLdRf MemVar_C44F9C
  loc_955226: NewIfNullPr Me
  loc_955229: Me.Global.Unload from_stack_1
  loc_95522E: FFree1Ad var_88
  loc_955231: ExitProcHresult
End Sub

Private Sub Form_Load() 'A86C60
  'Data Table: 408C30
  loc_A86818: FLdPr Me
  loc_A8681B: VCallAd Control_ID_MSFlexGrid
  loc_A8681E: FStAdFunc var_88
  loc_A86821: LitVarI4
  loc_A86829: PopAdLdVar
  loc_A8682A: LitVarI4
  loc_A86832: PopAdLdVar
  loc_A86833: FLdPr var_88
  loc_A86836: LateIdCallSt
  loc_A8683E: LitVarI4
  loc_A86846: PopAdLdVar
  loc_A86847: LitVarI4
  loc_A8684F: PopAdLdVar
  loc_A86850: FLdPr var_88
  loc_A86853: LateIdCallSt
  loc_A8685B: LitVarI4
  loc_A86863: PopAdLdVar
  loc_A86864: LitVarI4
  loc_A8686C: PopAdLdVar
  loc_A8686D: FLdPr var_88
  loc_A86870: LateIdCallSt
  loc_A86878: LitVarI4
  loc_A86880: PopAdLdVar
  loc_A86881: LitVarI4
  loc_A86889: PopAdLdVar
  loc_A8688A: FLdPr var_88
  loc_A8688D: LateIdCallSt
  loc_A86895: LitVarI4
  loc_A8689D: PopAdLdVar
  loc_A8689E: LitVarI4
  loc_A868A6: PopAdLdVar
  loc_A868A7: FLdPr var_88
  loc_A868AA: LateIdCallSt
  loc_A868B2: LitVarI4
  loc_A868BA: PopAdLdVar
  loc_A868BB: LitVarI4
  loc_A868C3: PopAdLdVar
  loc_A868C4: FLdPr var_88
  loc_A868C7: LateIdCallSt
  loc_A868CF: LitVarI4
  loc_A868D7: PopAdLdVar
  loc_A868D8: LitVarI4
  loc_A868E0: PopAdLdVar
  loc_A868E1: FLdPr var_88
  loc_A868E4: LateIdCallSt
  loc_A868EC: LitVarI4
  loc_A868F4: PopAdLdVar
  loc_A868F5: LitVarI4
  loc_A868FD: PopAdLdVar
  loc_A868FE: FLdPr var_88
  loc_A86901: LateIdCallSt
  loc_A86909: LitVarI4
  loc_A86911: PopAdLdVar
  loc_A86912: LitVarI4
  loc_A8691A: PopAdLdVar
  loc_A8691B: FLdPr var_88
  loc_A8691E: LateIdCallSt
  loc_A86926: LitVarI4
  loc_A8692E: PopAdLdVar
  loc_A8692F: LitVarI4
  loc_A86937: PopAdLdVar
  loc_A86938: FLdPr var_88
  loc_A8693B: LateIdCallSt
  loc_A86943: LitVarI4
  loc_A8694B: PopAdLdVar
  loc_A8694C: LitVarI4
  loc_A86954: PopAdLdVar
  loc_A86955: FLdPr var_88
  loc_A86958: LateIdCallSt
  loc_A86960: LitVarI4
  loc_A86968: PopAdLdVar
  loc_A86969: LitVarI4
  loc_A86971: PopAdLdVar
  loc_A86972: FLdPr var_88
  loc_A86975: LateIdCallSt
  loc_A8697D: LitVarI4
  loc_A86985: PopAdLdVar
  loc_A86986: LitVarI4
  loc_A8698E: PopAdLdVar
  loc_A8698F: FLdPr var_88
  loc_A86992: LateIdCallSt
  loc_A8699A: LitVarI4
  loc_A869A2: PopAdLdVar
  loc_A869A3: LitVarI4
  loc_A869AB: PopAdLdVar
  loc_A869AC: FLdPr var_88
  loc_A869AF: LateIdCallSt
  loc_A869B7: LitVarI4
  loc_A869BF: PopAdLdVar
  loc_A869C0: LitVarI4
  loc_A869C8: PopAdLdVar
  loc_A869C9: FLdPr var_88
  loc_A869CC: LateIdCallSt
  loc_A869D4: LitVarI4
  loc_A869DC: PopAdLdVar
  loc_A869DD: LitVarI4
  loc_A869E5: PopAdLdVar
  loc_A869E6: FLdPr var_88
  loc_A869E9: LateIdCallSt
  loc_A869F1: LitNothing
  loc_A869F3: FStAd var_88 
  loc_A869F7: FLdPr Me
  loc_A869FA: VCallAd Control_ID_MSFlexGrid
  loc_A869FD: FStAdFunc var_CC
  loc_A86A00: FLdPr var_CC
  loc_A86A03: LateIdCall
  loc_A86A0B: LitVarI4
  loc_A86A13: PopAdLdVar
  loc_A86A14: FLdPr var_CC
  loc_A86A17: LateIdSt
  loc_A86A1C: LitVarI4
  loc_A86A24: PopAdLdVar
  loc_A86A25: LitVarI4
  loc_A86A2D: PopAdLdVar
  loc_A86A2E: LitVarStr var_DC, "Cód."
  loc_A86A33: PopAdLdVar
  loc_A86A34: FLdPr var_CC
  loc_A86A37: LateIdCallSt
  loc_A86A3F: LitVarI4
  loc_A86A47: PopAdLdVar
  loc_A86A48: LitVarI4
  loc_A86A50: PopAdLdVar
  loc_A86A51: LitVarStr var_DC, "Retención"
  loc_A86A56: PopAdLdVar
  loc_A86A57: FLdPr var_CC
  loc_A86A5A: LateIdCallSt
  loc_A86A62: LitVarI4
  loc_A86A6A: PopAdLdVar
  loc_A86A6B: LitVarI4
  loc_A86A73: PopAdLdVar
  loc_A86A74: LitVarStr var_DC, "Cód."
  loc_A86A79: PopAdLdVar
  loc_A86A7A: FLdPr var_CC
  loc_A86A7D: LateIdCallSt
  loc_A86A85: LitVarI4
  loc_A86A8D: PopAdLdVar
  loc_A86A8E: LitVarI4
  loc_A86A96: PopAdLdVar
  loc_A86A97: LitVarStr var_DC, "Actividad"
  loc_A86A9C: PopAdLdVar
  loc_A86A9D: FLdPr var_CC
  loc_A86AA0: LateIdCallSt
  loc_A86AA8: LitVarI4
  loc_A86AB0: PopAdLdVar
  loc_A86AB1: LitVarI4
  loc_A86AB9: PopAdLdVar
  loc_A86ABA: LitVarStr var_DC, "Escala Vigente"
  loc_A86ABF: PopAdLdVar
  loc_A86AC0: FLdPr var_CC
  loc_A86AC3: LateIdCallSt
  loc_A86ACB: LitVarI4
  loc_A86AD3: PopAdLdVar
  loc_A86AD4: LitVarI4
  loc_A86ADC: PopAdLdVar
  loc_A86ADD: LitVarStr var_DC, "Acum.bruto"
  loc_A86AE2: PopAdLdVar
  loc_A86AE3: FLdPr var_CC
  loc_A86AE6: LateIdCallSt
  loc_A86AEE: LitVarI4
  loc_A86AF6: PopAdLdVar
  loc_A86AF7: LitVarI4
  loc_A86AFF: PopAdLdVar
  loc_A86B00: LitVarStr var_DC, "Acum.base"
  loc_A86B05: PopAdLdVar
  loc_A86B06: FLdPr var_CC
  loc_A86B09: LateIdCallSt
  loc_A86B11: LitVarI4
  loc_A86B19: PopAdLdVar
  loc_A86B1A: LitVarI4
  loc_A86B22: PopAdLdVar
  loc_A86B23: LitVarStr var_DC, "Base Imp."
  loc_A86B28: PopAdLdVar
  loc_A86B29: FLdPr var_CC
  loc_A86B2C: LateIdCallSt
  loc_A86B34: LitVarI4
  loc_A86B3C: PopAdLdVar
  loc_A86B3D: LitVarI4
  loc_A86B45: PopAdLdVar
  loc_A86B46: LitVarStr var_DC, "Min."
  loc_A86B4B: PopAdLdVar
  loc_A86B4C: FLdPr var_CC
  loc_A86B4F: LateIdCallSt
  loc_A86B57: LitVarI4
  loc_A86B5F: PopAdLdVar
  loc_A86B60: LitVarI4
  loc_A86B68: PopAdLdVar
  loc_A86B69: LitVarStr var_DC, "Max."
  loc_A86B6E: PopAdLdVar
  loc_A86B6F: FLdPr var_CC
  loc_A86B72: LateIdCallSt
  loc_A86B7A: LitVarI4
  loc_A86B82: PopAdLdVar
  loc_A86B83: LitVarI4
  loc_A86B8B: PopAdLdVar
  loc_A86B8C: LitVarStr var_DC, "Imp. Fijo"
  loc_A86B91: PopAdLdVar
  loc_A86B92: FLdPr var_CC
  loc_A86B95: LateIdCallSt
  loc_A86B9D: LitVarI4
  loc_A86BA5: PopAdLdVar
  loc_A86BA6: LitVarI4
  loc_A86BAE: PopAdLdVar
  loc_A86BAF: LitVarStr var_DC, "Alic."
  loc_A86BB4: PopAdLdVar
  loc_A86BB5: FLdPr var_CC
  loc_A86BB8: LateIdCallSt
  loc_A86BC0: LitVarI4
  loc_A86BC8: PopAdLdVar
  loc_A86BC9: LitVarI4
  loc_A86BD1: PopAdLdVar
  loc_A86BD2: LitVarStr var_DC, "Imp. Exento"
  loc_A86BD7: PopAdLdVar
  loc_A86BD8: FLdPr var_CC
  loc_A86BDB: LateIdCallSt
  loc_A86BE3: LitVarI4
  loc_A86BEB: PopAdLdVar
  loc_A86BEC: LitVarI4
  loc_A86BF4: PopAdLdVar
  loc_A86BF5: LitVarStr var_DC, "Ret. Min."
  loc_A86BFA: PopAdLdVar
  loc_A86BFB: FLdPr var_CC
  loc_A86BFE: LateIdCallSt
  loc_A86C06: LitVarI4
  loc_A86C0E: PopAdLdVar
  loc_A86C0F: LitVarI4
  loc_A86C17: PopAdLdVar
  loc_A86C18: LitVarStr var_DC, "Exención Desde"
  loc_A86C1D: PopAdLdVar
  loc_A86C1E: FLdPr var_CC
  loc_A86C21: LateIdCallSt
  loc_A86C29: LitVarI4
  loc_A86C31: PopAdLdVar
  loc_A86C32: LitVarI4
  loc_A86C3A: PopAdLdVar
  loc_A86C3B: LitVarStr var_DC, "Exención Hasta"
  loc_A86C40: PopAdLdVar
  loc_A86C41: FLdPr var_CC
  loc_A86C44: LateIdCallSt
  loc_A86C4C: FLdPr var_CC
  loc_A86C4F: LateIdCall
  loc_A86C57: LitNothing
  loc_A86C59: FStAd var_CC 
  loc_A86C5D: ExitProcHresult
End Sub
