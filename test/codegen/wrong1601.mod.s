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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 26 of <array 67 of <array 16 of <array 13 of <array 11 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 61 of <array 30 of <array 44 of <array 58 of <array 33 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 27 of <array 35 of <array 60 of <array 31 of <array 2 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v4       <bool> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 = 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
l_f0_2_if_true:
    movl    $97, %eax               #   4:     assign v3 <- 97
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   5:     assign v4 <- 1
    movb    %al, -15(%ebp)         
    movl    $78404, %eax            #   6:     if     78404 = 49502 goto 8_if_true
    movl    $49502, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   7:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #   9:     goto   7
l_f0_9_if_false:
l_f0_7:
    movl    $0, %eax                #  12:     assign v4 <- 0
    movb    %al, -15(%ebp)         
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  14:     goto   13_while_cond
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_17_if_false        #  18:     goto   17_if_false
l_f0_22_while_cond:
    movl    $99, %eax               #  20:     if     99 <= 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_23_while_body     
    jmp     l_f0_21                 #  21:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  23:     goto   22_while_cond
l_f0_21:
    movl    $73414, %eax            #  25:     return 73414
    jmp     l_f0_exit              
    movl    $98, %eax               #  26:     if     98 >= 97 goto 27_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_27_if_true        
    jmp     l_f0_28_if_false        #  27:     goto   28_if_false
l_f0_27_if_true:
    jmp     l_f0_26                 #  29:     goto   26
l_f0_28_if_false:
l_f0_26:
    jmp     l_f0_15                 #  32:     goto   15
l_f0_17_if_false:
l_f0_15:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <char>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 100 of <array 21 of <array 73 of <array 34 of <array 99 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 78 of <array 3 of <array 38 of <array 64 of <array 78 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 97 of <array 40 of <array 71 of <array 14 of <array 90 of <char>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $58346, %eax            #   0:     add    t6 <- 58346, 59759
    movl    $59759, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_1                  #   3:     goto   1
l_f1_5_while_cond:
    jmp     l_f1_4                  #   5:     goto   4
    jmp     l_f1_5_while_cond       #   6:     goto   5_while_cond
l_f1_4:
    movl    $84510, %eax            #   8:     return 84510
    jmp     l_f1_exit              
    leal    _str_1, %eax            #   9:     &()    t7 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     param  0 <- t7
    pushl   %eax                   
    call    WriteStr                #  11:     call   WriteStr
    addl    $4, %esp               
l_f1_10_while_cond:
    movl    $86840, %eax            #  13:     if     86840 # 12857 goto 11_while_body
    movl    $12857, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  16:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_2_while_cond       #  18:     goto   2_while_cond
l_f1_1:
    movl    $99, %eax               #  20:     if     99 = 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  21:     goto   15_if_false
l_f1_14_if_true:
    movl    $14130, %eax            #  23:     return 14130
    jmp     l_f1_exit              
l_f1_19_while_cond:
    movl    $99, %eax               #  25:     if     99 >= 99 goto 20_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_20_while_body     
    jmp     l_f1_18                 #  26:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  28:     goto   19_while_cond
l_f1_18:
    call    dummyBOOLfunc           #  30:     call   t8 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $46809, %eax            #  31:     return 46809
    jmp     l_f1_exit              
l_f1_25_while_cond:
    jmp     l_f1_24                 #  33:     goto   24
    jmp     l_f1_25_while_cond      #  34:     goto   25_while_cond
l_f1_24:
    jmp     l_f1_27                 #  36:     goto   27
l_f1_27:
    jmp     l_f1_32_if_false        #  38:     goto   32_if_false
    jmp     l_f1_30                 #  39:     goto   30
l_f1_32_if_false:
l_f1_30:
    jmp     l_f1_35_if_false        #  42:     goto   35_if_false
    jmp     l_f1_33                 #  43:     goto   33
l_f1_35_if_false:
l_f1_33:
    leal    _str_2, %eax            #  46:     &()    t9 <- _str_2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  47:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  48:     call   WriteStr
    addl    $4, %esp               
    movl    $67629, %eax            #  49:     assign v2 <- 67629
    movl    %eax, 16(%ebp)         
    call    dummyBOOLfunc           #  50:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_13                 #  51:     goto   13
