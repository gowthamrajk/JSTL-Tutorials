package com.gowthamrajk.simple;
 
import java.util.ListResourceBundle; 

public class Simple extends ListResourceBundle
{  
    public Object[][] getContents() 
    {  
        return contents;  
    } 
    
    static final Object[][] contents = {{"colour.Violet", "Violet"},{"colour.Indigo", "Indigo"},{"colour.Blue", "Blue"},};  
}  