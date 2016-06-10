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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <char> %ebp-30 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 82 of <array 44 of <array 15 of <array 48 of <array 74 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -31(%ebp)   1  [ $v2       <bool> %ebp-31 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $56807, %eax            #   1:     add    t6 <- 56807, 45727
    movl    $45727, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     sub    t7 <- t6, 57250
    movl    $57250, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $32287, %eax            #   3:     if     32287 <= t7 goto 2
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f0_4:
    movzbl  -29(%ebp), %eax         #  11:     assign v2 <- t8
    movb    %al, -31(%ebp)         
    movl    $0, %eax                #  12:     if     0 # 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  13:     goto   8_if_false
l_f0_7_if_true:
    call    dummyCHARfunc           #  15:     call   t9 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    leal    _str_1, %eax            #  16:     &()    t10 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  0 <- t10
    pushl   %eax                   
    call    WriteStr                #  18:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #  19:     if     100 < 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  20:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  22:     goto   12
l_f0_14_if_false:
l_f0_12:
    movl    $3299, %eax             #  25:     if     3299 >= 1448 goto 17_if_true
    movl    $1448, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  26:     goto   18_if_false
l_f0_17_if_true:
    movl    $98, %eax               #  28:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_16                 #  29:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_6                  #  32:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 82 of <array 44 of <array 15 of <array 48 of <array 74 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -18(%ebp)   1  [ $v1       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]
    #   -192234284(%ebp)  192234264  [ $v3       <array 82 of <array 44 of <array 15 of <array 48 of <array 74 of <bool>>>>>> %ebp-192234284 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $192234272, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $48058568, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-192234284(%ebp)     # local array 'v3': 5 dimensions
    movl    $82,-192234280(%ebp)    #   dimension 1: 82 elements
    movl    $44,-192234276(%ebp)    #   dimension 2: 44 elements
    movl    $15,-192234272(%ebp)    #   dimension 3: 15 elements
    movl    $48,-192234268(%ebp)    #   dimension 4: 48 elements
    movl    $74,-192234264(%ebp)    #   dimension 5: 74 elements

    # function body
    movl    $0, %eax                #   0:     if     0 = 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $98, %eax               #   3:     assign v1 <- 98
    movb    %al, -18(%ebp)         
    movl    $1, %eax                #   4:     assign v2 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_7_while_cond:
    movl    $97, %eax               #   9:     param  1 <- 97
    pushl   %eax                   
    leal    -192234284(%ebp), %eax  #  10:     &()    t5 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  12:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  13:     if     t6 <= 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    jmp     l_f2_10                 #  16:     goto   10
l_f2_10:
    jmp     l_f2_7_while_cond       #  18:     goto   7_while_cond
l_f2_6:
    movl    $98, %eax               #  20:     assign v1 <- 98
    movb    %al, -18(%ebp)         

l_f2_exit:
    # epilogue
    addl    $192234272, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]

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
    jmp     l_test_4                #   0:     goto   4
    jmp     l_test_5                #   1:     goto   5
l_test_4:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_6                #   4:     goto   6
l_test_5:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_6:
    movl    $1, %eax                #   8:     if     1 = t0 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   9:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  14:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #  15:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyINTfunc            #  16:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t4 <- t3, 69427
    movl    $69427, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     assign v0 <- t4
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
