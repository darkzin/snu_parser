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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 5 of <array 1 of <array 6 of <array 8 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -15(%ebp)   1  [ $v6       <bool> %ebp-15 ]

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
    movl    $100, %eax              #   0:     if     100 < 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   1:     goto   2
l_f0_1:
    movl    $1, %eax                #   3:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v6 <- t4
    movb    %al, -15(%ebp)         
    movl    $32514, %eax            #   9:     assign v4 <- 32514
    movl    %eax, 16(%ebp)         
l_f0_7_while_cond:
    jmp     l_f0_6                  #  11:     goto   6
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_7_while_cond       #  13:     goto   7_while_cond
l_f0_6:

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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 1 of <array 6 of <array 8 of <array 2 of <char>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #   -552(%ebp)  504  [ $v4       <array 5 of <array 1 of <array 6 of <array 8 of <array 2 of <char>>>>>> %ebp-552 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $540, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $135, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-552(%ebp)           # local array 'v4': 5 dimensions
    movl    $5,-548(%ebp)           #   dimension 1: 5 elements
    movl    $1,-544(%ebp)           #   dimension 2: 1 elements
    movl    $6,-540(%ebp)           #   dimension 3: 6 elements
    movl    $8,-536(%ebp)           #   dimension 4: 8 elements
    movl    $2,-532(%ebp)           #   dimension 5: 2 elements

    # function body
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #   2:     assign v2 <- t4
    movb    %al, 8(%ebp)           
    leal    -552(%ebp), %eax        #   3:     &()    t5 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     param  3 <- t5
    pushl   %eax                   
    movl    $32737, %eax            #   5:     add    t6 <- 32737, 93706
    movl    $93706, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     add    t7 <- t6, 15994
    movl    $15994, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     add    t8 <- t7, 7585
    movl    $7585, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     sub    t9 <- t8, 33352
    movl    $33352, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     sub    t10 <- t9, 97455
    movl    $97455, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     add    t11 <- t10, 56337
    movl    $56337, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     add    t12 <- t11, 93592
    movl    $93592, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  2 <- t12
    pushl   %eax                   
    movl    $69213, %eax            #  13:     param  1 <- 69213
    pushl   %eax                   
    movl    $99, %eax               #  14:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  15:     call   t13 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $540, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $541, %eax              #   2:     if     541 < 21055 goto 3_while_body
    movl    $21055, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    call    ReadInt                 #   5:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]

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
    movl    $98, %eax               #   1:     if     98 > 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    movl    $67292, %eax            #   4:     assign v0 <- 67292
    movl    %eax, v0               
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $97, %eax               #   8:     if     97 # 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_exit            
    movl    $97, %eax               #  12:     if     97 > 100 goto 12
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_12              
    jmp     l_test_13               #  13:     goto   13
l_test_12:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_14               #  16:     goto   14
l_test_13:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_14:
    movzbl  -14(%ebp), %eax         #  20:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_6                #  24:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $97, %eax               #  27:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  28:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_22_while_cond:
    jmp     l_test_21               #  31:     goto   21
    movl    $27703, %eax            #  32:     if     27703 <= 58714 goto 25
    movl    $58714, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_25              
    jmp     l_test_26               #  33:     goto   26
l_test_25:
    movl    $1, %eax                #  35:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_27               #  36:     goto   27
l_test_26:
    movl    $0, %eax                #  38:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_27:
    movzbl  -15(%ebp), %eax         #  40:     assign v1 <- t2
    movb    %al, v1                
    call    dummyProcedure          #  41:     call   dummyProcedure
l_test_31_while_cond:
    call    dummyCHARfunc           #  43:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  44:     if     t3 < 97 goto 32_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_32_while_body   
    jmp     l_test_30               #  45:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  47:     goto   31_while_cond
l_test_30:
    jmp     l_test_22_while_cond    #  49:     goto   22_while_cond
l_test_21:

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
