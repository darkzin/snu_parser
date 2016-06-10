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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 54 of <array 77 of <array 66 of <array 24 of <array 12 of <bool>>>>>>> %ebp+16 ]
    #    -52(%ebp)   4  [ $v3       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $61755, %eax            #   0:     div    t5 <- 61755, 62374
    movl    $62374, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   1:     sub    t6 <- t5, 64124
    movl    $64124, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     add    t7 <- t6, 11912
    movl    $11912, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     sub    t8 <- t7, 9996
    movl    $9996, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     assign v3 <- t8
    movl    %eax, -52(%ebp)        
    movl    $34607, %eax            #   5:     sub    t9 <- 34607, 13111
    movl    $13111, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   6:     sub    t10 <- t9, 37386
    movl    $37386, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     sub    t11 <- t10, 83496
    movl    $83496, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     return t11
    jmp     l_f0_exit              
    jmp     l_f0_4_if_false         #   9:     goto   4_if_false
    movl    $29675, %eax            #  10:     assign v3 <- 29675
    movl    %eax, -52(%ebp)        
    call    dummyINTfunc            #  11:     call   t12 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    call    dummyBOOLfunc           #  12:     call   t13 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movl    $56992, %eax            #  13:     return 56992
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  14:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 54 of <array 77 of <array 66 of <array 24 of <array 12 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -30(%ebp)   1  [ $v1       <char> %ebp-30 ]
    #   -79035320(%ebp)  79035288  [ $v2       <array 54 of <array 77 of <array 66 of <array 24 of <array 12 of <bool>>>>>> %ebp-79035320 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $79035308, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19758827, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-79035320(%ebp)      # local array 'v2': 5 dimensions
    movl    $54,-79035316(%ebp)     #   dimension 1: 54 elements
    movl    $77,-79035312(%ebp)     #   dimension 2: 77 elements
    movl    $66,-79035308(%ebp)     #   dimension 3: 66 elements
    movl    $24,-79035304(%ebp)     #   dimension 4: 24 elements
    movl    $12,-79035300(%ebp)     #   dimension 5: 12 elements

    # function body
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, -30(%ebp)         
l_f1_2_while_cond:
    leal    -79035320(%ebp), %eax   #   2:     &()    t5 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  2 <- t5
    pushl   %eax                   
    movl    $0, %eax                #   4:     param  1 <- 0
    pushl   %eax                   
    movl    $100, %eax              #   5:     if     100 < 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_7                  #   9:     goto   7
l_f1_6:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_7:
    movzbl  -17(%ebp), %eax         #  13:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  14:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    movl    $52786, %eax            #  15:     sub    t8 <- 52786, t7
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     if     t8 # 52958 goto 3_while_body
    movl    $52958, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #  17:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
l_f1_1:
    call    dummyBOOLfunc           #  21:     call   t9 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         

l_f1_exit:
    # epilogue
    addl    $79035308, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t7       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 47 of <array 27 of <array 29 of <array 39 of <array 74 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t5
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   2:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   3:     call   t7 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   4:     return t7
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
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 47 of <array 27 of <array 29 of <array 39 of <array 74 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
    movl    $79338, %eax            #   1:     div    t0 <- 79338, 67797
    movl    $67797, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 # 73416 goto 2_while_body
    movl    $73416, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyProcedure          #   5:     call   dummyProcedure
    movl    $1, %eax                #   6:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
l_test_7_while_cond:
    jmp     l_test_6                #  10:     goto   6
    movl    $22776, %eax            #  11:     if     22776 <= 44216 goto 10_if_true
    movl    $44216, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  14:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $98, %eax               #  17:     if     98 < 98 goto 14
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14              
    jmp     l_test_15               #  18:     goto   15
l_test_14:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_16               #  21:     goto   16
l_test_15:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_16:
    movzbl  -17(%ebp), %eax         #  25:     param  1 <- t1
    pushl   %eax                   
    leal    v1, %eax                #  26:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  27:     param  0 <- t2
    pushl   %eax                   
    call    f2                      #  28:     call   t3 <- f2
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_7_while_cond     #  29:     goto   7_while_cond
l_test_6:
l_test_19_while_cond:
    jmp     l_test_22               #  32:     goto   22
l_test_22:
    movl    $1, %eax                #  34:     assign t4 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_24               #  35:     goto   24
    movl    $0, %eax                #  36:     assign t4 <- 0
    movb    %al, -26(%ebp)         
l_test_24:
    movzbl  -26(%ebp), %eax         #  38:     if     t4 = 0 goto 20_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_while_body   
    jmp     l_test_18               #  39:     goto   18
l_test_20_while_body:
    jmp     l_test_exit            
    jmp     l_test_19_while_cond    #  42:     goto   19_while_cond
l_test_18:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 47 of <array 27 of <array 29 of <array 39 of <array 74 of <int>>>>>>
    .long    5
    .long   47
    .long   27
    .long   29
    .long   39
    .long   74
    .skip 424830744








    # end of global data section
    #-----------------------------------------

    .end
##################################################
