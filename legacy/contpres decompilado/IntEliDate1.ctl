VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC0000F8754DA1}#2.0#0"; "C:\WINDOWS\SysWOW64\mscomct2.ocx"
Begin VB.UserControl IntEliDate1
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 3000
  ClientHeight = 2565
  BackStyle = 0 'Transparent
  Begin MSComCtl2.MonthView cal
    Left = 240
    Top = 120
    Width = 2535
    Height = 2310
    TabIndex = 0
    OleObjectBlob = "IntEliDate1.ctx":0000
  End
End

Attribute VB_Name = "IntEliDate1"


Private Sub UserControl_UnknownEvent_17 '940C50
  'Data Table: 404F40
  loc_940C48: Call inicializa()
  loc_940C4D: ExitProcHresult
End Sub

Private Sub cal_DateClick(DateClicked As Date) '99FF4C
  'Data Table: 404F40
  loc_99FEE4: FLdPrThis
  loc_99FEE5: VCallAd Control_ID_cal
  loc_99FEE8: FStAdFunc var_88
  loc_99FEEB: FLdPr var_88
  loc_99FEEE: LateIdLdVar var_98 DispID_23 0
  loc_99FEF5: PopAd
  loc_99FEF7: LitI4 1
  loc_99FEFC: LitI4 1
  loc_99FF01: LitVarStr var_C8, "dd/mm/yyyy"
  loc_99FF06: FStVarCopyObj var_D8
  loc_99FF09: FLdRfVar var_D8
  loc_99FF0C: FLdRfVar var_98
  loc_99FF0F: FnCDateVar
  loc_99FF11: CVarDate var_B8
  loc_99FF15: FLdRfVar var_E8
  loc_99FF18: ImpAdCallFPR4  = Format(, )
  loc_99FF1D: FLdRfVar var_E8
  loc_99FF20: CStrVarTmp
  loc_99FF21: ImpAdStStr MemVar_C3D038
  loc_99FF25: FFree1Ad var_88
  loc_99FF28: FFreeVar var_98 = "": var_B8 = "": var_D8 = ""
  loc_99FF33: ImpAdLdRf MemVar_C3D9A8
  loc_99FF36: NewIfNullAd
  loc_99FF39: FStAdNoPop
  loc_99FF3D: ImpAdLdRf MemVar_C44F9C
  loc_99FF40: NewIfNullPr Me
  loc_99FF43: Me.Global.Unload from_stack_1
  loc_99FF48: FFree1Ad var_88
  loc_99FF4B: ExitProcHresult
End Sub

Private Sub cal_KeyPress(KeyAscii As Integer) '982D88
  'Data Table: 404F40
  loc_982D50: ILdI2 KeyAscii
  loc_982D53: CI4UI1
  loc_982D54: LitI4 &H6C
  loc_982D59: EqI4
  loc_982D5A: ILdI2 KeyAscii
  loc_982D5D: CI4UI1
  loc_982D5E: LitI4 &HD
  loc_982D63: EqI4
  loc_982D64: OrI4
  loc_982D65: BranchF loc_982D87
  loc_982D68: FLdPrThis
  loc_982D69: VCallAd Control_ID_cal
  loc_982D6C: FStAdFunc var_88
  loc_982D6F: FLdPr var_88
  loc_982D72: LateIdLdVar var_98 DispID_23 0
  loc_982D79: FnCDateVar
  loc_982D7B: PopFPR8
  loc_982D7C: Call cal_DateClick(from_stack_1v)
  loc_982D81: FFree1Ad var_88
  loc_982D84: FFree1Var var_98 = ""
  loc_982D87: ExitProcHresult
End Sub

Public Sub inicializa() '9700C8
  'Data Table: 404F40
  loc_9700A4: LitI2_Byte 0
  loc_9700A6: PopTmpLdAd2 var_86
  loc_9700A9: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9700AE: CVarDate var_98
  loc_9700B2: PopAdLdVar
  loc_9700B3: FLdPrThis
  loc_9700B4: VCallAd Control_ID_cal
  loc_9700B7: FStAdFunc var_AC
  loc_9700BA: FLdPr var_AC
  loc_9700BD: LateIdSt
  loc_9700C2: FFree1Ad var_AC
  loc_9700C5: ExitProcHresult
  loc_9700C6: FLdPrThis
End Sub

Public Property Get value() '960D88
  'Data Table: 404F40
  loc_960D70: ZeroRetValVar
  loc_960D72: FLdPr Me
  loc_960D75: MemLdStr global_60
  loc_960D78: CVarStr var_A4
  loc_960D7B: FStVarCopy
  loc_960D7F: ExitProcCbHresult
End Sub

Private Function Proc_267_5_9A6B44() '9A6B44
  'Data Table: 404F40
  loc_9A6AB4: FLdPrThis
  loc_9A6AB5: VCallAd Control_ID_cal
  loc_9A6AB8: FStAdFunc var_88
  loc_9A6ABB: FLdPr var_88
  loc_9A6ABE: LateIdLdVar var_98 DispID_7 -32767
  loc_9A6AC5: CBoolVar
  loc_9A6AC7: FFree1Ad var_88
  loc_9A6ACA: FFree1Var var_98 = ""
  loc_9A6ACD: BranchF loc_9A6AEA
  loc_9A6AD0: LitVar_FALSE
  loc_9A6AD4: PopAdLdVar
  loc_9A6AD5: FLdPrThis
  loc_9A6AD6: VCallAd Control_ID_cal
  loc_9A6AD9: FStAdFunc var_88
  loc_9A6ADC: FLdPr var_88
  loc_9A6ADF: LateIdSt
  loc_9A6AE4: FFree1Ad var_88
  loc_9A6AE7: Branch loc_9A6B42
  loc_9A6AEA: FLdPr Me
  loc_9A6AED: MemLdStr global_60
  loc_9A6AF0: LitStr vbNullString
  loc_9A6AF3: NeStr
  loc_9A6AF5: BranchF loc_9A6B17
  loc_9A6AF8: FLdPr Me
  loc_9A6AFB: MemLdStr global_60
  loc_9A6AFE: CDateStr
  loc_9A6B00: CVarDate var_A8
  loc_9A6B04: PopAdLdVar
  loc_9A6B05: FLdPrThis
  loc_9A6B06: VCallAd Control_ID_cal
  loc_9A6B09: FStAdFunc var_88
  loc_9A6B0C: FLdPr var_88
  loc_9A6B0F: LateIdSt
  loc_9A6B14: FFree1Ad var_88
  loc_9A6B17: LitVar_TRUE var_A8
  loc_9A6B1A: PopAdLdVar
  loc_9A6B1B: FLdPrThis
  loc_9A6B1C: VCallAd Control_ID_cal
  loc_9A6B1F: FStAdFunc var_88
  loc_9A6B22: FLdPr var_88
  loc_9A6B25: LateIdSt
  loc_9A6B2A: FFree1Ad var_88
  loc_9A6B2D: FLdPrThis
  loc_9A6B2E: VCallAd Control_ID_cal
  loc_9A6B31: FStAdFunc var_88
  loc_9A6B34: FLdPr var_88
  loc_9A6B37: LateIdCall
  loc_9A6B3F: FFree1Ad var_88
  loc_9A6B42: ExitProcHresult
End Function
