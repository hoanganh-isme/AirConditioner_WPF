   M S B A M L   `   `   `  ����Q  MAirConditionerSolution, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:AirConditionerSolutionAirConditionerSolution  5   	   /    )AirConditionerSolution.AirConditionDetail   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:AirConditionerSolution     5   	     � Title$  AirConditionDetail��5   	   $	��400��6$   $	��500��61   .��5	      � .+�5
   
   �� $��	0,0,0,-13q�6   .+�5      �� $��AirCondition Shop��6    �� Left$	 170��60   
 �� Top$ 10��6B   $
��Bold"�6R   $��20(�6d   ���	#FFFDE9E9���	#FF0EF176���	#FFCE18186�   �� 5      $��AirConditionerId��6   $
��Left=�6/   $ 17��6J   $	��Top=�6[   $
��Bold"�6s   $��9(�6�   $ 75��6�   �� 5      -   5         ��Name$ txt_AirConditionerId��5      $	 132��65    �� TextWrapping$
 Wrap=�6G   $ 70��6[   $	��320��6k   $��Center=�6w   $	��Top=�6�   $��25��6�   $��Center=�6�   �� 5      $��AirConditionerName��6   $ 16��61   $	 103��6B   $
��Bold"�6S   $
��Left=�6e   $	��Top=�6�   $��9(�6�   �� 5      -   5        $ txt_AirConditionerName��5      $	 132��67   $
 Wrap=�6I   $ 98��6]   $	��320��6m   $��25��6y   $��Center=�6�   $	��Top=�6�   $��Center=�6�   �� 5      $��Warranty��6   $
��Left=�6'   $ 17��6B   $	��Top=�6S   $	 130��6k   $
��Bold"�6|   $��9(�6�    J� RenderTransformOrigin$ 0.682,-0.033&�6�   �� 5      -   5        $ txt_Warranty��5      $	 132��6-   $
 Wrap=�6?   $	 125��6S   $	��320��6d   $��Center=�6p   $	��Top=�6�   $��25��6�   $��Center=�6�   �� 5      $��SoundPressureLevel��6   $��Center=�61   $ 15��6N   $	��Top=�6_   $	 159��6w   $
��Bold"�6�   $��9(�6�   �� 5      -   5        $ txt_SoundPressureLevel��5      $	 132��67   $
 Wrap=�6I   $	 154��6]   $	��320��6n   $��Center=�6z   $	��Top=�6�   $��25��6�   $��Center=�6�   �� 5      $��FeatureFunction��6   $ 14��6.   $	 184��6?   $
��Bold"�6P   $
��Left=�6b   $	��Top=�6}   $��9(�6�   $ 0.734,0.623&�6�   �� 5      -   5        $ txt_FeatureFunction��5      $	 132��64   $	 179��6F   $	��320��6W   $��Center=�6c   $��25��6�   $	��Top=�6�   $��Center=�6�   �� 5      $��Quantity��6   $ 17��6'   $	 209��68   $
��Bold"�6I   $
��Left=�6[   $	��Top=�6v   $��9(�6�   $ 0.734,0.623&�6�   �� 5      -   5        $ txt_Quantity��5      $	 132��6-   $	 204��6?   $	��320��6P   $��Center=�6\   $��25��6y   $	��Top=�6�   $��Center=�6�   �� 5      $��DollarPrice��6   $ 14��6*   $	 233��6;   $
��Bold"�6L   $
��Left=�6^   $	��Top=�6y   $��9(�6�   $ 0.734,0.623&�6�   �� 5      -   5        $ txt_DollarPrice��5      $	 132��60   $	 227��6B   $	��320��6S   $��Center=�6_   $��25��6|   $	��Top=�6�   $��Center=�6�   �� 5      $��Supplier��6   $ 16��6'   $	 258��68   $
��Bold"�6I   $
��Left=�6[   $	��Top=�6v   $��25��6�   $��51��6�   $��9(�6�   �� 5      -   5         ��Name$ cbx_SupplierId��5      $	 132��5      $	 252��6   $	��173��60   $��Center=�6<   $	��Top=�6Y   $��25��6q   $��Center=�6}   ��5      �� *SupplierCompanies+ � DataContext 5      ��  �� ElementName$ dtg_AirConditioner��	 �� Path$	 SelectedItem�5   }   �� 5      -	   5        
 ��Name$
 btn_Add��5      $	��Add��6&   $	 132��64   $	 298��6F   $
��Left=�6W   $��Center=�6r   $��88��6�   $��33��6�   5       �� 5!      -
   5        $
 	btn_Close��5!      $��Close��6(   $	 315��68   $	 298��6J   $��88��6[   $��33��6f   6�   5"      5#      5$      