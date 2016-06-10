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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t4
    movb    %al, -21(%ebp)         
l_f0_2_while_cond:
    movl    $94637, %eax            #   3:     if     94637 = 16893 goto 3_while_body
    movl    $16893, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    movl    $98, %eax               #   7:     if     98 >= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_7_while_body      
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond
l_f0_5:
    call    ReadInt                 #  12:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f0_2_while_cond       #  13:     goto   2_while_cond
l_f0_1:
l_f0_11_while_cond:
    jmp     l_f0_10                 #  16:     goto   10
    jmp     l_f0_10                 #  17:     goto   10
    movl    $100, %eax              #  18:     return 100
    jmp     l_f0_exit              
    movl    $100, %eax              #  19:     assign v2 <- 100
    movb    %al, -21(%ebp)         
    jmp     l_f0_11_while_cond      #  20:     goto   11_while_cond
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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 57 of <array 22 of <array 47 of <array 17 of <array 33 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_8_if_false         #   4:     goto   8_if_false
    jmp     l_f1_6                  #   5:     goto   6
l_f1_8_if_false:
l_f1_6:
l_f1_10_while_cond:
    movl    $48321, %eax            #   9:     if     48321 >= 5013 goto 11_while_body
    movl    $5013, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  10:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  12:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #  16:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #  17:     if     1 # 0 goto 15_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
l_f1_15_if_true:
    call    WriteLn                 #  20:     call   WriteLn
    jmp     l_f1_14                 #  21:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 57 of <array 22 of <array 47 of <array 17 of <array 33 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <bool> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <ptr(4) to <array 57 of <array 22 of <array 47 of <array 17 of <array 33 of <int>>>>>>> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 34 of <array 13 of <array 47 of <array 11 of <array 43 of <int>>>>>>> %ebp+8 ]
    #   -132256924(%ebp)  132256896  [ $v1       <array 57 of <array 22 of <array 47 of <array 17 of <array 33 of <int>>>>>> %ebp-132256924 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $132256912, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $33064228, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-132256924(%ebp)     # local array 'v1': 5 dimensions
    movl    $57,-132256920(%ebp)    #   dimension 1: 57 elements
    movl    $22,-132256916(%ebp)    #   dimension 2: 22 elements
    movl    $47,-132256912(%ebp)    #   dimension 3: 47 elements
    movl    $17,-132256908(%ebp)    #   dimension 4: 17 elements
    movl    $33,-132256904(%ebp)    #   dimension 5: 33 elements

    # function body
    movl    $72632, %eax            #   0:     param  1 <- 72632
    pushl   %eax                   
    leal    -132256924(%ebp), %eax  #   1:     &()    t4 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   3:     call   t5 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $0, %eax                #   4:     return 0
    jmp     l_f2_exit              
    movl    $97, %eax               #   5:     if     97 <= 100 goto 6
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t6 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t6 <- 0
    movb    %al, -22(%ebp)         
l_f2_8:
    movzbl  -22(%ebp), %eax         #  13:     return t6
    jmp     l_f2_exit              
    movl    $99, %eax               #  14:     if     99 = 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $1, %eax                #  17:     assign t7 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f2_13                 #  18:     goto   13
l_f2_12:
    movl    $0, %eax                #  20:     assign t7 <- 0
    movb    %al, -23(%ebp)         
l_f2_13:
    movzbl  -23(%ebp), %eax         #  22:     return t7
    jmp     l_f2_exit              
    movl    $100, %eax              #  23:     if     100 >= 100 goto 16
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_16                
    jmp     l_f2_17                 #  24:     goto   17
l_f2_16:
    movl    $1, %eax                #  26:     assign t8 <- 1
    movb    %al, -24(%ebp)         
    jmp     l_f2_18                 #  27:     goto   18
l_f2_17:
    movl    $0, %eax                #  29:     assign t8 <- 0
    movb    %al, -24(%ebp)         
l_f2_18:
    movzbl  -24(%ebp), %eax         #  31:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  32:     goto   0
l_f2_0:
l_f2_21_while_cond:
    movl    $100, %eax              #  35:     if     100 = 100 goto 22_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f2_22_while_body     
    jmp     l_f2_20                 #  36:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  38:     goto   21_while_cond
l_f2_20:
    movl    $68189, %eax            #  40:     param  1 <- 68189
    pushl   %eax                   
    leal    -132256924(%ebp), %eax  #  41:     &()    t9 <- v1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #  43:     call   t10 <- f1
    addl    $8, %esp               
    movb    %al, -13(%ebp)         

l_f2_exit:
    # epilogue
    addl    $132256912, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 34 of <array 13 of <array 47 of <array 11 of <array 43 of <int>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    movl    $50766, %eax            #   0:     assign v0 <- 50766
    movl    %eax, v0               
    jmp     l_test_2                #   1:     goto   2
    leal    v2, %eax                #   2:     &()    t0 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    f2                      #   4:     call   t1 <- f2
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t1 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_test_4                #   9:     goto   4
l_test_3:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_test_4:
    movzbl  -18(%ebp), %eax         #  13:     assign v1 <- t2
    movb    %al, v1                
    call    dummyINTfunc            #  14:     call   t3 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    .align   4
v2:                                 # <array 34 of <array 13 of <array 47 of <array 11 of <array 43 of <int>>>>>>
    .long    5
    .long   34
    .long   13
    .long   47
    .long   11
    .long   43
    .skip 39304408








    # end of global data section
    #-----------------------------------------

    .end
##################################################
