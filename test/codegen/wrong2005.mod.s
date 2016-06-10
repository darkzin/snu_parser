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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

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
    call    dummyCHARfunc           #   1:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t8 < 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t13      <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 70 of <array 97 of <array 20 of <array 76 of <array 94 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 60 of <array 4 of <array 49 of <array 85 of <array 5 of <char>>>>>>> %ebp+20 ]
    #    -26(%ebp)   1  [ $v5       <char> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $46876, %eax            #   0:     if     46876 <= 99486 goto 1_if_true
    movl    $99486, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_4                  #   3:     goto   4
l_f1_4:
    movl    $99, %eax               #   5:     return 99
    jmp     l_f1_exit              
    movl    $0, %eax                #   6:     param  3 <- 0
    pushl   %eax                   
    movl    $0, %eax                #   7:     param  2 <- 0
    pushl   %eax                   
    movl    $1843, %eax             #   8:     sub    t8 <- 1843, 63712
    movl    $63712, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     param  1 <- t8
    pushl   %eax                   
    movl    $97, %eax               #  10:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  11:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    movl    $99, %eax               #  12:     assign v5 <- 99
    movb    %al, -26(%ebp)         
    movl    $97, %eax               #  13:     return 97
    jmp     l_f1_exit              
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  15:     goto   12_while_cond
    call    ReadInt                 #  16:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_16_while_cond:
    jmp     l_f1_16_while_cond      #  18:     goto   16_while_cond
    movl    $99, %eax               #  19:     assign v5 <- 99
    movb    %al, -26(%ebp)         
    movl    $36813, %eax            #  20:     if     36813 < 74 goto 20_if_true
    movl    $74, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_20_if_true        
    jmp     l_f1_21_if_false        #  21:     goto   21_if_false
l_f1_20_if_true:
    jmp     l_f1_19                 #  23:     goto   19
l_f1_21_if_false:
l_f1_19:
    jmp     l_f1_0                  #  26:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  29:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  30:     return t11
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  31:     call   t12 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movl    $100, %eax              #  32:     if     100 < t12 goto 25_if_true
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  33:     goto   26_if_false
l_f1_25_if_true:
    call    dummyBOOLfunc           #  35:     call   t13 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    jmp     l_f1_24                 #  36:     goto   24
l_f1_26_if_false:
l_f1_24:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 70 of <array 97 of <array 20 of <array 76 of <array 94 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 60 of <array 4 of <array 49 of <array 85 of <array 5 of <char>>>>>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 1 of <array 98 of <array 16 of <array 44 of <char>>>>>>> %ebp+8 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]
    #   -970155260(%ebp)  970155224  [ $v3       <array 70 of <array 97 of <array 20 of <array 76 of <array 94 of <char>>>>>> %ebp-970155260 ]
    #   -975153284(%ebp)  4998024  [ $v4       <array 60 of <array 4 of <array 49 of <array 85 of <array 5 of <char>>>>>> %ebp-975153284 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $975153272, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $243788318, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-970155260(%ebp)     # local array 'v3': 5 dimensions
    movl    $70,-970155256(%ebp)    #   dimension 1: 70 elements
    movl    $97,-970155252(%ebp)    #   dimension 2: 97 elements
    movl    $20,-970155248(%ebp)    #   dimension 3: 20 elements
    movl    $76,-970155244(%ebp)    #   dimension 4: 76 elements
    movl    $94,-970155240(%ebp)    #   dimension 5: 94 elements
    movl    $5,-975153284(%ebp)     # local array 'v4': 5 dimensions
    movl    $60,-975153280(%ebp)    #   dimension 1: 60 elements
    movl    $4,-975153276(%ebp)     #   dimension 2: 4 elements
    movl    $49,-975153272(%ebp)    #   dimension 3: 49 elements
    movl    $85,-975153268(%ebp)    #   dimension 4: 85 elements
    movl    $5,-975153264(%ebp)     #   dimension 5: 5 elements

    # function body
l_f2_1_while_cond:
    movl    $100, %eax              #   1:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
    jmp     l_f2_8_if_false         #   6:     goto   8_if_false
    movl    $1, %eax                #   7:     if     1 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_10_if_true        
    jmp     l_f2_11_if_false        #   8:     goto   11_if_false
l_f2_10_if_true:
    movl    $99, %eax               #  10:     assign v2 <- 99
    movb    %al, -33(%ebp)         
    call    ReadInt                 #  11:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f2_9                  #  12:     goto   9
l_f2_11_if_false:
l_f2_9:
    jmp     l_f2_6                  #  15:     goto   6
l_f2_8_if_false:
l_f2_6:
    leal    -975153284(%ebp), %eax  #  18:     &()    t9 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     param  3 <- t9
    pushl   %eax                   
    leal    -970155260(%ebp), %eax  #  20:     &()    t10 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     param  2 <- t10
    pushl   %eax                   
    movl    $94042, %eax            #  22:     param  1 <- 94042
    pushl   %eax                   
    movl    $87345, %eax            #  23:     div    t11 <- 87345, 13543
    movl    $13543, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  25:     call   t12 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  26:     param  0 <- t12
    pushl   %eax                   
    call    WriteChar               #  27:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $975153272, %esp        # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 60 of <array 4 of <array 49 of <array 85 of <array 5 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <ptr(4) to <array 70 of <array 97 of <array 20 of <array 76 of <array 94 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $35372, %eax            #   0:     div    t0 <- 35372, 65022
    movl    $65022, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 22064
    movl    $22064, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    movl    $97, %eax               #   3:     if     97 <= 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_2_if_true       
    jmp     l_test_3_if_false       #   4:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    call    dummyCHARfunc           #   7:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   8:     if     100 <= t2 goto 7_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_7_while_body    
    jmp     l_test_5                #   9:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  11:     goto   6_while_cond
l_test_5:
    jmp     l_test_1                #  13:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    movl    $74695, %eax            #  17:     mul    t3 <- 74695, 97480
    movl    $97480, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     assign v0 <- t3
    movl    %eax, v0               
    leal    v3, %eax                #  19:     &()    t4 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     param  3 <- t4
    pushl   %eax                   
    leal    v2, %eax                #  21:     &()    t5 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     param  2 <- t5
    pushl   %eax                   
    movl    $17927, %eax            #  23:     add    t6 <- 17927, 2844
    movl    $2844, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     param  1 <- t6
    pushl   %eax                   
    movl    $15096, %eax            #  25:     param  0 <- 15096
    pushl   %eax                   
    call    f1                      #  26:     call   t7 <- f1
    addl    $16, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  27:     assign v1 <- t7
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
    .align   4
v2:                                 # <array 70 of <array 97 of <array 20 of <array 76 of <array 94 of <char>>>>>>
    .long    5
    .long   70
    .long   97
    .long   20
    .long   76
    .long   94
    .skip 970155200
v3:                                 # <array 60 of <array 4 of <array 49 of <array 85 of <array 5 of <char>>>>>>
    .long    5
    .long   60
    .long    4
    .long   49
    .long   85
    .long    5
    .skip 4998000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
