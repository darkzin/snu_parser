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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -19(%ebp)   1  [ $v3       <bool> %ebp-19 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    jmp     l_f0_exit              
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_6                  #   4:     goto   6
l_f0_6:
    movl    $98, %eax               #   6:     assign v2 <- 98
    movb    %al, 16(%ebp)          
l_f0_11_while_cond:
    movl    $39536, %eax            #   8:     if     39536 # 46153 goto 12_while_body
    movl    $46153, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  11:     goto   11_while_cond
l_f0_10:
l_f0_15_while_cond:
    movl    $64202, %eax            #  14:     if     64202 = 45449 goto 16_while_body
    movl    $45449, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_16_while_body     
    jmp     l_f0_14                 #  15:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  17:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_20_if_false        #  19:     goto   20_if_false
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f0_18                 #  21:     goto   18
l_f0_20_if_false:
l_f0_18:
    jmp     l_f0_0                  #  24:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_23_while_cond:
    movl    $100, %eax              #  28:     if     100 > 99 goto 30
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_30                
    jmp     l_f0_22                 #  29:     goto   22
l_f0_30:
    jmp     l_f0_22                 #  31:     goto   22
    jmp     l_f0_22                 #  32:     goto   22
    jmp     l_f0_22                 #  33:     goto   22
    jmp     l_f0_22                 #  34:     goto   22
    jmp     l_f0_22                 #  35:     goto   22
    jmp     l_f0_23_while_cond      #  36:     goto   23_while_cond
l_f0_22:
l_f0_33_while_cond:
    movl    $70016, %eax            #  39:     if     70016 >= 93023 goto 34_while_body
    movl    $93023, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_34_while_body     
    jmp     l_f0_32                 #  40:     goto   32
l_f0_34_while_body:
    call    WriteLn                 #  42:     call   WriteLn
    movl    $97, %eax               #  43:     assign v2 <- 97
    movb    %al, 16(%ebp)          
    movl    $97, %eax               #  44:     if     97 <= 97 goto 39_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_39_if_true        
    jmp     l_f0_40_if_false        #  45:     goto   40_if_false
l_f0_39_if_true:
    jmp     l_f0_38                 #  47:     goto   38
l_f0_40_if_false:
l_f0_38:
    movl    $98, %eax               #  50:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    movl    $54939, %eax            #  51:     assign v1 <- 54939
    movl    %eax, 12(%ebp)         
l_f0_45_while_cond:
    jmp     l_f0_45_while_cond      #  53:     goto   45_while_cond
l_f0_48_while_cond:
    movl    $0, %eax                #  55:     if     0 = 0 goto 49_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_49_while_body     
    jmp     l_f0_47                 #  56:     goto   47
l_f0_49_while_body:
    jmp     l_f0_48_while_cond      #  58:     goto   48_while_cond
l_f0_47:
    jmp     l_f0_53_if_false        #  60:     goto   53_if_false
    jmp     l_f0_51                 #  61:     goto   51
l_f0_53_if_false:
l_f0_51:
    movl    $0, %eax                #  64:     assign v3 <- 0
    movb    %al, -19(%ebp)         
    jmp     l_f0_33_while_cond      #  65:     goto   33_while_cond
l_f0_32:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 6 of <array 10 of <array 1 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    movl    $25618, %eax            #   0:     assign v1 <- 25618
    movl    %eax, -24(%ebp)        
    movl    $98, %eax               #   1:     if     98 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_7_while_cond:
    movl    $57616, %eax            #   6:     if     57616 > 99040 goto 8_while_body
    movl    $99040, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_8_while_body      
    jmp     l_f1_6                  #   7:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   9:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_1                  #  11:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyINTfunc            #  14:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <bool> %ebp-16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   2:     goto   2
    jmp     l_f2_2                  #   3:     goto   2
l_f2_2:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_4:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t3
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     return t4
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_exit            
    movl    $15612, %eax            #   3:     if     15612 = 37548 goto 5_if_true
    movl    $37548, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #  11:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_test_10_while_cond:
    jmp     l_test_9                #  13:     goto   9
    movl    $100, %eax              #  14:     param  2 <- 100
    pushl   %eax                   
    movl    $74665, %eax            #  15:     sub    t1 <- 74665, 49225
    movl    $49225, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  1 <- t1
    pushl   %eax                   
    movl    $98, %eax               #  17:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #  18:     call   f0
    addl    $12, %esp              
    jmp     l_test_10_while_cond    #  19:     goto   10_while_cond
l_test_9:
    jmp     l_test_15_if_false      #  21:     goto   15_if_false
    jmp     l_test_15_if_false      #  22:     goto   15_if_false
    jmp     l_test_exit            
l_test_22_while_cond:
    jmp     l_test_21               #  25:     goto   21
    jmp     l_test_22_while_cond    #  26:     goto   22_while_cond
l_test_21:
    jmp     l_test_13               #  28:     goto   13
l_test_15_if_false:
l_test_13:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
