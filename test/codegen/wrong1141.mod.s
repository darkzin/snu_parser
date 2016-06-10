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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    ReadInt                 #   3:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $32207, %eax            #   4:     assign v1 <- 32207
    movl    %eax, -24(%ebp)        
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   9:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     assign v2 <- t10
    movb    %al, -25(%ebp)         
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <ptr(4) to <array 7 of <char>>> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 42 of <array 77 of <array 89 of <array 18 of <array 48 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 75 of <array 16 of <array 15 of <array 53 of <array 66 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 94 of <array 3 of <array 84 of <array 63 of <array 66 of <int>>>>>>> %ebp+20 ]
    #    -36(%ebp)   4  [ $v5       <int> %ebp-36 ]

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
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   1:     goto   4_while_cond
    leal    _str_1, %eax            #   2:     &()    t9 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #   4:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
    call    dummyINTfunc            #   7:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     div    t11 <- t10, 22400
    movl    $22400, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     div    t12 <- t11, 99385
    movl    $99385, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t13 <- t12, 49261
    movl    $49261, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     assign v5 <- t13
    movl    %eax, -36(%ebp)        
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 11 of <array 62 of <array 81 of <array 86 of <bool>>>>>>> %ebp+8 ]
    #    -22(%ebp)   1  [ $v2       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v3       <char> %ebp-23 ]

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
    movl    $99, %eax               #   0:     if     99 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_4                  #   3:     goto   4
l_f2_4:
    movl    $5235, %eax             #   5:     return 5235
    jmp     l_f2_exit              
    movl    $84758, %eax            #   6:     return 84758
    jmp     l_f2_exit              
    movl    $59559, %eax            #   7:     if     59559 <= 23436 goto 10_if_true
    movl    $23436, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #   8:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $0, %eax                #  13:     if     0 # 1 goto 14
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_14                
    jmp     l_f2_15                 #  14:     goto   15
l_f2_14:
    movl    $1, %eax                #  16:     assign t9 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_16                 #  17:     goto   16
l_f2_15:
    movl    $0, %eax                #  19:     assign t9 <- 0
    movb    %al, -21(%ebp)         
l_f2_16:
    movzbl  -21(%ebp), %eax         #  21:     assign v2 <- t9
    movb    %al, -22(%ebp)         
    movl    $39503, %eax            #  22:     if     39503 <= 85539 goto 19_if_true
    movl    $85539, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  23:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  25:     goto   18
l_f2_20_if_false:
l_f2_18:
l_f2_23_while_cond:
    movl    $12318, %eax            #  29:     if     12318 < 74904 goto 24_while_body
    movl    $74904, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_24_while_body     
    jmp     l_f2_22                 #  30:     goto   22
l_f2_24_while_body:
    jmp     l_f2_23_while_cond      #  32:     goto   23_while_cond
l_f2_22:
    movl    $70187, %eax            #  34:     param  0 <- 70187
    pushl   %eax                   
    call    WriteInt                #  35:     call   WriteInt
    addl    $4, %esp               
    movl    $13700, %eax            #  36:     if     13700 > 13042 goto 28_if_true
    movl    $13042, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_28_if_true        
    jmp     l_f2_29_if_false        #  37:     goto   29_if_false
l_f2_28_if_true:
    jmp     l_f2_27                 #  39:     goto   27
l_f2_29_if_false:
l_f2_27:
    jmp     l_f2_0                  #  42:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_32_while_cond:
    movl    $1, %eax                #  46:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_37                 #  47:     goto   37
    movl    $0, %eax                #  48:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_37:
    movl    $1, %eax                #  50:     if     1 # t10 goto 33_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_33_while_body     
    jmp     l_f2_31                 #  51:     goto   31
l_f2_33_while_body:
    movl    $97, %eax               #  53:     assign v3 <- 97
    movb    %al, -23(%ebp)         
    jmp     l_f2_32_while_cond      #  54:     goto   32_while_cond
l_f2_31:
    movl    $98, %eax               #  56:     if     98 # 99 goto 41_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_41_if_true        
    jmp     l_f2_42_if_false        #  57:     goto   42_if_false
l_f2_41_if_true:
    jmp     l_f2_46_if_false        #  59:     goto   46_if_false
    jmp     l_f2_44                 #  60:     goto   44
l_f2_46_if_false:
l_f2_44:
    call    ReadInt                 #  63:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f2_40                 #  64:     goto   40
l_f2_42_if_false:
l_f2_40:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 43 of <array 11 of <array 62 of <array 81 of <array 86 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $78693, %eax            #   1:     sub    t1 <- 78693, 72906
    movl    $72906, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 98926
    movl    $98926, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t3 <- t2, 67710
    movl    $67710, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $15697, %eax            #   4:     if     15697 > t3 goto 2_if_true
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   5:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
    movl    $0, %eax                #   9:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $100, %eax              #  11:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_11               #  13:     goto   11
l_test_11:
l_test_15_while_cond:
    movl    $95547, %eax            #  16:     if     95547 > 71940 goto 16_while_body
    movl    $71940, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  17:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  19:     goto   15_while_cond
l_test_14:
    movl    $1, %eax                #  21:     if     1 = 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  22:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  24:     goto   18
l_test_20_if_false:
l_test_18:
    call    dummyProcedure          #  27:     call   dummyProcedure
    call    ReadInt                 #  28:     call   t4 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $98, %eax               #  29:     if     98 = 98 goto 25_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_25_if_true      
    jmp     l_test_26_if_false      #  30:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  32:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_1                #  35:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyBOOLfunc           #  38:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    leal    v1, %eax                #  39:     &()    t6 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  40:     param  0 <- t6
    pushl   %eax                   
    call    f2                      #  41:     call   t7 <- f2
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    call    ReadInt                 #  42:     call   t8 <- ReadInt
    movl    %eax, -48(%ebp)        
    jmp     l_test_30               #  43:     goto   30
l_test_30:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <array 43 of <array 11 of <array 62 of <array 81 of <array 86 of <bool>>>>>>
    .long    5
    .long   43
    .long   11
    .long   62
    .long   81
    .long   86
    .skip 204284916








    # end of global data section
    #-----------------------------------------

    .end
##################################################
