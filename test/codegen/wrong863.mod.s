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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 2 of <array 1 of <array 1 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 5 of <array 2 of <array 3 of <array 8 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $65370, %eax            #   6:     div    t1 <- 65370, 98317
    movl    $98317, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     div    t2 <- t1, 11549
    movl    $11549, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t3 <- t2, 31777
    movl    $31777, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     mul    t4 <- t3, 69444
    movl    $69444, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $23104, %eax            #  10:     add    t5 <- 23104, t4
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     return t5
    jmp     l_f1_exit              
l_f1_9_while_cond:
    jmp     l_f1_8                  #  13:     goto   8
    movl    $27029, %eax            #  14:     return 27029
    jmp     l_f1_exit              
l_f1_13_while_cond:
    movl    $99, %eax               #  16:     if     99 < 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_14_while_body     
    jmp     l_f1_12                 #  17:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  19:     goto   13_while_cond
l_f1_12:
    movl    $23936, %eax            #  21:     return 23936
    jmp     l_f1_exit              
    jmp     l_f1_9_while_cond       #  22:     goto   9_while_cond
l_f1_8:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 6 of <array 6 of <array 2 of <array 6 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 5 of <array 1 of <array 7 of <array 2 of <int>>>>>>> %ebp+20 ]
    #    -45(%ebp)   1  [ $v4       <char> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   1:     if     100 >= t1 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $1141, %eax             #   4:     return 1141
    jmp     l_f2_exit              
    movl    $100, %eax              #   5:     assign v4 <- 100
    movb    %al, -45(%ebp)         
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $58868, %eax            #   9:     sub    t2 <- 58868, 76818
    movl    $76818, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     sub    t3 <- t2, 67578
    movl    $67578, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     if     t3 # 52282 goto 7_if_true
    movl    $52282, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  12:     goto   8_if_false
l_f2_7_if_true:
l_f2_11_while_cond:
    movl    $1, %eax                #  15:     if     1 = 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_while_body     
    jmp     l_f2_10                 #  16:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  18:     goto   11_while_cond
l_f2_10:
    movl    $100, %eax              #  20:     assign v4 <- 100
    movb    %al, -45(%ebp)         
    jmp     l_f2_6                  #  21:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $16499, %eax            #  24:     mul    t4 <- 16499, 60599
    movl    $60599, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     div    t5 <- t4, 29233
    movl    $29233, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     mul    t6 <- t5, 35112
    movl    $35112, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t7 <- t6, 72859
    movl    $72859, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  28:     sub    t8 <- t7, 87014
    movl    $87014, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 >= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $70343, %eax            #   5:     param  0 <- 70343
    pushl   %eax                   
    call    WriteInt                #   6:     call   WriteInt
    addl    $4, %esp               
l_test_7_while_cond:
    movl    $100, %eax              #   8:     if     100 >= 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_8_while_body    
    jmp     l_test_6                #   9:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  11:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  15:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
l_test_14_while_cond:
    movl    $100, %eax              #  19:     if     100 < 99 goto 15_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  20:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  22:     goto   14_while_cond
l_test_13:
l_test_18_while_cond:
    movl    $99, %eax               #  25:     if     99 = 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  26:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  28:     goto   18_while_cond
l_test_17:
l_test_22_while_cond:
    movl    $16525, %eax            #  31:     if     16525 > 56464 goto 25_if_true
    movl    $56464, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_25_if_true      
    jmp     l_test_26_if_false      #  32:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  34:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_30_if_false      #  37:     goto   30_if_false
    jmp     l_test_28               #  38:     goto   28
l_test_30_if_false:
l_test_28:
l_test_32_while_cond:
    jmp     l_test_32_while_cond    #  42:     goto   32_while_cond
    movl    $100, %eax              #  43:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  44:     call   WriteChar
    addl    $4, %esp               
l_test_36_while_cond:
    jmp     l_test_35               #  46:     goto   35
    jmp     l_test_36_while_cond    #  47:     goto   36_while_cond
l_test_35:
    jmp     l_test_exit            
    movl    $45073, %eax            #  50:     if     45073 > 32487 goto 40_if_true
    movl    $32487, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_40_if_true      
    jmp     l_test_41_if_false      #  51:     goto   41_if_false
l_test_40_if_true:
    jmp     l_test_39               #  53:     goto   39
l_test_41_if_false:
l_test_39:
    jmp     l_test_22_while_cond    #  56:     goto   22_while_cond

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
