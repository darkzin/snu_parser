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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    movl    $98, %eax               #   1:     if     98 < 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $67333, %eax            #   4:     if     67333 <= 78610 goto 5_if_true
    movl    $78610, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   7:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    movl    $97, %eax               #  12:     return 97
    jmp     l_f0_exit              
l_f0_10_while_cond:
    call    dummyCHARfunc           #  14:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  15:     if     t5 <= 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  18:     goto   10_while_cond
l_f0_9:

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 10 of <array 8 of <array 5 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 1 of <array 9 of <array 9 of <array 1 of <char>>>>>>> %ebp+20 ]

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
    leal    _str_1, %eax            #   0:     &()    t5 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $97227, %eax            #   3:     if     97227 > 26772 goto 2_if_true
    movl    $26772, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   4:     goto   3_if_false
l_f1_2_if_true:
    movl    $98, %eax               #   6:     if     98 < 100 goto 6_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #   7:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_if_false:
l_f1_5:
    movl    $59675, %eax            #  12:     mul    t6 <- 59675, 52419
    movl    $52419, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     div    t7 <- t6, 33110
    movl    $33110, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t8 <- t7, 20964
    movl    $20964, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t8
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_1                  #  17:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_11_while_cond:
    movl    $26682, %eax            #  21:     if     26682 = 69321 goto 12_while_body
    movl    $69321, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_12_while_body     
    jmp     l_f1_10                 #  22:     goto   10
l_f1_12_while_body:
    movl    $67306, %eax            #  24:     return 67306
    jmp     l_f1_exit              
    jmp     l_f1_11_while_cond      #  25:     goto   11_while_cond
l_f1_10:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 1 of <array 9 of <array 9 of <array 1 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <ptr(4) to <array 9 of <array 10 of <array 8 of <array 5 of <array 7 of <bool>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 10 of <array 6 of <array 4 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #   -25264(%ebp)  25224  [ $v3       <array 9 of <array 10 of <array 8 of <array 5 of <array 7 of <bool>>>>>> %ebp-25264 ]
    #   -25372(%ebp)  105  [ $v4       <array 1 of <array 1 of <array 9 of <array 9 of <array 1 of <char>>>>>> %ebp-25372 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $25360, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6340, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-25264(%ebp)         # local array 'v3': 5 dimensions
    movl    $9,-25260(%ebp)         #   dimension 1: 9 elements
    movl    $10,-25256(%ebp)        #   dimension 2: 10 elements
    movl    $8,-25252(%ebp)         #   dimension 3: 8 elements
    movl    $5,-25248(%ebp)         #   dimension 4: 5 elements
    movl    $7,-25244(%ebp)         #   dimension 5: 7 elements
    movl    $5,-25372(%ebp)         # local array 'v4': 5 dimensions
    movl    $1,-25368(%ebp)         #   dimension 1: 1 elements
    movl    $1,-25364(%ebp)         #   dimension 2: 1 elements
    movl    $9,-25360(%ebp)         #   dimension 3: 9 elements
    movl    $9,-25356(%ebp)         #   dimension 4: 9 elements
    movl    $1,-25352(%ebp)         #   dimension 5: 1 elements

    # function body
    leal    _str_2, %eax            #   0:     &()    t5 <- _str_2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  0 <- t5
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   4:     return t6
    jmp     l_f2_exit              
    leal    -25372(%ebp), %eax      #   5:     &()    t7 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     param  3 <- t7
    pushl   %eax                   
    movl    $63496, %eax            #   7:     param  2 <- 63496
    pushl   %eax                   
    movl    $7427, %eax             #   8:     param  1 <- 7427
    pushl   %eax                   
    leal    -25264(%ebp), %eax      #   9:     &()    t8 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     param  0 <- t8
    pushl   %eax                   
    call    f1                      #  11:     call   t9 <- f1
    addl    $16, %esp              
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  12:     div    t10 <- t9, 69489
    movl    $69489, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     div    t11 <- t10, 67929
    movl    $67929, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $280, %eax              #  14:     if     280 = t11 goto 3_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_3_if_true         
    jmp     l_f2_4_if_false         #  15:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_2                  #  17:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $25360, %esp            # remove locals
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
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <array 10 of <array 6 of <array 4 of <array 2 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]

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
l_test_1_while_cond:
    movl    $95162, %eax            #   1:     div    t0 <- 95162, 99765
    movl    $99765, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 16993
    movl    $16993, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $81520, %eax            #   3:     if     81520 >= t1 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    jmp     l_test_6_if_false       #   8:     goto   6_if_false
l_test_8_while_cond:
    jmp     l_test_7                #  10:     goto   7
    jmp     l_test_8_while_cond     #  11:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_4                #  14:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    leal    v0, %eax                #  18:     &()    t2 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     param  2 <- t2
    pushl   %eax                   
    movl    $47508, %eax            #  20:     param  1 <- 47508
    pushl   %eax                   
    call    dummyCHARfunc           #  21:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  22:     param  0 <- t3
    pushl   %eax                   
    call    f2                      #  23:     call   t4 <- f2
    addl    $12, %esp              
    movb    %al, -26(%ebp)         
    call    WriteLn                 #  24:     call   WriteLn

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <array 7 of <array 10 of <array 6 of <array 4 of <array 2 of <bool>>>>>>
    .long    5
    .long    7
    .long   10
    .long    6
    .long    4
    .long    2
    .skip 3360








    # end of global data section
    #-----------------------------------------

    .end
##################################################
