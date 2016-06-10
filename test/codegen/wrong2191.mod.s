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
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 82 of <array 61 of <array 79 of <array 18 of <array 55 of <int>>>>>>> %ebp+20 ]

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
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
    jmp     l_f0_2_while_body       #   3:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
    call    dummyCHARfunc           #   6:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     assign v3 <- t5
    movb    %al, 16(%ebp)          
l_f0_9_while_cond:
    movl    $93732, %eax            #   9:     if     93732 > 67085 goto 10_while_body
    movl    $67085, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_10_while_body     
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_9_while_cond       #  13:     goto   9_while_cond
l_f0_8:

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
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 82 of <array 20 of <array 88 of <array 82 of <array 25 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -44(%ebp)   4  [ $v3       <int> %ebp-44 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    jmp     l_f1_0                  #   2:     goto   0
    movl    $99047, %eax            #   3:     assign v3 <- 99047
    movl    %eax, -44(%ebp)        
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    movl    $17838, %eax            #   7:     sub    t5 <- 17838, 73278
    movl    $73278, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     add    t6 <- t5, 60315
    movl    $60315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $87628, %eax            #   9:     div    t7 <- 87628, 32861
    movl    $32861, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     div    t8 <- t7, 97899
    movl    $97899, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  11:     mul    t9 <- t8, 39907
    movl    $39907, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -28(%ebp), %eax         #  12:     sub    t10 <- t6, t9
    movl    -40(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     if     t10 # 95864 goto 7_while_body
    movl    $95864, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_7_while_body      
    jmp     l_f1_5                  #  14:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  16:     goto   6_while_cond
l_f1_5:
    call    dummyCHARfunc           #  18:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

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
    movl    $9224, %eax             #   0:     if     9224 = 82811 goto 1_if_true
    movl    $82811, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $97, %eax               #   3:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_7_if_false         #   4:     goto   7_if_false
    jmp     l_f2_5                  #   5:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $66539, %eax            #   8:     param  0 <- 66539
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    movl    $12074, %eax            #  10:     assign v1 <- 12074
    movl    %eax, -28(%ebp)        
    call    dummyINTfunc            #  11:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_16_if_false        #  15:     goto   16_if_false
    jmp     l_f2_14                 #  16:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $97, %eax               #  19:     if     97 > 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_18                
    jmp     l_f2_19                 #  20:     goto   19
l_f2_18:
    movl    $1, %eax                #  22:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_20                 #  23:     goto   20
l_f2_19:
    movl    $0, %eax                #  25:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f2_20:
    movzbl  -17(%ebp), %eax         #  27:     assign v2 <- t6
    movb    %al, -29(%ebp)         
    jmp     l_f2_11                 #  28:     goto   11
l_f2_11:
    movl    $52678, %eax            #  30:     div    t7 <- 52678, 50764
    movl    $50764, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  31:     if     t7 = 90472 goto 23_if_true
    movl    $90472, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  32:     goto   24_if_false
l_f2_23_if_true:
l_f2_27_while_cond:
    jmp     l_f2_27_while_cond      #  35:     goto   27_while_cond
    jmp     l_f2_22                 #  36:     goto   22
l_f2_24_if_false:
l_f2_22:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 82 of <array 61 of <array 79 of <array 18 of <array 55 of <int>>>>>>> %ebp-24 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   2:     assign v0 <- 0
    movb    %al, v0                
l_test_4_while_cond:
    movl    $97, %eax               #   4:     if     97 # 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_5_while_body    
    jmp     l_test_3                #   5:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   7:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_8                #  11:     goto   8
    leal    v1, %eax                #  12:     &()    t2 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  3 <- t2
    pushl   %eax                   
    movl    $100, %eax              #  14:     param  2 <- 100
    pushl   %eax                   
    movl    $0, %eax                #  15:     param  1 <- 0
    pushl   %eax                   
    call    f2                      #  16:     call   t3 <- f2
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  17:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  18:     call   t4 <- f0
    addl    $16, %esp              
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  19:     if     t4 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  20:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  22:     goto   11
l_test_13_if_false:
l_test_11:
    jmp     l_test_9_while_cond     #  25:     goto   9_while_cond
l_test_8:

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
v1:                                 # <array 82 of <array 61 of <array 79 of <array 18 of <array 55 of <int>>>>>>
    .long    5
    .long   82
    .long   61
    .long   79
    .long   18
    .long   55
    .skip 1564825680








    # end of global data section
    #-----------------------------------------

    .end
##################################################
