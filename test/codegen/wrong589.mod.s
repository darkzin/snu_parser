##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $97, %eax               #   7:     assign v0 <- 97
    movb    %al, -14(%ebp)         
    call    WriteLn                 #   8:     call   WriteLn

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    movl    $55846, %eax            #   4:     if     55846 <= 86274 goto 6_while_body
    movl    $86274, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
    jmp     l_f1_8                  #  10:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_12_while_cond:
    jmp     l_f1_11                 #  17:     goto   11
    jmp     l_f1_11                 #  18:     goto   11
    jmp     l_f1_12_while_cond      #  19:     goto   12_while_cond
l_f1_11:
    call    dummyINTfunc            #  21:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    jmp     l_f2_2_while_body       #   3:     goto   2_while_body
l_f2_5:
    jmp     l_f2_2_while_body       #   5:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
    movl    $30012, %eax            #   8:     sub    t1 <- 30012, 62902
    movl    $62902, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     assign v1 <- t1
    movl    %eax, -20(%ebp)        
    movl    $1, %eax                #  10:     assign v2 <- 1
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $10329, %eax            #   0:     if     10329 = 8447 goto 1_if_true
    movl    $8447, %ebx            
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $98, %eax               #   3:     assign v0 <- 98
    movb    %al, v0                
    movl    $46727, %eax            #   4:     assign v1 <- 46727
    movl    %eax, v1               
    jmp     l_test_6                #   5:     goto   6
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
l_test_12_while_cond:
    movl    $98392, %eax            #  13:     if     98392 >= 47767 goto 13_while_body
    movl    $47767, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_13_while_body   
    jmp     l_test_11               #  14:     goto   11
l_test_13_while_body:
l_test_16_while_cond:
    movl    $99, %eax               #  17:     if     99 <= 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  18:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
l_test_15:
l_test_20_while_cond:
    jmp     l_test_20_while_cond    #  23:     goto   20_while_cond
    movl    $99311, %eax            #  24:     if     99311 >= 88295 goto 23_if_true
    movl    $88295, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_23_if_true      
    jmp     l_test_24_if_false      #  25:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  27:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_26               #  30:     goto   26
l_test_26:
    call    dummyBOOLfunc           #  32:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_12_while_cond    #  33:     goto   12_while_cond
l_test_11:
    jmp     l_test_31_if_true       #  35:     goto   31_if_true
    jmp     l_test_31_if_true       #  36:     goto   31_if_true
    jmp     l_test_31_if_true       #  37:     goto   31_if_true
    jmp     l_test_32_if_false      #  38:     goto   32_if_false
l_test_31_if_true:
    jmp     l_test_exit            
    jmp     l_test_30               #  41:     goto   30
l_test_32_if_false:
l_test_30:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
