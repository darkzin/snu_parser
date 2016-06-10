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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 23 of <array 20 of <array 12 of <array 39 of <array 11 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 99 of <array 25 of <array 43 of <array 14 of <array 28 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    movl    $97, %eax               #   1:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     return t8
    jmp     l_f0_exit              

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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_6_if_false         #   3:     goto   6_if_false
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $83436, %eax            #   7:     assign v3 <- 83436
    movl    %eax, 16(%ebp)         
    jmp     l_f1_8                  #   8:     goto   8
l_f1_8:
l_f1_12_while_cond:
    jmp     l_f1_11                 #  11:     goto   11
    jmp     l_f1_12_while_cond      #  12:     goto   12_while_cond
l_f1_11:
    movl    $73098, %eax            #  14:     param  0 <- 73098
    pushl   %eax                   
    call    WriteInt                #  15:     call   WriteInt
    addl    $4, %esp               
l_f1_16_while_cond:
    movl    $97, %eax               #  17:     if     97 >= 99 goto 17_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_17_while_body     
    jmp     l_f1_15                 #  18:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  20:     goto   16_while_cond
l_f1_15:
    movl    $51388, %eax            #  22:     assign v3 <- 51388
    movl    %eax, 16(%ebp)         
l_f1_21_while_cond:
    movl    $98, %eax               #  24:     if     98 > 97 goto 22_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_22_while_body     
    jmp     l_f1_20                 #  25:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  27:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_0                  #  29:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_25_while_cond:
    jmp     l_f1_exit              
    movl    $0, %eax                #  34:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    movl    $98, %eax               #  35:     if     98 > 97 goto 30_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_30_if_true        
    jmp     l_f1_31_if_false        #  36:     goto   31_if_false
l_f1_30_if_true:
    jmp     l_f1_29                 #  38:     goto   29
l_f1_31_if_false:
l_f1_29:
    jmp     l_f1_25_while_cond      #  41:     goto   25_while_cond
l_f1_34_while_cond:
    jmp     l_f1_35_while_body      #  43:     goto   35_while_body
l_f1_35_while_body:
    jmp     l_f1_34_while_cond      #  45:     goto   34_while_cond

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 31 of <array 34 of <array 52 of <array 36 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 21 of <array 41 of <array 65 of <array 41 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 54 of <array 84 of <array 19 of <array 3 of <array 22 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 47 of <array 76 of <array 15 of <array 80 of <array 35 of <char>>>>>>> %ebp+20 ]
    #    -22(%ebp)   1  [ $v5       <char> %ebp-22 ]

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
    movl    $93700, %eax            #   0:     div    t8 <- 93700, 53818
    movl    $53818, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     if     t8 = 11322 goto 1
    movl    $11322, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #   9:     return t9
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  10:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  11:     call   t11 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  12:     assign v5 <- t11
    movb    %al, -22(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 47 of <array 76 of <array 15 of <array 80 of <array 35 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 54 of <array 84 of <array 19 of <array 3 of <array 22 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 7 of <array 21 of <array 41 of <array 65 of <array 41 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 17 of <array 31 of <array 34 of <array 52 of <array 36 of <bool>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_1_if_true        #   0:     goto   1_if_true
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    call    WriteLn                 #   3:     call   WriteLn
    movl    $77050, %eax            #   4:     assign v0 <- 77050
    movl    %eax, v0               
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
l_test_8_while_cond:
    call    dummyBOOLfunc           #  10:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     if     t0 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_while_body    
    jmp     l_test_7                #  12:     goto   7
l_test_9_while_body:
    jmp     l_test_8_while_cond     #  14:     goto   8_while_cond
l_test_7:
    jmp     l_test_11               #  16:     goto   11
    jmp     l_test_12               #  17:     goto   12
    jmp     l_test_12               #  18:     goto   12
    jmp     l_test_12               #  19:     goto   12
l_test_11:
    movl    $1, %eax                #  21:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_13               #  22:     goto   13
l_test_12:
    movl    $0, %eax                #  24:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_13:
    movzbl  -14(%ebp), %eax         #  26:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_exit            
l_test_20_while_cond:
    jmp     l_test_21_while_body    #  29:     goto   21_while_body
    jmp     l_test_19               #  30:     goto   19
l_test_21_while_body:
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  33:     goto   24_while_cond
    jmp     l_test_exit            
    call    dummyINTfunc            #  35:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    leal    v5, %eax                #  36:     &()    t3 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     param  3 <- t3
    pushl   %eax                   
    leal    v4, %eax                #  38:     &()    t4 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     param  2 <- t4
    pushl   %eax                   
    leal    v3, %eax                #  40:     &()    t5 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  41:     param  1 <- t5
    pushl   %eax                   
    leal    v2, %eax                #  42:     &()    t6 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  43:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  44:     call   t7 <- f2
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_20_while_cond    #  46:     goto   20_while_cond
l_test_19:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
v2:                                 # <array 17 of <array 31 of <array 34 of <array 52 of <array 36 of <bool>>>>>>
    .long    5
    .long   17
    .long   31
    .long   34
    .long   52
    .long   36
    .skip 33542496
v3:                                 # <array 7 of <array 21 of <array 41 of <array 65 of <array 41 of <int>>>>>>
    .long    5
    .long    7
    .long   21
    .long   41
    .long   65
    .long   41
    .skip 64247820
v4:                                 # <array 54 of <array 84 of <array 19 of <array 3 of <array 22 of <char>>>>>>
    .long    5
    .long   54
    .long   84
    .long   19
    .long    3
    .long   22
    .skip 5688144
v5:                                 # <array 47 of <array 76 of <array 15 of <array 80 of <array 35 of <char>>>>>>
    .long    5
    .long   47
    .long   76
    .long   15
    .long   80
    .long   35
    .skip 150024000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
