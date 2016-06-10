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
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 89 of <array 41 of <array 34 of <array 91 of <array 90 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

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
    movl    $88892, %eax            #   0:     add    t9 <- 88892, 1142
    movl    $1142, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $65217, %eax            #   1:     mul    t10 <- 65217, 41101
    movl    $41101, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t11 <- t10, 96457
    movl    $96457, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -32(%ebp), %eax         #   3:     if     t9 > t11 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   4:     goto   2
l_f0_1:
    movl    $1, %eax                #   6:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f0_3:
    movzbl  -21(%ebp), %eax         #  11:     assign v1 <- t12
    movb    %al, 12(%ebp)          
    call    ReadInt                 #  12:     call   t13 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 37 of <array 42 of <array 60 of <array 37 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 81 of <array 31 of <array 57 of <array 5 of <array 11 of <bool>>>>>>> %ebp+16 ]
    #    -18(%ebp)   1  [ $v3       <bool> %ebp-18 ]

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
    movl    $99, %eax               #   0:     return 99
    jmp     l_f1_exit              
    movl    $98, %eax               #   1:     if     98 > 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
l_f1_3:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -17(%ebp)         
l_f1_4:
    movzbl  -17(%ebp), %eax         #   9:     assign v3 <- t9
    movb    %al, -18(%ebp)         
    call    ReadInt                 #  10:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        

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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 71 of <array 36 of <array 66 of <array 9 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_3_if_true          #   2:     goto   3_if_true
l_f2_3_if_true:
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   5:     goto   7_while_cond
l_f2_10_while_cond:
    movl    $40087, %eax            #   7:     if     40087 = 91905 goto 11_while_body
    movl    $91905, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_11_while_body     
    jmp     l_f2_9                  #   8:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  10:     goto   10_while_cond
l_f2_9:
    movl    $0, %eax                #  12:     if     0 # 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  13:     goto   15_if_false
l_f2_14_if_true:
    jmp     l_f2_13                 #  15:     goto   13
l_f2_15_if_false:
l_f2_13:
    jmp     l_f2_2                  #  18:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 81 of <array 31 of <array 57 of <array 5 of <array 11 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 18 of <array 37 of <array 42 of <array 60 of <array 37 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t8       <bool> %ebp-35 ]

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
    movl    $2838, %eax             #   0:     if     2838 <= 34850 goto 1_if_true
    movl    $34850, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
    jmp     l_test_5                #   5:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_13               #  12:     goto   13
    jmp     l_test_14               #  13:     goto   14
l_test_13:
    movl    $1, %eax                #  15:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  16:     goto   15
l_test_14:
    movl    $0, %eax                #  18:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movl    $0, %eax                #  20:     if     0 = t1 goto 10_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #  21:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_19               #  23:     goto   19
l_test_19:
    jmp     l_test_9                #  25:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_24_if_false      #  28:     goto   24_if_false
    leal    v1, %eax                #  29:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  30:     param  2 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  31:     &()    t3 <- v0
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  32:     param  1 <- t3
    pushl   %eax                   
    movl    $44504, %eax            #  33:     mul    t4 <- 44504, 91634
    movl    $91634, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     div    t5 <- t4, 14430
    movl    $14430, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  36:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    jmp     l_test_22               #  37:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $89057, %eax            #  40:     if     89057 < 52008 goto 28
    movl    $52008, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_28              
    jmp     l_test_29               #  41:     goto   29
l_test_28:
    movl    $1, %eax                #  43:     assign t7 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_test_30               #  44:     goto   30
l_test_29:
    movl    $0, %eax                #  46:     assign t7 <- 0
    movb    %al, -34(%ebp)         
l_test_30:
    movzbl  -34(%ebp), %eax         #  48:     assign v2 <- t7
    movb    %al, v2                
    call    dummyBOOLfunc           #  49:     call   t8 <- dummyBOOLfunc
    movb    %al, -35(%ebp)         

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
v0:                                 # <array 18 of <array 37 of <array 42 of <array 60 of <array 37 of <char>>>>>>
    .long    5
    .long   18
    .long   37
    .long   42
    .long   60
    .long   37
    .skip 62097840
v1:                                 # <array 81 of <array 31 of <array 57 of <array 5 of <array 11 of <bool>>>>>>
    .long    5
    .long   81
    .long   31
    .long   57
    .long    5
    .long   11
    .skip 7871985
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
