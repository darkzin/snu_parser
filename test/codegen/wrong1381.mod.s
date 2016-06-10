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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 15 of <array 55 of <array 46 of <array 47 of <array 63 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 83 of <array 52 of <array 14 of <array 7 of <array 14 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 17 of <array 27 of <array 49 of <array 97 of <array 91 of <char>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_4:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #   9:     return t2
    jmp     l_f0_exit              
l_f0_6_while_cond:
    movl    $35186, %eax            #  11:     if     35186 # 85223 goto 7_while_body
    movl    $85223, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_while_body:
    movl    $7868, %eax             #  14:     add    t3 <- 7868, 9160
    movl    $9160, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f0_6_while_cond       #  17:     goto   6_while_cond
l_f0_5:
l_f0_11_while_cond:
    call    dummyCHARfunc           #  20:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #  21:     if     100 = t4 goto 12_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_12_while_body     
    jmp     l_f0_10                 #  22:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  24:     goto   11_while_cond
l_f0_10:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -40(%ebp)   4  [ $v1       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $32907, %eax            #   0:     if     32907 >= 16789 goto 1_if_true
    movl    $16789, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $31777, %eax            #   3:     if     31777 >= 58052 goto 5_if_true
    movl    $58052, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   4:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_8                  #   9:     goto   8
l_f1_8:
    movl    $97, %eax               #  11:     if     97 > 98 goto 12_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  12:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  14:     goto   11
l_f1_13_if_false:
l_f1_11:
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $26293, %eax            #  20:     sub    t1 <- 26293, 51261
    movl    $51261, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t2 <- t1, 91122
    movl    $91122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     add    t3 <- t2, 52119
    movl    $52119, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t4 <- t3, 22955
    movl    $22955, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  24:     sub    t5 <- t4, 82720
    movl    $82720, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  25:     assign v1 <- t5
    movl    %eax, -40(%ebp)        
    jmp     l_f1_17                 #  26:     goto   17
    jmp     l_f1_17                 #  27:     goto   17
    jmp     l_f1_17                 #  28:     goto   17
l_f1_17:
    movl    $1, %eax                #  30:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_19                 #  31:     goto   19
    movl    $0, %eax                #  32:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_f1_19:
    movzbl  -33(%ebp), %eax         #  34:     return t6
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 45 of <array 92 of <array 16 of <array 95 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 45 of <array 9 of <array 65 of <array 26 of <array 76 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 >= 97 goto 1
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t2
    jmp     l_f2_exit              
l_f2_6_while_cond:
    movl    $90350, %eax            #  11:     add    t3 <- 90350, 17174
    movl    $17174, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t4 <- t3, 38109
    movl    $38109, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     sub    t5 <- t4, 88382
    movl    $88382, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     if     t5 <= 77641 goto 7_while_body
    movl    $77641, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7_while_body      
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:
    call    dummyBOOLfunc           #  19:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $54720, %eax            #   2:     assign v0 <- 54720
    movl    %eax, v0               
    jmp     l_test_5_if_false       #   3:     goto   5_if_false
l_test_7_while_cond:
    jmp     l_test_10               #   5:     goto   10
    jmp     l_test_11               #   6:     goto   11
l_test_10:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_12               #   9:     goto   12
l_test_11:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_12:
    movzbl  -13(%ebp), %eax         #  13:     if     t0 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  14:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  16:     goto   7_while_cond
l_test_6:
    jmp     l_test_3                #  18:     goto   3
l_test_5_if_false:
l_test_3:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
