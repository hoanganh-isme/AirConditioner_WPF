   M S B A M L   `   `   `  ����Q  MAirConditionerSolution, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:AirConditionerSolutionAirConditionerSolution  5   	   '    !AirConditionerSolution.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:AirConditionerSolution     5   	     � Title$  
MainWindow��5   	   $	��700��6   $	��900��6)   .��5	      � ��5
   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFB7CBC0��6    � Offset$ 1Q�61   � 5      $ 	#FFE9E2DB��6   $ 0Q�61   5      .+�5      �� -   5         ��Name$ MainGUI��5      .+�5   
   �� $	��280��6   $��AirConditioner Info��6    $	��569��6=   $��Center=�6I   $��Center=�6f    �� Left$ 10��6�   
 �� Top$ 10��6�   .��5      �� $��	0,0,0,-13q�6   .+�5      �� $��AirConditionerId��6   $
��Left=�63   $ 16��6N   $	��Top=�6_   $
��Bold"�6w   $��9(�6�   $ 12��6�   �� 5      -   5         ��Name$ txt_AirConditionerId��5      $	 132��6�   	 �� TextWrapping$
	 Wrap=�6�   $ 4��6�   $	��409��6�   $
��Left=�6�   $��Center=�6  $��25��6-  $��Center=�69  ��68   �� 
 �� Path$
 AirConditionerId� �� Mode$ OneWay=� � DataContext 6l   ��  �� ElementName$ dtg_AirConditioner��$
 SelectedItem�69  �� 5      $��AirConditionerName��6   $ 18��65   $ 43��6F   $
��Bold"�6V   $
��Left=�6h   $	��Top=�6�   $��9(�6�   �� 5      -   5        $ txt_AirConditionerName��5      $	 132��6�   $
	 Wrap=�6�   $ 32��6�   $	��409��6�   $��25��6�   $
��Left=�6  $��Center=�6#  $��Center=�6>  ��6:   �� $
 AirConditionerName�$ OneWay=� 6p   �� $ dtg_AirConditioner��$
 SelectedItem�6>  �� 5      $��Warranty��6   $��Center=�6+   $ 18��6H   $	��Top=�6Y   $ 68��6q   $
��Bold"�6�   $��9(�6�    J� RenderTransformOrigin$ 0.682,-0.033&�6�   �� 5      -   5        $ txt_Warranty��5      $	 132��6�   $
	 Wrap=�6�   $ 59��6�   $	��409��6�   $
��Left=�6�   $��Center=�6  $��25��6  $��Center=�6*  ��60   �� $
 Warranty�$ OneWay=� 6\   �� $ dtg_AirConditioner��$
 SelectedItem�6*  �� 5      $��SoundPressureLevel��6   $
��Left=�65   $ 16��6P   $	��Top=�6a   $ 93��6y   $
��Bold"�6�   $��9(�6�   �� 5      -   5        $ txt_SoundPressureLevel��5      $	 132��6�   $
	 Wrap=�6�   $ 88��6�   $	��409��6�   $
��Left=�6�   $��Center=�6  $��25��62  $��Center=�6>  ��6:   �� $
 SoundPressureLevel�$ OneWay=� 6p   �� $ dtg_AirConditioner��$
 SelectedItem�6>  �� 5      $��FeatureFunction��6   $ 16��62   $	 121��6C   $
��Bold"�6T   $��Center=�6f   $	��Top=�6�   $��9(�6�   $ 0.734,0.623&�6�   �� 5      -   5        $ txt_FeatureFunction��5      $	 132��6�   $	 113��6�   $	��409��6�   $��Center=�6�   $��25��6   $	��Top=�6  $��Center=�6$  ��67   �� $
 FeatureFunction�$ OneWay=� 6j   �� $ dtg_AirConditioner��$
 SelectedItem�6$  �� 5      $��Quantity��6   $ 16��6+   $	 143��6<   $
��Bold"�6M   $
��Left=�6_   $��Center=�6z   $��9(�6�   $ 0.734,0.623&�6�   �� 5      -   5        $ txt_Quantity��5      $	 132��6�   $	 138��6�   $	��409��6�   $��Center=�6�   $��25��6�   $	��Top=�6�   $��Center=�6  ��60   �� $
 Quantity�$ OneWay=� 6\   �� $ dtg_AirConditioner��$
 SelectedItem�6  �� 5       $��DollarPrice��6   $ 16��6.   $	 166��6?   $
��Bold"�6P   $��Center=�6b   $	��Top=�6   $��9(�6�   $ 0.734,0.623&�6�   �� 5!      -   5        $ txt_DollarPrice��5!      $	 132��6�   $	 161��6�   $	��409��6�   $��Center=�6�   $��25��6�   $	��Top=�6  $��Center=�6  ��63   �� $
 DollarPrice�$ OneWay=� 6b   �� $ dtg_AirConditioner��$
 SelectedItem�6  �� 5"      $��Supplier��6   $ 18��6+   $	 189��6<   $
��Bold"�6M   $
��Left=�6_   $	��Top=�6z   $��22��6�   $��51��6�   $��9(�6�   �� 5#      -	   5         ��Name$ cbx_SupplierId��5#      $	 132��5'      $	 186��6   $	��173��6.   $��Center=�6:   $	��Top=�6W   $��25��6o   $��Center=�6{    �� Text 5$      �� $
 Supplier.SupplierName�$ OneWay=���5%      �� *SupplierCompanies+ 5&      �� $ dtg_AirConditioner��$
 SelectedItem�5'   {   5)      5*      �� 5+   
   $	��280��6   $��Operator��6    $	��179��62   $	 675��6>   $ 10��6P   $
��Left=�6`   $��Center=�6{   .��5,      �� .+�5-      �� -
   5         ��Name$ btn_Edit��5-      $
��Edit��6+   $ 32��6:   $ 51��6K   $��32��6[   $	��114��6g   $��Center=�6s   $	��Top=�6�   $ 0.535,-0.483&�6�   
����ح�6�   �� 5.      -   5        $ 
btn_Delete��5.      $��Delete��6-   $ 32��6>   $ 93��6O   $��32��6_   $	��114��6k   $ 0.535,-0.483&�6w   $��Center=�6�   $	��Top=�6�   
�������6�   �� 5/      -   5        $ btn_LoadFile��5/      $��Load Product��6/   $ 32��6F   $	 136��6W   $��32��6h   $	��114��6t   $ 0.535,-0.483&�6�   $��Center=�6�   $	��Top=�6�   
������6�   �� 50      -   5        $ 
btn_Logout��50      $��Log out��6-   $ 32��6?   $	 178��6P   $��32��6a   $	��114��6m   $ 0.535,-0.483&�6y   $��Center=�6�   $	��Top=�6�   
�������6�   �� 51      -   5        $ btn_Add��51      $	��Add��6*   $ 32��68   $ 8��6I   $��32��6X   $	��114��6d   $ 0.535,-0.483&�6p   $��Center=�6�   $	��Top=�6�   ���	#FFE6ADC26�   53      54      �� 55   
   $	��301��6   $��AirConditioners��6    $	��860��69   $ 10��6E   $	 368��6V   $
��Left=�6g   $��Center=�6�   .��56      &   System.Windows.Controls.DataGrid  -   5          Name$ dtg_AirConditioner��56         AutoGenerateColumns$ False��6K   $��	0,0,0,-10q�6g   ��63   ��    Columns 57      0  *System.Windows.Controls.DataGridTextColumn  58      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6-      
IsReadOnly$
 True��6^   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *AirConditionerId+6^     59      $
 Name��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$	 120 6b   $
 True��6o    6;   �� *AirConditionerName+6o     5;      $ Warranty��6-   $
 True��6\    6?   �� *
Warranty+6\     5<      $ SoundPressureLevel��6-   $
 True��6p    6I   �� *SoundPressureLevel+6p     5=      $ FeatureFunction��6-   $	 150 6j   $
 True��6v    6F   �� *FeatureFunction+6v     5>      $ Quantity��6-   $
 True��6\    6?   �� *
Quantity+6\     5?      $ DollarPrice��6-   $
 True��6b    6B   �� *DollarPrice+6b     5@      $ Supplier��6-   $
 True��6i    6?   �� *Supplier.SupplierName+6i   5B      5C      �� 5D   
   $��Search by Name��6   $ 25��6)   $	 334��6:   $
��Left=�6K   $��Center=�6f   $��94��6�   $��23��6�   6�   �� 5E   
   -   5        $ txt_SearchByName��5E      $��Center=�6,   $	 136��6N   $
	 Wrap=�6`   $	 330��6t   $	��174��6�   $��31��6�   $
��Left=�6�   $	��Top=�6�   6�   �� 5F   
   -   5        $ btn_SearchByName��5F      $��Search��6+   $	 320��6<   $	 331��6N   $
��Left=�6_   $	��Top=�6z   $	��100��6�   $��31��6�   ���	#FF6136F46�   �� 5G   
   $��Search��6   $	 515��6!   $	 334��63   $
��Left=�6D   $	��Top=�6_   $��64��6w   $��23��6�   �� 5H   
   -   5        $ 
txt_Search��5H      $��Center=�6&   $	 588��6H   $
	 Wrap=�6Z   $	 331��6n   $	��174��6   $��31��6�   $
��Left=�6�   $	��Top=�6�   6�   �� 5I   
   -   5        $ 
btn_Search��5I      $��Search��6%   $	 783��66   $	 331��6H   $
��Left=�6Y   $	��Top=�6t   $	��100��6�   $��31��6�   ���	#FF36E6F46�   5J      5K      5L      