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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 30 of <array 21 of <array 48 of <array 34 of <array 11 of <char>>>>>>> %ebp+12 ]

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
    movl    $99, %eax               #   1:     if     99 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $99, %eax               #   8:     if     99 # 100 goto 8
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #   9:     goto   9
l_f0_8:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
l_f0_9:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  16:     return t1
    jmp     l_f0_exit              
    movl    $24875, %eax            #  17:     if     24875 >= 63364 goto 13_if_true
    movl    $63364, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  18:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  20:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_1_while_cond       #  23:     goto   1_while_cond
l_f0_0:
    call    dummyBOOLfunc           #  25:     call   t2 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f0_21_while_cond:
    movl    $99, %eax               #  27:     if     99 >= 99 goto 22_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_22_while_body     
    jmp     l_f0_20                 #  28:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  30:     goto   21_while_cond
l_f0_20:
l_f0_25_while_cond:
    movl    $31382, %eax            #  33:     if     31382 < 89705 goto 26_while_body
    movl    $89705, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_26_while_body     
    jmp     l_f0_24                 #  34:     goto   24
l_f0_26_while_body:
    jmp     l_f0_25_while_cond      #  36:     goto   25_while_cond
l_f0_24:
    jmp     l_f0_30_if_false        #  38:     goto   30_if_false
    jmp     l_f0_28                 #  39:     goto   28
l_f0_30_if_false:
l_f0_28:
l_f0_32_while_cond:
    jmp     l_f0_32_while_cond      #  43:     goto   32_while_cond
    jmp     l_f0_16                 #  44:     goto   16
l_f0_16:
    call    WriteLn                 #  46:     call   WriteLn

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
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 70 of <array 50 of <array 33 of <array 43 of <array 53 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_1                  #   3:     goto   1
l_f1_8_while_cond:
    movl    $100, %eax              #   5:     if     100 > 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #   6:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
l_f1_7:
    movl    $97, %eax               #  10:     return 97
    jmp     l_f1_exit              
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  12:     goto   13_while_cond
    jmp     l_f1_2_while_cond       #  13:     goto   2_while_cond
l_f1_1:
    call    dummyCHARfunc           #  15:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  16:     return t2
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    movl    $100, %eax              #   0:     if     100 > 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1                 
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v2 <- t1
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   9:     if     99 < 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #  10:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_exit              
    call    WriteLn                 #  13:     call   WriteLn
    jmp     l_f2_5                  #  14:     goto   5
l_f2_7_if_false:
l_f2_5:
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
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   3:     goto   5_while_cond
l_test_8_while_cond:
    jmp     l_test_7                #   5:     goto   7
    jmp     l_test_8_while_cond     #   6:     goto   8_while_cond
l_test_7:
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #   9:     goto   11_while_cond
    movl    $1, %eax                #  10:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
l_test_15_while_cond:
    jmp     l_test_16_while_body    #  15:     goto   16_while_body
    jmp     l_test_14               #  16:     goto   14
l_test_16_while_body:
    movl    $1, %eax                #  18:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_15_while_cond    #  21:     goto   15_while_cond
l_test_14:
    jmp     l_test_22_if_true       #  23:     goto   22_if_true
    jmp     l_test_23_if_false      #  24:     goto   23_if_false
l_test_22_if_true:
l_test_27_while_cond:
    movl    $20541, %eax            #  27:     if     20541 >= 69182 goto 28_while_body
    movl    $69182, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_28_while_body   
    jmp     l_test_26               #  28:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  30:     goto   27_while_cond
l_test_26:
    jmp     l_test_21               #  32:     goto   21
l_test_23_if_false:
l_test_21:
    jmp     l_test_32_if_false      #  35:     goto   32_if_false
l_test_34_while_cond:
    movl    $98, %eax               #  37:     if     98 < 99 goto 35_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_35_while_body   
    jmp     l_test_33               #  38:     goto   33
l_test_35_while_body:
    jmp     l_test_34_while_cond    #  40:     goto   34_while_cond
l_test_33:
    jmp     l_test_exit            
    jmp     l_test_30               #  43:     goto   30
l_test_32_if_false:
l_test_30:
l_test_39_while_cond:
    call    dummyINTfunc            #  47:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  48:     if     t0 >= 51883 goto 40_while_body
    movl    $51883, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_40_while_body   
    jmp     l_test_38               #  49:     goto   38
l_test_40_while_body:
    jmp     l_test_exit            
    jmp     l_test_39_while_cond    #  52:     goto   39_while_cond
l_test_38:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
