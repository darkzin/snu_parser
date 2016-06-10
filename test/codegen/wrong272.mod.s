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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t11 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $17453, %eax            #   1:     add    t12 <- 17453, t11
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t12
    jmp     l_f0_exit              
    movl    $61986, %eax            #   3:     div    t13 <- 61986, 6559
    movl    $6559, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $10701, %eax            #   4:     sub    t14 <- 10701, t13
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t14
    jmp     l_f0_exit              
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
    jmp     l_f0_5                  #   7:     goto   5
l_f0_5:
    movl    $4564, %eax             #   9:     return 4564
    jmp     l_f0_exit              
    jmp     l_f0_11_if_false        #  10:     goto   11_if_false
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_2                  #  14:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t13      <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 9 of <array 10 of <array 8 of <array 8 of <array 8 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
l_f1_7_while_cond:
    movl    $63987, %eax            #   7:     if     63987 = 37470 goto 8_while_body
    movl    $37470, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #   8:     goto   6
l_f1_8_while_body:
    movl    $67514, %eax            #  10:     param  0 <- 67514
    pushl   %eax                   
    call    WriteInt                #  11:     call   WriteInt
    addl    $4, %esp               
l_f1_12_while_cond:
    movl    $92929, %eax            #  13:     sub    t11 <- 92929, 68987
    movl    $68987, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $67163, %eax            #  14:     if     67163 # t11 goto 13_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_13_while_body     
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_while_body:
    jmp     l_f1_12_while_cond      #  17:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_7_while_cond       #  19:     goto   7_while_cond
l_f1_6:
    call    dummyBOOLfunc           #  21:     call   t12 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  22:     if     t12 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16                
    jmp     l_f1_17                 #  23:     goto   17
l_f1_16:
    movl    $1, %eax                #  25:     assign t13 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_18                 #  26:     goto   18
l_f1_17:
    movl    $0, %eax                #  28:     assign t13 <- 0
    movb    %al, -18(%ebp)         
l_f1_18:
    movzbl  -18(%ebp), %eax         #  30:     return t13
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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 10 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $98444, %eax            #   0:     add    t11 <- 98444, 94065
    movl    $94065, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t11
    jmp     l_f2_exit              
    call    dummyProcedure          #   2:     call   dummyProcedure
    call    dummyCHARfunc           #   3:     call   t12 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     assign v1 <- t12
    movb    %al, 12(%ebp)          

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t7       <char> %ebp-45 ]
    #    -46(%ebp)   1  [ $t8       <char> %ebp-46 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 10 of <array 4 of <array 8 of <array 10 of <array 7 of <bool>>>>>>> %ebp-52 ]

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
    movl    $0, %eax                #   0:     param  1 <- 0
    pushl   %eax                   
    movl    $83614, %eax            #   1:     div    t0 <- 83614, 74557
    movl    $74557, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 36569
    movl    $36569, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   4:     call   t2 <- f0
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t3 <- t2, 82902
    movl    $82902, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     div    t4 <- t3, 65770
    movl    $65770, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     div    t5 <- t4, 40679
    movl    $40679, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     mul    t6 <- t5, 19703
    movl    $19703, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   9:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #  10:     call   WriteInt
    addl    $4, %esp               
l_test_2_while_cond:
    movl    $94171, %eax            #  12:     if     94171 >= 85486 goto 3_while_body
    movl    $85486, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #  13:     goto   1
l_test_3_while_body:
    jmp     l_test_7_if_false       #  15:     goto   7_if_false
    jmp     l_test_5                #  16:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_2_while_cond     #  19:     goto   2_while_cond
l_test_1:
    call    dummyCHARfunc           #  21:     call   t7 <- dummyCHARfunc
    movb    %al, -45(%ebp)         
    movzbl  -45(%ebp), %eax         #  22:     param  2 <- t7
    pushl   %eax                   
    call    dummyCHARfunc           #  23:     call   t8 <- dummyCHARfunc
    movb    %al, -46(%ebp)         
    movzbl  -46(%ebp), %eax         #  24:     param  1 <- t8
    pushl   %eax                   
    leal    v0, %eax                #  25:     &()    t9 <- v0
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     param  0 <- t9
    pushl   %eax                   
    call    f2                      #  27:     call   t10 <- f2
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        

l_test_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
v0:                                 # <array 10 of <array 4 of <array 8 of <array 10 of <array 7 of <bool>>>>>>
    .long    5
    .long   10
    .long    4
    .long    8
    .long   10
    .long    7
    .skip 22400








    # end of global data section
    #-----------------------------------------

    .end
##################################################
