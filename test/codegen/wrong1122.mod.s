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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t24      <bool> %ebp-77 ]
    #    -78(%ebp)   1  [ $t25      <bool> %ebp-78 ]
    #    -84(%ebp)   4  [ $t3       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t4       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t5       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t6       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t7       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t8       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t9       <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 92 of <array 52 of <array 28 of <array 88 of <array 52 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #   -109(%ebp)   1  [ $v2       <char> %ebp-109 ]
    #   -116(%ebp)   4  [ $v3       <int> %ebp-116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $104, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $26, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $12677, %eax            #   0:     div    t1 <- 12677, 23971
    movl    $23971, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t2 <- t1, 93092
    movl    $93092, %ebx           
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     mul    t3 <- t2, 58637
    movl    $58637, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     mul    t4 <- t3, 36875
    movl    $36875, %ebx           
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   4:     div    t5 <- t4, 92520
    movl    $92520, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $2, %eax                #   5:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   6:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   7:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #   8:     mul    t7 <- t5, t6
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    $79298, %eax            #   9:     sub    t8 <- 79298, 2292
    movl    $2292, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -104(%ebp), %eax        #  10:     add    t9 <- t8, 65828
    movl    $65828, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -100(%ebp), %eax        #  11:     add    t10 <- t7, t9
    movl    -108(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  15:     mul    t12 <- t10, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  16:     add    t13 <- t12, 74545
    movl    $74545, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  20:     mul    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t16 <- t15, 76117
    movl    $76117, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  25:     mul    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  26:     add    t19 <- t18, 22795
    movl    $22795, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  27:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  29:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  30:     add    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t23 <- v0, t22
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $97, %eax               #  32:     assign @t23 <- 97
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyBOOLfunc           #  33:     call   t24 <- dummyBOOLfunc
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  34:     if     t24 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2                 
l_f0_2:
    movl    $1, %eax                #  36:     assign t25 <- 1
    movb    %al, -78(%ebp)         
    jmp     l_f0_4                  #  37:     goto   4
    movl    $0, %eax                #  38:     assign t25 <- 0
    movb    %al, -78(%ebp)         
l_f0_4:
    movzbl  -78(%ebp), %eax         #  40:     return t25
    jmp     l_f0_exit              
    movl    $19200, %eax            #  41:     assign v3 <- 19200
    movl    %eax, -116(%ebp)       

l_f0_exit:
    # epilogue
    addl    $104, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    leal    _str_1, %eax            #   0:     &()    t1 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f1_6_while_cond:
    movl    $17085, %eax            #   5:     if     17085 > 5950 goto 7_while_body
    movl    $5950, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f1_7_while_body      
    jmp     l_f1_5                  #   6:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   8:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_0:
l_f1_10_while_cond:
    movl    $98, %eax               #  13:     if     98 <= 99 goto 11_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  14:     goto   9
l_f1_11_while_body:
    movl    $21948, %eax            #  16:     if     21948 > 84636 goto 14_if_true
    movl    $84636, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  17:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_if_false:
l_f1_13:
    jmp     l_f1_10_while_cond      #  22:     goto   10_while_cond
l_f1_9:
    call    ReadInt                 #  24:     call   t3 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     assign v2 <- t3
    movl    %eax, -28(%ebp)        

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_exit            
    movl    $54835, %eax            #   1:     if     54835 < 17652 goto 2_if_true
    movl    $17652, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    movl    $97, %eax               #   5:     if     97 <= 100 goto 7_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    movl    $0, %eax                #  11:     assign v0 <- 0
    movb    %al, v0                
l_test_12_while_cond:
    jmp     l_test_11               #  13:     goto   11
    jmp     l_test_12_while_cond    #  14:     goto   12_while_cond
l_test_11:
l_test_15_while_cond:
    movl    $100, %eax              #  17:     if     100 # 99 goto 16_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_16_while_body   
    jmp     l_test_14               #  18:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  20:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    movl    $7498, %eax             #  23:     if     7498 > 29218 goto 20_if_true
    movl    $29218, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_20_if_true      
    jmp     l_test_21_if_false      #  24:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  26:     goto   19
l_test_21_if_false:
l_test_19:
    call    dummyBOOLfunc           #  29:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_25_while_cond:
    jmp     l_test_24               #  31:     goto   24
    jmp     l_test_25_while_cond    #  32:     goto   25_while_cond
l_test_24:
    jmp     l_test_exit            
    jmp     l_test_1                #  35:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_30_if_false      #  38:     goto   30_if_false
l_test_32_while_cond:
    movl    $46235, %eax            #  40:     if     46235 >= 93444 goto 33_while_body
    movl    $93444, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_33_while_body   
    jmp     l_test_31               #  41:     goto   31
l_test_33_while_body:
    jmp     l_test_exit            
    jmp     l_test_32_while_cond    #  44:     goto   32_while_cond
l_test_31:
    jmp     l_test_28               #  46:     goto   28
l_test_30_if_false:
l_test_28:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
