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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 94 of <array 55 of <array 63 of <array 55 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 77 of <array 100 of <array 17 of <array 77 of <array 21 of <bool>>>>>>> %ebp+16 ]
    #    -28(%ebp)   4  [ $v3       <int> %ebp-28 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_1_while_cond       #   2:     goto   1_while_cond
l_f0_0:
l_f0_6_while_cond:
    call    dummyBOOLfunc           #   5:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   6:     if     t6 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   9:     goto   6_while_cond
l_f0_5:
    movl    $90485, %eax            #  11:     add    t7 <- 90485, 96752
    movl    $96752, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     sub    t8 <- t7, 91798
    movl    $91798, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     assign v3 <- t8
    movl    %eax, -28(%ebp)        

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 66 of <array 30 of <array 32 of <array 49 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 98 of <array 71 of <array 1 of <array 76 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 78 of <array 91 of <array 13 of <array 98 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 58 of <array 54 of <array 79 of <array 70 of <array 17 of <int>>>>>>> %ebp+20 ]

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
    leal    _str_1, %eax            #   0:     &()    t6 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $98, %eax               #   3:     if     98 <= 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_2                 
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -17(%ebp)         
l_f1_4:
    movzbl  -17(%ebp), %eax         #  11:     return t7
    jmp     l_f1_exit              
    movl    $98, %eax               #  12:     if     98 > 97 goto 7
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_7                 
    jmp     l_f1_8                  #  13:     goto   8
l_f1_7:
    movl    $1, %eax                #  15:     assign t8 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_9                  #  16:     goto   9
l_f1_8:
    movl    $0, %eax                #  18:     assign t8 <- 0
    movb    %al, -18(%ebp)         
l_f1_9:
    movzbl  -18(%ebp), %eax         #  20:     return t8
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 58 of <array 54 of <array 79 of <array 70 of <array 17 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 74 of <array 78 of <array 91 of <array 13 of <array 98 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <ptr(4) to <array 69 of <array 98 of <array 71 of <array 1 of <array 76 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 66 of <array 30 of <array 32 of <array 49 of <bool>>>>>>> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 28 of <array 80 of <array 16 of <array 71 of <array 2 of <char>>>>>>> %ebp+12 ]
    #   -15523256(%ebp)  15523224  [ $v2       <array 5 of <array 66 of <array 30 of <array 32 of <array 49 of <bool>>>>>> %ebp-15523256 ]
    #   -52011032(%ebp)  36487776  [ $v3       <array 69 of <array 98 of <array 71 of <array 1 of <array 76 of <char>>>>>> %ebp-52011032 ]
    #   -721182104(%ebp)  669171072  [ $v4       <array 74 of <array 78 of <array 91 of <array 13 of <array 98 of <bool>>>>>> %ebp-721182104 ]
    #   -1898939408(%ebp)  1177757304  [ $v5       <array 58 of <array 54 of <array 79 of <array 70 of <array 17 of <int>>>>>> %ebp-1898939408 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1898939396, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $474734849, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-15523256(%ebp)      # local array 'v2': 5 dimensions
    movl    $5,-15523252(%ebp)      #   dimension 1: 5 elements
    movl    $66,-15523248(%ebp)     #   dimension 2: 66 elements
    movl    $30,-15523244(%ebp)     #   dimension 3: 30 elements
    movl    $32,-15523240(%ebp)     #   dimension 4: 32 elements
    movl    $49,-15523236(%ebp)     #   dimension 5: 49 elements
    movl    $5,-52011032(%ebp)      # local array 'v3': 5 dimensions
    movl    $69,-52011028(%ebp)     #   dimension 1: 69 elements
    movl    $98,-52011024(%ebp)     #   dimension 2: 98 elements
    movl    $71,-52011020(%ebp)     #   dimension 3: 71 elements
    movl    $1,-52011016(%ebp)      #   dimension 4: 1 elements
    movl    $76,-52011012(%ebp)     #   dimension 5: 76 elements
    movl    $5,-721182104(%ebp)     # local array 'v4': 5 dimensions
    movl    $74,-721182100(%ebp)    #   dimension 1: 74 elements
    movl    $78,-721182096(%ebp)    #   dimension 2: 78 elements
    movl    $91,-721182092(%ebp)    #   dimension 3: 91 elements
    movl    $13,-721182088(%ebp)    #   dimension 4: 13 elements
    movl    $98,-721182084(%ebp)    #   dimension 5: 98 elements
    movl    $5,-1898939408(%ebp)    # local array 'v5': 5 dimensions
    movl    $58,-1898939404(%ebp)   #   dimension 1: 58 elements
    movl    $54,-1898939400(%ebp)   #   dimension 2: 54 elements
    movl    $79,-1898939396(%ebp)   #   dimension 3: 79 elements
    movl    $70,-1898939392(%ebp)   #   dimension 4: 70 elements
    movl    $17,-1898939388(%ebp)   #   dimension 5: 17 elements

    # function body
    leal    -1898939408(%ebp), %eax #   0:     &()    t6 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     param  3 <- t6
    pushl   %eax                   
    leal    -721182104(%ebp), %eax  #   2:     &()    t7 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     param  2 <- t7
    pushl   %eax                   
    leal    -52011032(%ebp), %eax   #   4:     &()    t8 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     param  1 <- t8
    pushl   %eax                   
    leal    -15523256(%ebp), %eax   #   6:     &()    t9 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #   8:     call   t10 <- f1
    addl    $16, %esp              
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   9:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  10:     return t11
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  11:     call   t12 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_f2_exit:
    # epilogue
    addl    $1898939396, %esp       # remove locals
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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
l_test_9_while_cond:
    call    ReadInt                 #  12:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     div    t1 <- t0, 87429
    movl    $87429, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     div    t2 <- t1, 49399
    movl    $49399, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  15:     div    t3 <- t2, 57302
    movl    $57302, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     if     t3 # 82756 goto 10_while_body
    movl    $82756, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  17:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  19:     goto   9_while_cond
l_test_8:
    movl    $47339, %eax            #  21:     div    t4 <- 47339, 50330
    movl    $50330, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     sub    t5 <- t4, 50666
    movl    $50666, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     param  0 <- t5
    pushl   %eax                   
    call    WriteInt                #  24:     call   WriteInt
    addl    $4, %esp               

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