l_f1_15_if_false:
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 97 of <array 40 of <array 71 of <array 14 of <array 90 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 78 of <array 3 of <array 38 of <array 64 of <array 78 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 100 of <array 21 of <array 73 of <array 34 of <array 99 of <bool>>>>>>> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]
    #   -516007860(%ebp)  516007824  [ $v2       <array 100 of <array 21 of <array 73 of <array 34 of <array 99 of <bool>>>>>> %ebp-516007860 ]
    #   -560396748(%ebp)  44388888  [ $v3       <array 78 of <array 3 of <array 38 of <array 64 of <array 78 of <char>>>>>> %ebp-560396748 ]
    #   -907501572(%ebp)  347104824  [ $v4       <array 97 of <array 40 of <array 71 of <array 14 of <array 90 of <char>>>>>> %ebp-907501572 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $907501560, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $226875390, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-516007860(%ebp)     # local array 'v2': 5 dimensions
    movl    $100,-516007856(%ebp)   #   dimension 1: 100 elements
    movl    $21,-516007852(%ebp)    #   dimension 2: 21 elements
    movl    $73,-516007848(%ebp)    #   dimension 3: 73 elements
    movl    $34,-516007844(%ebp)    #   dimension 4: 34 elements
    movl    $99,-516007840(%ebp)    #   dimension 5: 99 elements
    movl    $5,-560396748(%ebp)     # local array 'v3': 5 dimensions
    movl    $78,-560396744(%ebp)    #   dimension 1: 78 elements
    movl    $3,-560396740(%ebp)     #   dimension 2: 3 elements
    movl    $38,-560396736(%ebp)    #   dimension 3: 38 elements
    movl    $64,-560396732(%ebp)    #   dimension 4: 64 elements
    movl    $78,-560396728(%ebp)    #   dimension 5: 78 elements
    movl    $5,-907501572(%ebp)     # local array 'v4': 5 dimensions
    movl    $97,-907501568(%ebp)    #   dimension 1: 97 elements
    movl    $40,-907501564(%ebp)    #   dimension 2: 40 elements
    movl    $71,-907501560(%ebp)    #   dimension 3: 71 elements
    movl    $14,-907501556(%ebp)    #   dimension 4: 14 elements
    movl    $90,-907501552(%ebp)    #   dimension 5: 90 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     return t6
    jmp     l_f2_exit              
l_f2_2_while_cond:
    jmp     l_f2_1                  #   3:     goto   1
    movl    $98, %eax               #   4:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   5:     goto   2_while_cond
l_f2_1:
l_f2_7_while_cond:
    leal    -907501572(%ebp), %eax  #   8:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  3 <- t7
    pushl   %eax                   
    movl    $33396, %eax            #  10:     param  2 <- 33396
    pushl   %eax                   
    leal    -560396748(%ebp), %eax  #  11:     &()    t8 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  1 <- t8
    pushl   %eax                   
    leal    -516007860(%ebp), %eax  #  13:     &()    t9 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  15:     call   t10 <- f1
    addl    $16, %esp              
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  16:     assign v1 <- t10
    movl    %eax, -36(%ebp)        
    jmp     l_f2_7_while_cond       #  17:     goto   7_while_cond

l_f2_exit:
    # epilogue
    addl    $907501560, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    movl    $98, %eax               #   3:     if     98 <= 98 goto 6_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_11_if_false      #   9:     goto   11_if_false
    jmp     l_test_9                #  10:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $97, %eax               #  13:     assign v0 <- 97
    movb    %al, v0                
l_test_14_while_cond:
    jmp     l_test_13               #  15:     goto   13
    jmp     l_test_14_while_cond    #  16:     goto   14_while_cond
l_test_13:
    movl    $98, %eax               #  18:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  19:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_2                #  20:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $98, %eax               #  23:     param  0 <- 98
    pushl   %eax                   
    call    f2                      #  24:     call   t0 <- f2
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  25:     assign v0 <- t0
    movb    %al, v0                
    movl    $21019, %eax            #  26:     sub    t1 <- 21019, 85101
    movl    $85101, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     sub    t2 <- t1, 30597
    movl    $30597, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     add    t3 <- t2, 13486
    movl    $13486, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  29:     sub    t4 <- t3, 55240
    movl    $55240, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t5 <- t4, 59790
    movl    $59790, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     assign v1 <- t5
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
