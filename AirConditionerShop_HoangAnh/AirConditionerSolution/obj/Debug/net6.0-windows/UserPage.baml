   M S B A M L   `   `   `  ����Q  MAirConditionerSolution, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:AirConditionerSolutionAirConditionerSolution  5   	   %    AirConditionerSolution.UserPage   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:AirConditionerSolution     5   	     � Title$  UserPage��5   	   $	��450��6   $
��1000��6'   .��5	      � ��5
   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFF67FA9��6    � Offset$ 1Q�61   � 5      $ White��6   $ 0Q�6-   5      .+�5   
   �� $��Center=�6   $	��330��62   .+�5      �� $��25(�6   $
��Bold"�6$   $��Snap ITC)�66   .��6M   AirConditioner Shop6b   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dtg_AirConditioner��5         AutoGenerateColumns$ False��6r   $��0,73,0,0q�6�   ��6Z   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%   	   
IsReadOnly$
	 True��6V   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 61   �� *AirConditionerId+6V     5      $
 Name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6Z   $
	 True��6f   
 63   �� *AirConditionerName+6f     5      $ Warranty��6%   $ 80 6T   $
	 True��6_   
 67   �� *
Warranty+6_     5      $ SoundPressureLevel��6%   $
	 True��6h   
 6A   �� *SoundPressureLevel+6h     5      $ FeatureFunction��6%   $	 100 6b   $
	 True��6n   
 6>   �� *FeatureFunction+6n     5      $ Quantity��6%   $
	 True��6T   
 67   �� *
Quantity+6T     5      $ DollarPrice��6%   $
	 True��6Z   
 6:   �� *DollarPrice+6Z     5      $ Supplier��6%   $
	 True��6a   
 67   �� *Supplier.SupplierName+6a   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Action��6)   $	 160 69      CellTemplate 5      �� 5       .R�5!      ��  �� Orientation$ 
Horizontal=�6)   .+�5"   "   �� -   5        $��30��5"   )   $��60��65   .��6X   Add6]   �� 5#   "   -   5        $��30��5#   )   $��60��65   .��6Y   View6_   5$      5%      5'      5)      5*      5+      